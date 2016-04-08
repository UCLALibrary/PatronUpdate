
REM VGER_REPORT CMP_BRUINCARD

  CREATE TABLE "VGER_REPORT"."CMP_BRUINCARD" 
   (	"LEVEL_OF_ISSUE" VARCHAR2(1), 
	"UNIVERSITY_ID" VARCHAR2(9) NOT NULL ENABLE, 
	"STATUS" VARCHAR2(9), 
	"TYPE" VARCHAR2(7)
   ) ;
 CREATE UNIQUE INDEX "VGER_REPORT"."CMP_BRUINCARD_PK" ON "VGER_REPORT"."CMP_BRUINCARD" ("UNIVERSITY_ID") 
  ;
  ALTER TABLE "VGER_REPORT"."CMP_BRUINCARD" ADD CONSTRAINT "CMP_BRUINCARD_PK" PRIMARY KEY ("UNIVERSITY_ID") ENABLE;
 