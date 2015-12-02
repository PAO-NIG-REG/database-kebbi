----------------------------------------------------------------------------------------------------
UPDATE system.br_definition
  SET body = 'SELECT coalesce(#{zone}, '''') || coalesce(#{estate}, '''') ||  to_char(now(), ''yymm'') || trim(to_char(nextval(''administrative.cofo_nr_seq''), ''0000'')) AS vl'
WHERE br_id = 'generate-cofo-nr';

INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('aleiro','ALEIRO', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('arewadandi','AREWA-DANDI', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('argungu','ARGUNGU', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('augie','AUGIE', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('bagudo','BAGUDO', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('birninkebbi','BIRNIN-KEBBI', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('bunza','BUNZA', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('dandi','DANDI', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('fakai','FAKAI', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('gwandu','GWANDU', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('jega','JEGA', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('kalgo','KALGO', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('kokobesse','KOKO-BESSE', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('maiyama','MAIYAMA', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('ngaski','NGASKI', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('sakaba','SAKABA', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('shanga','SHANGA', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('suru','SURU', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('wasagudanko','WASAGU/DANKO', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('yauri','YAURI', '','c');
INSERT INTO cadastre.lga_type(
            code, display_value, description, status)
    VALUES ('zuru','ZURU', '','c');



INSERT INTO cadastre.zone_type(
            code, display_value, description, status)
    VALUES ('zoneCodeBI','BI', '','c');	 
INSERT INTO cadastre.zone_type(
            code, display_value, description, status)
    VALUES ('zoneCodeAR','AR', '','c'); 	 
INSERT INTO cadastre.zone_type(
            code, display_value, description, status)
    VALUES ('zoneCodeYAU','YAU', '','c'); 	 
INSERT INTO cadastre.zone_type(
            code, display_value, description, status)
    VALUES ('zoneCodeZU','ZU', '','c');	 
INSERT INTO cadastre.zone_type(
            code, display_value, description, status)
    VALUES ('zoneCodeJE','JE', '','c');	 
INSERT INTO cadastre.zone_type(
            code, display_value, description, status)
    VALUES ('zoneCodeSS','SS', '','c');	 


INSERT INTO system.version SELECT '1512a' WHERE NOT EXISTS (SELECT version_num FROM system.version WHERE version_num = '1512a');