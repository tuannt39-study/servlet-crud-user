--------------------------------------------------------
--  File created - Friday-September-15-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "TUAN"."USERS" 
   (	"USERID" NUMBER, 
	"FIRSTNAME" VARCHAR2(20 BYTE), 
	"LASTNAME" VARCHAR2(20 BYTE), 
	"DOB" DATE, 
	"EMAIL" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into TUAN.USERS
SET DEFINE OFF;
Insert into TUAN.USERS (USERID,FIRSTNAME,LASTNAME,DOB,EMAIL) values (1,'tuan','nguyen',to_date('23-SEP-17','DD-MON-RR'),'tuan@gmail.com');
Insert into TUAN.USERS (USERID,FIRSTNAME,LASTNAME,DOB,EMAIL) values (3,'dahk','hkjvfdgdf',to_date('20-SEP-17','DD-MON-RR'),'gfdgfd@gmail.com');
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TUAN"."USERS_PK" ON "TUAN"."USERS" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger TRIGGER2
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TUAN"."TRIGGER2" 
BEFORE INSERT ON USERS 
FOR EACH ROW
BEGIN
  SELECT ID.NEXTVAL
  INTO   :new.USERID
  FROM   dual;
END;
/
ALTER TRIGGER "TUAN"."TRIGGER2" ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "TUAN"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TUAN"."USERS" MODIFY ("USERID" NOT NULL ENABLE);
