--------------------------------------------------------
--  File created - Friday-August-25-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ORGANIZATION_ROLLUP
--------------------------------------------------------

  CREATE TABLE "URM"."ORGANIZATION_ROLLUP" 
   (	"FROM_DATE" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "URM_DATA" ;
--------------------------------------------------------
--  DDL for Index ORGANIZATION_ROLLUP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "URM"."ORGANIZATION_ROLLUP_PK" ON "URM"."ORGANIZATION_ROLLUP" ("FROM_DATE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "URM_DATA" ;
--------------------------------------------------------
--  Constraints for Table ORGANIZATION_ROLLUP
--------------------------------------------------------

  ALTER TABLE "URM"."ORGANIZATION_ROLLUP" MODIFY ("FROM_DATE" NOT NULL ENABLE);
  ALTER TABLE "URM"."ORGANIZATION_ROLLUP" ADD CONSTRAINT "ORGANIZATION_ROLLUP_PK" PRIMARY KEY ("FROM_DATE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "URM_DATA"  ENABLE;
