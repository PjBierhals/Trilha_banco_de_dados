use gatilhos;

SHOW TRIGGERS;
SHOW TRIGGERS FROM gatilhos
WHERE `TABLE` = 'pedidos';
SHOW TRIGGERS FROM gatilhos
WHERE `TRIGGER`  like 'tr_atualizar%';