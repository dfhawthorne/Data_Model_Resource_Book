--------------------------------------------------------
--  File created - Friday-August-25-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ORGANIZATION
--------------------------------------------------------

  CREATE TABLE "URM"."ORGANIZATION" 
   (	"PARTY_ID" NUMBER(*,0), 
	"NAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "URM_DATA" ;
--------------------------------------------------------
--  DDL for Index ORGANIZATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "URM"."ORGANIZATION_PK" ON "URM"."ORGANIZATION" ("PARTY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "URM_DATA" ;
--------------------------------------------------------
--  Constraints for Table ORGANIZATION
--------------------------------------------------------

  ALTER TABLE "URM"."ORGANIZATION" MODIFY ("PARTY_ID" NOT NULL ENABLE);
  ALTER TABLE "URM"."ORGANIZATION" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "URM"."ORGANIZATION" ADD CONSTRAINT "ORGANIZATION_PK" PRIMARY KEY ("PARTY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "URM_DATA"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORGANIZATION
--------------------------------------------------------

  ALTER TABLE "URM"."ORGANIZATION" ADD CONSTRAINT "ORGANIZATION_PARTY_FK" FOREIGN KEY ("PARTY_ID")
	  REFERENCES "URM"."PARTY" ("PARTY_ID") ENABLE;
