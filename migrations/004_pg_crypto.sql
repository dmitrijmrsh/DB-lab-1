CREATE SCHEMA IF NOT EXISTS auth;

CREATE TABLE auth.users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50),
    password BYTEA
);

CREATE EXTENSION IF NOT EXISTS pgcrypto;

INSERT INTO auth.users (username, password)
VALUES (
        'RobertJohnson1234',
        pgp_sym_encrypt(
                'password123',
                'some_password_key',
                'compress-algo=1, cipher-algo=aes256'
        )
);

CREATE EXTENSION IF NOT EXISTS pgcrypto;