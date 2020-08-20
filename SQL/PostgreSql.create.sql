﻿




CREATE TABLE Проект (

 primaryKey UUID NOT NULL,

 Наименование VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE УчастникПроекта (

 primaryKey UUID NOT NULL,

 Сотрудник_m0 UUID NOT NULL,

 Проект_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE Сотрудник (

 primaryKey UUID NOT NULL,

 ФИО VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE Задача (

 primaryKey UUID NOT NULL,

 Номер INT NULL,

 Наименование STING NULL,

 Срок TIMESTAMP(3) NULL,

 Проект_m0 UUID NOT NULL,

 Исполнитель_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMNETLOCKDATA (

 LockKey VARCHAR(300) NOT NULL,

 UserName VARCHAR(300) NOT NULL,

 LockDate TIMESTAMP(3) NULL,

 PRIMARY KEY (LockKey));



CREATE TABLE STORMSETTINGS (

 primaryKey UUID NOT NULL,

 Module VARCHAR(1000) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 "User" VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMAdvLimit (

 primaryKey UUID NOT NULL,

 "User" VARCHAR(255) NULL,

 Published BOOLEAN NULL,

 Module VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 HotKeyData INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERSETTING (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMWEBSEARCH (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 "Order" INT NOT NULL,

 PresentView VARCHAR(255) NOT NULL,

 DetailedView VARCHAR(255) NOT NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERDETAIL (

 primaryKey UUID NOT NULL,

 Caption VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 ConnectMasterProp VARCHAR(255) NOT NULL,

 OwnerConnectProp VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERLOOKUP (

 primaryKey UUID NOT NULL,

 DataObjectType VARCHAR(255) NOT NULL,

 Container VARCHAR(255) NULL,

 ContainerTag VARCHAR(255) NULL,

 FieldsToView VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE UserSetting (

 primaryKey UUID NOT NULL,

 AppName VARCHAR(256) NULL,

 UserName VARCHAR(512) NULL,

 UserGuid UUID NULL,

 ModuleName VARCHAR(1024) NULL,

 ModuleGuid UUID NULL,

 SettName VARCHAR(256) NULL,

 SettGuid UUID NULL,

 SettLastAccessTime TIMESTAMP(3) NULL,

 StrVal VARCHAR(256) NULL,

 TxtVal TEXT NULL,

 IntVal INT NULL,

 BoolVal BOOLEAN NULL,

 GuidVal UUID NULL,

 DecimalVal DECIMAL(20,10) NULL,

 DateTimeVal TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ApplicationLog (

 primaryKey UUID NOT NULL,

 Category VARCHAR(64) NULL,

 EventId INT NULL,

 Priority INT NULL,

 Severity VARCHAR(32) NULL,

 Title VARCHAR(256) NULL,

 Timestamp TIMESTAMP(3) NULL,

 MachineName VARCHAR(32) NULL,

 AppDomainName VARCHAR(512) NULL,

 ProcessId VARCHAR(256) NULL,

 ProcessName VARCHAR(512) NULL,

 ThreadName VARCHAR(512) NULL,

 Win32ThreadId VARCHAR(128) NULL,

 Message VARCHAR(2500) NULL,

 FormattedMessage TEXT NULL,

 PRIMARY KEY (primaryKey));




 ALTER TABLE УчастникПроекта ADD CONSTRAINT FKad9db7eda81b41678ad6c9a33f1e22d2 FOREIGN KEY (Сотрудник_m0) REFERENCES Сотрудник; 
CREATE INDEX Index6a9d15a82781bedc1f3e378e6ad88fc894d9b5f6 on УчастникПроекта (Сотрудник_m0); 

 ALTER TABLE УчастникПроекта ADD CONSTRAINT FK7aeb5f5758394211b3524bf008a6b9d6 FOREIGN KEY (Проект_m0) REFERENCES Проект; 
CREATE INDEX Indexe60bce56aefb8ccacd877cc615e2ecb68be0a558 on УчастникПроекта (Проект_m0); 

 ALTER TABLE Задача ADD CONSTRAINT FK764b3d33b4e04c2bb91b987bb42fb4d0 FOREIGN KEY (Проект_m0) REFERENCES Проект; 
CREATE INDEX Index52439a2689d0a2b216764c654bf173b8b083a3b4 on Задача (Проект_m0); 

 ALTER TABLE Задача ADD CONSTRAINT FKcd120da6493f46fc84558e45fa43222b FOREIGN KEY (Исполнитель_m0) REFERENCES Сотрудник; 
CREATE INDEX Indexe51efe5333f23f1dd9cdd5915cb243b043747d78 on Задача (Исполнитель_m0); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FKc774aa4da7dd4ee78b66d30f9e6fcae7 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FK88599cdfd72a4116becb7e5e1e2ebfb8 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FK28bfa1243c3a46f88b1f5c4671a6924b FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

