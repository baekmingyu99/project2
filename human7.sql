
 create table do(
   do_id NUMBER NOT NULL,
   do_name VARCHAR2(200),
   PRIMARY KEY(do_id)
);
INSERT INTO do (do_id, do_name) VALUES (1002, '����');
INSERT INTO do (do_id, do_name) VALUES (1051, '�λ�'); 
INSERT INTO do (do_id, do_name) VALUES (1053, '�뱸');
INSERT INTO do (do_id, do_name) VALUES (1032, '��õ');
INSERT INTO do (do_id, do_name) VALUES (1062, '����');
INSERT INTO do (do_id, do_name) VALUES (1042, '����');
INSERT INTO do (do_id, do_name) VALUES (1052, '���');
INSERT INTO do (do_id, do_name) VALUES (1044, '����');
INSERT INTO do (do_id, do_name) VALUES (1031, '���');
INSERT INTO do (do_id, do_name) VALUES (1033, '����');
INSERT INTO do (do_id, do_name) VALUES (1043, '���');
INSERT INTO do (do_id, do_name) VALUES (1041, '�泲');
INSERT INTO do (do_id, do_name) VALUES (1063, '����');
INSERT INTO do (do_id, do_name) VALUES (1061, '����');
INSERT INTO do (do_id, do_name) VALUES (1054, '���');
INSERT INTO do (do_id, do_name) VALUES (1055, '�泲');
INSERT INTO do (do_id, do_name) VALUES (1064, '����');


create table si(
   si_id NUMBER  NOT NULL,
   si_name VARCHAR2(200),
   do_id NUMBER,
   PRIMARY KEY(si_id),
   FOREIGN KEY(do_id) REFERENCES do (do_id)
);
INSERT INTO si (si_id, si_name, do_id) VALUES (2001, '����Ư����', 1002);
INSERT INTO si (si_id, si_name, do_id) VALUES (2002, '�λ걤����', 1051);
INSERT INTO si (si_id, si_name, do_id) VALUES (2003, '�뱸������', 1053);
INSERT INTO si (si_id, si_name, do_id) VALUES (2004, '��õ������', 1032);
INSERT INTO si (si_id, si_name, do_id) VALUES (2005, '���ֱ�����', 1062);
INSERT INTO si (si_id, si_name, do_id) VALUES (2006, '����������', 1042);
INSERT INTO si (si_id, si_name, do_id) VALUES (2007, '��걤����', 1052);
INSERT INTO si (si_id, si_name, do_id) VALUES (2008, '����Ư����ġ��', 1044);
INSERT INTO si (si_id, si_name, do_id) VALUES (2009, '����', 1031);
INSERT INTO si (si_id, si_name, do_id) VALUES (2010, '�����', 1031);
INSERT INTO si (si_id, si_name, do_id) VALUES (2011, '���ý�', 1031);
INSERT INTO si (si_id, si_name, do_id) VALUES (2012, 'ȭ����', 1031);
INSERT INTO si (si_id, si_name, do_id) VALUES (2013, '���ֽ�', 1031);
INSERT INTO si (si_id, si_name, do_id) VALUES (2014, '���ν�', 1031);
INSERT INTO si (si_id, si_name, do_id) VALUES (2015, '�����ν�', 1031);
INSERT INTO si (si_id, si_name, do_id) VALUES (2016, '������', 1031);
INSERT INTO si (si_id, si_name, do_id) VALUES (2017, '������', 1031);
INSERT INTO si (si_id, si_name, do_id) VALUES (2018, '������', 1031);
INSERT INTO si (si_id, si_name, do_id) VALUES (2019, 'õ�Ƚ�', 1041);
INSERT INTO si (si_id, si_name, do_id) VALUES (2020, '�ƻ��', 1041);
INSERT INTO si (si_id, si_name, do_id) VALUES (2021, 'û�ֽ�', 1043);
INSERT INTO si (si_id, si_name, do_id) VALUES (2022, 'â����', 1055);
INSERT INTO si (si_id, si_name, do_id) VALUES (2023, '���׽�', 1054);
INSERT INTO si (si_id, si_name, do_id) VALUES (2024, '���ֽ�', 1054);
INSERT INTO si (si_id, si_name, do_id) VALUES (2025, '������', 1033);
INSERT INTO si (si_id, si_name, do_id) VALUES (2026, '���ʽ�', 1033);
INSERT INTO si (si_id, si_name, do_id) VALUES (2027, '���ֽ�', 1033);
INSERT INTO si (si_id, si_name, do_id) VALUES (2028, '������', 1061);
INSERT INTO si (si_id, si_name, do_id) VALUES (2029, '������', 1061);
INSERT INTO si (si_id, si_name, do_id) VALUES (2030, '���ֽ�', 1063);


create table center(
   center_id NUMBER NOT NULL,
   center_name VARCHAR2(200),
   street_address VARCHAR2(200),
   si_id NUMBER,
   PRIMARY KEY(center_id),
   FOREIGN KEY(si_id) REFERENCES si (si_id)
);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (1, '����', '��â��', 2001);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3001, '������', '���ﵿ', 2001);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3002, '������û��', '������', 2001);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3003, '���￪��', '���ڵ�', 2001);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3004, '���ﱳ����', '���ʵ�', 2001);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3005, 'û����', 'û�㵿', 2001);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3006, '�Ÿ���', '�Ÿ���', 2001);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3007, '���¿���', '���¿���', 2001);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3008, '�λ������', '������', 2002);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3009, '�λ�Ȳ����', '�뿬��', 2002);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3010, '������', '�ȶ���', 2002);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3011, '�λ������', '���õ�', 2002);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3012, '�뱸������', '������', 2003);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3013, '�뱸������', '������', 2003);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3014, '�뱸��õ��', '��õ��', 2003);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3015, '������', '����', 2004);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3016, '��õ������', '������', 2004);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3017, '������', '���ﵿ', 2004);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3018, '���ֻ�����', '������', 2005);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3019, '��������', '�����', 2005);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3020, '���ֿ�����', '���굿', 2005);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3021, '�����͹̳���', '������', 2006);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3022, '������Ʈ����', '���ﵿ', 2006);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3023, '��꺴����', '���ܵ�', 2007);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3024, '���ȣ����', '��õ��', 2007);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3025, '����������', '������', 2008);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3026, '������û��', '����', 2008);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3027, '���߻���', '���׵�', 2009);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3028, 'ź����', 'ź����', 2009);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3029, '�������', '���굿', 2009);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3030, '������', '����', 2010);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3031, '���������', '���ϵ�', 2010);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3032, '��ź��', '��ź��', 2011);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3033, '���ü�����', '������', 2011);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3034, 'ȭ��������', '��ȵ�', 2012);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3035, '������', '������', 2012);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3036, '���ֱ�����', '���ĵ�', 2013);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3037, '�ݸ�����', '���̵�', 2013);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3038, '���κ�������', '������', 2014);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3039, '���λ�����', '������', 2014);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3040, '�����ιζ���', '�ζ���', 2015);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3041, '������������', '�����ε�', 2015);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3042, '�����͹̳���', '�Ǽ���', 2016);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3043, '��������', '�ΰ赿', 2016);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3044, '����������', '������', 2017);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3045, '���������', '��⵿', 2017);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3046, '�����ܴ���', '�ݱ���', 2018);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3047, '������', '����', 2018);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3048, 'õ�Ƚź���', '�źε�', 2019);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3049, 'õ�ȿ�����', '������', 2019);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3050, '�ƻ���', '��õ��', 2020);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3051, 'û���͹̳���', '���浿', 2021);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3052, 'û�ֿ����', '��ϵ�', 2021);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3053, '������', '����', 2022);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3054, '���״�����', '���ᵿ', 2023);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3055, '���ֵ�������', '���嵿', 2024);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3056, '����������', '����', 2025);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3057, '�¸�׸�Ʈ������', '���絿', 2026);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3058, '������', '���ǵ�', 2027);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3059, '������', '�е�', 2028);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3060, '������', '��絿', 2029);
INSERT INTO center (center_id, center_name, street_address, si_id) VALUES (3061, '������', '����۵�', 2030);


   create table category(
   category_id NUMBER NOT NULL,
   category_name VARCHAR2(200),
   center_id number,
   PRIMARY KEY(category_id),
   FOREIGN KEY(center_id) REFERENCES center(center_id)
);

INSERT INTO category (category_id, category_name, center_id) VALUES (4001, '�䰡',3034);
INSERT INTO category (category_id, category_name, center_id)VALUES (4002, '�ｺ', 3054);
INSERT INTO category (category_id, category_name, center_id)VALUES (4003, '�ʶ��׽�', 1);
INSERT INTO category (category_id, category_name, center_id)VALUES (4004, 'ũ�ν���', 3001);
INSERT INTO category (category_id, category_name, center_id)VALUES (4005, '�䰡', 3025);
INSERT INTO category (category_id, category_name, center_id)VALUES (4006, '�ｺ', 3011);
INSERT INTO category (category_id, category_name, center_id)VALUES (4007, '�ʶ��׽�', 3009);
INSERT INTO category (category_id, category_name, center_id)VALUES (4008, 'ũ�ν���', 3027);
INSERT INTO category (category_id, category_name, center_id)VALUES (4009, '�䰡', 3019);
INSERT INTO category (category_id, category_name, center_id)VALUES (4010, '�ｺ', 3033);



create table jobs(
   job_id number NOT NULL,
   job_title varchar2(200),
   min_salary number,
   max_salary number,
   PRIMARY KEY(job_id)
);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary)VALUES (5001, '��ǥ', 9000000, 9000000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)VALUES (5002, '������', 3000000, 5000000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (5003, '���', 250000, 800000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (5004, '�����', 80000, 150000);



create table employees(
   employee_id number NOT NULL,
   name varchar2(200),
   email varchar2(200),
   phone varchar2(200),
   salary number,
   commission_pct number,
   job_id number,
   center_id number,
   PRIMARY KEY(employee_id),
   FOREIGN KEY(center_id) REFERENCES center(center_id),
   FOREIGN KEY(job_id) REFERENCES jobs(job_id)
);
INSERT INTO employees (employee_id, name, email, phone, salary, commission_pct, job_id, center_id) VALUES (6001, '������', 'yougki@email.com', '010-2748-5380', 5000000, 50000, 5002, 3034);
INSERT INTO employees (employee_id, name, email, phone, salary, commission_pct, job_id, center_id) VALUES (6002, '���ҹ�', 'somin@email.com', '010-4584-1657', 4000000, 40000, 5002, 3054);
INSERT INTO employees (employee_id, name, email, phone, salary, commission_pct, job_id, center_id) VALUES (6003, '��������', 'wonsuk@email.com', '010-1111-1234', 9000000, 90000.1, 5001, 1);
INSERT INTO employees (employee_id, name, email, phone, salary, commission_pct, job_id, center_id) VALUES (6004, 'Ȳ�����', 'daewon@email.com', '010-1234-1555', 800000, 80000, 5003, 3001);
INSERT INTO employees (employee_id, name, email, phone, salary, commission_pct, job_id, center_id) VALUES (6005, '������', 'dongkun@email.com', '010-9456-8453', 80000, 800, 5004, 3025);
INSERT INTO employees (employee_id, name, email, phone, salary, commission_pct, job_id, center_id) VALUES (6006, '����', 'kiyoung@email.com', '010-5665-7563', 500000, 5000, 5003, 3011);
INSERT INTO employees (employee_id, name, email, phone, salary, commission_pct, job_id, center_id) VALUES (6007, '������', 'bokyung@email.com', '010-1597-7324', 3000000, 30000, 5002, 3009);
INSERT INTO employees (employee_id, name, email, phone, salary, commission_pct, job_id, center_id) VALUES (6008, 'ȫ����', 'kwanghyun@email.com', '010-1572-4865', 250000, 250, 5003, 3027);
INSERT INTO employees (employee_id, name, email, phone, salary, commission_pct, job_id, center_id) VALUES (6009, '������', 'samna@email.com', '010-6548-7328', 150000, 150, 5004, 3019);
INSERT INTO employees (employee_id, name, email, phone, salary, commission_pct, job_id, center_id) VALUES (6010, '���޻�', 'sunshine@email.com', '010-9999-8888', 100000, 100, 5004, 3033);




create table job_history(
   job_history_id number NOT NULL,
   hire_date date,
   end_date date,
   job_id number,
   employee_id number,
   category_id number,
   PRIMARY KEY(job_history_id),
   FOREIGN KEY(employee_id) REFERENCES employees(employee_id),
   FOREIGN KEY(category_id) REFERENCES category(category_id),
   FOREIGN KEY(job_id) REFERENCES jobs(job_id)

);
INSERT INTO job_history (job_history_id, hire_date, end_date, job_id, employee_id, category_id) VALUES(7001, TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-03-01', 'YYYY-MM-DD'), 5001, 6003, 4001);
INSERT INTO job_history (job_history_id, hire_date, end_date, job_id, employee_id, category_id) VALUES(7002, TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-04-15', 'YYYY-MM-DD'), 5002, 6001, 4002);
INSERT INTO job_history (job_history_id, hire_date, end_date, job_id, employee_id, category_id) VALUES(7003, TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-05-20', 'YYYY-MM-DD'), 5002, 6002, 4003);
INSERT INTO job_history (job_history_id, hire_date, end_date, job_id, employee_id, category_id) VALUES(7004, TO_DATE('2023-05-05', 'YYYY-MM-DD'), TO_DATE('2023-07-05', 'YYYY-MM-DD'), 5002, 6007, 4004);
INSERT INTO job_history (job_history_id, hire_date, end_date, job_id, employee_id, category_id) VALUES(7005, TO_DATE('2023-06-10', 'YYYY-MM-DD'), TO_DATE('2023-08-10', 'YYYY-MM-DD'), 5003, 6004, 4005);
INSERT INTO job_history (job_history_id, hire_date, end_date, job_id, employee_id, category_id) VALUES(7006, TO_DATE('2023-07-25', 'YYYY-MM-DD'), TO_DATE('2023-09-25', 'YYYY-MM-DD'), 5003, 6006, 4006);
INSERT INTO job_history (job_history_id, hire_date, end_date, job_id, employee_id, category_id) VALUES(7007, TO_DATE('2023-09-03', 'YYYY-MM-DD'), TO_DATE('2023-11-03', 'YYYY-MM-DD'), 5003, 6008, 4007);
INSERT INTO job_history (job_history_id, hire_date, end_date, job_id, employee_id, category_id) VALUES(7008, TO_DATE('2023-10-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 5004, 6005, 4008);
INSERT INTO job_history (job_history_id, hire_date, end_date, job_id, employee_id, category_id) VALUES(7009, TO_DATE('2023-11-30', 'YYYY-MM-DD'), TO_DATE('2024-01-30', 'YYYY-MM-DD'), 5004, 6009, 4009);
INSERT INTO job_history (job_history_id, hire_date, end_date, job_id, employee_id, category_id) VALUES(7010, TO_DATE('2024-01-10', 'YYYY-MM-DD'), TO_DATE('2024-03-10', 'YYYY-MM-DD'), 5004, 6010, 4010);

commit;
drop table do;
drop table si;
drop table center;
drop table category;
drop table jobs;
drop table employees;
drop table job_history;
select * from center;


commit;