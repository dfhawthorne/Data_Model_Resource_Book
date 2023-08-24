--------------------------------------------------------
--  File created - Friday-August-25-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table INFORMAL_ORGANISATION
--------------------------------------------------------

  CREATE TABLE "URM"."INFORMAL_ORGANISATION" 
   (	"ORGANISATION_ORGANISATION_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "URM_DATA" ;
--------------------------------------------------------
--  DDL for Index INFORMAL_ORGANISATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "URM"."INFORMAL_ORGANISATION_PK" ON "URM"."INFORMAL_ORGANISATION" ("ORGANISATION_ORGANISATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "URM_DATA" ;
--------------------------------------------------------
--  Constraints for Table INFORMAL_ORGANISATION
--------------------------------------------------------

  ALTER TABLE "URM"."INFORMAL_ORGANISATION" MODIFY ("ORGANISATION_ORGANISATION_ID" NOT NULL ENABLE);
  ALTER TABLE "URM"."INFORMAL_ORGANISATION" ADD CONSTRAINT "INFORMAL_ORGANISATION_PK" PRIMARY KEY ("ORGANISATION_ORGANISATION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "URM_DATA"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INFORMAL_ORGANISATION
--------------------------------------------------------

  ALTER TABLE "URM"."INFORMAL_ORGANISATION" ADD CONSTRAINT "INFORMAL_ORGANISATION_ORGANISATION_FK" FOREIGN KEY ("ORGANISATION_ORGANISATION_ID")
	  REFERENCES "URM"."ORGANISATION" ("PARTY_ID") ENABLE;
