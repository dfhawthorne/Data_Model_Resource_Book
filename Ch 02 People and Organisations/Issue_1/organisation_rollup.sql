--------------------------------------------------------
--  File created - Friday-August-25-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ORGANISATION_ROLLUP
--------------------------------------------------------

  CREATE TABLE "URM"."ORGANISATION_ROLLUP" 
   (	"FROM_DATE" DATE, 
	"ORGANISATION_UNIT_PARTY_ROLE_ID2" NUMBER(*,0), 
	"ORGANISATION_UNIT_ROLE_TYPE_ID2" NUMBER, 
	"ORGANISATION_UNIT_PARTY_ROLE_ID" NUMBER(*,0), 
	"ORGANISATION_UNIT_ROLE_TYPE_ID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "URM_DATA" ;
--------------------------------------------------------
--  DDL for Index ORGANISATION_ROLLUP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "URM"."ORGANISATION_ROLLUP_PK" ON "URM"."ORGANISATION_ROLLUP" ("FROM_DATE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "URM_DATA" ;
--------------------------------------------------------
--  DDL for Index ORGANISATION_ROLLUP_PKV1
--------------------------------------------------------

  CREATE UNIQUE INDEX "URM"."ORGANISATION_ROLLUP_PKV1" ON "URM"."ORGANISATION_ROLLUP" ("ORGANISATION_UNIT_PARTY_ROLE_ID", "ORGANISATION_UNIT_ROLE_TYPE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "URM_DATA" ;
--------------------------------------------------------
--  Constraints for Table ORGANISATION_ROLLUP
--------------------------------------------------------

  ALTER TABLE "URM"."ORGANISATION_ROLLUP" MODIFY ("FROM_DATE" NOT NULL ENABLE);
  ALTER TABLE "URM"."ORGANISATION_ROLLUP" MODIFY ("ORGANISATION_UNIT_PARTY_ROLE_ID2" NOT NULL ENABLE);
  ALTER TABLE "URM"."ORGANISATION_ROLLUP" MODIFY ("ORGANISATION_UNIT_ROLE_TYPE_ID2" NOT NULL ENABLE);
  ALTER TABLE "URM"."ORGANISATION_ROLLUP" MODIFY ("ORGANISATION_UNIT_PARTY_ROLE_ID" NOT NULL ENABLE);
  ALTER TABLE "URM"."ORGANISATION_ROLLUP" MODIFY ("ORGANISATION_UNIT_ROLE_TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "URM"."ORGANISATION_ROLLUP" ADD CONSTRAINT "ORGANISATION_ROLLUP_PK" PRIMARY KEY ("FROM_DATE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "URM_DATA"  ENABLE;
  ALTER TABLE "URM"."ORGANISATION_ROLLUP" ADD CONSTRAINT "ORGANISATION_ROLLUP_PKV1" UNIQUE ("ORGANISATION_UNIT_PARTY_ROLE_ID", "ORGANISATION_UNIT_ROLE_TYPE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "URM_DATA"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORGANISATION_ROLLUP
--------------------------------------------------------

  ALTER TABLE "URM"."ORGANISATION_ROLLUP" ADD CONSTRAINT "ORGANISATION_ROLLUP_ORGANISATION_UNIT_FK" FOREIGN KEY ("ORGANISATION_UNIT_PARTY_ROLE_ID", "ORGANISATION_UNIT_ROLE_TYPE_ID")
	  REFERENCES "URM"."ORGANISATION_UNIT" ("PARTY_ROLE_ID", "ROLE_TYPE_ID") ENABLE;
  ALTER TABLE "URM"."ORGANISATION_ROLLUP" ADD CONSTRAINT "ORGANISATION_ROLLUP_ORGANISATION_UNIT_FKV2" FOREIGN KEY ("ORGANISATION_UNIT_PARTY_ROLE_ID2", "ORGANISATION_UNIT_ROLE_TYPE_ID2")
	  REFERENCES "URM"."ORGANISATION_UNIT" ("PARTY_ROLE_ID", "ROLE_TYPE_ID") ENABLE;
