--liquibase formatted sql

--changeset Sabir:20260205-002-add-email-to-users
--comment: Add column email to users table
ALTER TABLE users
ADD COLUMN email VARCHAR(255);

-- rollback ALTER TABLE users DROP COLUMN email;