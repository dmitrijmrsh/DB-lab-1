SELECT crypt('some_good_password', gen_salt('bf'));

SELECT pgp_sym_encrypt('секретные данные', 'my_secret_key', 'compress-algo=1, cipher-algo=aes256');

SELECT pgp_sym_decrypt(
               pgp_sym_encrypt('секретные данные', 'my_secret_key', 'compress-algo=1, cipher-algo=aes256'),
               'my_secret_key'
    );

SELECT gen_random_bytes(16);