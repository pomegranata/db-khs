SELECT data_mahasiswa.NIM, data_mahasiswa.Nama, data_matkul.Kode, data_matkul.MatKul, data_matkul.Jenis, data_dosen.Dosen, data_nilai.Tugas, data_nilai.Kuis, data_nilai.UTS, data_nilai.UAS
FROM data_mahasiswa
JOIN data_nilai ON data_mahasiswa.NIM = data_nilai.NIM
JOIN data_matkul ON data_nilai.Kode = data_matkul.Kode
JOIN data_dosen ON data_matkul.Kode = data_dosen.Kode
