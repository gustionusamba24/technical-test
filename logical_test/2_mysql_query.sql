SELECT m.mhs_nama, mk.mk_kode, mk.mk_nama, MAX(nilai) AS nilai
FROM tb_mahasiswa m
         INNER JOIN tb_mahasiswa_nilai n ON m.mhs_id = n.mhs_id
         INNER JOIN tb_matakuliah mk ON n.mk_id = mk.mk_id
WHERE mk.mk_kode = 'MK303'
GROUP BY m.mhs_nama, mk.mk_kode, mk.mk_nama
ORDER BY nilai DESC
    LIMIT 1;