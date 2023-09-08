-- Buatlah satu buah query untuk mencari nama seorang mahasiswa yang memiliki nilai mata kuliah tertinggi pada mata kuliah dengan kode “MK303”.

SELECT m.nama, mk.kode, mk.nama, MAX(nilai) AS nilai
FROM mahasiswa m
INNER JOIN nilai n ON m.nim = n.nim
INNER JOIN mata_kuliah mk ON n.kode_mk = mk.kode
WHERE mk.kode = 'MK303'
GROUP BY m.nama, mk.kode, mk.nama
ORDER BY nilai DESC
LIMIT 1;