SELECT setval(
    pg_get_serial_sequence('tabela','coluna'),
    (SELECT COALESCE(MAX(coluna),0) FROM tabela)
)
