--------------------------------------------------------
--  File created - Thursday-July-06-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table GUEST
--------------------------------------------------------

  CREATE TABLE "HOMESTAY"."GUEST" 
   (	"GUESTID" NUMBER(*,0), 
	"GUESTNAME" VARCHAR2(500 BYTE), 
	"GUESTPHONENO" VARCHAR2(100 BYTE), 
	"EMAIL" VARCHAR2(500 BYTE), 
	"ADDRESS" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into HOMESTAY.GUEST
SET DEFINE OFF;
Insert into HOMESTAY.GUEST (GUESTID,GUESTNAME,GUESTPHONENO,EMAIL,ADDRESS) values (3,'Siti Syazwina','0158429183','syazwina87@gmail.com','No.39, Jalan Kenanga 9/3, 5700 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur');
Insert into HOMESTAY.GUEST (GUESTID,GUESTNAME,GUESTPHONENO,EMAIL,ADDRESS) values (4,'Siti Jessmin','0193211028','sitijessmin@gmail.com','No.10, Jalan Ungu u9/28c, sunway kayangan shah alam, 40150 shah alam, selangor darul ehsan');
Insert into HOMESTAY.GUEST (GUESTID,GUESTNAME,GUESTPHONENO,EMAIL,ADDRESS) values (5,'Nur Daamia','0139284729','damia@gmail.com','No.33, Jalan Titiwangsa 8/6, Putra Heights, 4500 Subang Jaya, Selangor Darul Ehsan');
Insert into HOMESTAY.GUEST (GUESTID,GUESTNAME,GUESTPHONENO,EMAIL,ADDRESS) values (6,'Halwa Sunna','0170908432','halwasunna@gmail.com','No.50, Ukay Perdana, 2300 Ampang, Selangor Darul Ehsan');
Insert into HOMESTAY.GUEST (GUESTID,GUESTNAME,GUESTPHONENO,EMAIL,ADDRESS) values (7,'Abdul Rahim Bin Saleh','0192119898','abdulrahim@yahoo.com','KPA9, Kampung Perupok, 50100 Alor Setar, Kedah Darul Aman');
Insert into HOMESTAY.GUEST (GUESTID,GUESTNAME,GUESTPHONENO,EMAIL,ADDRESS) values (8,'Salleh bin Soleh','0108882911','soleh21@yahoo.com','No. 31, Jalan Melati 6/2, Taman Wira, 20100  Subang Jaya, Selangor Darul Ehsan');
Insert into HOMESTAY.GUEST (GUESTID,GUESTNAME,GUESTPHONENO,EMAIL,ADDRESS) values (9,'Muhammad Adam','0112311260','adami@gmail.com','Lot 110, Tropicana Hills, 40200 Klang, Selangor Darul Ehsan');
--------------------------------------------------------
--  DDL for Index GUESTID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOMESTAY"."GUESTID_PK" ON "HOMESTAY"."GUEST" ("GUESTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table GUEST
--------------------------------------------------------

  ALTER TABLE "HOMESTAY"."GUEST" ADD CONSTRAINT "GUESTID_PK" PRIMARY KEY ("GUESTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HOMESTAY"."GUEST" MODIFY ("GUESTPHONENO" CONSTRAINT "GUESTPHONENO_NN" NOT NULL ENABLE);
  ALTER TABLE "HOMESTAY"."GUEST" MODIFY ("GUESTNAME" CONSTRAINT "GUESTNAME_NN" NOT NULL ENABLE);
