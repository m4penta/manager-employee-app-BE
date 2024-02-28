
create table DEPARTMENT
(
    DEPARTMENT_ID        NUMBER(10,0)         not null,
    NAME                 VARCHAR2(100)        not null,
    DESCRIPTION          VARCHAR2(50),
    STATUS               VARCHAR2(20)         not null,
    CREATED_BY           VARCHAR2(50)         not null,
    CREATED_AT           DATE                 not null,
    ESTABLISHED_DATE     DATE                 not null,
    constraint PK_DEPARTMENT primary key (DEPARTMENT_ID)
);
drop table EMPLOYEE;

create table EMPLOYEE
(
    EMPLOYEE_ID          NUMBER(10,0)         not null,
    DEPARTMENT_ID        NUMBER(10,0)         not null,
    EMP_NAME             VARCHAR2(100)        not null,
    ADDRESS              VARCHAR2(50)         not null,
    BIRTHDAY             DATE                 not null,
    GENDER               VARCHAR2(10)         not null,
    EMAIL                VARCHAR2(255)        not null,
    TIME_START_WORK      DATE                 not null,
    TIME_END_WORK        DATE,
    SALARY               NUMBER(10,0)         not null,
    NOTE                 VARCHAR2(50),
    ROLE                 VARCHAR2(50)         not null,
    CREATED_BY           VARCHAR2(50)         not null,
    CREATED_AT           DATE,
    EMP_STATUS           VARCHAR2(1)          not null,
    constraint PK_EMPLOYEE primary key (EMPLOYEE_ID)
);

alter table EMPLOYEE
    add constraint FK_EMPLOYEE_REFERENCE_DEPARTME foreign key (DEPARTMENT_ID)
        references DEPARTMENT (DEPARTMENT_ID);

create table AP_DOMAIN
(
    ID                   NUMBER(10,0)         not null,
    TYPE                 VARCHAR2(50)         not null,
    CODE                 VARCHAR2(20)         not null,
    NAME                 VARCHAR2(100)        not null,
    STATUS               VARCHAR2(20),
    GROUP_CODE           VARCHAR2(20),
    DESCRIPTION          VARCHAR2(50),
    ORDER_NO             NUMBER(10,0),
    constraint PK_AP_DOMAIN primary key (ID)
);

create table ADMIN
(
    NAME                 VARCHAR2(50)         not null,
    ID                   NUMBER(10,0)         not null,
    PASSWORD             VARCHAR2(50)         not null,
    USERNAME             VARCHAR2(50)         not null,
    constraint PK_ADMIN primary key (ID)
);
INSERT INTO ADMIN (NAME, ID, PASSWORD, USERNAME) VALUES ('V?N A', 1, 'password1', 'admin1');
INSERT INTO ADMIN (NAME, ID, PASSWORD, USERNAME) VALUES ('V?n b', 2, 'password2', 'admin2');
INSERT INTO ADMIN (NAME, ID, PASSWORD, USERNAME) VALUES ('V?n C', 3, 'password3', 'admin3');
INSERT INTO ADMIN (NAME, ID, PASSWORD, USERNAME) VALUES ('V?n d', 4, 'password4', 'admin4');


-- T?o d? li?u cho b?ng Department
INSERT INTO DEPARTMENT (DEPARTMENT_ID, NAME, DESCRIPTION, STATUS, CREATED_BY, CREATED_AT, ESTABLISHED_DATE)
VALUES
    (1, 'Department 1', 'Description for Department 1', 'Active', 'Admin', SYSDATE, TO_DATE('2000-01-01', 'YYYY-MM-DD'));

INSERT INTO DEPARTMENT (DEPARTMENT_ID, NAME, DESCRIPTION, STATUS, CREATED_BY, CREATED_AT, ESTABLISHED_DATE)
VALUES
    (2, 'Department 2', 'Description for Department 2', 'Active', 'Admin', SYSDATE, TO_DATE('2000-01-01', 'YYYY-MM-DD'));

INSERT INTO DEPARTMENT (DEPARTMENT_ID, NAME, DESCRIPTION, STATUS, CREATED_BY, CREATED_AT, ESTABLISHED_DATE)
VALUES
    (3, 'Department 3', 'Description for Department 3', 'Active', 'Admin', SYSDATE, TO_DATE('2000-01-01', 'YYYY-MM-DD'));

INSERT INTO DEPARTMENT (DEPARTMENT_ID, NAME, DESCRIPTION, STATUS, CREATED_BY, CREATED_AT, ESTABLISHED_DATE)
VALUES
    (4, 'Department 4', 'Description for Department 4', 'Active', 'Admin', SYSDATE, TO_DATE('2000-01-01', 'YYYY-MM-DD'));

INSERT INTO DEPARTMENT (DEPARTMENT_ID, NAME, DESCRIPTION, STATUS, CREATED_BY, CREATED_AT, ESTABLISHED_DATE)
VALUES
    (5, 'Department 5', 'Description for Department 5', 'Active', 'Admin', SYSDATE, TO_DATE('2000-01-01', 'YYYY-MM-DD'));



-- T?o d? li?u cho b?ng Employee
INSERT INTO EMPLOYEE ( DEPARTMENT_ID, EMP_NAME, ADDRESS, BIRTHDAY, GENDER, EMAIL, TIME_START_WORK, SALARY, NOTE, ROLE, CREATED_BY, CREATED_AT, EMP_STATUS)
VALUES
    ( 1, 'Employee 1', 'Address 1', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Male', 'email1@example.com', TO_DATE('08:00:00', 'HH24:MI:SS'), 50000, NULL, 'Employee', 'Admin', SYSDATE, 'A');

INSERT INTO EMPLOYEE ( DEPARTMENT_ID, EMP_NAME, ADDRESS, BIRTHDAY, GENDER, EMAIL, TIME_START_WORK, SALARY, NOTE, ROLE, CREATED_BY, CREATED_AT, EMP_STATUS)
VALUES
    ( 2, 'Employee 2', 'Address 2', TO_DATE('1990-01-02', 'YYYY-MM-DD'), 'Female', 'email2@example.com', TO_DATE('08:00:00', 'HH24:MI:SS'), 55000, NULL, 'Employee', 'Admin', SYSDATE, 'A');

INSERT INTO EMPLOYEE (EMPLOYEE_ID, DEPARTMENT_ID, EMP_NAME, ADDRESS, BIRTHDAY, GENDER, EMAIL, TIME_START_WORK, SALARY, NOTE, ROLE, CREATED_BY, CREATED_AT, EMP_STATUS)
VALUES
    (3, 3, 'Employee 3', 'Address 3', TO_DATE('1990-01-03', 'YYYY-MM-DD'), 'Male', 'email3@example.com', TO_DATE('08:00:00', 'HH24:MI:SS'), 60000, NULL, 'Employee', 'Admin', SYSDATE, 'A');
--vi?t ti?p

INSERT INTO EMPLOYEE (EMPLOYEE_ID, DEPARTMENT_ID, EMP_NAME, ADDRESS, BIRTHDAY, GENDER, EMAIL, TIME_START_WORK, SALARY, NOTE, ROLE, CREATED_BY, CREATED_AT, EMP_STATUS)
VALUES
    (4, 4, 'Employee 4', 'Address 4', TO_DATE('1990-01-04', 'YYYY-MM-DD'), 'Female', 'email4@example.com', TO_DATE('08:00:00', 'HH24:MI:SS'), 65000, NULL, 'Employee', 'Admin', SYSDATE, 'A');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, DEPARTMENT_ID, EMP_NAME, ADDRESS, BIRTHDAY, GENDER, EMAIL, TIME_START_WORK, SALARY, NOTE, ROLE, CREATED_BY, CREATED_AT, EMP_STATUS)
VALUES
    (5, 5, 'Employee 5', 'Address 5', TO_DATE('1990-01-05', 'YYYY-MM-DD'), 'Male', 'email5@example.com', TO_DATE('08:00:00', 'HH24:MI:SS'), 70000, NULL, 'Employee', 'Admin', SYSDATE, 'A');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, DEPARTMENT_ID, EMP_NAME, ADDRESS, BIRTHDAY, GENDER, EMAIL, TIME_START_WORK, SALARY, NOTE, ROLE, CREATED_BY, CREATED_AT, EMP_STATUS)
VALUES
    (6, 1, 'Employee 6', 'Address 6', TO_DATE('1990-01-06', 'YYYY-MM-DD'), 'Female', 'email6@example.com', TO_DATE('08:00:00', 'HH24:MI:SS'), 75000, NULL, 'Employee', 'Admin', SYSDATE, 'A');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, DEPARTMENT_ID, EMP_NAME, ADDRESS, BIRTHDAY, GENDER, EMAIL, TIME_START_WORK, SALARY, NOTE, ROLE, CREATED_BY, CREATED_AT, EMP_STATUS)
VALUES
    (7, 2, 'Employee 7', 'Address 7', TO_DATE('1990-01-07', 'YYYY-MM-DD'), 'Male', 'email7@example.com', TO_DATE('08:00:00', 'HH24:MI:SS'), 80000, NULL, 'Employee', 'Admin', SYSDATE, 'A');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, DEPARTMENT_ID, EMP_NAME, ADDRESS, BIRTHDAY, GENDER, EMAIL, TIME_START_WORK, SALARY, NOTE, ROLE, CREATED_BY, CREATED_AT, EMP_STATUS)
VALUES
    (8, 3, 'Employee 8', 'Address 8', TO_DATE('1990-01-08', 'YYYY-MM-DD'), 'Female', 'email8@example.com', TO_DATE('08:00:00', 'HH24:MI:SS'), 85000, NULL, 'Employee', 'Admin', SYSDATE, 'A');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, DEPARTMENT_ID, EMP_NAME, ADDRESS, BIRTHDAY, GENDER, EMAIL, TIME_START_WORK, SALARY, NOTE, ROLE, CREATED_BY, CREATED_AT, EMP_STATUS)
VALUES
    (9, 4, 'Employee 9', 'Address 9', TO_DATE('1990-01-09', 'YYYY-MM-DD'), 'Male', 'email9@example.com', TO_DATE('08:00:00', 'HH24:MI:SS'), 90000, NULL, 'Employee', 'Admin', SYSDATE, 'A');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, DEPARTMENT_ID, EMP_NAME, ADDRESS, BIRTHDAY, GENDER, EMAIL, TIME_START_WORK, SALARY, NOTE, ROLE, CREATED_BY, CREATED_AT, EMP_STATUS)
VALUES
    (10, 5, 'Employee 10', 'Address 10', TO_DATE('1990-01-10', 'YYYY-MM-DD'), 'Female', 'email10@example.com', TO_DATE('08:00:00', 'HH24:MI:SS'), 95000, NULL, 'Employee', 'Admin', SYSDATE, 'A');
COMMIT;