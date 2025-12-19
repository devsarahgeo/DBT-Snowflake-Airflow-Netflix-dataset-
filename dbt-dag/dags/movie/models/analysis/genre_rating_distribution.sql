WITH genre_flat AS (
    SELECT
        f.value::STRING AS genre,
        m.movie_id
    FROM {{ ref('dim_movies_with_tags') }} m
    , LATERAL FLATTEN(input => TO_VARIANT(SPLIT(m.genres, ','))) f
)
SELECT
    gf.genre,
    AVG(r.rating) AS average_rating,
    COUNT(DISTINCT gf.movie_id) AS total_movies
FROM genre_flat gf
JOIN {{ ref('fct_ratings') }} r ON gf.movie_id = r.movie_id
GROUP BY gf.genre
ORDER BY average_rating DESC
LIMIT 20
