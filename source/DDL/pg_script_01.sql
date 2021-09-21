CREATE DATABASE db_messaginghub
    WITH 
    OWNER = victor
    ENCODING = 'UTF8';

CREATE SCHEMA sc_messaginghub
    AUTHORIZATION victor;


CREATE ROLE con_messaginghub WITH LOGIN	PASSWORD 'victor';
COMMENT ON ROLE con_messaginghub IS 'Connection user to MessagingHub APP';

GRANT USAGE ON SCHEMA sc_messaginghub TO con_messaginghub;