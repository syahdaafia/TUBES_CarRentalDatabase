----------------------------------------------------------------------------------------------------------------
-- ANGGOTA
----------------------------------------------------------------------------------------------------------------
SET SERVEROUTPUT ON
SELECT * FROM PENGGUNA;
DECLARE
    p_email VARCHAR2(25) := 'Mfajar@gmail.com';
    p_password VARCHAR2(25) := 'Fajarblank';
    v_status VARCHAR2(25);
    v_type INTEGER;
    v_id_pengguna VARCHAR2(25);
BEGIN
    login(p_email, p_password);
    SELECT pengguna.status, pengguna.type, pengguna.id_pengguna INTO v_status, v_type, v_id_pengguna FROM pengguna WHERE email = p_email;
    IF v_status = 'LOG IN' AND v_type = 1 THEN
        -- katalog_default;
        ----------------- FILTER -------------------------
        -- filter_merek('Daihatsu');
        -- filter_tahun(2021);
        -- filter_transmisi('Matic');
        --------------- PENYEWAAN ------------------------
        -- insert_penyewaan(v_id_pengguna, 'MMI019', date '2021-12-24', date '2021-12-28', 'cash'); 
        -- insert_penyewaan(v_id_pengguna, 'MMI019', date '2021-12-28', date '2021-12-29', 'cash');
        -- tagihan(v_id_pengguna);
        --------------- PENGEMBALIAN ------------------------
        -- tagihan(v_id_pengguna);
    ELSE
        DBMS_OUTPUT.PUT_LINE('email atau password salah, silakan coba lagi');
    END IF;
END;

----------------------------------------------------------------------------------------------------------------
-- PENGELOLA
----------------------------------------------------------------------------------------------------------------
SELECT * FROM PENGGUNA
DECLARE
    p_email VARCHAR2(25) := 'syahdaafia@gmail.com';
    p_password VARCHAR2(25) := 'syahdacantik';
    v_status VARCHAR2(25);
    v_type INTEGER;
    v_id_pengguna VARCHAR2(25);
BEGIN
    login(p_email, p_password);
    SELECT pengguna.status, pengguna.type, pengguna.id_pengguna INTO v_status, v_type, v_id_pengguna FROM pengguna WHERE email = p_email;
    IF v_status = 'LOG IN' AND v_type = 0 THEN
        ------------------- PENGEMBALIAN ---------------------------
        -- pengembalian;
        -- update_keterangan(124, 'proses');
        -- pengembalian;
        -- update_denda(124, date '2021-12-30', 'MMI019', 0);
        -- pengembalian;
        -- update_keterangan(124, 'selesai');
        -- riwayat;
        ----------------- RIWAYAT PENYEWAAN -------------------------
        -- riwayat;
        -- filter_1bln;
        -- riwayat;
        -- filter_3bln;
        -- riwayat;
        -- filter_6bln;
        -- filter_12bln;
        ----------------- DATA MOBIL -------------------------
        -- data_mobil;
        -- insert_mobil('MNI021', 'Nissan', 'Serena', 1250000, 2015, 'D 2409 RHJ' , 'Matic', 7, 'Silver', 'Grade A', 'available');
        -- data_mobil;
        -- update_kmobil('MNI021', 'Grade B');
        -- update_smobil('MNI021', 'not available');
        -- update_hmobil('MNI021', 1000000);
        -- data_mobil;
        -- delete_mobil('MNI021');
        -- data_mobil;
        ----------------- DATA PENGGUNA -------------------------
        -- data_pengguna;
        insert_pengguna('PA0014', 'Raihan Fachary', 'Fachry@gmail.com', 'lupalagi', '3297768700820001', '991100482578', 'Jakarta, 24 Mei 1995', 'Jl. Kampung Gajah no 77', '085051946204', 1);
        data_pengguna;
        -- update_email('PA0014', 'Fachrybaru@gmail.com');
        -- update_password('PA0014', 'udahinget');
        -- update_no_telp('PA0014', '085051946205');
        -- data_pengguna;
        -- delete_pengguna('PA0014');
        -- data_pengguna;
        -- filter_pengelola;
        -- filter_anggota;
        ----------------- LOG OUT -------------------------
        -- logout('syahdaafia@gmail.com');
        -- data_pengguna;
    ELSE
        DBMS_OUTPUT.PUT_LINE('email atau password salah, silakan coba lagi');
    END IF;
END;



EXECUTE logout('Mfajar@gmail.com');
EXECUTE update_smobil('MMI019', 'available');
DELETE FROM PENYEWAAN
WHERE id_sewa = 122;


SELECT * FROM MOBIL;
SELECT * FROM PENYEWAAN;
SELECT * FROM pengguna;
execute delete_pengguna('PA0014');