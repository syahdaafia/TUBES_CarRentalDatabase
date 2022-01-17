----------------------------------------------------------------------------------------------------------------
-- PROCEDURE
----------------------------------------------------------------------------------------------------------------
create or replace NONEDITIONABLE PROCEDURE delete_mobil(p_id_mobil IN CHAR)
IS
BEGIN
    DELETE FROM mobil
    WHERE id_mobil = p_id_mobil; 
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE delete_pengguna(p_id_pengguna IN CHAR)
IS
BEGIN
    DELETE FROM pengguna
    WHERE id_pengguna = p_id_pengguna;
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE filter_12bln
IS
    kursor sys_refcursor;
BEGIN
    open kursor
    for SELECT id_sewa, start_date, end_date, total_bayar, metode_bayar, denda, id_mobil, id_pengguna, keterangan, tgl_kembali
        FROM penyewaan
        WHERE start_date >= add_months(sysdate, -12) AND keterangan = 'selesai';
    dbms_sql.return_result(kursor);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE filter_1bln
IS
    kursor sys_refcursor;
BEGIN
    open kursor
    for SELECT id_sewa, start_date, end_date, total_bayar, metode_bayar, denda, id_mobil, id_pengguna, keterangan, tgl_kembali
        FROM penyewaan
        WHERE start_date >= add_months(sysdate, -1) AND keterangan = 'selesai';
    dbms_sql.return_result(kursor);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE filter_3bln
IS
    kursor sys_refcursor;
BEGIN
    open kursor
    for SELECT id_sewa, start_date, end_date, total_bayar, metode_bayar, denda, id_mobil, id_pengguna, keterangan, tgl_kembali
        FROM penyewaan
        WHERE start_date >= add_months(sysdate, -3) AND keterangan = 'selesai';
    dbms_sql.return_result(kursor);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE filter_6bln
IS
    kursor sys_refcursor;
BEGIN
    open kursor
    for SELECT id_sewa, start_date, end_date, total_bayar, metode_bayar, denda, id_mobil, id_pengguna, keterangan, tgl_kembali
        FROM penyewaan
        WHERE start_date >= add_months(sysdate, -6) AND keterangan = 'selesai';
    dbms_sql.return_result(kursor);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE filter_anggota
IS
    kursor sys_refcursor;
BEGIN
    open kursor
    for SELECT id_pengguna, nama, email, no_ktp, no_sim, ttl, alamat, no_telp, type, status
        FROM pengguna
        WHERE type = 1;
    dbms_sql.return_result(kursor);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE filter_merek(p_merek IN VARCHAR2)
IS
   kursor sys_refcursor;
BEGIN
    open kursor
    for SELECT id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi
        FROM mobil
        WHERE merek = p_merek AND status = 'available';
    dbms_sql.return_result(kursor);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE filter_pengelola
IS
    kursor sys_refcursor;
BEGIN
    open kursor
    for SELECT id_pengguna, nama, email, no_ktp, no_sim, ttl, alamat, no_telp, type, status
        FROM pengguna
        WHERE type = 0;
    dbms_sql.return_result(kursor);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE filter_tahun(p_thn_keluaran IN number)
IS
   kursor sys_refcursor;
BEGIN
    open kursor
    for SELECT id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi
        FROM mobil
        WHERE thn_keluaran = p_thn_keluaran AND status = 'available';
    dbms_sql.return_result(kursor);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE filter_transmisi(p_transmisi IN VARCHAR2)
IS
   kursor sys_refcursor;
BEGIN
    open kursor
    for SELECT id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi
        FROM mobil
        WHERE transmisi = p_transmisi AND status = 'available';
    dbms_sql.return_result(kursor);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE insert_mobil(
Id_mobil IN CHAR, Merek IN VARCHAR2, Jenis IN VARCHAR2, Harga IN NUMBER, Thn_keluaran IN NUMBER, 
Plat IN VARCHAR2, Transmisi IN VARCHAR2, Jml_seat IN NUMBER, Warna IN VARCHAR2, Kondisi IN VARCHAR2, Status IN VARCHAR2)
IS
BEGIN
    INSERT INTO mobil(id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status) 
    VALUES(Id_mobil, Merek, Jenis, Harga, Thn_keluaran, Plat, Transmisi, Jml_seat, Warna, Kondisi, Status);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE insert_pengguna(p_id_pengguna IN CHAR, p_nama IN VARCHAR2, p_email IN VARCHAR2, p_password IN VARCHAR2, 
p_no_ktp IN CHAR, p_no_sim IN CHAR, p_ttl IN VARCHAR2, p_alamat IN VARCHAR2, p_no_telp IN VARCHAR2, p_type IN NUMBER)
IS
BEGIN
    INSERT INTO pengguna(id_pengguna, nama, email, password, no_ktp, no_sim, ttl, alamat, no_telp, type) 
    VALUES(p_id_pengguna, p_nama, p_email, p_password, p_no_ktp, p_no_sim, p_ttl, p_alamat, p_no_telp, p_type);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE 
insert_penyewaan (p_id_pengguna IN VARCHAR2, p_id_mobil IN VARCHAR2, p_start_date IN DATE, p_end_date IN DATE, p_metode_bayar IN VARCHAR2)
IS
    total NUMBER;
BEGIN
    total := get_total_bayar(p_id_mobil, p_start_date, p_end_date);
    INSERT INTO penyewaan(id_pengguna, id_mobil, start_date, end_date, metode_bayar, total_bayar)
    VALUES (p_id_pengguna, p_id_mobil, p_start_date, p_end_date, p_metode_bayar, total);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE katalog_default
IS
   kursor sys_refcursor;
BEGIN
    open kursor
    for SELECT id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi
        FROM mobil
        WHERE status = 'available';
    dbms_sql.return_result(kursor);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE LOGIN(p_email IN VARCHAR2, p_password IN CHAR)
IS
BEGIN
    UPDATE pengguna
    SET status = 'LOG IN'
    WHERE email = p_email AND password = p_password;
END;

create or replace NONEDITIONABLE PROCEDURE pengembalian
IS
    kursor sys_refcursor;
BEGIN
    open kursor
    for SELECT id_sewa, start_date, end_date, total_bayar, metode_bayar, denda, id_mobil, id_pengguna, keterangan
        FROM penyewaan
        WHERE keterangan = 'proses' OR keterangan IS NULL;
    dbms_sql.return_result(kursor);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE riwayat
IS
    kursor sys_refcursor;
BEGIN
    open kursor
    for SELECT id_sewa, start_date, end_date, total_bayar, metode_bayar, denda, id_mobil, id_pengguna, keterangan, tgl_kembali
        FROM penyewaan
        WHERE keterangan = 'selesai';
    dbms_sql.return_result(kursor);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE tagihan (p_id_pengguna IN CHAR)
IS
kursor sys_refcursor;
BEGIN
    open kursor
    for SELECT id_sewa, start_date, end_date, total_bayar, metode_bayar, denda, id_mobil, id_pengguna, keterangan, tgl_kembali
        FROM penyewaan
        WHERE id_pengguna = p_id_pengguna;
    dbms_sql.return_result(kursor);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE update_denda(p_id_sewa IN NUMBER, tglkembali IN DATE, p_id_mobil IN VARCHAR2, cacat NUMBER)
IS
    hasil NUMBER;
BEGIN
    hasil := get_denda(tglkembali, p_id_mobil, cacat);
    UPDATE penyewaan
    SET denda = hasil, tgl_kembali = tglkembali
    WHERE id_sewa = p_id_sewa;
END;

create or replace NONEDITIONABLE PROCEDURE update_email(p_id_pengguna IN CHAR, p_email IN VARCHAR)
IS
BEGIN
    UPDATE pengguna
    SET email = p_email
    WHERE id_pengguna = p_id_pengguna;
END;

create or replace NONEDITIONABLE PROCEDURE update_hmobil(p_id_mobil IN CHAR, p_harga IN NUMBER)
IS
BEGIN
    UPDATE mobil
    SET harga = p_harga
    WHERE id_mobil = p_id_mobil;
END;

create or replace NONEDITIONABLE PROCEDURE update_keterangan(p_id_sewa NUMBER, p_keterangan IN VARCHAR2)
IS
BEGIN
    UPDATE penyewaan
    SET keterangan = p_keterangan
    WHERE id_sewa = p_id_sewa;
END;

create or replace NONEDITIONABLE PROCEDURE update_kmobil(p_id_mobil IN CHAR, p_kondisi VARCHAR2)
IS
BEGIN
    UPDATE mobil
    SET kondisi = p_kondisi
    WHERE id_mobil = p_id_mobil;
END;

create or replace NONEDITIONABLE PROCEDURE update_no_telp(p_id_pengguna IN CHAR, p_no_telp IN CHAR)
IS
BEGIN
    UPDATE pengguna
    SET no_telp = p_no_telp
    WHERE id_pengguna = p_id_pengguna;
END;

create or replace NONEDITIONABLE PROCEDURE update_password(p_id_pengguna IN CHAR, p_password IN VARCHAR2)
IS
BEGIN
	UPDATE pengguna
	SET password = p_password
	WHERE id_pengguna = p_id_pengguna;
END;

create or replace NONEDITIONABLE PROCEDURE update_smobil(p_id_mobil IN CHAR, p_status VARCHAR2)
IS
BEGIN
    UPDATE mobil
    SET status = p_status
    WHERE id_mobil = p_id_mobil;
END;

create or replace NONEDITIONABLE PROCEDURE validasi_tanggal(p_start_date IN DATE, p_end_date IN DATE)
IS
BEGIN
    IF p_start_date < current_date() OR p_end_date < current_date() OR p_start_date > p_end_date THEN 
        raise_application_error(-20000, 'Tanggal tidak valid');
    END IF;
END;

create or replace NONEDITIONABLE PROCEDURE logout(p_email IN VARCHAR2)
IS
BEGIN
    UPDATE pengguna
    SET status = 'LOG OUT'
    WHERE email = p_email;
END;

create or replace NONEDITIONABLE PROCEDURE data_mobil
IS
    kursor sys_refcursor;
BEGIN
    open kursor
    for SELECT id_mobil, merek, jenis, harga, thn_keluaran, plat, transmisi, jml_seat, warna, kondisi, status
        FROM mobil;
    dbms_sql.return_result(kursor);
    COMMIT;
END;

create or replace NONEDITIONABLE PROCEDURE data_pengguna
IS
    kursor sys_refcursor;
BEGIN
    open kursor
    for SELECT id_pengguna, nama, email, no_ktp, no_sim, ttl, alamat, no_telp, type, status
        FROM pengguna;
    dbms_sql.return_result(kursor);
    COMMIT;
END;