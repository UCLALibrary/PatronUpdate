insert into vger_report.PATRON_SIF 
(sif_id, sif_record, created)
SELECT 
patron_sif_seq.nextval, vger_support.lws_patron.GETPATRONSIF
(
  r.UNIVERSITY_ID,
  TADDR1,
  TADDR2,
  TCITY,
  TSTATE,
  TZIP,
  TCOUNTRY,
  TPHONE,
  PADDR1,
  PADDR2,
  PCITY,
  PSTATE,
  PZIP,
  PCOUNTRY,
  PPHONE,
  NAME,
  SEX,
  CAREER,
  CLASS,
  COLL1,
  DEG1,
  DEPT1,
  DIV1,
  EMAILADD,
  RT340,
  LEVEL_OF_ISSUE,
  to_date('2006.08.01', 'YYYY.MM.DD'),
  to_date('2007.01.19', 'YYYY.MM.DD'),
  to_date('2036.12.31', 'YYYY.MM.DD')
), sysdate
FROM cmp_registrar r LEFT
OUTER JOIN cmp_bruincard b ON b.university_id = r.university_id LEFT
OUTER JOIN ucladb.patron p ON p.institution_id = r.university_id
WHERE p.patron_id IS NULL and r.withdraw is null;

