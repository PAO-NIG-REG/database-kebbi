UPDATE administrative.ba_unit_detail_type
   SET  status='c',
       order_view=16
 WHERE code='estate';
 
UPDATE administrative.ba_unit_detail_type
   SET  status='c',
       order_view=17
 WHERE code='zone';

UPDATE administrative.ba_unit_detail_type
   SET  status='c',
       order_view=18
 WHERE code='LGA';

UPDATE administrative.ba_unit_detail_type
   SET  status='x',
       order_view=19
 WHERE code='IntellMapSheet';

UPDATE administrative.ba_unit_detail_type
   SET  status='x',
       order_view=20
 WHERE code='instrumentRegistrationNo';


UPDATE system.setting 
   SET vl = 'KE'
 WHERE name = 'system-id';
 

UPDATE system.br
  SET technical_description = 'It accepts parameters: 
  #{estate} = G – means that the land is granted by the Government, but is might be P , which means that the land is private , or customary owned land
  #{zone} = first two letters of the zonal area name 
  ' 
  WHERE id = 'generate-cofo-nr';


UPDATE system.br_definition
  SET body = 'SELECT #{zone} || ''/'' || #{estate} || ''/'' ||  to_char(now(), ''yymm'') || trim(to_char(nextval(''administrative.cofo_nr_seq''), ''0000'')) AS vl'
WHERE br_id = 'generate-cofo-nr';
  