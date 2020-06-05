--------------------------------------------------------
--  File created - Wednesday-May-29-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence DEPARTMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BKUNGL"."DEPARTMENTS_SEQ"  MINVALUE 200 MAXVALUE 99999 INCREMENT BY 1 START WITH 220 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BKUNGL"."EMPLOYEES_SEQ"  MINVALUE 300 MAXVALUE 99999 INCREMENT BY 1 START WITH 320 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence JOBS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BKUNGL"."JOBS_SEQ"  MINVALUE 400 MAXVALUE 99999 INCREMENT BY 1 START WITH 420 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOCATIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BKUNGL"."LOCATIONS_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence REGIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BKUNGL"."REGIONS_SEQ"  MINVALUE 600 MAXVALUE 99999 INCREMENT BY 1 START WITH 620 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table COUNTRIES
--------------------------------------------------------

  CREATE TABLE "BKUNGL"."COUNTRIES" 
   (	"COUNTRY_ID" CHAR(2 BYTE), 
	"COUNTRY_NAME" VARCHAR2(40 BYTE), 
	"REGION_ID" NUMBER, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table DEPARTMENTS
--------------------------------------------------------

  CREATE TABLE "BKUNGL"."DEPARTMENTS" 
   (	"DEPARTMENT_ID" NUMBER(4,0), 
	"DEPARTMENT_NAME" VARCHAR2(30 BYTE), 
	"MANAGER_ID" NUMBER, 
	"LOCATION_ID" NUMBER, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "BKUNGL"."EMPLOYEES" 
   (	"EMPLOYEE_ID" NUMBER, 
	"FIRST_NAME" VARCHAR2(20 BYTE), 
	"LAST_NAME" VARCHAR2(25 BYTE), 
	"EMAIL" VARCHAR2(25 BYTE), 
	"PHONE_NUMBER" VARCHAR2(20 BYTE), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table JOBS
--------------------------------------------------------

  CREATE TABLE "BKUNGL"."JOBS" 
   (	"JOB_ID" NUMBER, 
	"JOB_TITLE" VARCHAR2(35 BYTE), 
	"MIN_SALARY" NUMBER(6,0), 
	"MAX_SALARY" NUMBER(6,0), 
	"COMMISSION_PCT" NUMBER(2,2), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table JOB_HISTORY
--------------------------------------------------------

  CREATE TABLE "BKUNGL"."JOB_HISTORY" 
   (	"EMPLOYEE_ID" NUMBER, 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"JOB_ID" NUMBER, 
	"DEPARTMENT_ID" NUMBER(*,0), 
	"SALARY" NUMBER(9,2), 
	"MANAGER_ID" NUMBER, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table LOCATIONS
--------------------------------------------------------

  CREATE TABLE "BKUNGL"."LOCATIONS" 
   (	"LOCATION_ID" NUMBER, 
	"STREET_ADDRESS" VARCHAR2(40 BYTE), 
	"CITY" VARCHAR2(30 BYTE), 
	"STATE_PROVINCE" VARCHAR2(25 BYTE), 
	"POSTAL_CODE" VARCHAR2(20 BYTE), 
	"COUNTRY_ID" CHAR(2 BYTE), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table MLOG$_COUNTRIES
--------------------------------------------------------

  CREATE TABLE "BKUNGL"."MLOG$_COUNTRIES" 
   (	"COUNTRY_ID" CHAR(2 BYTE), 
	"SNAPTIME$$" DATE, 
	"DMLTYPE$$" VARCHAR2(1 BYTE), 
	"OLD_NEW$$" VARCHAR2(1 BYTE), 
	"CHANGE_VECTOR$$" RAW(255), 
	"XID$$" NUMBER, 
	"M_ROW$$" VARCHAR2(255 BYTE)
   ) ;

   COMMENT ON TABLE "BKUNGL"."MLOG$_COUNTRIES"  IS 'snapshot log for master table BKUNGL.COUNTRIES';
--------------------------------------------------------
--  DDL for Table MLOG$_DEPARTMENTS
--------------------------------------------------------

  CREATE TABLE "BKUNGL"."MLOG$_DEPARTMENTS" 
   (	"DEPARTMENT_ID" NUMBER, 
	"SNAPTIME$$" DATE, 
	"DMLTYPE$$" VARCHAR2(1 BYTE), 
	"OLD_NEW$$" VARCHAR2(1 BYTE), 
	"CHANGE_VECTOR$$" RAW(255), 
	"XID$$" NUMBER, 
	"M_ROW$$" VARCHAR2(255 BYTE)
   ) ;

   COMMENT ON TABLE "BKUNGL"."MLOG$_DEPARTMENTS"  IS 'snapshot log for master table BKUNGL.DEPARTMENTS';
--------------------------------------------------------
--  DDL for Table MLOG$_EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "BKUNGL"."MLOG$_EMPLOYEES" 
   (	"M_ROW$$" VARCHAR2(255 BYTE), 
	"SNAPTIME$$" DATE, 
	"DMLTYPE$$" VARCHAR2(1 BYTE), 
	"OLD_NEW$$" VARCHAR2(1 BYTE), 
	"CHANGE_VECTOR$$" RAW(255), 
	"XID$$" NUMBER
   ) ;

   COMMENT ON TABLE "BKUNGL"."MLOG$_EMPLOYEES"  IS 'snapshot log for master table BKUNGL.EMPLOYEES';
--------------------------------------------------------
--  DDL for Table MLOG$_JOBS
--------------------------------------------------------

  CREATE TABLE "BKUNGL"."MLOG$_JOBS" 
   (	"JOB_ID" NUMBER, 
	"SNAPTIME$$" DATE, 
	"DMLTYPE$$" VARCHAR2(1 BYTE), 
	"OLD_NEW$$" VARCHAR2(1 BYTE), 
	"CHANGE_VECTOR$$" RAW(255), 
	"XID$$" NUMBER, 
	"M_ROW$$" VARCHAR2(255 BYTE)
   ) ;

   COMMENT ON TABLE "BKUNGL"."MLOG$_JOBS"  IS 'snapshot log for master table BKUNGL.JOBS';
--------------------------------------------------------
--  DDL for Table MLOG$_JOB_HISTORY
--------------------------------------------------------

  CREATE TABLE "BKUNGL"."MLOG$_JOB_HISTORY" 
   (	"M_ROW$$" VARCHAR2(255 BYTE), 
	"SNAPTIME$$" DATE, 
	"DMLTYPE$$" VARCHAR2(1 BYTE), 
	"OLD_NEW$$" VARCHAR2(1 BYTE), 
	"CHANGE_VECTOR$$" RAW(255), 
	"XID$$" NUMBER
   ) ;

   COMMENT ON TABLE "BKUNGL"."MLOG$_JOB_HISTORY"  IS 'snapshot log for master table BKUNGL.JOB_HISTORY';
--------------------------------------------------------
--  DDL for Table MLOG$_LOCATIONS
--------------------------------------------------------

  CREATE TABLE "BKUNGL"."MLOG$_LOCATIONS" 
   (	"LOCATION_ID" NUMBER, 
	"SNAPTIME$$" DATE, 
	"DMLTYPE$$" VARCHAR2(1 BYTE), 
	"OLD_NEW$$" VARCHAR2(1 BYTE), 
	"CHANGE_VECTOR$$" RAW(255), 
	"XID$$" NUMBER, 
	"M_ROW$$" VARCHAR2(255 BYTE)
   ) ;

   COMMENT ON TABLE "BKUNGL"."MLOG$_LOCATIONS"  IS 'snapshot log for master table BKUNGL.LOCATIONS';
--------------------------------------------------------
--  DDL for Table MLOG$_REGIONS
--------------------------------------------------------

  CREATE TABLE "BKUNGL"."MLOG$_REGIONS" 
   (	"REGION_ID" NUMBER, 
	"SNAPTIME$$" DATE, 
	"DMLTYPE$$" VARCHAR2(1 BYTE), 
	"OLD_NEW$$" VARCHAR2(1 BYTE), 
	"CHANGE_VECTOR$$" RAW(255), 
	"XID$$" NUMBER, 
	"M_ROW$$" VARCHAR2(255 BYTE)
   ) ;

   COMMENT ON TABLE "BKUNGL"."MLOG$_REGIONS"  IS 'snapshot log for master table BKUNGL.REGIONS';
--------------------------------------------------------
--  DDL for Table REGIONS
--------------------------------------------------------

  CREATE TABLE "BKUNGL"."REGIONS" 
   (	"REGION_ID" NUMBER, 
	"REGION_NAME" VARCHAR2(25 BYTE), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"MODIFIED_BY" VARCHAR2(30 BYTE), 
	"MODIFIED_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for View DEPARTMENT_RANK_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "BKUNGL"."DEPARTMENT_RANK_VIEW" ("EMPID", "DEPID", "SALARY", "RANK", "SUM") AS 
  SELECT JH.EMPLOYEE_ID AS EMPID, JH.DEPARTMENT_ID AS DEPID, JH.SALARY AS SALARY, DENSE_RANK() OVER (ORDER BY JH.DEPARTMENT_ID, JH.SALARY) AS RANK, SUM(SALARY) AS SUM
    FROM JOB_HISTORY JH
    INNER JOIN EMPLOYEES E ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
    GROUP BY JH.EMPLOYEE_ID, JH.DEPARTMENT_ID, JH.SALARY
;
--------------------------------------------------------
--  DDL for Materialized View EMP_DETAILS_VIEW
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "BKUNGL"."EMP_DETAILS_VIEW" ("COUNTRIES_ROWID", "DEPARTMENTS_ROWID", "EMPLOYEES_ROWID", "JOBS_ROWID", "JOB_HISTORY_ROWID", "LOCATIONS_ROWID", "REGIONS_ROWID", "COUNTRY_NAME", "DEPARTMENT_ID", "DEPARTMENT_NAME", "EMPLOYEE_ID", "FIRST_NAME", "LAST_NAME", "COMMISSION_PCT", "JOB_TITLE", "JOB_ID", "MANAGER_ID", "SALARY", "CITY", "COUNTRY_ID", "LOCATION_ID", "STATE_PROVINCE", "REGION_NAME")
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH FAST ON COMMIT
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE ON QUERY COMPUTATION ENABLE QUERY REWRITE
  AS select 
        c.rowid as countries_rowid, d.rowid as departments_rowid, e.rowid as employees_rowid, j.rowid as jobs_rowid, jh.rowid as job_history_rowid, l.rowid as locations_rowid, r.rowid as regions_rowid,
        c.country_name, d.department_id, d.department_name, e.employee_id, e.first_name, e.last_name, j.commission_pct, j.job_title, j.job_id, 
        jh.manager_id, jh.salary, l.city, l.country_id, l.location_id, l.state_province, r.region_name
    from countries c, departments d, employees e, jobs j, job_history jh, locations l, regions r;

   COMMENT ON MATERIALIZED VIEW "BKUNGL"."EMP_DETAILS_VIEW"  IS 'snapshot table for snapshot BKUNGL.EMP_DETAILS_VIEW';
REM INSERTING into BKUNGL.COUNTRIES
SET DEFINE OFF;
Insert into BKUNGL.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values ('US','Sao Tome and Principe',600,'BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
REM INSERTING into BKUNGL.DEPARTMENTS
SET DEFINE OFF;
Insert into BKUNGL.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (205,'CLEANING',1000,5,'BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
Insert into BKUNGL.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (206,'PLUMBING',1001,5,'BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
REM INSERTING into BKUNGL.EMPLOYEES
SET DEFINE OFF;
Insert into BKUNGL.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (300,'I111AN','LUNGHL','BK@UDEL.EDU','1234567890','BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
Insert into BKUNGL.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (301,'I111AN','LUNGHL','BK@UDEL.EDU','1234567890','BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
Insert into BKUNGL.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (302,'I111AN','LUNGHL','BK@UDEL.EDU','1234567890','BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
Insert into BKUNGL.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (303,'I111AN','LUNGHL','BK@UDEL.EDU','1234567890','BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
Insert into BKUNGL.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (304,'BRING','ASDAS','BK@UDEL.EDU','1234567890','BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
REM INSERTING into BKUNGL.JOBS
SET DEFINE OFF;
Insert into BKUNGL.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY,COMMISSION_PCT,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (400,'JANITOR',10000,15000,0.5,'BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
Insert into BKUNGL.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY,COMMISSION_PCT,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (401,'JANITOR',10000,15000,0.5,'BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
Insert into BKUNGL.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY,COMMISSION_PCT,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (402,'JANITOR',10000,15000,0.5,'BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
REM INSERTING into BKUNGL.JOB_HISTORY
SET DEFINE OFF;
Insert into BKUNGL.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID,SALARY,MANAGER_ID,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (300,to_date('28-MAY-19','DD-MON-RR'),null,400,205,11000,300,'BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
Insert into BKUNGL.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID,SALARY,MANAGER_ID,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (301,to_date('28-MAY-19','DD-MON-RR'),null,400,205,11000,300,'BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
Insert into BKUNGL.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID,SALARY,MANAGER_ID,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (302,to_date('28-MAY-19','DD-MON-RR'),null,400,206,15000,300,'BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
REM INSERTING into BKUNGL.LOCATIONS
SET DEFINE OFF;
Insert into BKUNGL.LOCATIONS (LOCATION_ID,STREET_ADDRESS,CITY,STATE_PROVINCE,POSTAL_CODE,COUNTRY_ID,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (5,'13 ANNABELLE','NEWARK','DELAWARE','19717','US','BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
REM INSERTING into BKUNGL.MLOG$_COUNTRIES
SET DEFINE OFF;
REM INSERTING into BKUNGL.MLOG$_DEPARTMENTS
SET DEFINE OFF;
REM INSERTING into BKUNGL.MLOG$_EMPLOYEES
SET DEFINE OFF;
REM INSERTING into BKUNGL.MLOG$_JOBS
SET DEFINE OFF;
REM INSERTING into BKUNGL.MLOG$_JOB_HISTORY
SET DEFINE OFF;
REM INSERTING into BKUNGL.MLOG$_LOCATIONS
SET DEFINE OFF;
REM INSERTING into BKUNGL.MLOG$_REGIONS
SET DEFINE OFF;
REM INSERTING into BKUNGL.REGIONS
SET DEFINE OFF;
Insert into BKUNGL.REGIONS (REGION_ID,REGION_NAME,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (600,'MIDWEST','BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
Insert into BKUNGL.REGIONS (REGION_ID,REGION_NAME,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (601,'MIDWEST','BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
Insert into BKUNGL.REGIONS (REGION_ID,REGION_NAME,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (602,'MIDWEST','BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
Insert into BKUNGL.REGIONS (REGION_ID,REGION_NAME,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE) values (603,'MIDWEST','BKUNGL',to_date('29-MAY-19','DD-MON-RR'),'BKUNGL',to_date('29-MAY-19','DD-MON-RR'));
--------------------------------------------------------
--  DDL for Index COUNTRIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BKUNGL"."COUNTRIES_PK" ON "BKUNGL"."COUNTRIES" ("COUNTRY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index DEPARTMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BKUNGL"."DEPARTMENTS_PK" ON "BKUNGL"."DEPARTMENTS" ("DEPARTMENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index EMPLOYEES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BKUNGL"."EMPLOYEES_PK" ON "BKUNGL"."EMPLOYEES" ("EMPLOYEE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index I_MLOG$_COUNTRIES
--------------------------------------------------------

  CREATE INDEX "BKUNGL"."I_MLOG$_COUNTRIES" ON "BKUNGL"."MLOG$_COUNTRIES" ("XID$$") 
  ;
--------------------------------------------------------
--  DDL for Index I_MLOG$_DEPARTMENTS
--------------------------------------------------------

  CREATE INDEX "BKUNGL"."I_MLOG$_DEPARTMENTS" ON "BKUNGL"."MLOG$_DEPARTMENTS" ("XID$$") 
  ;
--------------------------------------------------------
--  DDL for Index I_MLOG$_EMPLOYEES
--------------------------------------------------------

  CREATE INDEX "BKUNGL"."I_MLOG$_EMPLOYEES" ON "BKUNGL"."MLOG$_EMPLOYEES" ("XID$$") 
  ;
--------------------------------------------------------
--  DDL for Index I_MLOG$_JOBS
--------------------------------------------------------

  CREATE INDEX "BKUNGL"."I_MLOG$_JOBS" ON "BKUNGL"."MLOG$_JOBS" ("XID$$") 
  ;
--------------------------------------------------------
--  DDL for Index I_MLOG$_JOB_HISTORY
--------------------------------------------------------

  CREATE INDEX "BKUNGL"."I_MLOG$_JOB_HISTORY" ON "BKUNGL"."MLOG$_JOB_HISTORY" ("XID$$") 
  ;
--------------------------------------------------------
--  DDL for Index I_MLOG$_LOCATIONS
--------------------------------------------------------

  CREATE INDEX "BKUNGL"."I_MLOG$_LOCATIONS" ON "BKUNGL"."MLOG$_LOCATIONS" ("XID$$") 
  ;
--------------------------------------------------------
--  DDL for Index I_MLOG$_REGIONS
--------------------------------------------------------

  CREATE INDEX "BKUNGL"."I_MLOG$_REGIONS" ON "BKUNGL"."MLOG$_REGIONS" ("XID$$") 
  ;
--------------------------------------------------------
--  DDL for Index JOBS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BKUNGL"."JOBS_PK" ON "BKUNGL"."JOBS" ("JOB_ID") 
  ;
--------------------------------------------------------
--  DDL for Index JOB_HISTORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BKUNGL"."JOB_HISTORY_PK" ON "BKUNGL"."JOB_HISTORY" ("EMPLOYEE_ID", "START_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index LOCATIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BKUNGL"."LOCATIONS_PK" ON "BKUNGL"."LOCATIONS" ("LOCATION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index REGIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BKUNGL"."REGIONS_PK" ON "BKUNGL"."REGIONS" ("REGION_ID") 
  ;
--------------------------------------------------------
--  DDL for Trigger COUNTRIES_TRG1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BKUNGL"."COUNTRIES_TRG1" 
BEFORE INSERT OR UPDATE ON COUNTRIES 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    :NEW.MODIFIED_BY := USER;
    :NEW.MODIFIED_DATE := SYSDATE;
    IF INSERTING THEN
      :NEW.CREATED_BY := USER;
      :NEW.CREATED_DATE := SYSDATE;
    END IF;
  END COLUMN_SEQUENCES;  
END;
/
ALTER TRIGGER "BKUNGL"."COUNTRIES_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DEPARTMENTS_TRG1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BKUNGL"."DEPARTMENTS_TRG1" 
BEFORE INSERT OR UPDATE ON DEPARTMENTS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    :NEW.MODIFIED_BY := USER;
    :NEW.MODIFIED_DATE := SYSDATE;
    IF INSERTING THEN
      :NEW.CREATED_BY := USER;
      :NEW.CREATED_DATE := SYSDATE;
    END IF;
  END COLUMN_SEQUENCES;  
END;
/
ALTER TRIGGER "BKUNGL"."DEPARTMENTS_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DEPARTMENTS_TRIG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BKUNGL"."DEPARTMENTS_TRIG" 
BEFORE INSERT ON DEPARTMENTS 
FOR EACH ROW
BEGIN
  SELECT DEPARTMENTS_SEQ.NEXTVAL
  INTO :NEW.DEPARTMENT_ID
  FROM DUAL;
END;
/
ALTER TRIGGER "BKUNGL"."DEPARTMENTS_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EMPLOYEES_TRG1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BKUNGL"."EMPLOYEES_TRG1" 
BEFORE INSERT OR UPDATE ON EMPLOYEES
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    :NEW.MODIFIED_BY := USER;
    :NEW.MODIFIED_DATE := SYSDATE;
    IF INSERTING THEN
      :NEW.CREATED_BY := USER;
      :NEW.CREATED_DATE := SYSDATE;
    END IF;
  END COLUMN_SEQUENCES;  
END;
/
ALTER TRIGGER "BKUNGL"."EMPLOYEES_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EMPLOYEES_TRIG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BKUNGL"."EMPLOYEES_TRIG" 
BEFORE INSERT ON EMPLOYEES 
FOR EACH ROW
BEGIN
  SELECT EMPLOYEES_SEQ.NEXTVAL
  INTO :NEW.EMPLOYEE_ID
  FROM DUAL;
END;
/
ALTER TRIGGER "BKUNGL"."EMPLOYEES_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JOBS_TRG1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BKUNGL"."JOBS_TRG1" 
BEFORE INSERT OR UPDATE ON JOBS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    :NEW.MODIFIED_BY := USER;
    :NEW.MODIFIED_DATE := SYSDATE;
    IF INSERTING THEN
      :NEW.CREATED_BY := USER;
      :NEW.CREATED_DATE := SYSDATE;
    END IF;
  END COLUMN_SEQUENCES;  
END;
/
ALTER TRIGGER "BKUNGL"."JOBS_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JOBS_TRIG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BKUNGL"."JOBS_TRIG" 
BEFORE INSERT ON JOBS 
FOR EACH ROW
BEGIN
  SELECT JOBS_SEQ.NEXTVAL
  INTO :NEW.JOB_ID
  FROM DUAL;
END;
/
ALTER TRIGGER "BKUNGL"."JOBS_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JOB_HISTORY_TRG1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BKUNGL"."JOB_HISTORY_TRG1" 
BEFORE INSERT OR UPDATE ON JOB_HISTORY 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    :NEW.MODIFIED_BY := USER;
    :NEW.MODIFIED_DATE := SYSDATE;
    IF INSERTING THEN
      :NEW.CREATED_BY := USER;
      :NEW.CREATED_DATE := SYSDATE;
    END IF;
  END COLUMN_SEQUENCES;  
END;
/
ALTER TRIGGER "BKUNGL"."JOB_HISTORY_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LOCATIONS_TRG1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BKUNGL"."LOCATIONS_TRG1" 
BEFORE INSERT OR UPDATE ON LOCATIONS
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    :NEW.MODIFIED_BY := USER;
    :NEW.MODIFIED_DATE := SYSDATE;
    IF INSERTING THEN
      :NEW.CREATED_BY := USER;
      :NEW.CREATED_DATE := SYSDATE;
    END IF;
  END COLUMN_SEQUENCES;  
END;
/
ALTER TRIGGER "BKUNGL"."LOCATIONS_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LOCATIONS_TRIG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BKUNGL"."LOCATIONS_TRIG" 
BEFORE INSERT ON LOCATIONS
FOR EACH ROW
BEGIN
  SELECT LOCATIONS_SEQ.NEXTVAL
  INTO :NEW.LOCATION_ID
  FROM DUAL;
END;
/
ALTER TRIGGER "BKUNGL"."LOCATIONS_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger POSTAL_CHECK
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BKUNGL"."POSTAL_CHECK" 
    before insert or update on LOCATIONS
    for each row
    
    declare
        COUNTRY_ID CHAR;
    begin
        --SELECT COUNTRY_ID INTO COUNTRY_ID FROM LOCATIONS L WHERE LOCATION_ID = :NEW.LOCATION_ID;
        IF INSERTING OR UPDATING THEN
            IF :NEW.COUNTRY_ID = 'US' THEN
                --IF :NEW.POSTAL_CODE 
                --IF NOT REGEXP_LIKE(:NEW.POSTAL_CODE, '^[1-9]\d{4}([ -]?\d{4})?$') OR NOT REGEXP_LIKE(:NEW.POSTAL_CODE, '^[0-9]{5}$') THEN
                IF NOT REGEXP_LIKE(:NEW.POSTAL_CODE, '^[0-9]{5}$') THEN
                    RAISE INVALID_NUMBER;
                END IF;
            END IF;
            IF :NEW.COUNTRY_ID = 'CA' THEN
                IF NOT REGEXP_LIKE(:NEW.POSTAL_CODE, '^[ABCEGHJ-NPRSTVXY][0-9][ABCEGHJ-NPRSTV-Z] [0-9][ABCEGHJ-NPRSTV-Z][0-9]$') THEN
                    RAISE INVALID_NUMBER;
                END IF;
            END IF;
        END IF;
    end;
/
ALTER TRIGGER "BKUNGL"."POSTAL_CHECK" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REGIONS_TRG1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BKUNGL"."REGIONS_TRG1" 
BEFORE INSERT OR UPDATE ON REGIONS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    :NEW.MODIFIED_BY := USER;
    :NEW.MODIFIED_DATE := SYSDATE;
    IF INSERTING THEN
      :NEW.CREATED_BY := USER;
      :NEW.CREATED_DATE := SYSDATE;
    END IF;
  END COLUMN_SEQUENCES;  
END;
/
ALTER TRIGGER "BKUNGL"."REGIONS_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REGIONS_TRIG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BKUNGL"."REGIONS_TRIG" 
BEFORE INSERT ON REGIONS
FOR EACH ROW
BEGIN
  SELECT REGIONS_SEQ.NEXTVAL
  INTO :NEW.REGION_ID
  FROM DUAL;
END;
/
ALTER TRIGGER "BKUNGL"."REGIONS_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SALARY_CHECK_TRIG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BKUNGL"."SALARY_CHECK_TRIG" 
    before insert or update on job_history
    for each row
    
    declare
        --function 
        --salary number;
        min_salary number;
        max_salary number;
    begin
        select min_salary into min_salary from jobs J where j.job_id = :NEW.JOB_ID;
        select max_salary into max_salary from jobs J where j.job_id = :NEW.job_id;
        if inserting or updating then
            if :NEW.SALARY < MIN_SALARY OR :NEW.SALARY > MAX_SALARY THEN
                RAISE INVALID_NUMBER;
            END IF;
        END IF;
    end;
/
ALTER TRIGGER "BKUNGL"."SALARY_CHECK_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SCH_FOOTPRINT_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BKUNGL"."SCH_FOOTPRINT_TRIGGER" AFTER CREATE ON final.SCHEMA BEGIN
    IF dictionary_obj_type = 'TABLE' THEN
        pkg_fix_footprint_columns.prc_add_footprint_columns(dictionary_obj_name);
        pkg_fix_footprint_triggers.prc_fix_footprint_triggers(dictionary_obj_name);
    END IF;
END;
/
ALTER TRIGGER "BKUNGL"."SCH_FOOTPRINT_TRIGGER" ENABLE;
CREATE MATERIALIZED VIEW LOG ON "BKUNGL"."COUNTRIES"
 
  WITH PRIMARY KEY, ROWID EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG ON "BKUNGL"."DEPARTMENTS"
 
  WITH PRIMARY KEY, ROWID EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG ON "BKUNGL"."EMPLOYEES"
 
  WITH ROWID EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG ON "BKUNGL"."JOBS"
 
  WITH PRIMARY KEY, ROWID EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG ON "BKUNGL"."JOB_HISTORY"
 
  WITH ROWID EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG ON "BKUNGL"."LOCATIONS"
 
  WITH PRIMARY KEY, ROWID EXCLUDING NEW VALUES;
CREATE MATERIALIZED VIEW LOG ON "BKUNGL"."REGIONS"
 
  WITH PRIMARY KEY, ROWID EXCLUDING NEW VALUES;
--------------------------------------------------------
--  DDL for Procedure PRC_FIRE_DEPARTMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "BKUNGL"."PRC_FIRE_DEPARTMENT" (DEPARTMENT_ID IN NUMBER, EFFECTIVE_DATE IN DATE)
IS
    --CD_ID NUMBER;
    --CED DATE;
BEGIN
    FOR REC IN (SELECT EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID, SALARY, MANAGER_ID FROM JOB_HISTORY JH WHERE JH.DEPARTMENT_ID = DEPARTMENT_ID)
    LOOP
        INSERT INTO JOB_HISTORY (EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID, SALARY, MANAGER_ID)
        VALUES(REC.EMPLOYEE_ID, REC.START_DATE, EFFECTIVE_DATE, REC.JOB_ID, REC.DEPARTMENT_ID, REC.SALARY, REC.MANAGER_ID);
    END LOOP;

    --MINUS EXTRAS NOW

END;

/
--------------------------------------------------------
--  DDL for Package COUNTRIES_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "BKUNGL"."COUNTRIES_TAPI" 
is

type COUNTRIES_tapi_rec is record (
REGION_ID  COUNTRIES.REGION_ID%type
,CREATED_BY  COUNTRIES.CREATED_BY%type
,COUNTRY_ID  COUNTRIES.COUNTRY_ID%type
,MODIFIED_BY  COUNTRIES.MODIFIED_BY%type
,CREATED_DATE  COUNTRIES.CREATED_DATE%type
,COUNTRY_NAME  COUNTRIES.COUNTRY_NAME%type
,MODIFIED_DATE  COUNTRIES.MODIFIED_DATE%type
);
type COUNTRIES_tapi_tab is table of COUNTRIES_tapi_rec;

-- insert
procedure ins (
p_REGION_ID in COUNTRIES.REGION_ID%type default null 
,p_CREATED_BY in COUNTRIES.CREATED_BY%type default null 
,p_COUNTRY_ID in COUNTRIES.COUNTRY_ID%type
,p_MODIFIED_BY in COUNTRIES.MODIFIED_BY%type default null 
,p_CREATED_DATE in COUNTRIES.CREATED_DATE%type default null 
,p_COUNTRY_NAME in COUNTRIES.COUNTRY_NAME%type default null 
,p_MODIFIED_DATE in COUNTRIES.MODIFIED_DATE%type default null 
);
-- update
procedure upd (
p_REGION_ID in COUNTRIES.REGION_ID%type default null 
,p_CREATED_BY in COUNTRIES.CREATED_BY%type default null 
,p_COUNTRY_ID in COUNTRIES.COUNTRY_ID%type
,p_MODIFIED_BY in COUNTRIES.MODIFIED_BY%type default null 
,p_CREATED_DATE in COUNTRIES.CREATED_DATE%type default null 
,p_COUNTRY_NAME in COUNTRIES.COUNTRY_NAME%type default null 
,p_MODIFIED_DATE in COUNTRIES.MODIFIED_DATE%type default null 
);
-- delete
procedure del (
p_COUNTRY_ID in COUNTRIES.COUNTRY_ID%type
);
end COUNTRIES_tapi;

/
--------------------------------------------------------
--  DDL for Package DEPARTMENTS_TAPI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "BKUNGL"."DEPARTMENTS_TAPI" 
is

type DEPARTMENTS_tapi_rec is record (
CREATED_BY  DEPARTMENTS.CREATED_BY%type
,DEPARTMENT_NAME  DEPARTMENTS.DEPARTMENT_NAME%type
,DEPARTMENT_ID  DEPARTMENTS.DEPARTMENT_ID%type
,MODIFIED_BY  DEPARTMENTS.MODIFIED_BY%type
,CREATED_DATE  DEPARTMENTS.CREATED_DATE%type
,LOCATION_ID  DEPARTMENTS.LOCATION_ID%type
,MANAGER_ID  DEPARTMENTS.MANAGER_ID%type
,MODIFIED_DATE  DEPARTMENTS.MODIFIED_DATE%type
);
type DEPARTMENTS_tapi_tab is table of DEPARTMENTS_tapi_rec;

-- insert
procedure ins (
p_CREATED_BY in DEPARTMENTS.CREATED_BY%type default null 
,p_DEPARTMENT_NAME in DEPARTMENTS.DEPARTMENT_NAME%type
,p_DEPARTMENT_ID in DEPARTMENTS.DEPARTMENT_ID%type
,p_MODIFIED_BY in DEPARTMENTS.MODIFIED_BY%type default null 
,p_CREATED_DATE in DEPARTMENTS.CREATED_DATE%type default null 
,p_LOCATION_ID in DEPARTMENTS.LOCATION_ID%type default null 
,p_MANAGER_ID in DEPARTMENTS.MANAGER_ID%type default null 
,p_MODIFIED_DATE in DEPARTMENTS.MODIFIED_DATE%type default null 
);
-- update
procedure upd (
p_CREATED_BY in DEPARTMENTS.CREATED_BY%type default null 
,p_DEPARTMENT_NAME in DEPARTMENTS.DEPARTMENT_NAME%type
,p_DEPARTMENT_ID in DEPARTMENTS.DEPARTMENT_ID%type
,p_MODIFIED_BY in DEPARTMENTS.MODIFIED_BY%type default null 
,p_CREATED_DATE in DEPARTMENTS.CREATED_DATE%type default null 
,p_LOCATION_ID in DEPARTMENTS.LOCATION_ID%type default null 
,p_MANAGER_ID in DEPARTMENTS.MANAGER_ID%type default null 
,p_MODIFIED_DATE in DEPARTMENTS.MODIFIED_DATE%type default null 
);
-- delete
procedure del (
p_DEPARTMENT_ID in DEPARTMENTS.DEPARTMENT_ID%type
);
end DEPARTMENTS_tapi;

/
--------------------------------------------------------
--  DDL for Package PKG_FIX_FOOTPRINT_COLUMNS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "BKUNGL"."PKG_FIX_FOOTPRINT_COLUMNS" AS
    PROCEDURE prc_add_footprint_columns (
        table_name_in VARCHAR2
    );

    PROCEDURE prc_add_footprint_columns;

END pkg_fix_footprint_columns;

/
--------------------------------------------------------
--  DDL for Package PKG_FIX_FOOTPRINT_TRIGGERS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "BKUNGL"."PKG_FIX_FOOTPRINT_TRIGGERS" AS
    PROCEDURE prc_fix_footprint_triggers (
        table_name_in VARCHAR2
    );

    PROCEDURE find_all_tables;

END pkg_fix_footprint_triggers;

/
--------------------------------------------------------
--  DDL for Package Body PKG_FIX_FOOTPRINT_COLUMNS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "BKUNGL"."PKG_FIX_FOOTPRINT_COLUMNS" AS

    FUNCTION fn_does_column_exist (
        table_name_in    VARCHAR2,
        column_name_in   VARCHAR2
    ) RETURN NUMBER AS
        v_cnt   NUMBER(9);
        v_sql   VARCHAR2(2000);
    BEGIN
        v_sql := 'SELECT COUNT(*)   FROM USER_TAB_COLS WHERE TABLE_NAME = '
                 || ''''
                 || table_name_in
                 || ''''
                 || ' AND COLUMN_NAME = '
                 || ''''
                 || column_name_in
                 || '''';
        EXECUTE IMMEDIATE v_sql
        INTO v_cnt;
        IF v_cnt > 0 THEN
            RETURN 1;
        ELSE
            RETURN 0;
        END IF;
    END fn_does_column_exist;

--  Create a column

    PROCEDURE create_column (
        table_name_in    VARCHAR2,
        column_name_in   VARCHAR2,
        datatype_in      VARCHAR2
    ) AS
        v_cnt   NUMBER(9);
        v_sql   VARCHAR2(2000);
    BEGIN
        v_sql := 'ALTER TABLE '
                 || table_name_in
                 || ' ADD ('
                 || column_name_in
                 || ' '
                 || datatype_in
                 || ')';

        dbms_output.put_line(v_sql);
        EXECUTE IMMEDIATE v_sql;
    END create_column;

    PROCEDURE prc_add_footprint_columns (
        table_name_in VARCHAR2
    ) AS
    BEGIN
        IF ( fn_does_column_exist(table_name_in, 'CREATED_BY') = 0 ) THEN
            create_column(table_name_in, 'CREATED_BY', 'VARCHAR2(30)');
        END IF;

        IF ( fn_does_column_exist(table_name_in, 'CREATED_DATE') = 0 ) THEN
            create_column(table_name_in, 'CREATED_DATE', 'DATE');
        END IF;

        IF ( fn_does_column_exist(table_name_in, 'MODIFIED_BY') = 0 ) THEN
            create_column(table_name_in, 'MODIFIED_BY', 'VARCHAR2(30)');
        END IF;

        IF ( fn_does_column_exist(table_name_in, 'MODIFIED_DATE') = 0 ) THEN
            create_column(table_name_in, 'MODIFIED_DATE', 'DATE');
        END IF;

    END prc_add_footprint_columns;
    --  Check to see if the footprint columns exist...  if they don't, add them

    PROCEDURE prc_add_footprint_columns AS
    BEGIN
        FOR c IN (
            SELECT
                *
            FROM
                user_tables
        ) LOOP
            IF ( fn_does_column_exist(c.table_name, 'CREATED_BY') = 0 ) THEN
                create_column(c.table_name, 'CREATED_BY', 'VARCHAR2(30)');
            END IF;

            IF ( fn_does_column_exist(c.table_name, 'CREATED_DATE') = 0 ) THEN
                create_column(c.table_name, 'CREATED_DATE', 'DATE');
            END IF;

            IF ( fn_does_column_exist(c.table_name, 'MODIFIED_BY') = 0 ) THEN
                create_column(c.table_name, 'MODIFIED_BY', 'VARCHAR2(30)');
            END IF;

            IF ( fn_does_column_exist(c.table_name, 'MODIFIED_DATE') = 0 ) THEN
                create_column(c.table_name, 'MODIFIED_DATE', 'DATE');
            END IF;

        END LOOP;
    END prc_add_footprint_columns;

END pkg_fix_footprint_columns;

/
--------------------------------------------------------
--  DDL for Package Body PKG_FIX_FOOTPRINT_TRIGGERS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "BKUNGL"."PKG_FIX_FOOTPRINT_TRIGGERS" AS


    -- CREATE AND EXECUTE TRIGGER

    PROCEDURE prc_fix_footprint_triggers (
        table_name_in VARCHAR2
    ) AS
        v_sql VARCHAR2(4000);
    BEGIN
        v_sql := 'CREATE OR REPLACE TRIGGER trg_'
                 || table_name_in
                 || '_fp';
        v_sql := v_sql
                 || ' BEFORE UPDATE OR INSERT ON '
                 || table_name_in
                 || ' FOR EACH ROW ';
        v_sql := v_sql || ' BEGIN  IF inserting THEN  :new.created_by := user; :new.created_date := SYSDATE; END IF;';
        v_sql := v_sql || ' :new.MODIFIED_by := user;  :new.MODIFIED_date := SYSDATE; END;';
        execute IMMEDIATE v_sql;
    END prc_fix_footprint_triggers;

    PROCEDURE find_all_tables AS
    BEGIN
        FOR c IN (
            SELECT
                *
            FROM
                user_tables
        ) LOOP
        prc_fix_footprint_triggers(c.table_name);
        END LOOP;
    END find_all_tables;

END pkg_fix_footprint_triggers;

/
--------------------------------------------------------
--  Constraints for Table COUNTRIES
--------------------------------------------------------

  ALTER TABLE "BKUNGL"."COUNTRIES" MODIFY ("COUNTRY_ID" NOT NULL ENABLE);
  ALTER TABLE "BKUNGL"."COUNTRIES" ADD CONSTRAINT "COUNTRIES_PK" PRIMARY KEY ("COUNTRY_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPARTMENTS
--------------------------------------------------------

  ALTER TABLE "BKUNGL"."DEPARTMENTS" MODIFY ("DEPARTMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "BKUNGL"."DEPARTMENTS" MODIFY ("DEPARTMENT_NAME" NOT NULL ENABLE);
  ALTER TABLE "BKUNGL"."DEPARTMENTS" ADD CONSTRAINT "DEPARTMENTS_PK" PRIMARY KEY ("DEPARTMENT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "BKUNGL"."EMPLOYEES" MODIFY ("EMPLOYEE_ID" NOT NULL ENABLE);
  ALTER TABLE "BKUNGL"."EMPLOYEES" ADD CONSTRAINT "EMPLOYEES_PK" PRIMARY KEY ("EMPLOYEE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOBS
--------------------------------------------------------

  ALTER TABLE "BKUNGL"."JOBS" ADD CONSTRAINT "CHECK_MIN_SALARY" CHECK ((MIN_SALARY <= MAX_SALARY)) ENABLE;
  ALTER TABLE "BKUNGL"."JOBS" MODIFY ("JOB_ID" NOT NULL ENABLE);
  ALTER TABLE "BKUNGL"."JOBS" MODIFY ("JOB_TITLE" NOT NULL ENABLE);
  ALTER TABLE "BKUNGL"."JOBS" ADD CONSTRAINT "JOBS_PK" PRIMARY KEY ("JOB_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOB_HISTORY
--------------------------------------------------------

  ALTER TABLE "BKUNGL"."JOB_HISTORY" ADD CONSTRAINT "CHECK_START_DATE" CHECK (START_DATE < END_DATE) ENABLE;
  ALTER TABLE "BKUNGL"."JOB_HISTORY" MODIFY ("JOB_ID" NOT NULL ENABLE);
  ALTER TABLE "BKUNGL"."JOB_HISTORY" MODIFY ("EMPLOYEE_ID" NOT NULL ENABLE);
  ALTER TABLE "BKUNGL"."JOB_HISTORY" MODIFY ("START_DATE" NOT NULL ENABLE);
  ALTER TABLE "BKUNGL"."JOB_HISTORY" ADD CONSTRAINT "JOB_HISTORY_PK" PRIMARY KEY ("EMPLOYEE_ID", "START_DATE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOCATIONS
--------------------------------------------------------

  ALTER TABLE "BKUNGL"."LOCATIONS" MODIFY ("LOCATION_ID" NOT NULL ENABLE);
  ALTER TABLE "BKUNGL"."LOCATIONS" MODIFY ("CITY" NOT NULL ENABLE);
  ALTER TABLE "BKUNGL"."LOCATIONS" ADD CONSTRAINT "LOCATIONS_PK" PRIMARY KEY ("LOCATION_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table REGIONS
--------------------------------------------------------

  ALTER TABLE "BKUNGL"."REGIONS" MODIFY ("REGION_ID" NOT NULL ENABLE);
  ALTER TABLE "BKUNGL"."REGIONS" ADD CONSTRAINT "REGIONS_PK" PRIMARY KEY ("REGION_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COUNTRIES
--------------------------------------------------------

  ALTER TABLE "BKUNGL"."COUNTRIES" ADD CONSTRAINT "COUNTRIES_FK" FOREIGN KEY ("REGION_ID")
	  REFERENCES "BKUNGL"."REGIONS" ("REGION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEPARTMENTS
--------------------------------------------------------

  ALTER TABLE "BKUNGL"."DEPARTMENTS" ADD CONSTRAINT "DEPARTMENTS_FK1" FOREIGN KEY ("LOCATION_ID")
	  REFERENCES "BKUNGL"."LOCATIONS" ("LOCATION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JOB_HISTORY
--------------------------------------------------------

  ALTER TABLE "BKUNGL"."JOB_HISTORY" ADD CONSTRAINT "JOB_HISTORY_FK3" FOREIGN KEY ("MANAGER_ID")
	  REFERENCES "BKUNGL"."EMPLOYEES" ("EMPLOYEE_ID") ENABLE;
  ALTER TABLE "BKUNGL"."JOB_HISTORY" ADD CONSTRAINT "JOB_HISTORY_FK1" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "BKUNGL"."DEPARTMENTS" ("DEPARTMENT_ID") ENABLE;
  ALTER TABLE "BKUNGL"."JOB_HISTORY" ADD CONSTRAINT "JOB_HISTORY_FK2" FOREIGN KEY ("EMPLOYEE_ID")
	  REFERENCES "BKUNGL"."EMPLOYEES" ("EMPLOYEE_ID") ENABLE;
  ALTER TABLE "BKUNGL"."JOB_HISTORY" ADD CONSTRAINT "JOB_HISTORY_FK4" FOREIGN KEY ("JOB_ID")
	  REFERENCES "BKUNGL"."JOBS" ("JOB_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOCATIONS
--------------------------------------------------------

  ALTER TABLE "BKUNGL"."LOCATIONS" ADD CONSTRAINT "LOCATIONS_FK" FOREIGN KEY ("COUNTRY_ID")
	  REFERENCES "BKUNGL"."COUNTRIES" ("COUNTRY_ID") ENABLE;
