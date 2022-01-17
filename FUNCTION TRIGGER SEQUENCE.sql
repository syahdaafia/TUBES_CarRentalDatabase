----------------------------------------------------------------------------------------------------------------
-- FUNCTION
----------------------------------------------------------------------------------------------------------------
create or replace NONEDITIONABLE FUNCTION get_denda(tglkembali IN DATE, p_id_mobil IN VARCHAR2, cacat NUMBER)
RETURN NUMBER
IS
    denda NUMBER;
    v_end_date DATE;
    v_harga NUMBER;
BEGIN
    SELECT penyewaan.end_date, mobil.harga
    INTO v_end_date, v_harga
    FROM penyewaan
    INNER JOIN mobil ON penyewaan.id_mobil = mobil.id_mobil
    WHERE penyewaan.id_mobil = p_id_mobil;
    IF v_end_date <> tglkembali THEN 
        denda := (v_harga * (get_hari(v_end_date, tglkembali) - 1) + cacat);
    ELSIF v_end_date = tglkembali THEN
        denda := cacat;
    END IF;
    RETURN denda;
END;

create or replace NONEDITIONABLE FUNCTION get_hari(p_start_date IN DATE, p_end_date IN DATE)
RETURN NUMBER
IS
jml_hari NUMBER;
BEGIN
    jml_hari:=TO_DATE(p_end_date) - TO_DATE(p_start_date) + 1;
    RETURN jml_hari;
END;

create or replace NONEDITIONABLE FUNCTION
get_total_bayar(p_id_mobil IN VARCHAR2, p_start_date IN DATE, p_end_date IN DATE)
RETURN NUMBER
IS
    total NUMBER := 0;
BEGIN
    SELECT SUM(harga * get_hari(p_start_date, p_end_date))
    INTO total
    FROM mobil
    WHERE id_mobil = p_id_mobil;
    RETURN total;
END;

----------------------------------------------------------------------------------------------------------------
-- TRIGGER
----------------------------------------------------------------------------------------------------------------
create or replace NONEDITIONABLE TRIGGER id_sewa 
BEFORE INSERT ON penyewaan 
FOR EACH ROW
BEGIN
  SELECT penyewaan_seq.NEXTVAL
  INTO   :new.id_sewa
  FROM   dual;
END;

create or replace NONEDITIONABLE TRIGGER update_status
AFTER INSERT ON penyewaan
FOR EACH ROW
BEGIN
    UPDATE mobil 
    SET status = 'not available' 
    WHERE id_mobil = :new.id_mobil;
END;

create or replace NONEDITIONABLE TRIGGER validasi_tanggal_trgg
BEFORE INSERT ON penyewaan
FOR EACH ROW
BEGIN
  validasi_tanggal(:new.start_date, :new.end_date);
END;

----------------------------------------------------------------------------------------------------------------
-- SEQUENCES
----------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE penyewaan_seq START WITH 1;