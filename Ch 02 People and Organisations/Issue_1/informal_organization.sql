--------------------------------------------------------
--  File created - Friday-August-25-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table INFORMAL_ORGANIZATION
--------------------------------------------------------

  CREATE TABLE "URM"."INFORMAL_ORGANIZATION" 
   (	"PARTY_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "URM_DATA" ;
--------------------------------------------------------
--  DDL for Index INFORMAL_ORGANIZATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "URM"."INFORMAL_ORGANIZATION_PK" ON "URM"."INFORMAL_ORGANIZATION" ("PARTY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "URM_DATA" ;
--------------------------------------------------------
--  Constraints for Table INFORMAL_ORGANIZATION
--------------------------------------------------------

  ALTER TABLE "URM"."INFORMAL_ORGANIZATION" MODIFY ("PARTY_ID" NOT NULL ENABLE);
  ALTER TABLE "URM"."INFORMAL_ORGANIZATION" ADD CONSTRAINT "INFORMAL_ORGANIZATION_PK" PRIMARY KEY ("PARTY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "URM_DATA"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INFORMAL_ORGANIZATION
--------------------------------------------------------

  ALTER TABLE "URM"."INFORMAL_ORGANIZATION" ADD CONSTRAINT "INFORMAL_ORGANIZATION_ORGANIZATION_FK" FOREIGN KEY ("PARTY_ID")
	  REFERENCES "URM"."ORGANIZATION" ("PARTY_ID") ENABLE;
