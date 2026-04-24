-- ============================================================
--  BASE DE DATOS: usuarios_db
-- ============================================================
DROP DATABASE IF EXISTS usuarios_db;
CREATE DATABASE usuarios_db;
USE usuarios_db;

CREATE TABLE usuarios (
    usuario        VARCHAR(50)  NOT NULL,
    correo         VARCHAR(100) UNIQUE,
    nombre         VARCHAR(100),
    apellido       VARCHAR(100),
    password       VARCHAR(255),
    telefono       VARCHAR(20),
    fecha_registro DATE,
    estado         VARCHAR(20),
    rol            VARCHAR(20),
    PRIMARY KEY (usuario)
);


INSERT INTO usuarios
(usuario, correo, nombre, apellido, password, telefono, fecha_registro, estado, rol)
VALUES

('juan.giraldo200','juan.giraldo200@correo.com','Juan','Giraldo','pass200','3000000200',CURDATE(),'activo','usuario'),
('maria.cardenas201','maria.cardenas201@correo.com','María','Cárdenas','pass201','3000000201',CURDATE(),'activo','usuario'),
('jose.toro202','jose.toro202@correo.com','José','Toro','pass202','3000000202',CURDATE(),'activo','usuario'),
('ana.quintero203','ana.quintero203@correo.com','Ana','Quintero','pass203','3000000203',CURDATE(),'activo','usuario'),
('carlos.medina204','carlos.medina204@correo.com','Carlos','Medina','pass204','3000000204',CURDATE(),'activo','usuario'),

('laura.becerra205','laura.becerra205@correo.com','Laura','Becerra','pass205','3000000205',CURDATE(),'activo','usuario'),
('david.patino206','david.patino206@correo.com','David','Patiño','pass206','3000000206',CURDATE(),'activo','usuario'),
('sofia.munera207','sofia.munera207@correo.com','Sofía','Muñera','pass207','3000000207',CURDATE(),'activo','usuario'),
('andres.pinto208','andres.pinto208@correo.com','Andrés','Pinto','pass208','3000000208',CURDATE(),'activo','usuario'),
('camila.suaza209','camila.suaza209@correo.com','Camila','Suaza','pass209','3000000209',CURDATE(),'activo','usuario'),

('diego.rincon210','diego.rincon210@correo.com','Diego','Rincón','pass210','3000000210',CURDATE(),'activo','usuario'),
('valentina.cano211','valentina.cano211@correo.com','Valentina','Cano','pass211','3000000211',CURDATE(),'activo','usuario'),
('felipe.barrera212','felipe.barrera212@correo.com','Felipe','Barrera','pass212','3000000212',CURDATE(),'activo','usuario'),
('daniel.tellez213','daniel.tellez213@correo.com','Daniel','Téllez','pass213','3000000213',CURDATE(),'activo','usuario'),
('paula.mejia214','paula.mejia214@correo.com','Paula','Mejía','pass214','3000000214',CURDATE(),'activo','usuario'),

('javier.zuniga215','javier.zuniga215@correo.com','Javier','Zúñiga','pass215','3000000215',CURDATE(),'activo','usuario'),
('daniela.polo216','daniela.polo216@correo.com','Daniela','Polo','pass216','3000000216',CURDATE(),'activo','usuario'),
('sebastian.gallego217','sebastian.gallego217@correo.com','Sebastián','Gallego','pass217','3000000217',CURDATE(),'activo','usuario'),
('lucia.angulo218','lucia.angulo218@correo.com','Lucía','Angulo','pass218','3000000218',CURDATE(),'activo','usuario'),
('miguel.vera219','miguel.vera219@correo.com','Miguel','Vera','pass219','3000000219',CURDATE(),'activo','usuario'),

('juan.montoya220','juan.montoya220@correo.com','Juan','Montoya','pass220','3000000220',CURDATE(),'activo','usuario'),
('maria.carrasco221','maria.carrasco221@correo.com','María','Carrasco','pass221','3000000221',CURDATE(),'activo','usuario'),
('jose.hernan222','jose.hernan222@correo.com','José','Hernán','pass222','3000000222',CURDATE(),'activo','usuario'),
('ana.bolivar223','ana.bolivar223@correo.com','Ana','Bolívar','pass223','3000000223',CURDATE(),'activo','usuario'),
('carlos.estrada224','carlos.estrada224@correo.com','Carlos','Estrada','pass224','3000000224',CURDATE(),'activo','usuario'),

('laura.santana225','laura.santana225@correo.com','Laura','Santana','pass225','3000000225',CURDATE(),'activo','usuario'),
('david.cerda226','david.cerda226@correo.com','David','Cerda','pass226','3000000226',CURDATE(),'activo','usuario'),
('sofia.porras227','sofia.porras227@correo.com','Sofía','Porras','pass227','3000000227',CURDATE(),'activo','usuario'),
('andres.pelaez228','andres.pelaez228@correo.com','Andrés','Peláez','pass228','3000000228',CURDATE(),'activo','usuario'),
('camila.rocha229','camila.rocha229@correo.com','Camila','Rocha','pass229','3000000229',CURDATE(),'activo','usuario'),

('diego.martin230','diego.martin230@correo.com','Diego','Martín','pass230','3000000230',CURDATE(),'activo','usuario'),
('valentina.reyes231','valentina.reyes231@correo.com','Valentina','Reyes','pass231','3000000231',CURDATE(),'activo','usuario'),
('felipe.daza232','felipe.daza232@correo.com','Felipe','Daza','pass232','3000000232',CURDATE(),'activo','usuario'),
('daniel.mora233','daniel.mora233@correo.com','Daniel','Mora','pass233','3000000233',CURDATE(),'activo','usuario'),
('paula.giraldo234','paula.giraldo234@correo.com','Paula','Giraldo','pass234','3000000234',CURDATE(),'activo','usuario'),

('javier.vasquez235','javier.vasquez235@correo.com','Javier','Vásquez','pass235','3000000235',CURDATE(),'activo','usuario'),
('daniela.ponce236','daniela.ponce236@correo.com','Daniela','Ponce','pass236','3000000236',CURDATE(),'activo','usuario'),
('sebastian.torres237','sebastian.torres237@correo.com','Sebastián','Torres','pass237','3000000237',CURDATE(),'activo','usuario'),
('lucia.marin238','lucia.marin238@correo.com','Lucía','Marín','pass238','3000000238',CURDATE(),'activo','usuario'),
('miguel.lopez239','miguel.lopez239@correo.com','Miguel','López','pass239','3000000239',CURDATE(),'activo','usuario'),

('juan.suarez240','juan.suarez240@correo.com','Juan','Suárez','pass240','3000000240',CURDATE(),'activo','usuario'),
('maria.arias241','maria.arias241@correo.com','María','Arias','pass241','3000000241',CURDATE(),'activo','usuario'),
('jose.calle242','jose.calle242@correo.com','José','Calle','pass242','3000000242',CURDATE(),'activo','usuario'),
('ana.bustos243','ana.bustos243@correo.com','Ana','Bustos','pass243','3000000243',CURDATE(),'activo','usuario'),
('carlos.velez244','carlos.velez244@correo.com','Carlos','Vélez','pass244','3000000244',CURDATE(),'activo','usuario'),

('laura.caballero245','laura.caballero245@correo.com','Laura','Caballero','pass245','3000000245',CURDATE(),'activo','usuario'),
('david.patino246','david.patino246@correo.com','David','Patiño','pass246','3000000246',CURDATE(),'activo','usuario'),
('sofia.garzon247','sofia.garzon247@correo.com','Sofía','Garzón','pass247','3000000247',CURDATE(),'activo','usuario'),
('andres.cardenas248','andres.cardenas248@correo.com','Andrés','Cárdenas','pass248','3000000248',CURDATE(),'activo','usuario'),
('camila.cano249','camila.cano249@correo.com','Camila','Cano','pass249','3000000249',CURDATE(),'activo','usuario'),

('diego.benitez250','diego.benitez250@correo.com','Diego','Benítez','pass250','3000000250',CURDATE(),'activo','usuario'),
('valentina.arias251','valentina.arias251@correo.com','Valentina','Arias','pass251','3000000251',CURDATE(),'activo','usuario'),
('felipe.montes252','felipe.montes252@correo.com','Felipe','Montes','pass252','3000000252',CURDATE(),'activo','usuario'),
('daniel.ponce253','daniel.ponce253@correo.com','Daniel','Ponce','pass253','3000000253',CURDATE(),'activo','usuario'),
('paula.sierra254','paula.sierra254@correo.com','Paula','Sierra','pass254','3000000254',CURDATE(),'activo','usuario'),

('javier.torres255','javier.torres255@correo.com','Javier','Torres','pass255','3000000255',CURDATE(),'activo','usuario'),
('daniela.munoz256','daniela.munoz256@correo.com','Daniela','Muñoz','pass256','3000000256',CURDATE(),'activo','usuario'),
('sebastian.vargas257','sebastian.vargas257@correo.com','Sebastián','Vargas','pass257','3000000257',CURDATE(),'activo','usuario'),
('lucia.rodriguez258','lucia.rodriguez258@correo.com','Lucía','Rodríguez','pass258','3000000258',CURDATE(),'activo','usuario'),
('miguel.hernandez259','miguel.hernandez259@correo.com','Miguel','Hernández','pass259','3000000259',CURDATE(),'activo','usuario'),

('juan.perez260','juan.perez260@correo.com','Juan','Pérez','pass260','3000000260',CURDATE(),'activo','usuario'),
('maria.lopez261','maria.lopez261@correo.com','María','López','pass261','3000000261',CURDATE(),'activo','usuario'),
('jose.gomez262','jose.gomez262@correo.com','José','Gómez','pass262','3000000262',CURDATE(),'activo','usuario'),
('ana.martinez263','ana.martinez263@correo.com','Ana','Martínez','pass263','3000000263',CURDATE(),'activo','usuario'),
('carlos.sanchez264','carlos.sanchez264@correo.com','Carlos','Sánchez','pass264','3000000264',CURDATE(),'activo','usuario'),

('laura.rojas265','laura.rojas265@correo.com','Laura','Rojas','pass265','3000000265',CURDATE(),'activo','usuario'),
('david.torres266','david.torres266@correo.com','David','Torres','pass266','3000000266',CURDATE(),'activo','usuario'),
('sofia.diaz267','sofia.diaz267@correo.com','Sofía','Díaz','pass267','3000000267',CURDATE(),'activo','usuario'),
('andres.hernandez268','andres.hernandez268@correo.com','Andrés','Hernández','pass268','3000000268',CURDATE(),'activo','usuario'),
('camila.ruiz269','camila.ruiz269@correo.com','Camila','Ruiz','pass269','3000000269',CURDATE(),'activo','usuario'),

('diego.garcia270','diego.garcia270@correo.com','Diego','García','pass270','3000000270',CURDATE(),'activo','usuario'),
('valentina.lopez271','valentina.lopez271@correo.com','Valentina','López','pass271','3000000271',CURDATE(),'activo','usuario'),
('felipe.moreno272','felipe.moreno272@correo.com','Felipe','Moreno','pass272','3000000272',CURDATE(),'activo','usuario'),
('daniel.castillo273','daniel.castillo273@correo.com','Daniel','Castillo','pass273','3000000273',CURDATE(),'activo','usuario'),
('paula.vargas274','paula.vargas274@correo.com','Paula','Vargas','pass274','3000000274',CURDATE(),'activo','usuario'),

('javier.suarez275','javier.suarez275@correo.com','Javier','Suárez','pass275','3000000275',CURDATE(),'activo','usuario'),
('daniela.martin276','daniela.martin276@correo.com','Daniela','Martín','pass276','3000000276',CURDATE(),'activo','usuario'),
('sebastian.rocha277','sebastian.rocha277@correo.com','Sebastián','Rocha','pass277','3000000277',CURDATE(),'activo','usuario'),
('lucia.molina278','lucia.molina278@correo.com','Lucía','Molina','pass278','3000000278',CURDATE(),'activo','usuario'),
('miguel.cano279','miguel.cano279@correo.com','Miguel','Cano','pass279','3000000279',CURDATE(),'activo','usuario'),

('juan.paz280','juan.paz280@correo.com','Juan','Paz','pass280','3000000280',CURDATE(),'activo','usuario'),
('maria.arias281','maria.arias281@correo.com','María','Arias','pass281','3000000281',CURDATE(),'activo','usuario'),
('jose.mejia282','jose.mejia282@correo.com','José','Mejía','pass282','3000000282',CURDATE(),'activo','usuario'),
('ana.bustos283','ana.bustos283@correo.com','Ana','Bustos','pass283','3000000283',CURDATE(),'activo','usuario'),
('carlos.uribe284','carlos.uribe284@correo.com','Carlos','Uribe','pass284','3000000284',CURDATE(),'activo','usuario'),

('laura.henao285','laura.henao285@correo.com','Laura','Henao','pass285','3000000285',CURDATE(),'activo','usuario'),
('david.tique286','david.tique286@correo.com','David','Tique','pass286','3000000286',CURDATE(),'activo','usuario'),
('sofia.montenegro287','sofia.montenegro287@correo.com','Sofía','Montenegro','pass287','3000000287',CURDATE(),'activo','usuario'),
('andres.ponce288','andres.ponce288@correo.com','Andrés','Ponce','pass288','3000000288',CURDATE(),'activo','usuario'),
('camila.bernal289','camila.bernal289@correo.com','Camila','Bernal','pass289','3000000289',CURDATE(),'activo','usuario'),

('diego.estrada290','diego.estrada290@correo.com','Diego','Estrada','pass290','3000000290',CURDATE(),'activo','usuario'),
('valentina.cardenas291','valentina.cardenas291@correo.com','Valentina','Cárdenas','pass291','3000000291',CURDATE(),'activo','usuario'),
('felipe.torres292','felipe.torres292@correo.com','Felipe','Torres','pass292','3000000292',CURDATE(),'activo','usuario'),
('daniel.lopez293','daniel.lopez293@correo.com','Daniel','López','pass293','3000000293',CURDATE(),'activo','usuario'),
('paula.rojas294','paula.rojas294@correo.com','Paula','Rojas','pass294','3000000294',CURDATE(),'activo','usuario'),

('javier.sanchez295','javier.sanchez295@correo.com','Javier','Sánchez','pass295','3000000295',CURDATE(),'activo','usuario'),
('daniela.gomez296','daniela.gomez296@correo.com','Daniela','Gómez','pass296','3000000296',CURDATE(),'activo','usuario'),
('sebastian.perez297','sebastian.perez297@correo.com','Sebastián','Pérez','pass297','3000000297',CURDATE(),'activo','usuario'),
('lucia.martinez298','lucia.martinez298@correo.com','Lucía','Martínez','pass298','3000000298',CURDATE(),'activo','usuario'),
('miguel.garcia299','miguel.garcia299@correo.com','Miguel','García','pass299','3000000299',CURDATE(),'activo','usuario');

INSERT INTO usuarios
(usuario, correo, nombre, apellido, password, telefono, fecha_registro, estado, rol)
VALUES

('juan.martin100','juan.martin100@correo.com','Juan','Martín','pass100','3000000100',CURDATE(),'activo','usuario'),
('maria.fernandez101','maria.fernandez101@correo.com','María','Fernández','pass101','3000000101',CURDATE(),'activo','usuario'),
('jose.morales102','jose.morales102@correo.com','José','Morales','pass102','3000000102',CURDATE(),'activo','usuario'),
('ana.castro103','ana.castro103@correo.com','Ana','Castro','pass103','3000000103',CURDATE(),'activo','usuario'),
('carlos.romero104','carlos.romero104@correo.com','Carlos','Romero','pass104','3000000104',CURDATE(),'activo','usuario'),
('laura.vasquez105','laura.vasquez105@correo.com','Laura','Vásquez','pass105','3000000105',CURDATE(),'activo','usuario'),
('david.ortiz106','david.ortiz106@correo.com','David','Ortiz','pass106','3000000106',CURDATE(),'activo','usuario'),
('sofia.reyes107','sofia.reyes107@correo.com','Sofía','Reyes','pass107','3000000107',CURDATE(),'activo','usuario'),
('andres.mendoza108','andres.mendoza108@correo.com','Andrés','Mendoza','pass108','3000000108',CURDATE(),'activo','usuario'),
('camila.aguilar109','camila.aguilar109@correo.com','Camila','Aguilar','pass109','3000000109',CURDATE(),'activo','usuario'),

('diego.arias110','diego.arias110@correo.com','Diego','Arias','pass110','3000000110',CURDATE(),'activo','usuario'),
('valentina.suarez111','valentina.suarez111@correo.com','Valentina','Suárez','pass111','3000000111',CURDATE(),'activo','usuario'),
('felipe.martin112','felipe.martin112@correo.com','Felipe','Martín','pass112','3000000112',CURDATE(),'activo','usuario'),
('daniel.navarro113','daniel.navarro113@correo.com','Daniel','Navarro','pass113','3000000113',CURDATE(),'activo','usuario'),
('paula.rios114','paula.rios114@correo.com','Paula','Ríos','pass114','3000000114',CURDATE(),'activo','usuario'),

('javier.moreno115','javier.moreno115@correo.com','Javier','Moreno','pass115','3000000115',CURDATE(),'activo','usuario'),
('daniela.paredes116','daniela.paredes116@correo.com','Daniela','Paredes','pass116','3000000116',CURDATE(),'activo','usuario'),
('sebastian.carrillo117','sebastian.carrillo117@correo.com','Sebastián','Carrillo','pass117','3000000117',CURDATE(),'activo','usuario'),
('lucia.vega118','lucia.vega118@correo.com','Lucía','Vega','pass118','3000000118',CURDATE(),'activo','usuario'),
('miguel.soto119','miguel.soto119@correo.com','Miguel','Soto','pass119','3000000119',CURDATE(),'activo','usuario'),

('juan.moreno120','juan.moreno120@correo.com','Juan','Moreno','pass120','3000000120',CURDATE(),'activo','usuario'),
('maria.ortega121','maria.ortega121@correo.com','María','Ortega','pass121','3000000121',CURDATE(),'activo','usuario'),
('jose.cardenas122','jose.cardenas122@correo.com','José','Cárdenas','pass122','3000000122',CURDATE(),'activo','usuario'),
('ana.silva123','ana.silva123@correo.com','Ana','Silva','pass123','3000000123',CURDATE(),'activo','usuario'),
('carlos.mejia124','carlos.mejia124@correo.com','Carlos','Mejía','pass124','3000000124',CURDATE(),'activo','usuario'),

('laura.beltran125','laura.beltran125@correo.com','Laura','Beltrán','pass125','3000000125',CURDATE(),'activo','usuario'),
('david.cortes126','david.cortes126@correo.com','David','Cortés','pass126','3000000126',CURDATE(),'activo','usuario'),
('sofia.munoz127','sofia.munoz127@correo.com','Sofía','Muñoz','pass127','3000000127',CURDATE(),'activo','usuario'),
('andres.guerrero128','andres.guerrero128@correo.com','Andrés','Guerrero','pass128','3000000128',CURDATE(),'activo','usuario'),
('camila.luna129','camila.luna129@correo.com','Camila','Luna','pass129','3000000129',CURDATE(),'activo','usuario'),

('diego.rojas130','diego.rojas130@correo.com','Diego','Rojas','pass130','3000000130',CURDATE(),'activo','usuario'),
('valentina.mora131','valentina.mora131@correo.com','Valentina','Mora','pass131','3000000131',CURDATE(),'activo','usuario'),
('felipe.santana132','felipe.santana132@correo.com','Felipe','Santana','pass132','3000000132',CURDATE(),'activo','usuario'),
('daniel.cano133','daniel.cano133@correo.com','Daniel','Cano','pass133','3000000133',CURDATE(),'activo','usuario'),
('paula.gomez134','paula.gomez134@correo.com','Paula','Gómez','pass134','3000000134',CURDATE(),'activo','usuario'),

('javier.tovar135','javier.tovar135@correo.com','Javier','Tovar','pass135','3000000135',CURDATE(),'activo','usuario'),
('daniela.rangel136','daniela.rangel136@correo.com','Daniela','Rangel','pass136','3000000136',CURDATE(),'activo','usuario'),
('sebastian.celis137','sebastian.celis137@correo.com','Sebastián','Celis','pass137','3000000137',CURDATE(),'activo','usuario'),
('lucia.figueroa138','lucia.figueroa138@correo.com','Lucía','Figueroa','pass138','3000000138',CURDATE(),'activo','usuario'),
('miguel.pineda139','miguel.pineda139@correo.com','Miguel','Pineda','pass139','3000000139',CURDATE(),'activo','usuario'),

('juan.escobar140','juan.escobar140@correo.com','Juan','Escobar','pass140','3000000140',CURDATE(),'activo','usuario'),
('maria.torres141','maria.torres141@correo.com','María','Torres','pass141','3000000141',CURDATE(),'activo','usuario'),
('jose.vera142','jose.vera142@correo.com','José','Vera','pass142','3000000142',CURDATE(),'activo','usuario'),
('ana.escudero143','ana.escudero143@correo.com','Ana','Escudero','pass143','3000000143',CURDATE(),'activo','usuario'),
('carlos.bautista144','carlos.bautista144@correo.com','Carlos','Bautista','pass144','3000000144',CURDATE(),'activo','usuario'),

('laura.angulo145','laura.angulo145@correo.com','Laura','Angulo','pass145','3000000145',CURDATE(),'activo','usuario'),
('david.chavez146','david.chavez146@correo.com','David','Chávez','pass146','3000000146',CURDATE(),'activo','usuario'),
('sofia.villegas147','sofia.villegas147@correo.com','Sofía','Villegas','pass147','3000000147',CURDATE(),'activo','usuario'),
('andres.cifuentes148','andres.cifuentes148@correo.com','Andrés','Cifuentes','pass148','3000000148',CURDATE(),'activo','usuario'),
('camila.prieto149','camila.prieto149@correo.com','Camila','Prieto','pass149','3000000149',CURDATE(),'activo','usuario'),

('diego.martinez150','diego.martinez150@correo.com','Diego','Martínez','pass150','3000000150',CURDATE(),'activo','usuario'),
('valentina.restrepo151','valentina.restrepo151@correo.com','Valentina','Restrepo','pass151','3000000151',CURDATE(),'activo','usuario'),
('felipe.beltran152','felipe.beltran152@correo.com','Felipe','Beltrán','pass152','3000000152',CURDATE(),'activo','usuario'),
('daniel.lozano153','daniel.lozano153@correo.com','Daniel','Lozano','pass153','3000000153',CURDATE(),'activo','usuario'),
('paula.marin154','paula.marin154@correo.com','Paula','Marín','pass154','3000000154',CURDATE(),'activo','usuario'),

('javier.zapata155','javier.zapata155@correo.com','Javier','Zapata','pass155','3000000155',CURDATE(),'activo','usuario'),
('daniela.ponce156','daniela.ponce156@correo.com','Daniela','Ponce','pass156','3000000156',CURDATE(),'activo','usuario'),
('sebastian.carreno157','sebastian.carreno157@correo.com','Sebastián','Carreño','pass157','3000000157',CURDATE(),'activo','usuario'),
('lucia.barrera158','lucia.barrera158@correo.com','Lucía','Barrera','pass158','3000000158',CURDATE(),'activo','usuario'),
('miguel.valencia159','miguel.valencia159@correo.com','Miguel','Valencia','pass159','3000000159',CURDATE(),'activo','usuario'),

('juan.nieto160','juan.nieto160@correo.com','Juan','Nieto','pass160','3000000160',CURDATE(),'activo','usuario'),
('maria.rodrigo161','maria.rodrigo161@correo.com','María','Rodrigo','pass161','3000000161',CURDATE(),'activo','usuario'),
('jose.suaza162','jose.suaza162@correo.com','José','Suaza','pass162','3000000162',CURDATE(),'activo','usuario'),
('ana.montoya163','ana.montoya163@correo.com','Ana','Montoya','pass163','3000000163',CURDATE(),'activo','usuario'),
('carlos.pedraza164','carlos.pedraza164@correo.com','Carlos','Pedraza','pass164','3000000164',CURDATE(),'activo','usuario'),

('laura.henao165','laura.henao165@correo.com','Laura','Henao','pass165','3000000165',CURDATE(),'activo','usuario'),
('david.cardenas166','david.cardenas166@correo.com','David','Cárdenas','pass166','3000000166',CURDATE(),'activo','usuario'),
('sofia.buitrago167','sofia.buitrago167@correo.com','Sofía','Buitrago','pass167','3000000167',CURDATE(),'activo','usuario'),
('andres.salgado168','andres.salgado168@correo.com','Andrés','Salgado','pass168','3000000168',CURDATE(),'activo','usuario'),
('camila.espinosa169','camila.espinosa169@correo.com','Camila','Espinosa','pass169','3000000169',CURDATE(),'activo','usuario'),

('diego.paz170','diego.paz170@correo.com','Diego','Paz','pass170','3000000170',CURDATE(),'activo','usuario'),
('valentina.bonilla171','valentina.bonilla171@correo.com','Valentina','Bonilla','pass171','3000000171',CURDATE(),'activo','usuario'),
('felipe.naranjo172','felipe.naranjo172@correo.com','Felipe','Naranjo','pass172','3000000172',CURDATE(),'activo','usuario'),
('daniel.villamil173','daniel.villamil173@correo.com','Daniel','Villamil','pass173','3000000173',CURDATE(),'activo','usuario'),
('paula.sierra174','paula.sierra174@correo.com','Paula','Sierra','pass174','3000000174',CURDATE(),'activo','usuario'),

('javier.alarcon175','javier.alarcon175@correo.com','Javier','Alarcón','pass175','3000000175',CURDATE(),'activo','usuario'),
('daniela.cardona176','daniela.cardona176@correo.com','Daniela','Cardona','pass176','3000000176',CURDATE(),'activo','usuario'),
('sebastian.pinto177','sebastian.pinto177@correo.com','Sebastián','Pinto','pass177','3000000177',CURDATE(),'activo','usuario'),
('lucia.bernal178','lucia.bernal178@correo.com','Lucía','Bernal','pass178','3000000178',CURDATE(),'activo','usuario'),
('miguel.suarez179','miguel.suarez179@correo.com','Miguel','Suárez','pass179','3000000179',CURDATE(),'activo','usuario'),

('juan.arias180','juan.arias180@correo.com','Juan','Arias','pass180','3000000180',CURDATE(),'activo','usuario'),
('maria.estrada181','maria.estrada181@correo.com','María','Estrada','pass181','3000000181',CURDATE(),'activo','usuario'),
('jose.mejia182','jose.mejia182@correo.com','José','Mejía','pass182','3000000182',CURDATE(),'activo','usuario'),
('ana.caballero183','ana.caballero183@correo.com','Ana','Caballero','pass183','3000000183',CURDATE(),'activo','usuario'),
('carlos.uribe184','carlos.uribe184@correo.com','Carlos','Uribe','pass184','3000000184',CURDATE(),'activo','usuario'),

('laura.pulido185','laura.pulido185@correo.com','Laura','Pulido','pass185','3000000185',CURDATE(),'activo','usuario'),
('david.tique186','david.tique186@correo.com','David','Tique','pass186','3000000186',CURDATE(),'activo','usuario'),
('sofia.romero187','sofia.romero187@correo.com','Sofía','Romero','pass187','3000000187',CURDATE(),'activo','usuario'),
('andres.molina188','andres.molina188@correo.com','Andrés','Molina','pass188','3000000188',CURDATE(),'activo','usuario'),
('camila.ponce189','camila.ponce189@correo.com','Camila','Ponce','pass189','3000000189',CURDATE(),'activo','usuario'),

('diego.montes190','diego.montes190@correo.com','Diego','Montes','pass190','3000000190',CURDATE(),'activo','usuario'),
('valentina.aguirre191','valentina.aguirre191@correo.com','Valentina','Aguirre','pass191','3000000191',CURDATE(),'activo','usuario'),
('felipe.castro192','felipe.castro192@correo.com','Felipe','Castro','pass192','3000000192',CURDATE(),'activo','usuario'),
('daniel.bustamante193','daniel.bustamante193@correo.com','Daniel','Bustamante','pass193','3000000193',CURDATE(),'activo','usuario'),
('paula.mosquera194','paula.mosquera194@correo.com','Paula','Mosquera','pass194','3000000194',CURDATE(),'activo','usuario'),

('javier.zambrano195','javier.zambrano195@correo.com','Javier','Zambrano','pass195','3000000195',CURDATE(),'activo','usuario'),
('daniela.pardo196','daniela.pardo196@correo.com','Daniela','Pardo','pass196','3000000196',CURDATE(),'activo','usuario'),
('sebastian.cano197','sebastian.cano197@correo.com','Sebastián','Cano','pass197','3000000197',CURDATE(),'activo','usuario'),
('lucia.montenegro198','lucia.montenegro198@correo.com','Lucía','Montenegro','pass198','3000000198',CURDATE(),'activo','usuario'),
('miguel.lopez199','miguel.lopez199@correo.com','Miguel','López','pass199','3000000199',CURDATE(),'activo','usuario');

INSERT INTO usuarios
(usuario, correo, nombre, apellido, password, telefono, fecha_registro, estado, rol)
VALUES

-- 🔴 ADMIN
('admin','admin@biblioteca.com','Admin','Principal','admin123','3000000000',CURDATE(),'activo','admin'),

-- 🟢 USUARIOS NORMALES (99)

('juan.perez1','juan.perez1@correo.com','Juan','Pérez','pass001','3000000001',CURDATE(),'activo','usuario'),
('maria.garcia2','maria.garcia2@correo.com','María','García','pass002','3000000002',CURDATE(),'activo','usuario'),
('jose.rodriguez3','jose.rodriguez3@correo.com','José','Rodríguez','pass003','3000000003',CURDATE(),'activo','usuario'),
('ana.lopez4','ana.lopez4@correo.com','Ana','López','pass004','3000000004',CURDATE(),'activo','usuario'),
('carlos.martinez5','carlos.martinez5@correo.com','Carlos','Martínez','pass005','3000000005',CURDATE(),'activo','usuario'),
('laura.gonzalez6','laura.gonzalez6@correo.com','Laura','González','pass006','3000000006',CURDATE(),'activo','usuario'),
('david.sanchez7','david.sanchez7@correo.com','David','Sánchez','pass007','3000000007',CURDATE(),'activo','usuario'),
('sofia.ramirez8','sofia.ramirez8@correo.com','Sofía','Ramírez','pass008','3000000008',CURDATE(),'activo','usuario'),
('andres.torres9','andres.torres9@correo.com','Andrés','Torres','pass009','3000000009',CURDATE(),'activo','usuario'),
('camila.diaz10','camila.diaz10@correo.com','Camila','Díaz','pass010','3000000010',CURDATE(),'activo','usuario'),

('diego.hernandez11','diego.hernandez11@correo.com','Diego','Hernández','pass011','3000000011',CURDATE(),'activo','usuario'),
('valentina.ruiz12','valentina.ruiz12@correo.com','Valentina','Ruiz','pass012','3000000012',CURDATE(),'activo','usuario'),
('felipe.moreno13','felipe.moreno13@correo.com','Felipe','Moreno','pass013','3000000013',CURDATE(),'activo','usuario'),
('daniel.vargas14','daniel.vargas14@correo.com','Daniel','Vargas','pass014','3000000014',CURDATE(),'activo','usuario'),
('paula.castillo15','paula.castillo15@correo.com','Paula','Castillo','pass015','3000000015',CURDATE(),'activo','usuario'),

('javier.perez16','javier.perez16@correo.com','Javier','Pérez','pass016','3000000016',CURDATE(),'activo','usuario'),
('daniela.garcia17','daniela.garcia17@correo.com','Daniela','García','pass017','3000000017',CURDATE(),'activo','usuario'),
('sebastian.lopez18','sebastian.lopez18@correo.com','Sebastián','López','pass018','3000000018',CURDATE(),'activo','usuario'),
('lucia.rodriguez19','lucia.rodriguez19@correo.com','Lucía','Rodríguez','pass019','3000000019',CURDATE(),'activo','usuario'),
('miguel.gonzalez20','miguel.gonzalez20@correo.com','Miguel','González','pass020','3000000020',CURDATE(),'activo','usuario'),

('juan.martinez21','juan.martinez21@correo.com','Juan','Martínez','pass021','3000000021',CURDATE(),'activo','usuario'),
('maria.lopez22','maria.lopez22@correo.com','María','López','pass022','3000000022',CURDATE(),'activo','usuario'),
('jose.garcia23','jose.garcia23@correo.com','José','García','pass023','3000000023',CURDATE(),'activo','usuario'),
('ana.perez24','ana.perez24@correo.com','Ana','Pérez','pass024','3000000024',CURDATE(),'activo','usuario'),
('carlos.rodriguez25','carlos.rodriguez25@correo.com','Carlos','Rodríguez','pass025','3000000025',CURDATE(),'activo','usuario'),

('laura.sanchez26','laura.sanchez26@correo.com','Laura','Sánchez','pass026','3000000026',CURDATE(),'activo','usuario'),
('david.ramirez27','david.ramirez27@correo.com','David','Ramírez','pass027','3000000027',CURDATE(),'activo','usuario'),
('sofia.torres28','sofia.torres28@correo.com','Sofía','Torres','pass028','3000000028',CURDATE(),'activo','usuario'),
('andres.diaz29','andres.diaz29@correo.com','Andrés','Díaz','pass029','3000000029',CURDATE(),'activo','usuario'),
('camila.hernandez30','camila.hernandez30@correo.com','Camila','Hernández','pass030','3000000030',CURDATE(),'activo','usuario'),

('diego.ruiz31','diego.ruiz31@correo.com','Diego','Ruiz','pass031','3000000031',CURDATE(),'activo','usuario'),
('valentina.moreno32','valentina.moreno32@correo.com','Valentina','Moreno','pass032','3000000032',CURDATE(),'activo','usuario'),
('felipe.vargas33','felipe.vargas33@correo.com','Felipe','Vargas','pass033','3000000033',CURDATE(),'activo','usuario'),
('daniel.castillo34','daniel.castillo34@correo.com','Daniel','Castillo','pass034','3000000034',CURDATE(),'activo','usuario'),
('paula.garcia35','paula.garcia35@correo.com','Paula','García','pass035','3000000035',CURDATE(),'activo','usuario'),

('javier.lopez36','javier.lopez36@correo.com','Javier','López','pass036','3000000036',CURDATE(),'activo','usuario'),
('daniela.perez37','daniela.perez37@correo.com','Daniela','Pérez','pass037','3000000037',CURDATE(),'activo','usuario'),
('sebastian.rodriguez38','sebastian.rodriguez38@correo.com','Sebastián','Rodríguez','pass038','3000000038',CURDATE(),'activo','usuario'),
('lucia.gonzalez39','lucia.gonzalez39@correo.com','Lucía','González','pass039','3000000039',CURDATE(),'activo','usuario'),
('miguel.sanchez40','miguel.sanchez40@correo.com','Miguel','Sánchez','pass040','3000000040',CURDATE(),'activo','usuario'),

('juan.ramirez41','juan.ramirez41@correo.com','Juan','Ramírez','pass041','3000000041',CURDATE(),'activo','usuario'),
('maria.torres42','maria.torres42@correo.com','María','Torres','pass042','3000000042',CURDATE(),'activo','usuario'),
('jose.diaz43','jose.diaz43@correo.com','José','Díaz','pass043','3000000043',CURDATE(),'activo','usuario'),
('ana.hernandez44','ana.hernandez44@correo.com','Ana','Hernández','pass044','3000000044',CURDATE(),'activo','usuario'),
('carlos.ruiz45','carlos.ruiz45@correo.com','Carlos','Ruiz','pass045','3000000045',CURDATE(),'activo','usuario'),

('laura.moreno46','laura.moreno46@correo.com','Laura','Moreno','pass046','3000000046',CURDATE(),'activo','usuario'),
('david.vargas47','david.vargas47@correo.com','David','Vargas','pass047','3000000047',CURDATE(),'activo','usuario'),
('sofia.castillo48','sofia.castillo48@correo.com','Sofía','Castillo','pass048','3000000048',CURDATE(),'activo','usuario'),
('andres.garcia49','andres.garcia49@correo.com','Andrés','García','pass049','3000000049',CURDATE(),'activo','usuario'),
('camila.lopez50','camila.lopez50@correo.com','Camila','López','pass050','3000000050',CURDATE(),'activo','usuario'),

('diego.perez51','diego.perez51@correo.com','Diego','Pérez','pass051','3000000051',CURDATE(),'activo','usuario'),
('valentina.rodriguez52','valentina.rodriguez52@correo.com','Valentina','Rodríguez','pass052','3000000052',CURDATE(),'activo','usuario'),
('felipe.sanchez53','felipe.sanchez53@correo.com','Felipe','Sánchez','pass053','3000000053',CURDATE(),'activo','usuario'),
('daniel.ramirez54','daniel.ramirez54@correo.com','Daniel','Ramírez','pass054','3000000054',CURDATE(),'activo','usuario'),
('paula.torres55','paula.torres55@correo.com','Paula','Torres','pass055','3000000055',CURDATE(),'activo','usuario'),

('javier.diaz56','javier.diaz56@correo.com','Javier','Díaz','pass056','3000000056',CURDATE(),'activo','usuario'),
('daniela.hernandez57','daniela.hernandez57@correo.com','Daniela','Hernández','pass057','3000000057',CURDATE(),'activo','usuario'),
('sebastian.ruiz58','sebastian.ruiz58@correo.com','Sebastián','Ruiz','pass058','3000000058',CURDATE(),'activo','usuario'),
('lucia.moreno59','lucia.moreno59@correo.com','Lucía','Moreno','pass059','3000000059',CURDATE(),'activo','usuario'),
('miguel.vargas60','miguel.vargas60@correo.com','Miguel','Vargas','pass060','3000000060',CURDATE(),'activo','usuario'),

('juan.castillo61','juan.castillo61@correo.com','Juan','Castillo','pass061','3000000061',CURDATE(),'activo','usuario'),
('maria.garcia62','maria.garcia62@correo.com','María','García','pass062','3000000062',CURDATE(),'activo','usuario'),
('jose.lopez63','jose.lopez63@correo.com','José','López','pass063','3000000063',CURDATE(),'activo','usuario'),
('ana.rodriguez64','ana.rodriguez64@correo.com','Ana','Rodríguez','pass064','3000000064',CURDATE(),'activo','usuario'),
('carlos.perez65','carlos.perez65@correo.com','Carlos','Pérez','pass065','3000000065',CURDATE(),'activo','usuario'),

('laura.sanchez66','laura.sanchez66@correo.com','Laura','Sánchez','pass066','3000000066',CURDATE(),'activo','usuario'),
('david.ramirez67','david.ramirez67@correo.com','David','Ramírez','pass067','3000000067',CURDATE(),'activo','usuario'),
('sofia.torres68','sofia.torres68@correo.com','Sofía','Torres','pass068','3000000068',CURDATE(),'activo','usuario'),
('andres.diaz69','andres.diaz69@correo.com','Andrés','Díaz','pass069','3000000069',CURDATE(),'activo','usuario'),
('camila.hernandez70','camila.hernandez70@correo.com','Camila','Hernández','pass070','3000000070',CURDATE(),'activo','usuario'),

('diego.ruiz71','diego.ruiz71@correo.com','Diego','Ruiz','pass071','3000000071',CURDATE(),'activo','usuario'),
('valentina.moreno72','valentina.moreno72@correo.com','Valentina','Moreno','pass072','3000000072',CURDATE(),'activo','usuario'),
('felipe.vargas73','felipe.vargas73@correo.com','Felipe','Vargas','pass073','3000000073',CURDATE(),'activo','usuario'),
('daniel.castillo74','daniel.castillo74@correo.com','Daniel','Castillo','pass074','3000000074',CURDATE(),'activo','usuario'),
('paula.garcia75','paula.garcia75@correo.com','Paula','García','pass075','3000000075',CURDATE(),'activo','usuario'),

('javier.lopez76','javier.lopez76@correo.com','Javier','López','pass076','3000000076',CURDATE(),'activo','usuario'),
('daniela.perez77','daniela.perez77@correo.com','Daniela','Pérez','pass077','3000000077',CURDATE(),'activo','usuario'),
('sebastian.rodriguez78','sebastian.rodriguez78@correo.com','Sebastián','Rodríguez','pass078','3000000078',CURDATE(),'activo','usuario'),
('lucia.gonzalez79','lucia.gonzalez79@correo.com','Lucía','González','pass079','3000000079',CURDATE(),'activo','usuario'),
('miguel.sanchez80','miguel.sanchez80@correo.com','Miguel','Sánchez','pass080','3000000080',CURDATE(),'activo','usuario'),

('juan.ramirez81','juan.ramirez81@correo.com','Juan','Ramírez','pass081','3000000081',CURDATE(),'activo','usuario'),
('maria.torres82','maria.torres82@correo.com','María','Torres','pass082','3000000082',CURDATE(),'activo','usuario'),
('jose.diaz83','jose.diaz83@correo.com','José','Díaz','pass083','3000000083',CURDATE(),'activo','usuario'),
('ana.hernandez84','ana.hernandez84@correo.com','Ana','Hernández','pass084','3000000084',CURDATE(),'activo','usuario'),
('carlos.ruiz85','carlos.ruiz85@correo.com','Carlos','Ruiz','pass085','3000000085',CURDATE(),'activo','usuario'),

('laura.moreno86','laura.moreno86@correo.com','Laura','Moreno','pass086','3000000086',CURDATE(),'activo','usuario'),
('david.vargas87','david.vargas87@correo.com','David','Vargas','pass087','3000000087',CURDATE(),'activo','usuario'),
('sofia.castillo88','sofia.castillo88@correo.com','Sofía','Castillo','pass088','3000000088',CURDATE(),'activo','usuario'),
('andres.garcia89','andres.garcia89@correo.com','Andrés','García','pass089','3000000089',CURDATE(),'activo','usuario'),
('camila.lopez90','camila.lopez90@correo.com','Camila','López','pass090','3000000090',CURDATE(),'activo','usuario'),

('diego.perez91','diego.perez91@correo.com','Diego','Pérez','pass091','3000000091',CURDATE(),'activo','usuario'),
('valentina.rodriguez92','valentina.rodriguez92@correo.com','Valentina','Rodríguez','pass092','3000000092',CURDATE(),'activo','usuario'),
('felipe.sanchez93','felipe.sanchez93@correo.com','Felipe','Sánchez','pass093','3000000093',CURDATE(),'activo','usuario'),
('daniel.ramirez94','daniel.ramirez94@correo.com','Daniel','Ramírez','pass094','3000000094',CURDATE(),'activo','usuario'),
('paula.torres95','paula.torres95@correo.com','Paula','Torres','pass095','3000000095',CURDATE(),'activo','usuario'),

('javier.diaz96','javier.diaz96@correo.com','Javier','Díaz','pass096','3000000096',CURDATE(),'activo','usuario'),
('daniela.hernandez97','daniela.hernandez97@correo.com','Daniela','Hernández','pass097','3000000097',CURDATE(),'activo','usuario'),
('sebastian.ruiz98','sebastian.ruiz98@correo.com','Sebastián','Ruiz','pass098','3000000098',CURDATE(),'activo','usuario'),
('lucia.moreno99','lucia.moreno99@correo.com','Lucía','Moreno','pass099','3000000099',CURDATE(),'activo','usuario');

-- ============================================================
--  BASE DE DATOS: libros_db
-- ============================================================
DROP DATABASE IF EXISTS libros_db;
CREATE DATABASE libros_db;
USE libros_db;

CREATE TABLE libros (
    codigo              VARCHAR(10)  NOT NULL,
    titulo              VARCHAR(255),
    autor               VARCHAR(255),
    genero              VARCHAR(100),
    cantidad_disponible INT,
    PRIMARY KEY (codigo)
);

-- Datos iniciales de libros
INSERT INTO libros (codigo, titulo, autor, genero, cantidad_disponible)
VALUES
('L001','Cien años de soledad','Gabriel García Márquez','Realismo mágico',5),
('L002','El amor en los tiempos del cólera','Gabriel García Márquez','Romance',4),
('L003','Don Quijote de la Mancha','Miguel de Cervantes','Novela',3),
('L004','La sombra del viento','Carlos Ruiz Zafón','Misterio',6),
('L005','1984','George Orwell','Distopía',7),

('L006','Rebelión en la granja','George Orwell','Satírico',5),
('L007','El principito','Antoine de Saint-Exupéry','Fábula',10),
('L008','Crónica de una muerte anunciada','Gabriel García Márquez','Novela',4),
('L009','Rayuela','Julio Cortázar','Experimental',3),
('L010','Ficciones','Jorge Luis Borges','Cuentos',6),

('L011','El túnel','Ernesto Sabato','Psicológico',5),
('L012','Pedro Páramo','Juan Rulfo','Realismo mágico',4),
('L013','La ciudad y los perros','Mario Vargas Llosa','Drama',3),
('L014','Ensayo sobre la ceguera','José Saramago','Ficción',6),
('L015','El nombre de la rosa','Umberto Eco','Histórico',5),

('L016','Los juegos del hambre','Suzanne Collins','Distopía',8),
('L017','Harry Potter y la piedra filosofal','J.K. Rowling','Fantasía',10),
('L018','Harry Potter y la cámara secreta','J.K. Rowling','Fantasía',9),
('L019','El código Da Vinci','Dan Brown','Misterio',7),
('L020','Ángeles y demonios','Dan Brown','Suspenso',6),

('L021','It','Stephen King','Terror',5),
('L022','El resplandor','Stephen King','Terror',4),
('L023','Drácula','Bram Stoker','Terror',3),
('L024','Frankenstein','Mary Shelley','Ciencia ficción',4),
('L025','Orgullo y prejuicio','Jane Austen','Romance',5),

('L026','Bajo la misma estrella','John Green','Romance',7),
('L027','Crepúsculo','Stephenie Meyer','Romance',6),
('L028','El alquimista','Paulo Coelho','Ficción',8),
('L029','Veronika decide morir','Paulo Coelho','Drama',4),
('L030','El psicoanalista','John Katzenbach','Suspenso',5),

('L031','La chica del tren','Paula Hawkins','Thriller',6),
('L032','Perdida','Gillian Flynn','Thriller',5),
('L033','El silencio de los corderos','Thomas Harris','Thriller',4),
('L034','Jurassic Park','Michael Crichton','Ciencia ficción',6),
('L035','Ready Player One','Ernest Cline','Ciencia ficción',7),

('L036','El hobbit','J.R.R. Tolkien','Fantasía',8),
('L037','El señor de los anillos','J.R.R. Tolkien','Fantasía',7),
('L038','Las crónicas de Narnia','C.S. Lewis','Fantasía',6),
('L039','Matar a un ruiseñor','Harper Lee','Drama',5),
('L040','El gran Gatsby','F. Scott Fitzgerald','Drama',4);

-- ============================================================
--  BASE DE DATOS: prestamos_db
-- ============================================================
DROP DATABASE IF EXISTS prestamos_db;
CREATE DATABASE prestamos_db;
USE prestamos_db;

CREATE TABLE prestamos (
    id                      INT NOT NULL AUTO_INCREMENT,

    -- datos del usuario
    usuario                 VARCHAR(50)     NOT NULL,
    nombre_usuario          VARCHAR(100),
    correo_usuario          VARCHAR(100),

    -- datos del libro
    codigo_libro            VARCHAR(20)     NOT NULL,
    titulo_libro            VARCHAR(255),

    -- tipo y fechas
    tipo_prestamo           ENUM('domiciliario', 'sala', 'convenio') NOT NULL,
    fecha_prestamo          DATETIME        DEFAULT CURRENT_TIMESTAMP,
    fecha_devolucion        DATETIME        NOT NULL,
    fecha_renovacion        DATETIME        DEFAULT NULL,

    -- estado
    estado ENUM(
        'pendiente',
        'activo',
        'vencido',
        'devuelto',
        'anulado'
    ) DEFAULT 'pendiente',

    -- devolución
    solicitud_devolucion    BOOLEAN DEFAULT FALSE,

    -- multas
    multa_valor             DECIMAL(8,2) DEFAULT 0.00,
    multa_pagada            BOOLEAN DEFAULT FALSE,

    PRIMARY KEY (id)
);

-- ============================================================
--  BASE DE DATOS: admin_db
-- ============================================================
DROP DATABASE IF EXISTS admin_db;
CREATE DATABASE admin_db;
USE admin_db;

-- Tabla básica para administración
CREATE TABLE administradores (
    id          INT NOT NULL AUTO_INCREMENT,
    usuario     VARCHAR(50) NOT NULL,
    correo      VARCHAR(100) UNIQUE,
    nombre      VARCHAR(100),
    apellido    VARCHAR(100),
    password    VARCHAR(255),
    rol         VARCHAR(20),
    PRIMARY KEY (id)
);

-- ============================================================
--  NOTAS PARA EL BACKEND (NO SE EJECUTA)
-- ============================================================
-- fecha_devolucion:
--   domiciliario → NOW() + 60 seg (demo)
--   sala         → NOW() + 90 seg
--   convenio     → NOW() + 120 seg
--
-- CRON:
-- UPDATE prestamos
-- SET estado = 'vencido',
--     multa_valor = TIMESTAMPDIFF(SECOND, fecha_devolucion, NOW()) * 200
-- WHERE estado = 'activo'
--   AND fecha_devolucion < NOW();
--
-- ============================================================


