OPTIONS (SKIP=13)
LOAD DATA
REPLACE INTO TABLE CMP_FSEMAIL
WHEN universityid <> '         '
(
  universityid	POSITION(01:09)		CHAR,
  name		POSITION(10:44)		CHAR,
  email		POSITION(45:94)		CHAR,
  deptcode	POSITION(95:98)		CHAR,
  department	POSITION(99:128)	CHAR
)
