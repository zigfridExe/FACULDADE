CREATE TABLE exemplo(
a INT,
b VARCHAR(3)
);
CREATE PROCEDURE proc_exemplo1 ( IN var_a INT, IN var_b VARCHAR(3) )
	INSERT exemplo VALUES (var_a, var_b);

CALL proc_exemplo1(1, 'AAA');
CALL proc_exemplo1(2, 'BBB');
CALL proc_exemplo1(3, 'CCC');
select * from exemplo;
CREATE PROCEDURE 
	proc_exemplo2 (var_a INT)
	DELETE FROM exemplo
	WHERE a = var_a;

CALL proc_exemplo2(2);

CREATE PROCEDURE proc_exemplo3
	(IN var_a INT, IN var_b VARCHAR(3))
UPDATE exemplo SET b = 'WWW' WHERE a = var_a AND b = var_b AND b = 'AAA';

CALL proc_exemplo3(2,'AAA');

SELECT b FROM exemplo WHERE a = 2;
SELECT b FROM exemplo WHERE a = 3;

show procedure status;
drop procedure proc_exemplo1;
drop procedure proc_exemplo2;
drop procedure proc_exemplo3;
drop table cliente;
