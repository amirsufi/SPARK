--------------------------------------------------------
--  File created - Saturday-June-24-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FULLTIME
--------------------------------------------------------

  CREATE TABLE "HOMESTAY"."FULLTIME" 
   (	"FULLTIMESALARY" NUMBER(*,0), 
	"FULLSHIFT" NUMBER(*,0), 
	"STAFFID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into HOMESTAY.FULLTIME
SET DEFINE OFF;
Insert into HOMESTAY.FULLTIME (FULLTIMESALARY,FULLSHIFT,STAFFID) values (2200,12,4);
Insert into HOMESTAY.FULLTIME (FULLTIMESALARY,FULLSHIFT,STAFFID) values (2200,12,7);
--------------------------------------------------------
--  DDL for Index PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOMESTAY"."PK" ON "HOMESTAY"."FULLTIME" ("STAFFID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table FULLTIME
--------------------------------------------------------

  ALTER TABLE "HOMESTAY"."FULLTIME" ADD CONSTRAINT "PK" PRIMARY KEY ("STAFFID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FULLTIME
--------------------------------------------------------

  ALTER TABLE "HOMESTAY"."FULLTIME" ADD CONSTRAINT "FK" FOREIGN KEY ("STAFFID")
	  REFERENCES "HOMESTAY"."STAFF" ("STAFFID") ENABLE;