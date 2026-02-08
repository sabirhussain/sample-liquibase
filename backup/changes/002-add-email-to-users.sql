--liquibase formatted sql

--changeset dml:2
--comment: Add column email to users table
ALTER TABLE users
ADD COLUMN email VARCHAR(255);

-- rollback ALTER TABLE users DROP COLUMN email;