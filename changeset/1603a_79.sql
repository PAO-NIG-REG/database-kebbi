UPDATE public.geometry_columns SET srid = 32631;
UPDATE system.crs SET srid = 32631;

UPDATE system.setting SET vl = '554656' WHERE "name" = 'map-west'; 
UPDATE system.setting SET vl = '1106027' WHERE "name" = 'map-south'; 
UPDATE system.setting SET vl = '827089' WHERE "name" = 'map-east'; 
UPDATE system.setting SET vl = '1474993' WHERE "name" = 'map-north';



delete  from cadastre.spatial_unit_group_historic;
ALTER TABLE cadastre.spatial_unit_group_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.spatial_unit_group_historic ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = 32631);




INSERT INTO cadastre.spatial_unit_group_historic( name,id, hierarchy_level, label,  change_user, geom) SELECT name,id, hierarchy_level, label,  change_user, ST_Transform(
   ST_GeomFromText(
   ST_AsText(ST_GeometryN(geom, 1)),32632),32631)
   from cadastre.spatial_unit_group;



delete  from cadastre.spatial_unit_group;

ALTER TABLE cadastre.spatial_unit_group DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.spatial_unit_group ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = 32631);




INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  change_user, geom) SELECT name,id, hierarchy_level, label,  change_user, 
   geom
   from cadastre.spatial_unit_group_historic;


delete  from cadastre.spatial_unit_group_historic;

-- Reset the SRID check constraints
ALTER TABLE cadastre.spatial_unit DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.spatial_unit ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = 32631);
ALTER TABLE cadastre.spatial_unit_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.spatial_unit_historic ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = 32631);

ALTER TABLE cadastre.spatial_unit DROP CONSTRAINT IF EXISTS enforce_srid_reference_point;
ALTER TABLE cadastre.spatial_unit ADD CONSTRAINT enforce_srid_reference_point CHECK (st_srid(reference_point) = 32631);
ALTER TABLE cadastre.spatial_unit_historic DROP CONSTRAINT IF EXISTS enforce_srid_reference_point;
ALTER TABLE cadastre.spatial_unit_historic ADD CONSTRAINT enforce_srid_reference_point CHECK (st_srid(reference_point) = 32631);


ALTER TABLE cadastre.spatial_unit_group DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.spatial_unit_group ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = 32631);
ALTER TABLE cadastre.spatial_unit_group_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.spatial_unit_group_historic ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = 32631);

ALTER TABLE cadastre.spatial_unit_group DROP CONSTRAINT IF EXISTS enforce_srid_reference_point;
ALTER TABLE cadastre.spatial_unit_group ADD CONSTRAINT enforce_srid_reference_point CHECK (st_srid(reference_point) = 32631);
ALTER TABLE cadastre.spatial_unit_group_historic DROP CONSTRAINT IF EXISTS enforce_srid_reference_point;
ALTER TABLE cadastre.spatial_unit_group_historic ADD CONSTRAINT enforce_srid_reference_point CHECK (st_srid(reference_point) = 32631);



ALTER TABLE cadastre.cadastre_object DROP CONSTRAINT IF EXISTS enforce_srid_geom_polygon;
ALTER TABLE cadastre.cadastre_object ADD CONSTRAINT enforce_srid_geom_polygon CHECK (st_srid(geom_polygon) = 32631);
ALTER TABLE cadastre.cadastre_object_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom_polygon;
ALTER TABLE cadastre.cadastre_object_historic ADD CONSTRAINT enforce_srid_geom_polygon CHECK (st_srid(geom_polygon) = 32631);

ALTER TABLE cadastre.cadastre_object_target DROP CONSTRAINT IF EXISTS enforce_srid_geom_polygon;
ALTER TABLE cadastre.cadastre_object_target ADD CONSTRAINT enforce_srid_geom_polygon CHECK (st_srid(geom_polygon) = 32631);
ALTER TABLE cadastre.cadastre_object_target_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom_polygon;
ALTER TABLE cadastre.cadastre_object_target_historic ADD CONSTRAINT enforce_srid_geom_polygon CHECK (st_srid(geom_polygon) = 32631);

ALTER TABLE cadastre.cadastre_object_node_target DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.cadastre_object_node_target ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = 32631);
ALTER TABLE cadastre.cadastre_object_node_target_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.cadastre_object_node_target_historic ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = 32631);

ALTER TABLE application.application DROP CONSTRAINT IF EXISTS enforce_srid_location;
ALTER TABLE application.application ADD CONSTRAINT enforce_srid_location CHECK (st_srid(location) = 32631);
ALTER TABLE application.application_historic DROP CONSTRAINT IF EXISTS enforce_srid_location;
ALTER TABLE application.application_historic ADD CONSTRAINT enforce_srid_location CHECK (st_srid(location) = 32631);

ALTER TABLE cadastre.survey_point DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.survey_point ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = 32631);
ALTER TABLE cadastre.survey_point_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.survey_point_historic ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = 32631);

ALTER TABLE cadastre.survey_point DROP CONSTRAINT IF EXISTS enforce_srid_original_geom;
ALTER TABLE cadastre.survey_point ADD CONSTRAINT enforce_srid_original_geom CHECK (st_srid(original_geom) = 32631);
ALTER TABLE cadastre.survey_point_historic DROP CONSTRAINT IF EXISTS enforce_srid_original_geom;
ALTER TABLE cadastre.survey_point_historic ADD CONSTRAINT enforce_srid_original_geom CHECK (st_srid(original_geom) = 32631);

ALTER TABLE bulk_operation.spatial_unit_temporary DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE bulk_operation.spatial_unit_temporary ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = 32631);





 
delete from system.setting where name = 'map-srid';
Insert into system.setting (vl,"name", description)  select srid , 'map-srid', 'srid for the map' from system.crs where item_order=1 ; 




-- Function: get_geometry_with_srid(geometry)

-- DROP FUNCTION get_geometry_with_srid(geometry);

CREATE OR REPLACE FUNCTION get_geometry_with_srid(geom geometry)
  RETURNS geometry AS
$BODY$
declare
  srid_found integer;
  x float;
begin
  --if (select count(*) from system.crs) = 1 then
   --return 
   --ST_Transform(
   --ST_GeomFromText(
   --ST_AsText(ST_GeometryN(geom, 1)),ST_SRID(geom)),srid_found);
  --end if;
  x = st_x(st_transform(st_centroid(geom), 4326));
  srid_found = (select srid from system.crs where x >= from_long and x < to_long );
  --return st_transform(geom, srid_found);
 
   return 
   -- ST_SetSRID(ST_GeometryN(geom, 1),srid_found);
   ST_Transform(
   ST_GeomFromText(
   ST_AsText(ST_GeometryN(geom, 1)),ST_SRID(geom)),srid_found);
  --ST_SetSRID(ST_GeometryN(geom, 1),srid_found); 
end;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION get_geometry_with_srid(geometry)
  OWNER TO postgres;
COMMENT ON FUNCTION get_geometry_with_srid(geometry) IS 'This function assigns a srid found in the settings to the geometry passed as parameter. The srid is chosen based in the longitude where the centroid of the geometry is.';


INSERT INTO system.version SELECT '1601' WHERE NOT EXISTS (SELECT version_num FROM system.version WHERE version_num = '1601');
INSERT INTO system.version SELECT '1603a' WHERE NOT EXISTS (SELECT version_num FROM system.version WHERE version_num = '1603a');
INSERT INTO system.version SELECT '1603b' WHERE NOT EXISTS (SELECT version_num FROM system.version WHERE version_num = '1603b');
