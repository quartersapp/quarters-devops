DO
$body$
BEGIN
   IF NOT EXISTS (SELECT * FROM pg_catalog.pg_user WHERE usename = 'root') THEN
      CREATE ROLE root LOGIN PASSWORD 'root';
      ALTER ROLE root WITH SUPERUSER;
   END IF;

END
$body$;
DROP DATABASE IF EXISTS root;
