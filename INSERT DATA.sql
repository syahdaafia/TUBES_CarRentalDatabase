----------------------------------------------------------------------------------------------------------------
-- INSERT DATA PENGGUNA
----------------------------------------------------------------------------------------------------------------
INSERT INTO PENGGUNA
(id_pengguna, nama, email, password, no_ktp, no_sim, ttl, alamat, no_telp, type, status)
VALUES
('PP0001', 'Syahda Afia', 'syahdaafia@gmail.com', 'syahdacantik', '3217024608020001', NULL, 'Bandung, 7 September 2002', 'Jl. cigugurgirang no.14', '082126642482', 0, NULL);

INSERT INTO PENGGUNA
(id_pengguna, nama, email, password, no_ktp, no_sim, ttl, alamat, no_telp, type, status)
VALUES
('PP0002', 'Hasanah', 'scndmy@gmail.com', 'lalalayeye', '3217092878020001', NULL, 'Bandung, 24 Juli 2002', 'Jl. cibogobawah no.60', '083820108983', 0, NULL);

INSERT INTO PENGGUNA
(id_pengguna, nama, email, password, no_ktp, no_sim, ttl, alamat, no_telp, type, status)
VALUES
('PP0003', 'Khansa Rafifah', 'Khansaa@gmail.com', 'apawe', '3217092845520001', NULL, 'Jakarta, 10 Januari 2002', 'Jl. kepatihan no 76', '093830108784', 0, NULL);

INSERT INTO PENGGUNA
(id_pengguna, nama, email, password, no_ktp, no_sim, ttl, alamat, no_telp, type, status)
VALUES
('PA0004', 'Mayang Sungkar', 'Mayanghc@gmail.com', 'Bungaa', '3217092882420001', '940309160129', 'Yogyakarta, 27 September 1999', 'Jl. Dewan Karang no.35', '085980734612', 1, NULL);

INSERT INTO PENGGUNA
(id_pengguna, nama, email, password, no_ktp, no_sim, ttl, alamat, no_telp, type, status)
VALUES
('PA0005', 'Sheeren Alisha', 'Sheeren00@gmail.com', 'Edelwish', '3212345845520001', '940081600129', 'Jakarta, 10 Januari 2000', 'Jl. Kalibata Timur No.31', '082780134783', 1, NULL);

INSERT INTO PENGGUNA
(id_pengguna, nama, email, password, no_ktp, no_sim, ttl, alamat, no_telp, type, status)
VALUES
('PA0006', 'Rama Maliki', 'Ramaagl@gmail.com', 'Ramaa098', '3213332845520001', '940309160144', 'Bogor, 15 Maret 1998', 'Jl. Bangbarung No.61', '081787809109', 1, NULL);

INSERT INTO PENGGUNA
(id_pengguna, nama, email, password, no_ktp, no_sim, ttl, alamat, no_telp, type, status)
VALUES
('PA0007', 'Fajar Hassan', 'Mfajar@gmail.com', 'Fajarblank', '3217092898020001', '942209160130', 'Cirebon, 8 April 2001', 'Jl. Tentara Pelajar No.1', '083891245092', 1, NULL);

INSERT INTO PENGGUNA
(id_pengguna, nama, email, password, no_ktp, no_sim, ttl, alamat, no_telp, type, status)
VALUES
('PA0008', 'Faza Shidiq', 'Fazashidiq@gmail.com', 'shidiq123', '3217090005520001', '940221655129', 'Surabaya, 1 Mei 1996', 'Jl. Mayjen Sungkono No.89', '085903712904', 1, NULL);

INSERT INTO PENGGUNA
(id_pengguna, nama, email, password, no_ktp, no_sim, ttl, alamat, no_telp, type, status)
VALUES
('PA0009', 'Chikita June', 'Chikita99@gmail.com', 'kitakita12', '3210982898020001', '942211810130', 'Bandung, 2 Februari 1990', 'Jl. Cihampelas No.160', '087722549013', 1, NULL);

INSERT INTO PENGGUNA
(id_pengguna, nama, email, password, no_ktp, no_sim, ttl, alamat, no_telp, type, status)
VALUES
('PA0010', 'Dody Mariadi', 'Dodyy10@gmail.com', 'dodoyyy', '3219090875520001', '943509783130', 'Palembang, 20 Oktober 1989', 'Jl. Angkatan no.45', '083820189028', 1, NULL);

INSERT INTO PENGGUNA
(id_pengguna, nama, email, password, no_ktp, no_sim, ttl, alamat, no_telp, type, status)
VALUES
('PA0011', 'Revan Mahardika', 'Revand11@gmail.com', 'kodokterbang', '3219808075420001', '954765521458', 'Papua, 1 Agustus 1922', 'Jl. Cendrawasih no.3', '085678910111', 1, NULL);

INSERT INTO PENGGUNA
(id_pengguna, nama, email, password, no_ktp, no_sim, ttl, alamat, no_telp, type, status)
VALUES
('PA0012', 'Muhammad Aruffin', 'Upinsalahsatu@gmail.com', 'inipassword', '3217687642120001', '987876453421', 'Kuala lumpur, 11 Januari 1991', 'Jl. Harapan Palsu no. 27', '089865327172', 1, NULL);

INSERT INTO PENGGUNA
(id_pengguna, nama, email, password, no_ktp, no_sim, ttl, alamat, no_telp, type, status)
VALUES
('PA0013', 'Muhammad Ariffin', 'Ipinbetulslalu@gmail.com', 'ayamgoreng', '321691876520001', '991100234578', 'Kuala lumpur, 12 Januari 1991', 'Jl. Durian Runtuh no. 27', '085877234659', 1, NULL);

----------------------------------------------------------------------------------------------------------------
-- INSERT DATA MOBIL
----------------------------------------------------------------------------------------------------------------
INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MTO001', 'Toyota', 'Grand New Avanza', 299000, 2017, 'D 1240 XR', 'Manual', 6, 'Hitam', 'Grade A', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MTO002', 'Toyota', 'Grand New Avanza', 299000, 2017, 'D 8219 XS', 'Matic', 6, 'Hitam', 'Grade B', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MTO003', 'Toyota', 'Grand New Innova', 389000, 2014, 'D 1921 SR', 'Manual', 6, 'Putih', 'Grade A', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MTO004', 'Toyota', 'Grand New Innova', 389000, 2014, 'D 8212 SJ', 'Matic', 6, 'Putih', 'Grade B', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MTO005', 'Toyota', 'Agya', 250000, 2016, 'D 1021 GK', 'Manual', 6, 'Merah', 'Grade C', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MTO006', 'Toyota', 'Agya', 300000, 2016, 'D 9211 GH', 'Matic', 6, 'Hitam', 'Grade C', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MTO007', 'Toyota', 'Harrier', 1500000, 2018, 'D 8721 KDJ', 'Matic', 6, 'Silver', 'Grade A', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MTO008', 'Toyota', 'Alphard Transformer', 2500000, 2018, 'D 1281 MKU', 'Manual ', 7, 'Putih', 'Grade B', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MHO009', 'Honda', 'BRIO', 250000, 2016, 'D 1120 AMH', 'Manual ', 5, 'Silver', 'Grade A', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MHO010', 'Honda', 'BRIO', 300000, 2016, 'D 7121 TBL', 'Matic', 5, 'Silver', 'Grade B', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MTO011', 'Honda', 'JAZZ', 325000, 2018, 'D 4211 TB', 'Manual', 5, 'Merah', 'Grade A', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MTO011', 'Honda', 'JAZZ', 350000, 2020, 'D 4211 TB', 'Manual', 5, 'Merah', 'Grade A', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MHO012', 'Honda', 'JAZZ', 350.000, 2020, 'D 1733 NSR', 'Matic', 5, 'Hitam', 'Grade B', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MHO013', 'Honda', 'CRV', 1100000, 2020, 'D 2213 UPS', 'Matic', 5, 'Putih', 'Grade A', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MDA014', 'Daihatsu', 'Sigra', 325000, 2019, 'D 1239 KL', 'Manual', 8, 'Putih', 'Grade B', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MDA015', 'Daihatsu', 'Sigra', 350000, 2019, 'D 8221 JK', 'Matic', 8, 'Hitam', 'Grade A', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MDA016', 'Daihatsu', 'Xenia', 300000, 2021, 'D 9102 LM', 'Manual', 7, 'Silver', 'Grade B', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MDA017', 'Daihatsu', 'Xenia', 367500,	2020, 'D 2747 JJ', 'Matic', 7, 'Hitam', 'Grade A', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MMI018', 'Mitsubishi', 'New Pajero', 1100000, 2020, 'D 9188 LK', 'Matic', 7, 'Putih', 'Grade B', 'available');

SELECT * FROM MOBIL
INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MMI019', 'Mitsubishi', 'XPANDER', 750000, 2017, 'D 4321 XU', 'Matic', 7, 'Putih', 'Grade A', 'available');

INSERT INTO mobil
(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status)
VALUES
('MMI020', 'Mitsubishi', 'PAJERO SPORT FACELIFT', 1700000, 2021, 'D 1023 MU', 'Matic', 6, 'Hitam', 'Grade B', 'available');

----------------------------------------------------------------------------------------------------------------
-- INSERT DATA PENYEWAAN
----------------------------------------------------------------------------------------------------------------
EXECUTE insert_penyewaan ('PA0004', 'MTO001', date '2021-12-27', date '2021-12-27', 'm-banking');
EXECUTE insert_penyewaan ('PA0005', 'MTO002', date '2021-12-27', date '2021-12-27', 'cash');
EXECUTE insert_penyewaan ('PA0006', 'MTO003', date '2021-12-29', date '2021-12-30', 'e-wallet');
--EXECUTE insert_penyewaan ('PA0007', 'MTO004', date '2021-12-29', date '2021-12-31', 'cash');
EXECUTE insert_penyewaan ('PA0008', 'MTO005', date '2021-12-29', date '2021-12-30', 'kartu kredit');
EXECUTE insert_penyewaan ('PA0009', 'MTO006', date '2021-12-27', date '2021-12-27', 'cash');
EXECUTE insert_penyewaan ('PA0010', 'MTO007', date '2021-12-28', date '2021-12-30', 'm-banking');
EXECUTE insert_penyewaan ('PA0011', 'MTO008', date '2021-12-28', date '2021-12-29', 'kartu kredit');
EXECUTE insert_penyewaan ('PA0012', 'MHO009', date '2021-12-27', date '2021-12-30', 'cash');
EXECUTE insert_penyewaan ('PA0013', 'MHO010', date '2021-12-30', date '2021-12-31', 'm-banking');


