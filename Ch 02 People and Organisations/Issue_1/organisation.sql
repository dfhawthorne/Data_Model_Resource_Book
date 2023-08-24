--------------------------------------------------------
--  File created - Thursday-August-24-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ORGANISATION
--------------------------------------------------------

  CREATE TABLE "URM"."ORGANISATION" 
   (	"PARTY_ID" NUMBER(*,0), 
	"NAME" VARCHAR2(256 CHAR), 
	"FEDERAL_TAX_ID_NUM" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "URM_DATA" ;
--------------------------------------------------------
--  DDL for Index ORGANISATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "URM"."ORGANISATION_PK" ON "URM"."ORGANISATION" ("PARTY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "URM_DATA" ;
--------------------------------------------------------
--  Constraints for Table ORGANISATION
--------------------------------------------------------

  ALTER TABLE "URM"."ORGANISATION" MODIFY ("PARTY_ID" NOT NULL ENABLE);
  ALTER TABLE "URM"."ORGANISATION" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "URM"."ORGANISATION" ADD CONSTRAINT "ORGANISATION_PK" PRIMARY KEY ("PARTY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "URM_DATA"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORGANISATION
--------------------------------------------------------

  ALTER TABLE "URM"."ORGANISATION" ADD CONSTRAINT "ORGANISATION_PARTY_FK" FOREIGN KEY ("PARTY_ID")
	  REFERENCES "URM"."PARTY" ("PARTY_ID") ENABLE;
