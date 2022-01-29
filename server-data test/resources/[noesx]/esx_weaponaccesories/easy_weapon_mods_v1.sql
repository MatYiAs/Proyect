INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('yusuf', 'Skin de Arma', 1, 0, 1),
('grip', 'Empuñadura', 1, 0, 1),
('flashlight', 'Linterna', 1, 0, 1),
('suppressor', 'Silenciador', 1, 0, 1);

INSERT INTO `shops` ( `store`, `item`, `price`) VALUES
( 'RobsLiquor', 'yusuf', 400),
( 'RobsLiquor', 'grip', 250),
( 'RobsLiquor', 'flashlight', 60),
( 'RobsLiquor', 'suppressor', 750);