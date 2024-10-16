SELECT band_name,
    CASE 
        WHEN split IS NOT NULL
        THEN split - formed
        ELSE 2022 - formed 
    END AS lifespan,
    formed, split
FROM metal_bands
WHERE style LIKE '%Glam Rock%'
ORDER BY lifespan DESC;
