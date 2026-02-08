--liquibase formatted sql

--changeset dml:1
--comment: Master changelog entry point
--include file="db/changelog/changes/001-initial-schema.sql"

--changeset dml:2
--comment: Add column email to users table
--include file="db/changelog/changes/002-add-email-to-users.sql"