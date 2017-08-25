DO
$body$
BEGIN
   IF NOT EXISTS (SELECT * FROM pg_catalog.pg_user WHERE usename = 'vagrant') THEN
      CREATE ROLE vagrant LOGIN PASSWORD 'vagrant';
      ALTER ROLE vagrant WITH SUPERUSER;
   END IF;

END
$body$;
DROP DATABASE IF EXISTS vagrant;
CREATE DATABASE vagrant;
