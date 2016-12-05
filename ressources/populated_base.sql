
CREATE TABLE personnel(
id integer not null primary key auto_increment,
login text unique,
motDePasse text,
nom text,
prenom text,
mail text,
autorisation integer,
FOREIGN KEY(autorisation) REFERENCES autorisations(id)
);

/* @TODO plein de [0-4] à rajouter à la fin*/

INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('non,','FGX85BGF4IO','Palmer','Hyatt','porttitor.interdum.Sed@vulputate.net', 2);
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('In','HCI43MEY4QR','Everett','Miranda','Aenean.eget.magna@lobortistellus.ca', 4);
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('urna.','MLD60KHF1RK','Kidd','Bianca','quis@risusDonecnibh.com', 4);
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('ac','WZF19RUB2BT','Webster','Clio','ac@Nunclaoreetlectus.net', 3);
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('id','GRB02UJJ9JB','Chandler','Noble','ultricies.sem.magna@lectusasollicitudin.co.uk', 1);
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('Cras','RHS66MCA5YT','French','Molly','ac.urna@elementum.net', 2);
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('In','QAW04PCF1SR','Carney','Blake','ante@augueeu.net', 3);
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('Donec','NFV46VYS0AN','Dawson','Hayes','auctor@purus.ca', 4);
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('nibh.','DWU85ZXZ5FL','Gutierrez','Xyla','fermentum@Maurisblanditenim.net', 2);
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('magna.','DWW15GLQ7RE','Mcpherson','Asher','Mauris@nonlaciniaat.net', 1);
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('ut,','VDF47FCC6NL','Cooley','Brianna','netus.et@anteNunc.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('massa','UUQ11TJW3YM','Hodges','Caryn','pede.Cras@ac.edu');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('arcu.','JOJ94LDL9MM','Horton','Nyssa','in.tempus.eu@quam.edu');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('id,','GSW51XSB8LB','Lester','Jaime','ac.turpis.egestas@Phasellusliberomauris.com');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('arcu.','YKN90LUT5PD','Kramer','Kitra','elit.dictum.eu@magnaLorem.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('dui.','NLO42OXZ2NF','Baxter','Nevada','et@eutempor.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('ullamcorper','VBE85ZAO9GV','Leonard','Ethan','pede.Cras.vulputate@nec.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('lobortis,','LGK34VFQ2LQ','Alexander','Maggie','rutrum.non.hendrerit@antedictummi.com');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('ante,','MXV93ZIO3LB','Morrison','Mufutau','ad.litora@sagittisDuis.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('velit.','UHD85SFE8NF','Saunders','Vielka','Cras.convallis@Duiselementumdui.com');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('Donec','MTT89QYT2MT','Tyson','Mannix','feugiat@egestas.ca');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('leo.','KFU24QDD9ZK','Summers','Cheyenne','adipiscing.fringilla@ridiculusmus.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('enim','DDI55DMA9CD','Lambert','Britanni','id.blandit@purusactellus.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('felis,','DTQ48IKT2DU','Castaneda','Tiger','nulla.vulputate.dui@eu.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('malesuada','HUE08MCK9LT','Hewitt','Louis','faucibus.ut.nulla@Duisvolutpatnunc.ca');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('non','KML54CTN8WZ','Avery','Thane','non.ante.bibendum@augueeu.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('sodales','THF65KWD7XU','Randolph','Gemma','ante.bibendum.ullamcorper@egestasDuis.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('ac','KXR23KIX1BM','Roy','Colorado','Curae.Donec.tincidunt@lobortis.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('libero','SVK04HJW1FR','Smith','Nathan','Aenean.gravida.nunc@Aliquamerat.ca');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('dolor.','CZY11LMC5SN','Estes','Stone','a.ultricies.adipiscing@dolortempusnon.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('nisl.','TQV00AAO5JR','Hooper','Hayfa','Nam@aliquetmagnaa.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('orci','CXH78MMD8GC','Anthony','Nathan','lorem.ut.aliquam@Integer.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('lorem,','OMU93OXB7XR','Coffey','Karina','primis.in.faucibus@Aliquameratvolutpat.ca');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('enim','UXL27LRK9PY','Reese','Reese','erat.in.consectetuer@famesac.ca');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('Mauris','OSC87DGD5GP','Trujillo','Nathaniel','id.sapien@pedenecante.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('risus.','VFG16KVL2EH','Hill','Emily','Aenean.eget.metus@NuncmaurisMorbi.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('dictum','ZYU99IMN3NJ','Baldwin','Quynn','mi.Aliquam@dolor.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('vel','ERH63TUF6XU','Cash','Marvin','lacus@semperet.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('habitant','EIU98BRX1WA','Rosario','Idona','egestas@necimperdietnec.ca');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('imperdiet','YDB23BXP7JJ','Montgomery','Dominic','dignissim@consequatauctor.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('nibh','WHH71FRJ0HT','Spencer','Steven','netus@imperdietullamcorperDuis.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('Aliquam','AUO14KWW0MC','Frye','Cheyenne','Donec.tincidunt.Donec@dictumsapienAenean.com');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('vitae','JJL94ELG6DL','Caldwell','Amaya','arcu.iaculis.enim@ipsumprimis.edu');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('molestie','ALW81RHY8MD','Burt','Imani','rhoncus.Proin.nisl@eleifend.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('Aliquam','IYY81NXU8KF','Irwin','Kevyn','mollis.dui@tinciduntadipiscingMauris.com');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('risus.','IAW07NSG5MV','Dyer','Rae','ipsum.primis@non.com');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('et','JKW65IJV0LQ','Williams','Addison','nec.ligula.consectetuer@eget.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('dui.','UMV51KOF8CC','Finley','Ira','Praesent@musAenean.edu');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('dictum','LGG85GEY0YC','Steele','Casey','sociis.natoque@quamPellentesque.com');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('In','PAQ42TLC6KR','Coffey','Aspen','iaculis.nec.eleifend@cursusluctus.com');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('nonummy.','FGX44XEM4EE','Dickerson','Jacob','Maecenas.malesuada.fringilla@mollis.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('sit','HTM13ITC3BP','Madden','Salvador','ac@est.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('Aliquam','KQV90ADJ8YS','Rivers','Demetria','sed.pede@sitametfaucibus.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('sit','FZG13OVH3BL','Odom','Trevor','Donec.egestas.Aliquam@amet.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('eleifend,','IZD87EOR6LJ','Nieves','Herrod','massa.Quisque@pedeac.ca');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('enim.','ZHE10XNQ6HO','Calderon','Zane','ultrices.posuere@egestasDuis.edu');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('eu,','PMX45NKR5KA','Weeks','Hilary','arcu@nibhenim.edu');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('lacus.','AXT78CPG8AQ','Bowers','Nigel','imperdiet@natoquepenatibuset.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('Suspendisse','EAY65QYT4JN','Shepherd','Rebecca','primis@Loremipsum.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('eget','YCR89SST4LP','Pollard','Micah','Integer.in.magna@Nuncmauris.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('nisi.','BPE06JYV8JA','Cash','Minerva','nisi.Aenean@lobortisClassaptent.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('nec,','OOJ00ZIU9OB','Ryan','Ginger','Donec@facilisis.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('malesuada','FZM21OKA2XB','Torres','Rashad','nibh.Phasellus.nulla@ac.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('molestie','GZX11SOF4CP','Hurley','Eric','sagittis@neque.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('Aliquam','HJU32JLH0PN','Bird','Molly','arcu.Sed@turpis.edu');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('Nunc','ZID32IJR0HP','Hayden','Chaney','Duis.mi@egestasadui.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('a,','XDF12OYZ9JU','James','Reuben','erat.volutpat@ornare.edu');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('ultrices.','YGX13LCO7YV','Navarro','Leslie','dolor@inceptos.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('ac,','FRA81REI4WK','Shaffer','Kennedy','dis.parturient@sitametante.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('Sed','PJT58AAF3EH','Ferguson','Lenore','sit.amet@Nullatincidunt.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('malesuada','JFK53FAL0JR','Richards','Zoe','vulputate.velit@nondui.edu');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('id','UZB93DQQ1OJ','Sanchez','Daria','felis.Nulla@auctor.com');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('nonummy','ONK91HMK2KE','Barrett','Marsden','eget@Vestibulumanteipsum.ca');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('ut','WWA36IBJ6NI','Padilla','Cody','mi.enim.condimentum@Nulla.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('bibendum.','KLY33WJO8HK','Hogan','Lawrence','Mauris.blandit@pedeCras.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('ut','UIL57LMX4CG','Leonard','Calvin','interdum.enim.non@Proin.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('luctus','CNA56SMX9ZT','Rush','Juliet','ipsum.non@perconubianostra.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('vel','IAD57CCF8MC','Talley','Silas','Nulla.dignissim.Maecenas@nisi.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('Sed','ZQM14TYK6RE','Galloway','Oscar','dui.quis.accumsan@egetlaoreet.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('at','AXU03WYV3XB','Paul','Brennan','vitae.velit.egestas@Phasellusdolorelit.com');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('laoreet','INJ78ODS7IS','Webb','Nissim','hymenaeos@a.edu');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('interdum.','AWE50VFO2ZN','Rich','Tara','porttitor.eros@egestasligula.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('sollicitudin','PBR94EIS7HG','Bauer','Anthony','Nunc@diamSeddiam.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('dolor,','CZZ12VIC0UQ','Steele','Alvin','Quisque@urnaVivamusmolestie.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('mi.','XLE34ZKN7HN','Estrada','Jelani','Duis.mi@Integervitaenibh.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('leo.','EMY48KKC3BJ','Navarro','Kay','neque.sed.dictum@parturientmontesnascetur.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('senectus','WIC38THX6QH','Osborn','Maggy','neque.sed.dictum@famesac.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('nibh','LES13FEP2KO','Melendez','Dale','non.leo.Vivamus@neque.ca');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('sed','RUU57ZOJ1ZL','Nelson','Louis','egestas.a.scelerisque@acturpisegestas.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('aliquet.','YRN11DRO3LK','French','Armand','Duis.volutpat.nunc@cursuspurus.net');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('ac,','DLH66HHL2DQ','Ingram','Jolene','eu.odio.Phasellus@condimentum.edu');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('risus.','EBB02DTG7BD','Michael','Garth','cursus@non.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('adipiscing','LLT65MSQ6UO','Manning','Walker','Nunc.sed@Crasconvallis.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('lobortis.','TSE12RYB4LQ','Fields','Lisandra','neque.et@ultricesposuerecubilia.ca');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('eu','RZL28HTE3FU','Trujillo','Declan','lorem.ac@sociisnatoquepenatibus.edu');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('Donec','TVI18LEV6YZ','Fuentes','Wynter','lectus@variusorci.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('orci','ENY95HWY7JI','Hunter','Derek','Nunc.mauris@neccursusa.org');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('feugiat','YLE25VUZ9LK','Simon','Leonard','pellentesque.massa@euismod.co.uk');
INSERT INTO personnel('login', 'password', 'nom', 'prenom', 'mail', 'autorisation') VALUES('at,','ZXO03VHX8GL','Campos','Sylvester','elit.pharetra.ut@Sedeunibh.edu');

CREATE TABLE autorisations(
id integer not null primary key auto_increment,
label text,
peutModifier integer, /*à considerer comme des booleens*/
peutLire integer,
peutAccorderDroit integer
);
/* @TODO plein de [0-1] à rajouter à la fin*/
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('erat neque non quam. Pellentesque',0,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('enim',0,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('dolor dapibus gravida.',1,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('quis, pede. Praesent',1,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('Cras dolor dolor,',1,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('Aliquam',0,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('Aliquam',1,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('commodo at, libero. Morbi accumsan',1,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('sit amet, dapibus id, blandit',0,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('Proin dolor. Nulla semper',0,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('ut cursus luctus, ipsum',0,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('senectus et netus et',1,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('arcu.',1,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('quis,',0,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('hendrerit id,',0,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('at, iaculis quis, pede.',1,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('iaculis, lacus pede sagittis augue,',0,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('risus varius orci,',1,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('ligula. Aenean',1,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('ipsum sodales purus,',0,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('lectus rutrum urna,',1,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('aliquet magna a',1,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('Integer mollis. Integer tincidunt',0,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('dui, nec',1,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('ad litora torquent',0,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('in consequat',1,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('consectetuer adipiscing elit. Curabitur sed',0,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('felis.',0,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('In',1,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('sit amet',1,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('dapibus rutrum,',1,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('Cum sociis',1,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('Curabitur massa.',1,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('aliquam',1,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('sapien, cursus',1,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('Nunc pulvinar arcu',1,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('bibendum ullamcorper.',1,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('mi felis, adipiscing fringilla, porttitor',0,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('habitant morbi tristique senectus et',1,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('odio',1,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('ligula. Aenean euismod',1,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('vulputate ullamcorper magna.',0,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('pede. Nunc sed orci',1,0);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('faucibus. Morbi vehicula. Pellentesque',0,1);
INSERT INTO autorisations('label', 'peutModifier', 'peutLire', 'accorderDroit') VALUES('et,',1,0);

CREATE TABLE statuts(
id integer not null primary key auto_increment,
label text,
nbHeures integer,
annee integer
);

INSERT INTO statuts VALUES('consultant',12, 2016);
INSERT INTO statuts VALUES('Enseignant',192, 2016);
INSERT INTO statuts VALUES('enseignant-chercheur',192, 2016);
INSERT INTO statuts VALUES('doctorant',96, 2016);
INSERT INTO statuts VALUES('thésard',20, 2016);

CREATE TABLE personnelEnseignant(
id integer not null primary key,
statut integer,
foreign key (id) references PERSONNEL(id),
foreign key (statut) references STATUTS(id)
);

INSERT INTO personnelEnseignant VALUES(1050,4);
INSERT INTO personnelEnseignant VALUES(1051,1);
INSERT INTO personnelEnseignant VALUES(1052,3);
INSERT INTO personnelEnseignant VALUES(1053,1);
INSERT INTO personnelEnseignant VALUES(1054,2);
INSERT INTO personnelEnseignant VALUES(1055,2);
INSERT INTO personnelEnseignant VALUES(1056,2);
INSERT INTO personnelEnseignant VALUES(1057,2);
INSERT INTO personnelEnseignant VALUES(1058,1);
INSERT INTO personnelEnseignant VALUES(1059,2);
INSERT INTO personnelEnseignant VALUES(1060,1);
INSERT INTO personnelEnseignant VALUES(1061,0);
INSERT INTO personnelEnseignant VALUES(1062,2);
INSERT INTO personnelEnseignant VALUES(1063,1);
INSERT INTO personnelEnseignant VALUES(1064,0);
INSERT INTO personnelEnseignant VALUES(1065,2);
INSERT INTO personnelEnseignant VALUES(1066,0);
INSERT INTO personnelEnseignant VALUES(1067,1);
INSERT INTO personnelEnseignant VALUES(1068,1);
INSERT INTO personnelEnseignant VALUES(1069,1);
INSERT INTO personnelEnseignant VALUES(1070,3);
INSERT INTO personnelEnseignant VALUES(1071,3);
INSERT INTO personnelEnseignant VALUES(1072,2);
INSERT INTO personnelEnseignant VALUES(1073,0);
INSERT INTO personnelEnseignant VALUES(1074,4);
INSERT INTO personnelEnseignant VALUES(1075,2);
INSERT INTO personnelEnseignant VALUES(1076,3);
INSERT INTO personnelEnseignant VALUES(1077,4);
INSERT INTO personnelEnseignant VALUES(1078,0);
INSERT INTO personnelEnseignant VALUES(1079,4);
INSERT INTO personnelEnseignant VALUES(1080,0);
INSERT INTO personnelEnseignant VALUES(1081,0);
INSERT INTO personnelEnseignant VALUES(1082,3);
INSERT INTO personnelEnseignant VALUES(1083,1);
INSERT INTO personnelEnseignant VALUES(1084,4);
INSERT INTO personnelEnseignant VALUES(1085,2);
INSERT INTO personnelEnseignant VALUES(1086,1);
INSERT INTO personnelEnseignant VALUES(1087,1);
INSERT INTO personnelEnseignant VALUES(1088,1);
INSERT INTO personnelEnseignant VALUES(1089,1);
INSERT INTO personnelEnseignant VALUES(1090,4);
INSERT INTO personnelEnseignant VALUES(1091,1);
INSERT INTO personnelEnseignant VALUES(1092,1);
INSERT INTO personnelEnseignant VALUES(1093,4);
INSERT INTO personnelEnseignant VALUES(1094,4);
INSERT INTO personnelEnseignant VALUES(1095,0);
INSERT INTO personnelEnseignant VALUES(1096,1);
INSERT INTO personnelEnseignant VALUES(1097,2);
INSERT INTO personnelEnseignant VALUES(1098,1);
INSERT INTO personnelEnseignant VALUES(1099,1);

CREATE TABLE personnelAdministratif(
id integer not null primary key,
foreign key (id) references PERSONNEL(id)
);

INSERT INTO personnelAdministratif VALUES(1000);
INSERT INTO personnelAdministratif VALUES(1001);
INSERT INTO personnelAdministratif VALUES(1002);
INSERT INTO personnelAdministratif VALUES(1003);
INSERT INTO personnelAdministratif VALUES(1004);
INSERT INTO personnelAdministratif VALUES(1005);
INSERT INTO personnelAdministratif VALUES(1006);
INSERT INTO personnelAdministratif VALUES(1007);
INSERT INTO personnelAdministratif VALUES(1008);
INSERT INTO personnelAdministratif VALUES(1009);
INSERT INTO personnelAdministratif VALUES(1010);
INSERT INTO personnelAdministratif VALUES(1011);
INSERT INTO personnelAdministratif VALUES(1012);
INSERT INTO personnelAdministratif VALUES(1013);
INSERT INTO personnelAdministratif VALUES(1014);
INSERT INTO personnelAdministratif VALUES(1015);
INSERT INTO personnelAdministratif VALUES(1016);
INSERT INTO personnelAdministratif VALUES(1017);
INSERT INTO personnelAdministratif VALUES(1018);
INSERT INTO personnelAdministratif VALUES(1019);
INSERT INTO personnelAdministratif VALUES(1020);
INSERT INTO personnelAdministratif VALUES(1021);
INSERT INTO personnelAdministratif VALUES(1022);
INSERT INTO personnelAdministratif VALUES(1023);
INSERT INTO personnelAdministratif VALUES(1024);
INSERT INTO personnelAdministratif VALUES(1025);
INSERT INTO personnelAdministratif VALUES(1026);
INSERT INTO personnelAdministratif VALUES(1027);
INSERT INTO personnelAdministratif VALUES(1028);
INSERT INTO personnelAdministratif VALUES(1029);
INSERT INTO personnelAdministratif VALUES(1031);
INSERT INTO personnelAdministratif VALUES(1032);
INSERT INTO personnelAdministratif VALUES(1033);
INSERT INTO personnelAdministratif VALUES(1034);
INSERT INTO personnelAdministratif VALUES(1035);
INSERT INTO personnelAdministratif VALUES(1036);
INSERT INTO personnelAdministratif VALUES(1037);
INSERT INTO personnelAdministratif VALUES(1038);
INSERT INTO personnelAdministratif VALUES(1039);

CREATE TABLE decharges(
id integer primary key auto_increment,
enseignant integer,
raison text,
duree integer,
annee integer,
foreign key (enseignant) references personnel(id)
);

/* @TODO ajouter duree et annee*/

INSERT INTO decharges VALUES(1053,'quam vel sapien');
INSERT INTO decharges VALUES(1079,'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse');
INSERT INTO decharges VALUES(1050,'semper rutrum. Fusce dolor quam, elementum at, egestas a,');
INSERT INTO decharges VALUES(1054,'tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis');
INSERT INTO decharges VALUES(1070,'orci luctus et ultrices');
INSERT INTO decharges VALUES(1098,'quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis');
INSERT INTO decharges VALUES(1095,'Morbi sit amet');
INSERT INTO decharges VALUES(1086,'gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque');
INSERT INTO decharges VALUES(1082,'eros nec tellus. Nunc lectus pede, ultrices a,');
INSERT INTO decharges VALUES(1098,'urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices');
INSERT INTO decharges VALUES(1063,'tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing');
INSERT INTO decharges VALUES(1059,'vitae sodales nisi magna sed dui. Fusce aliquam, enim');
INSERT INTO decharges VALUES(1063,'urna, nec luctus felis purus ac tellus. Suspendisse sed dolor.');
INSERT INTO decharges VALUES(1082,'ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero.');
INSERT INTO decharges VALUES(1050,'consectetuer, cursus et, magna. Praesent interdum');
INSERT INTO decharges VALUES(1054,'nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam');
INSERT INTO decharges VALUES(1056,'enim, gravida sit amet, dapibus id, blandit at,');
INSERT INTO decharges VALUES(1099,'lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium');
INSERT INTO decharges VALUES(1067,'luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque');
INSERT INTO decharges VALUES(1057,'tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem');
INSERT INTO decharges VALUES(1092,'rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit');
INSERT INTO decharges VALUES(1078,'massa non ante bibendum ullamcorper. Duis cursus, diam');
INSERT INTO decharges VALUES(1090,'ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper');
INSERT INTO decharges VALUES(1069,'sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus');
INSERT INTO decharges VALUES(1054,'libero lacus, varius et, euismod et, commodo at, libero.');
INSERT INTO decharges VALUES(1057,'scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit');
INSERT INTO decharges VALUES(1058,'Mauris molestie pharetra nibh. Aliquam ornare, libero at');
INSERT INTO decharges VALUES(1099,'interdum. Sed');
INSERT INTO decharges VALUES(1072,'adipiscing elit. Etiam laoreet, libero et tristique');
INSERT INTO decharges VALUES(1082,'metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada');
INSERT INTO decharges VALUES(1076,'ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla.');
INSERT INTO decharges VALUES(1069,'ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla');
INSERT INTO decharges VALUES(1065,'non quam. Pellentesque habitant morbi tristique senectus et netus et');
INSERT INTO decharges VALUES(1092,'est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum');
INSERT INTO decharges VALUES(1085,'adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et,');
INSERT INTO decharges VALUES(1093,'ac mi eleifend egestas.');
INSERT INTO decharges VALUES(1067,'Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum');
INSERT INTO decharges VALUES(1085,'volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas');
INSERT INTO decharges VALUES(1056,'cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est');
INSERT INTO decharges VALUES(1092,'ultrices posuere cubilia Curae; Donec');
INSERT INTO decharges VALUES(1093,'molestie in, tempus');

CREATE TABLE typesEnseignements(
id integer primary key auto_increment,
label text
);
INSERT INTO typesEnseignements VALUES(1, 'CM');
INSERT INTO typesEnseignements VALUES(2, 'TD');
INSERT INTO typesEnseignements VALUES(3, 'TP');

CREATE TABLE coefficients(
idTypeEnseignement integer,
idStatut integer,
FOREIGN KEY(idTypeEnseignement) REFERENCES TYPESENSEIGNEMENTS(id),
FOREIGN KEY(idStatut) REFERENCES STATUTS(id),
PRIMARY KEY(idTypeEnseignement, idStatut)
);

INSERT INTO coefficients VALUES(1,2);
INSERT INTO coefficients VALUES(1,3);
INSERT INTO coefficients VALUES(2,1);
INSERT INTO coefficients VALUES(2,2);
INSERT INTO coefficients VALUES(2,3);
INSERT INTO coefficients VALUES(3,2);
INSERT INTO coefficients VALUES(3,3);

CREATE TABLE UE(
id integer primary key auto_increment,
label text,
responsable integer,
nb_heuresCM real,
nb_heuresTD real,
nb_heuresTP real,
annee integer,
nb_max_apprentis integer,
foreign key(responsable) references personnelEnseignant(id)
);


/*@TODO modifier les insertions*/
INSERT INTO UE VALUES('Curabitur dictum. Phasellus in felis.',1069,50.0);
INSERT INTO UE VALUES('porttitor eros nec tellus. Nunc',1069,18.0);
INSERT INTO UE VALUES('quis, pede. Suspendisse dui.',1075,49.0);
INSERT INTO UE VALUES('tempor',1067,33.0);
INSERT INTO UE VALUES('ut aliquam iaculis, lacus',1090,26.0);
INSERT INTO UE VALUES('ante',1053,31.0);
INSERT INTO UE VALUES('varius ultrices, mauris',1063,18.0);
INSERT INTO UE VALUES('lacus. Etiam',1076,35.0);
INSERT INTO UE VALUES('euismod ac, fermentum',1091,24.0);
INSERT INTO UE VALUES('molestie pharetra nibh.',1061,49.0);
INSERT INTO UE VALUES('sit amet,',1062,17.0);
INSERT INTO UE VALUES('sapien,',1055,40.0);
INSERT INTO UE VALUES('ut, pellentesque eget, dictum',1074,45.0);
INSERT INTO UE VALUES('lorem fringilla',1094,39.0);
INSERT INTO UE VALUES('tristique pellentesque, tellus sem mollis',1073,36.0);
INSERT INTO UE VALUES('turpis egestas. Fusce aliquet magna',1072,34.0);
INSERT INTO UE VALUES('Donec elementum,',1091,23.0);
INSERT INTO UE VALUES('lacinia vitae, sodales',1074,34.0);
INSERT INTO UE VALUES('mi felis, adipiscing',1084,37.0);
INSERT INTO UE VALUES('malesuada fringilla',1064,44.0);
INSERT INTO UE VALUES('molestie arcu. Sed',1076,40.0);
INSERT INTO UE VALUES('accumsan interdum libero',1084,30.0);
INSERT INTO UE VALUES('augue',1078,49.0);
INSERT INTO UE VALUES('eu',1050,21.0);
INSERT INTO UE VALUES('Suspendisse non leo. Vivamus nibh',1055,50.0);
INSERT INTO UE VALUES('Nulla tincidunt, neque vitae semper',1083,39.0);
INSERT INTO UE VALUES('rhoncus. Nullam velit',1064,41.0);
INSERT INTO UE VALUES('luctus aliquet odio. Etiam',1050,20.0);
INSERT INTO UE VALUES('ornare lectus justo eu arcu.',1081,24.0);
INSERT INTO UE VALUES('ligula. Aenean',1082,17.0);
INSERT INTO UE VALUES('dapibus quam quis diam. Pellentesque',1053,38.0);
INSERT INTO UE VALUES('ut, nulla. Cras eu tellus',1099,44.0);
INSERT INTO UE VALUES('magna nec quam. Curabitur vel',1098,15.0);
INSERT INTO UE VALUES('blandit congue. In scelerisque',1070,32.0);
INSERT INTO UE VALUES('eu,',1051,34.0);
INSERT INTO UE VALUES('velit eu sem. Pellentesque ut',1064,36.0);
INSERT INTO UE VALUES('nascetur ridiculus mus. Proin',1088,36.0);
INSERT INTO UE VALUES('et libero. Proin',1094,25.0);
INSERT INTO UE VALUES('justo sit amet',1058,16.0);
INSERT INTO UE VALUES('vestibulum massa rutrum',1057,47.0);
INSERT INTO UE VALUES('vel, convallis in,',1088,43.0);
INSERT INTO UE VALUES('ullamcorper',1063,50.0);
INSERT INTO UE VALUES('non dui nec',1085,37.0);
INSERT INTO UE VALUES('aliquet. Phasellus fermentum convallis',1072,50.0);
INSERT INTO UE VALUES('elit elit fermentum risus, at',1093,27.0);
INSERT INTO UE VALUES('Phasellus',1058,47.0);


CREATE TABLE interventions(
id integer primary key auto_increment,
idUE integer not null,
idEnseignant integer not null,
idTypeEnseignement integer NOT NULL,
idModeEnseignement integer,
nbHeures real,
foreign key(idUE) references ue(id),
foreign key(idEnseignant) references personnelEnseignant(id),
foreign key(idTypeEnseignement) references typesEnseignements(id),
foreign key(idModeEnseignement) references modeEnseignements(id),
);


/*@TODO ajout d'insertions*/
INSERT INTO interventions ('id','idUE','idEnseignant','idTypeEnseignement','nbHeures') VALUES (1000,133,1052,3,26),(1001,101,1060,2,14),(1002,123,1056,2,20),(1003,133,1065,3,29),(1004,130,1096,2,27),(1005,137,1060,2,26),(1006,130,1083,2,24),(1007,134,1067,2,13),(1008,101,1091,2,26),(1009,141,1064,1,13);
INSERT INTO interventions ('id','idUE','idEnseignant','idTypeEnseignement','nbHeures') VALUES (1010,133,1052,1,13),(1011,133,1087,3,22),(1012,107,1059,3,22),(1013,127,1071,3,18),(1014,110,1060,2,17),(1015,108,1057,1,12),(1016,120,1090,1,22),(1017,125,1097,3,26),(1018,130,1089,1,16),(1019,135,1064,1,30);
INSERT INTO interventions ('id','idUE','idEnseignant','idTypeEnseignement','nbHeures') VALUES (1020,104,1067,1,12),(1021,135,1094,3,20),(1022,122,1071,3,28),(1023,112,1084,2,23),(1024,108,1091,3,27),(1025,101,1077,3,12),(1026,121,1062,3,13),(1027,107,1093,2,24),(1028,104,1072,3,30),(1029,142,1077,3,26);
INSERT INTO interventions ('id','idUE','idEnseignant','idTypeEnseignement','nbHeures') VALUES (1030,137,1077,2,21),(1031,116,1051,3,27),(1032,100,1060,3,30),(1033,134,1076,2,24),(1034,103,1081,1,15),(1035,119,1066,1,12),(1036,130,1093,3,27),(1037,132,1077,2,27),(1038,129,1080,3,18),(1039,136,1082,2,12);
INSERT INTO interventions ('id','idUE','idEnseignant','idTypeEnseignement','nbHeures') VALUES (1040,110,1097,1,12),(1041,108,1091,1,17),(1042,130,1061,2,20),(1043,123,1097,3,23),(1044,105,1076,2,30),(1045,113,1052,2,14),(1046,123,1088,1,29),(1047,124,1057,2,27),(1048,126,1057,3,18),(1049,127,1098,3,26);
INSERT INTO interventions ('id','idUE','idEnseignant','idTypeEnseignement','nbHeures') VALUES (1050,131,1087,2,20),(1051,113,1074,1,20),(1052,123,1076,2,23),(1053,106,1055,1,19),(1054,125,1082,2,12),(1055,140,1083,2,21),(1056,126,1083,2,24),(1057,128,1086,2,12),(1058,117,1089,2,13),(1059,105,1059,3,24);
INSERT INTO interventions ('id','idUE','idEnseignant','idTypeEnseignement','nbHeures') VALUES (1060,115,1081,2,23),(1061,132,1096,3,26),(1062,122,1095,3,16),(1063,138,1067,3,29),(1064,118,1076,3,20),(1065,100,1085,3,29),(1066,115,1092,3,24),(1067,123,1099,1,13),(1068,144,1072,3,25),(1069,104,1062,3,13);
INSERT INTO interventions ('id','idUE','idEnseignant','idTypeEnseignement','nbHeures') VALUES (1070,102,1072,3,21),(1071,114,1076,1,29),(1072,143,1071,1,16),(1073,100,1077,3,26),(1074,138,1094,3,22),(1075,113,1067,1,27),(1076,145,1088,2,21),(1077,116,1060,2,17),(1078,100,1062,1,26),(1079,119,1052,3,19);
INSERT INTO interventions ('id','idUE','idEnseignant','idTypeEnseignement','nbHeures') VALUES (1080,131,1091,2,29),(1081,145,1069,3,26),(1082,133,1095,1,27),(1083,131,1095,1,27),(1084,110,1070,3,30),(1085,128,1058,1,20),(1086,109,1058,1,18),(1087,122,1088,1,30),(1088,108,1092,1,12),(1089,113,1058,3,20);
INSERT INTO interventions ('id','idUE','idEnseignant','idTypeEnseignement','nbHeures') VALUES (1090,143,1074,1,28),(1091,118,1089,2,26),(1092,136,1088,1,23),(1093,125,1076,1,14),(1094,123,1056,1,13),(1095,109,1098,2,18),(1096,130,1092,3,24),(1097,135,1091,1,25),(1098,106,1063,1,22),(1099,115,1076,2,25);

CREATE TABLE Administrateur(
id integer not null primary key,
foreign key (id) references PERSONNEL(id)
);
/*@TODO : insert*/


CREATE TABLE departements(
id integer primary key,
idDirecteur integer,
foreign key(idDirecteur) references personnelEnseignant(id)
)
/*@TODO : insert*/

CREATE TABLE modeEnseignements(
id integer primary key,
nomEnseignement text
)
/*@TODO : insert*/

CREATE TABLE attributions(
id integer primary key,
idPersonnel integer,
idIntervention integer,
dateEtHeure integer,
commentaire text,
foreign key(idPersonnel) references personnel(id),
foreign key(idIntervention) refences interventions(id)
)
/*@TODO : insert*/




