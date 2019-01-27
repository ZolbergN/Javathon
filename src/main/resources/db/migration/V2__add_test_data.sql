insert into usr (id, username, password, active)
    values (1, 'admin', 'admin', true);

insert into user_role (user_id, roles)
    values (1, 'USER');

insert into target ( id, userid, transactionid, name, description, cost, createdate, expiredate,state)
    values (1, 1, 1, 'Изучить Spring', 'Планирую изучить к следующему месяцу Spring Framework', 1000000, '2019-01-21', '2019-02-21', 'ACTIVE');