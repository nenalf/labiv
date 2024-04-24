DROP TABLE IF EXISTS `matricula` ;
CREATE TABLE `fatorCapacidade` (
	`id_subsistema` int DEFAULT NULL,
	`nom_subsistema` int DEFAULT NULL,
	`id_estado` text DEFAULT NULL,
	`nom_estado` text DEFAULT NULL, 
	`nom_pontoconexao` text DEFAULT NULL, 
	`nom_localizacao` text DEFAULT NULL,
    `val_latitudesecoletora` decimal DEFAULT NULL,
    `val_longitudesecoletora` decimal DEFAULT NULL,	
    `val_latitudepontoconexao` decimal DEFAULT NULL,
    `val_longitudepontoconexao` decimal DEFAULT NULL,
    `nom_modalidadeoperacao` text DEFAULT NULL, 	
    `nom_tipousina`	text DEFAULT NULL,
    `nom_usina_conjunto` text DEFAULT NULL, 	
    `id_ons` text DEFAULT NULL, 
	`ceg` text DEFAULT NULL, 	
    `din_instante` datetime default null,
    `val_geracaoprogramada`	decimal DEFAULT NULL,
    `val_geracaoverificada`	decimal DEFAULT NULL,
    `val_capacidadeinstalada` decimal DEFAULT NULL,
	`val_fatorcapacidade` decimal DEFAULT NULL
    );
    
    select * from fator_capacidade_2021;
    
    ALTER TABLE fator_capacidade_2021 DROP COLUMN `nom_subsistema`;
    
	ALTER TABLE fator_capacidade_2021 DROP COLUMN  `nom_estado`;
    ALTER TABLE fator_capacidade_2021 DROP COLUMN  `nom_pontoconexao`; 
    ALTER TABLE fator_capacidade_2021 DROP COLUMN  `val_latitudesecoletora`;
    ALTER TABLE fator_capacidade_2021 DROP COLUMN  `val_longitudesecoletora`;
    ALTER TABLE fator_capacidade_2021 DROP COLUMN  `val_latitudepontoconexao`;
ALTER TABLE fator_capacidade_2021 DROP COLUMN  `val_longitudepontoconexao`;

ALTER TABLE fator_capacidade_2021 DROP COLUMN  `nom_usina_conjunto`;
ALTER TABLE fator_capacidade_2021 DROP COLUMN  `nom_modalidadeoperacao`;
ALTER TABLE fator_capacidade_2021 DROP COLUMN  `id_ons`;
ALTER TABLE fator_capacidade_2021 DROP COLUMN  `CEG`;

   
SELECT * FROM fator_capacidade_2021;

SELECT COUNT(*) FROM segundatabela;


