INSERT INTO `mpks4u3`.`servtype` (`idservtype`, `name`)
VALUES ('0', 'Kalkulacja kosztowa'),
       ('1', 'Konsultacje techniczne'),
       ('2', 'Audyt techniczny / Due diligence'),
       ('3', 'Projekt wykonawczy / budowlany/ dokumentacja IDT'),
       ('4', 'Dostawa materiału'),
       ('5', 'Realizacja'),
       ('6', 'Gwarancja');

INSERT INTO `mpks4u3`.`building` (`id_building`, `address`, `name`, `nr_building`,`owner`)
VALUES ('11', 'Łódz ul. Wólczańska 178', 'University Business Park', '11','GTC'),
       ('12', ' Warszawa ul. Postępu 21 ', 'Park Postępu', '12','IMMOFINANZ'),
        ('13',' Warszawa ul. Stanisława Augusta','Apartamenty Króla Stasia','13',' LEOSET'),
        ('14',' Warszawa Al. Jerozolimskie 180','Kopernik Office Building','14',' RREEF'),
        ('15',' Warszawa Al. Jerozolimskie 92','Brama Zachodnia','15',' IMMOFINANZ'),
         ('16',' Warszawa Rondo ONZ 1','Rondo 1','16',' RREEF'),
         ('17',' Warszawa ul. Jutrzenki 183','Taifun Office Building','17',' IMMOFINANZ'),
         ('18',' Warszawa Al. Armii Ludowej 26','Focus','18',' RREEF'),
          ('19',' Poznań  Ul.  Królowej Jadwigi 43','Maraton','19',' Union Investment/Skanska Property'),
          ('20',' Warszawa Plac Piłsudskiego 1','Metropolitan','20',' RREFF'),
          ('21',' Warszawa','Waldorfa','21',''),
          ('22',' Bokserska','Bokserska Office Center','22',' Immofinanz'),
          ('23',' Jutrzenki 105 Warszawa','Robert Bosch','23',' SPIE'),
           ('24',' Chłodna 52/54 Warszawa','Green Corner','24',' RREEF'),
          ('25',' ul. Chmielna 24 Warszawa','Chmielna25','25',' SPIE'),
          ('26',' ul B. Chrobrego ','Grodzisk','26',' P&P'),
          ('27',' Kasprzaka 19/20 Warszawa ','Renaissance ','27',' ORANGE'),
          ('28','','Floriańska 6','28',' S4U'),
          ('29','','Mazowiecka 4','29',' Hochtief Development Poland'),
          ('30','','Business Poleczki Park Budynek Madryt','30',' ORIENTANAA'),
          ('31','','Ożarów','31',' Budynek mieszkalny '),
          ('32','','IT House','32',' Budynek mieszkalny '),
           ('33',' Skierniewicka 10a','Renaissance Tower','33',' Octava'),
          ('34',' Poleczki 21','Platan Park ','34',' METTLER TOLEDO'),
          ('35',' Al.Jana Pawła II 22','Q22','35',' Deloitte'),
         ('36',' Konstruktorska 11','KBC','36',' Otis  SPIE'),
          ('37',' Matex Controls','Polfa Tarchomin Obiekt M-2','37',''),
          ('38',' Cybernetyki 21','Cybernetyki Office Center','38',' Immofinanz'),
          ('39',' Budynek mieszkalny','Starostryjeńska','39',''),
          ('40','','Pasymska 7D','40',' R&S'),
         ('41',' Wołoska 22 Warszawa ','Mokotów Nova','41',''),
         ('42',' ul. Prosta 70 ','Crown Point ','42',' IMMOFINANZ'),
          ('43',' Puławska 435a','Light House','43',' Octava'),
         ('44',' RASZYN','IKEA Janki','44',''),
           ('45',' Bydgoszcz','Jagiellońska 1','45',''),
          ('46',' ul.Piotrkowska 148/150  Łódź','Red Tower','46',''),
          ('47','  ul.  Roździeńskiego 1a Katowice','KTW','47',''),
          ('48',' Plac Unii 1','Plac Unii','48',''),
          ('49',' Postępu 4 Warszawa','Garvest','49',''),
          ('50',' Aleje Jerozolimskie 181','Equator','50',' DIL'),
         ('51',' Puławska 182 Warszawa ','IO-1','51',' Bertie Investment Sp. z o.o. (IMMO)'),
         ('52','pl. Trzech Krzyży 10/14','ETHOS','52',''),
         ('53',' ul. Hrubieszowska 2 Warszawa','Crown Tower','53',''),
          ('54',' ul. Kolejowa 59 Łomianki','Dalkia Polska','54',''),
          ('55',' ul. Stawki 40 Warszawa','Budimex','55',''),
         ('56',' Finlandzka 10 Warszawa','10Clouds','56',''),
         ('57',' Konstancin','Łąki Konstancińskie','57',' Faktoria'),
         ('58','','CISCO_Warsaw_GC_RFP','58',''),
         ('59','','Oxygen Park','59',' SPIE');

INSERT INTO `mpks4u3`.`project`
(`idproject`,
 `date`,
 `floor`,
 `mpk`,
 `nr_project`,
 `short_description`,
 `tenant`,
 `building_id`,
 `servtype_id`)
 VALUES ('1','','','0110000','0','OFERTOWANIE I MARKETING','','11','0'),
     ('2','201702','','0110010','1','Kalkulacja kosztowa Ericcson','Ericcson','11','0'),
     ('3','201707','','0110021','2','Konsulatacje techniczne - budynek UBP w Łodzi','','11','1'),
     ('4','','','0120000','0','OFERTOWANIE I MARKETING','','12','0'),
     ('5','201702','','0120010','1','Weryfikacja kosztów - LUX-MED Park postępu','LUX-MED.','12','0'),
     ('6','','','0130000','0','OFERTOWANIE I MARKETING','','13','0'),
     ('7','201702','','0130010','1','Ocena rozwiązań wielobranżowej koncepcji architektonicznej','','13','0'),
     ('8','','','0140000','0','OFERTOWANIE I MARKETING','','14','0'),
     ('9','','','0140010','1','wolny','','14','0'),
     ('10','','piętro +1','0140020','2','Wycena prac aranżacyjnych na powierzchni najemcy Itelligence, budynek KOB A , piętro +1','','14','0'),
     ('11','','','0140030','3','wolny','','14','0'),
     ('12','','','0150000','0','OFERTOWANIE I MARKETING','','15','0'),
     ('13','','piętro +1,+3,+14','0150010','1','Wycena prac aranżacyjnych na powierzchni najemcy First Data Budynek West Gate, piętro +1,+3,+14','','15','0'),
     ('14','201904','p+14','0150015','1','p+14_Boryszew aranżacja','Boryszew','15','5'),
     ('15','201904','p+14','0150016','1','p+14_Boryszew aranżacja - Gwarancja 36 m-c','Boryszew','15','6'),
     ('16','201908','p+14','0150025','2','p+14_Boryszew Ekspansja aranżacja','Boryszew','15','5'),
     ('17','201908','p+14','0150026','2','p+14_Boryszew Ekspansja aranżacja - Gwarancja 36 m-c','Boryszew','15','6'),
     ('18','201908','p-1','0150035','3','p-1_Wklejenie blachy w holu przy windach na poziomie -1','','15','5'),
     ('19','201908','p-1','0150036','3','p-1_Wklejenie blachy w holu przy windach na poziomie -1- Gwarancja 24 m-c','','15','6'),
     ('20','','','0160000','0','OFERTOWANIE I MARKETING','','16','0'),
     ('21','201704','p+2','0160015','1','Aranżacja VW Bank p+2','VW Bank','16','5'),
     ('22','','','0160016','1','Gwarancja dla: Aranżacja VW Bank p+2 - Gwarancja 36 m-cy','VW Bank','16','6'),
     ('23','201704','p+9','0160025','2','Aranżacja ZF Polska p+9','ZF','16','5'),
     ('24','201704','p+9','0160026','2','Aranżacja ZF Polska p+9 - Gwarancja 36 m-cy','ZF','16','6'),
     ('25','201802','p+1+7+9+11+20','0160035','3','p+1+7+9+11+20_puste powierzchnie','','16','5'),
     ('26','201802','p+1+7+9+11+20','0160036','3','201802_p+1+7+9+11+20_puste powierzchnie, gwarancja','','16','6'),
     ('27','201802','p+36','0160045','4','201802_p+36_KGHM','KGHM','16','5'),
     ('28','201802','p+36','0160046','4','201802_p+36_KGHM, gwarancja 36 m-cy','KGHM','16','6'),
     ('29','201803','p+37','0160055','5','201803_p+37_Maszynownia','','16','5'),
     ('30','201803','p+37','0160056','5','201803_p+37_Maszynownia, gwarancja 36 mc-y','','16','6'),
     ('31','201805','p+10','0160065','6','201805_p+10_City Space _demontaż ścianki','City Space','16','5'),
     ('32','201805','p+10','0160066','6','201805_p+10_City Space _demontaż ścianki','City Space','16','6'),
     ('33','201806','p+6','0160075','7','201806_p+6_Wavespace E&Y _demontaże','','16','5'),
     ('34','201806','p+6','0160076','7','201806_p+6_Wavespace E&Y _demontaże','','16','6'),
     ('35','201806','p+13','0160085','8','201806_p+13_ELI _aranżacja','','16','5'),
     ('36','201806','p+13','0160086','8','201806_p+13_ELI _aranżacja_gwarancja 36 m-cy','','16','6'),
     ('37','201808','p+9','0160095','9','201808_p+9_ZF_dodatkowa ścian','','16','5'),
     ('38','201808','p+9','0160096','9','201808_p+9_ZF_dodatkowa ścian','','16','6'),
     ('39','201806','p+29','0160105','10','201806_p+29_Banco de Sabadel_odświeżenie','','16','5'),
     ('40','201806','p+29','0160106','10','201806_p+29_Banco de Sabadel_odświeżenie_gwarancja 36 m-cy','','16','6'),
     ('41','201809','p +13','0160115','11','201809_p +13_SWW_odświeżenie powierzchni','','16','5'),
     ('42','201809','p +13','0160116','11','201809_p +13_SWW_odświeżenie powierzchn_gwarancja 36 m-cy','','16','6'),
     ('43','201809','p +27,28','0160125','12','201809_p +27,28_Backer McKanzie_kuchnie','','16','5'),
     ('44','201809','p +27,28','0160126','12','201809_p +27,28_Backer McKanzie_kuchnie_gwarancje','','16','6'),
     ('45','201811','p +3','0160135','13','201811_p +3_VWFS_naprawy i malowanie ścian','','16','5'),
     ('46','201811','p +3','0160136','13','201811_p +3_VWFS_naprawy i malowanie ścian','','16','6'),
     ('47','201812','p +27,28','0160145','14','201812_p +27,28_Backer McKenzie połączenie pomieszczen','','16','5'),
     ('48','201812','p +27,28','0160146','14','201812_p +27,28_Backer McKenzie połączenie pomieszczen','','16','6'),
     ('49','201901','p+10','0160155','15','201901_p+10_City Space _demontaż nr 2 ścianki ','','16','5'),
     ('50','201901','p+10','0160156','15','201901_p+10_City Space _demontaż nr 2 ścianki','','16','6'),
     ('51','201906','p+28,29','0160165','16','201906_p+28_,29_SPIE_wymiana_pionu ','','16','5'),
     ('52','201906','p+28,29','0160166','16','201906_p+28_,29_SPIE_wymiana_pionu ','','16','6'),
     ('53','201909','p+10','0160175','17','201909_p+10_SPIE_naprawa drzwi w City Space','','16','5'),
     ('54','201909','p+10','0160176','17','201909_p+10_SPIE_naprawa drzwi w City Space','','16','6'),
     ('55','201910','p+32','0160185','18','201910_p+32_TU Europa _aranżacja ','','16','5'),
     ('56','201910','p+32','0160186','18','201910_p+32_TU Europa _gwarancja','','16','6'),
     ('57','201912','p+33','0160195','19','201912_p+33_SGI_aranżacja','','16','5'),
     ('58','201912','p+33','0160196','19','201912_p+33_SGI_gwarancja','','16','6'),
     ('59','201912','','0160205','20','201912_REMONTY_aranżacja','','16','5'),
     ('60','201912','','0160206','20','201912_REMONTY_gwarancja','','16','6'),
     ('61','','','0170000','0','OFERTOWANIE I MARKETING','','17','0'),
     ('62','201705','','0170015','1','201705_Aranżacja biura Lionbridge ETAP I','','17','5'),
     ('63','','P+1','0170016','1','Gwarancja dla: Aranżacja biura Lionbridge ETAP I P+1 - 3 lata','','17','6'),
     ('64','201705','','0170025','2','201705_Aranżacja biura Lionbridge ETAP I - Zakres Shell&Core','','17','5'),
     ('65','','','0170026','2','Gwarancja dla: Aranżacja biura Lionbridge ETAP I Zakres Shell&Core - 3 lata ','','17','6'),
     ('66','201708','P+4','0170035','3','201708_Aranżacja biura Lionbridge ETAP II P+4','','17','5'),
     ('67','','P+5','0170036','3','Gwarancja dla: Aranżacja biura Lionbridge ETAP II P+4- 3 lata','','17','6'),
     ('68','201708','','0170045','4','201708_Aranżacja biura Lionbridge ETAP II Zakres Shell&Core','','17','5'),
     ('69','','','0170046','4','Gwarancja dla: Aranżacja biura Lionbridge ETAP III Zakres Shell&Core - 3 lata','','17','6'),
     ('70','201808','P +3','0170055','5','201808_Aranżacja biura Lionbridge ETAP P +3 ','','17','5'),
     ('71','','P +4','0170056','5','Gwarancja dla: Aranżacja biura Lionbridge ETAP P +3 - 3 lata','','17','6'),
     ('72','201810','p +5 +6','0170065','6','201810_Aranżacja biura Lionbridge ETAP P p +5 +6 - ','','17','5'),
     ('73','','p +5 +7','0170066','6','Gwarancja dla: Aranżacja biura Lionbridge ETAP P p +5 +6 - 3 lata','','17','6'),
     ('74','201810','p +2','0170075','7','201810_Aranżacja biura Lionbridge ETAP P p +2 ','','17','5'),
     ('75','','p +3','0170076','7','Gwarancja dla: Aranżacja biura Lionbridge ETAP P p +2 3 lata','','17','6'),
     ('76','','','0180000','0','OFERTOWANIE I MARKETING','','18','0'),
     ('77','201712','p +2, +6','0180015','1','201712_odświeżenie biur Coca Cola p +2, +6','','18','5'),
     ('78','','p +2, +7','0180016','1','Gwarancja dla: odświeżenie biur Coca Cola - 3 lata','','18','6'),
     ('79','201810','p0,p+3','0180025','2','201810_aranżacja biur Pekao Leasing p0,p+3','','18','5'),
     ('80','','p0,p+4','0180026','2','Gwarancja dla: aranżacja biur Pekao Leasing p0,p+3 - 3 lata','','18','6'),
     ('81','201810',' p0,p+3','0180035','3','201810_aranżacja biur Pekao Leasing p0,p+3','','18','5'),
     ('82','','p+8','0180036','3','Gwarancja dla: 201901_aranżacja biur Pekao Leasing p+8 - 3 lata','','18','6'),
     ('83','201911','p.+9','0180045','4','201911_odświeżenie biura Convatec p.+9','','18','5'),
     ('84','','p.+10','0180046','4','Gwarancja dla odświeżenie biura Convatec p.+9','','18','6'),
     ('85','201911','p.+7C','0180055','5','201911_aranżacja biura Nationale Nederlanden p.+7C','','18','5'),
     ('86','','p.+7C','0180056','5','Gwarancja dla: Aranżacja biura Nationale Nederlanden p.+7C','','18','6'),
     ('87','201912','p.+9C','0180065','6','201912_odświeżenie biura KSURE p.+9C','','18','5'),
     ('88','','p.+9C','0180066','6','Gwarancja dla: odświeżenie biura KSURE p.+9C','','18','6'),
     ('89','','','0190000','0','OFERTOWANIE I MARKETING','','19','0'),
     ('90','','','0190014','1','Obsługa inwestycji - dostawa materiałów','','19','4'),
     ('91','','','0190023','2','Projekty - dokumentacja techniczna','','19','3'),
     ('92','','','0200000','0','OFERTOWANIE I MARKETING','','20','0'),
     ('93','','p.+4','0200010','1','Wycena prac aranżacyjnych na powierzchni najemcy Affecto  p.+4','','20','0'),
     ('94','','p+5 p+6','0200020','2','Wycena prac aranżacyjnych na powierzchni najemcy Gide p+5 p+6','','20','0'),
     ('95','201910','P3-3','0200035','3','201910_aranżacja biura Experian, P3-3','','20','5'),
     ('96','','','0210000','0','OFERTOWANIE I MARKETING','','21','0'),
     ('97','','','0210010','1','Wycena prac remontowych ','','21','0'),
     ('98','','','0220000','0','OFERTOWANIE I MARKETING','','22','0'),
     ('99','','p +1','0220010','1','Wycena prac aranżacyjnych na powierzchni najemcy TUW TUZ p +1','','22','0'),
     ('100','','','0230000','0','OFERTOWANIE I MARKETING','','23','0'),
     ('101','201712','P+2','0230015','1','201712_aranżacja P+2','','23','5'),
     ('102','',' P+2','0230016','1','Gwarancja dla 201712_aranżacja P+2 - 24 m-ce','','23','6'),
     ('103','201807','P+1','0230025','2','201807_aranżacja P+1','','23','5'),
     ('104','','P+1','0230026','2','Gwarancja dla 201807_aranżacja P+1 - 24 m-ce','','23','6'),
     ('105','201811','P+1','0230035','3','aranżacja P+1,TT','','23','5'),
     ('106','','P+1','0230035','3','Gwarancja dla 201811_aranżacja P+1 TT - 24 m-ce','','23','5'),
     ('107','201812','','0230045','4','SPI_Bosch Rexrot_p0_sufit','','23','5'),
     ('108','','','0230046','4','Gwarancja dla 201812_SPI_Bosch Rexrot_p0_sufit - 24 m-ce','','23','6'),
     ('109','201901','','0230055','5','dołożenie_klimatyzatora P+1 ','','23','5'),
     ('110','','P+1','0230056','5','Gwarancja dla 201901_aranżacja P+1 - 24 m-ce','','23','6'),
     ('111','201901','P+1','0230065','6','aranżacja strefy GM P+1 ','','23','5'),
     ('112','','P+1','0230066','6','Gwarancja dla 201901_aranżacja strefy GM P+1 - 24 m-ce','','23','6'),
     ('113','201910','P0','0230075','7','wydzielenie aneksu kuchennego P0','','23','5'),
     ('114','','P0','0230076','7','Gwarancja dla 201910_wydzielenie aneksu kuchennego P0','','23','6'),
     ('115','201911','P0,P+1,P+2','0230085','8','_modernizacja instalacji wentylacji P0,P+1,P+2','','23','5'),
     ('116','','P0,P+1,P+2','0230086','8','Gwarancja dla 201911_modernizacja instalacji wentylacji P0,P+1,P+2','','23','6'),
     ('117','','','0230093','9','Uzupełnienie dokumentacji','','23','3'),
     ('118','','','0240000','0','OFERTOWANIE I MARKETING','','24','0'),
     ('119','','','0240012','1','Inwentaryzacja instalacji sanitarnych i elektrycznej pustej powierzchni B0','','24','2'),
     ('120','','','0250000','0','OFERTOWANIE I MARKETING','','25','0'),
     ('121','','','0250015','1','Dostosowanie instalacji wentylacji w dwóch pomieszczaniach na p-2','','25','5'),
     ('122','','','0260014','1','Obsługa inwestycji - dostawa materiałów','','26','4'),
     ('123','','p+4, p -1','0270013','1','Przebudowa piętra +4 i p -1 dla Orange','','27','3'),
     ('124','','','0280015','1','Aranżacja biura','','28','5'),
     ('125','','','0290015','1','Wykonanie rewizji w sufitach g-k','','29','5'),
     ('126','','','0300015','1','Aranżacja biura, pokój biurowy','','30','5'),
     ('127','','','0300016','1','Gwarancja dla aranżacja biura, pokój biurowy','','30','6'),
     ('128','','','0310014','1','Dostawa materiałów','','31','4'),
     ('129','','','0320014','1','Dostawa materiałów','','32','4'),
     ('130','','','0330000','0','OFERTOWANIE I MARKETING','','33','0'),
     ('131','201810',' p+11','0330015','1','_Aranżacja biura Core 3, p+11','','33','5'),
     ('132','',' p+11','0330016','1','Gwarancja dla 201810_Aranżacja biura Core 3, p+11','','33','6'),
     ('133','201811',' p+7','0330025','2','_Aranżacja biura Pekao BH, p+7','','33','5'),
     ('134','',' p+7','0330026','2','Gwarancja dla 201811_Aranżacja biura Pekao BH, p+7','','33','6'),
     ('135','201812',' p+5','0330035','3','_Aranżacja biura Advantim, p+5','','33','5'),
     ('136','',' p+5','0330036','3','Gwarancja dla 201812_Aranżacja biura Advantim, p+5','','33','6'),
     ('137','201901','','0330045','4','_Aranżacja biura GET_IT, p+8','','33','5'),
     ('138','','','0330046','4','Gwarancja dla 201901_Aranżacja biura GET_IT, p+8','','33','6'),
     ('139','201901',' p+8+9+10','0330055','5','_Aranżacja biura EXORIGO, p+8+9+10','','33','5'),
     ('140','','','0330056','5','Gwarancja dla Aranżacja biura EXORIGO, p+8+9+10','','33','6'),
     ('141','201907','p.+13','0330065','6','_Aranżacja biura VIVA WALLET p.+13','','33','5'),
     ('142','','','0330066','6','Gwarancja dla Aranżacja biura VIVA WALLET p.+13','','33','6'),
     ('143','201901',' p0','0330075','7','_Aranżacja biura ICTER, p0','','33','5'),
     ('144','','','0330076','7','Gwarancja dla Aranżacja biura ICTER, p0','','33','6'),
     ('145','201907','p.+8','0330085','8','_Aranżacja biura Analizy Online p.+8','','33','5'),
     ('146','','','0330086','8','Gwarancja dla Aranżacja biura Analizy Online p.+8','','33','6'),
     ('147','201810','','0340015','1','Prace budowlane , aranżacja Mettler Toledo','','34','5'),
     ('148','','','0340016','1','Gwarancja dla 201810_Prace budowlane , aranżacja Mettler Toledo','','34','6'),
     ('149','201912','','0340025','2','Prace ogólnobudowlane , aranżacja Mettler Toledo','','34','5'),
     ('150','','','0340026','2','Gwarancja dla 201912_Prace ogólnobudowlane , aranżacja Mettler Toledo','','34','6'),
     ('151','','','0350000','0','OFERTOWANIE I MARKETING','','35','0'),
     ('152','','','0360000','0','OFERTOWANIE I MARKETING','','36','0'),
     ('153','','','0370000','0','OFERTOWANIE I MARKETING','','37','0'),
     ('154','','','0380000','0','OFERTOWANIE I MARKETING','','38','0'),
     ('155','','','0390014','1','Dostawa materiałów','','39','4'),
     ('156','','','0400015','1',' Green Garden - realizacja prac remontowych','','40','5'),
     ('157','','','0400025','2',' Green Garden 2- realizacja prac remontowych','','40','5'),
     ('158','','','0400035','3',' Green Garden 3- realizacja prac remontowych','','40','5'),
     ('159','','','0400045','4',' Green Garden 4- realizacja prac remontowych','','40','5'),
     ('160','','','0400055','5',' Green Garden 5- realizacja prac remontowych','','40','5'),
     ('161','','','0410005','0','Connectmedia','','41','5'),
     ('162','','','0420000','0','OFERTOWANIE I MARKETING','','42','0'),
     ('163','','','0430000','0','OFERTOWANIE I MARKETING','','43','0'),
     ('164','','','0440000','0','OFERTOWANIE I MARKETING','','44','0'),
     ('165','','','0450000','0','OFERTOWANIE I MARKETING','','45','0'),
     ('166','','','0460000','0','OFERTOWANIE I MARKETING','','46','0'),
     ('167','201906','P+17','0460015','1','Eko Energetyka_P+17','','46','5'),
     ('168','','P+17','0460016','1','Gwarancja_Eko Energetyka_P+17','','46','6'),
     ('169','201907','P+16','0460020','2','Własne B_P+16','','46','0'),
     ('170','','P+16','0460025','2','Gwarancja_Własne B_P+16','','46','5'),
     ('171','201908',' P10-p15','0460030','3','Nordea, P10-p15, poprawki wentylacyjne','','46','0'),
     ('172','',' P10-p15','0460035','3','Gwarancja_Nordea, P10-p15, poprawki wentylacyjne','','46','5'),
     ('173','','','0470000','0','OFERTOWANIE I MARKETING','','47','0'),
     ('174','','','0480000','0','OFERTOWANIE I MARKETING','','48','0'),
     ('175','201910','','0480015','1','Markant, naprawa ściany','','48','5'),
     ('176','','','0490000','0','OFERTOWANIE I MARKETING','','49','0'),
     ('177','','','0500000','0','OFERTOWANIE I MARKETING ','','50','0'),
     ('178','','','0510000','0','OFERTOWANIE I MARKETING ','','51','0'),
     ('179','','','0520000','0','OFERTOWANIE I MARKETING ','','52','0'),
     ('180','','','0530000','0','OFERTOWANIE I MARKETING ','','53','0'),
     ('181','','','0540000','0','OFERTOWANIE I MARKETING ','','54','0'),
     ('182','201909','','0540015','1','Montaż szafy biurowej','','54','5'),
     ('183','','','0550000','0','OFERTOWANIE I MARKETING','','55','0'),
     ('184','','','0560000','0','OFERTOWANIE I MARKETING','','56','0'),
     ('185','201912','','0560015','1','10Clouds_sale spotkań','','56','5'),
     ('186','201912','','0560016','1','10Clouds_sale spotkań_gwarancja','','56','6'),
     ('187','','','0570000','0','OFERTOWANIE I MARKETING','','57','0'),
     ('188','','','0580000','0','OFERTOWANIE I MARKETING','','58','0'),
     ('189','','','0590000','0','OFERTOWANIE I MARKETING','','59','0');