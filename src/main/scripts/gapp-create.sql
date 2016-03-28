
-------------------------------------------------------------------------------------------------------------------	


								      ------------------CREATE SCRIPT-----------------

-------------------------------------------------------------------------------------------------------------------	
   
	    create table Gapp_file (
        id int4 not null,
        date timestamp,
        name varchar(255),
        originalName varchar(255),
        size int8,
        type varchar(255),
        gappAdditionalReqDetails_id int4,
        gappApplication_id int4,
        primary key (id)
    );

    create table gapp_additional_req (
        id int4 not null,
        checkReq boolean,
        name varchar(255),
        requiredOrOptional varchar(255),
        type varchar(255),
        gappDepartment_id int4,
        primary key (id)
    );

    create table gapp_additional_req_detail (
        id int4 not null,
        flag boolean,
        requiredNumber int4,
        requiredText varchar(255),
        additionalReq_id int4,
        gappApplication_id int4,
        requiredFile_id int4,
        primary key (id)
    );

    create table gapp_application (
        id int4 not null,
        CIN varchar(255),
        DOB timestamp,
        TOFFEL varchar(255),
        citizenship varchar(255),
        email varchar(255),
        fname varchar(255),
        gender varchar(255),
        lname varchar(255),
        phoneNO varchar(255),
        term varchar(255),
        program_id int4,
        transcript_id int4,
        user_id int4,
        primary key (id)
    );

    create table gapp_application_status (
        id int4 not null,
        comment varchar(255),
        isLatestStatus boolean,
        status varchar(255),
        timeOfChange timestamp,
        gappApplication_id int4,
        gappUsers_id int4,
        primary key (id)
    );

    create table gapp_department (
        id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table gapp_program (
        id int4 not null,
        name varchar(255),
        department_id int4,
        primary key (id)
    );

    create table gapp_university_degree (
        id int4 not null,
        GPA float8,
        dergreeEarned varchar(255),
        isRecentDegree boolean,
        major varchar(255),
        timePeriod varchar(255),
        universityName varchar(255),
        gappApplication_id int4,
        primary key (id)
    );

    create table gapp_user_type (
        id int4 not null,
        type varchar(255),
        primary key (id)
    );

    create table gapp_users (
        id int4 not null,
        CIN int4,
        DOB timestamp,
        citizenship varchar(255),
        email varchar(255),
        fname varchar(255),
        gender varchar(255),
        lname varchar(255),
        password varchar(255),
        phoneNO int4,
        primary key (id)
    );

    create table gapp_users_gapp_user_type (
        gapp_users_id int4 not null,
        usertype_id int4 not null
    );

    alter table Gapp_file 
        add constraint FK_2gkiiyng3k4f4wmmsjjbv71bg 
        foreign key (gappAdditionalReqDetails_id) 
        references gapp_additional_req_detail;

    alter table Gapp_file 
        add constraint FK_inw11cljs8irrr5qb8jij7wpj 
        foreign key (gappApplication_id) 
        references gapp_application;

    alter table gapp_additional_req 
        add constraint FK_1jgtwkq6mjo8vh0go0yd5ksge 
        foreign key (gappDepartment_id) 
        references gapp_department;

    alter table gapp_additional_req_detail 
        add constraint FK_5kc7git2nxv0d56xcdn3vu612 
        foreign key (additionalReq_id) 
        references gapp_additional_req;

    alter table gapp_additional_req_detail 
        add constraint FK_emabsim4noj0ow53r37ff0nb2 
        foreign key (gappApplication_id) 
        references gapp_application;

    alter table gapp_additional_req_detail 
        add constraint FK_kse9il7fbwy29f4fjt40af80u 
        foreign key (requiredFile_id) 
        references Gapp_file;

    alter table gapp_application 
        add constraint FK_gdcuc6wdvc51g670rtnyagogo 
        foreign key (program_id) 
        references gapp_program;

    alter table gapp_application 
        add constraint FK_c3whl70wm84rll4dbid9x4jf3 
        foreign key (transcript_id) 
        references Gapp_file;

    alter table gapp_application 
        add constraint FK_4ubujmqt6qyf90eppsh1t86l2 
        foreign key (user_id) 
        references gapp_users;

    alter table gapp_application_status 
        add constraint FK_hcih7gb1ocwql88ldnt192ft4 
        foreign key (gappApplication_id) 
        references gapp_application;

    alter table gapp_application_status 
        add constraint FK_h163rm69csrq0g86acolpgxr2 
        foreign key (gappUsers_id) 
        references gapp_users;

    alter table gapp_program 
        add constraint FK_4mie70sqtwpebbp9ausntqwt 
        foreign key (department_id) 
        references gapp_department;

    alter table gapp_university_degree 
        add constraint FK_amdgl62dy5kprblvybn4hjxf5 
        foreign key (gappApplication_id) 
        references gapp_application;

    alter table gapp_users_gapp_user_type 
        add constraint FK_24sl1i8eu7sb503nycvm9aeo7 
        foreign key (usertype_id) 
        references gapp_user_type;

    alter table gapp_users_gapp_user_type 
        add constraint FK_9idb2p68r2bbq16ey99t6m0po 
        foreign key (gapp_users_id) 
        references gapp_users;

    create sequence hibernate_sequence start with 100;
-------------------------------------------------------------------------------------------------------------------


						---------------INSERT SCRIPT-----------------

-------------------------------------------------------------------------------------------------------------------	

INSERT INTO public.gapp_user_type(
            id, type)
    VALUES (1, 'admin');

INSERT INTO public.gapp_user_type(
            id, type)
    VALUES (2, 'staff');

INSERT INTO public.gapp_user_type(
            id, type)
    VALUES (3, 'student');

	
-------------------------------------------------------------------------------------------------------------------	

INSERT INTO public.gapp_users(
            id,  dob, citizenship, email, fname, gender, lname, password, 
            phoneno)
    VALUES (1,  '1/1/2015', 'American', 'admin@localhost.localdomain', 'Jdoe', 'male', 'king', 'abcd', 
            '1234567890');

			
INSERT INTO public.gapp_users(
            id,  dob, citizenship, email, fname, gender, lname, password, 
            phoneno)
    VALUES (2,  '1/1/2015', 'American', 'staff1@localhost.localdomain', 'staff1', 'male', 'king', 'abcd', 
            '1234567890');

			
			
INSERT INTO public.gapp_users(
            id,  dob, citizenship, email, fname, gender, lname, password, 
            phoneno)
    VALUES (3,  '1/1/2015', 'American', 'staff2@localhost.localdomain', 'staff2', 'male', 'king', 'abcd', 
            '1234567890');

			
			
INSERT INTO public.gapp_users(
            id, cin, dob, citizenship, email, fname, gender, lname, password, 
            phoneno)
    VALUES (4,  1234567,'1/1/2015', 'American', 'student1@localhost.localdomain', 'student1', 'male', 'king', 'abcd', 
            '1234567890');			


INSERT INTO public.gapp_users(
            id, cin, dob, citizenship, email, fname, gender, lname, password, 
            phoneno)
    VALUES (5,  1234567,'1/1/2015', 'American', 'student2@localhost.localdomain', 'student2', 'male', 'king', 'abcd', 
            '1234567890');


-------------------------------------------------------------------------------------------------------------------	

INSERT INTO public.gapp_users_gapp_user_type(
            gapp_users_id, usertype_id)
    VALUES (1, 1);


INSERT INTO public.gapp_users_gapp_user_type(
            gapp_users_id, usertype_id)
    VALUES (2, 2);


INSERT INTO public.gapp_users_gapp_user_type(
            gapp_users_id, usertype_id)
    VALUES (3, 2);

INSERT INTO public.gapp_users_gapp_user_type(
            gapp_users_id, usertype_id)
    VALUES (4, 3);


INSERT INTO public.gapp_users_gapp_user_type(
            gapp_users_id, usertype_id)
    VALUES (5, 3);
    
-------------------------------------------------------------------------------------------------------------------	

INSERT INTO public.gapp_department(
            id, name)
    VALUES (1, 'Accounting');

INSERT INTO public.gapp_department(
            id, name)
    VALUES (2, 'Computer Science');
	
	  
INSERT INTO public.gapp_department(
            id, name)
    VALUES (3, 'department not selected');

    	



-------------------------------------------------------------------------------------------------------------------	

	

    
    	
	

-------------------------------------------------------------------------------------------------------------------	
	
	
	INSERT INTO public.gapp_program(
            id, name,department_id)
    VALUES (40, 'MS in Accounting program',1);

	INSERT INTO public.gapp_program(
            id, name,department_id)
    VALUES (41, 'MS in Computer Science program',2);
	
		INSERT INTO public.gapp_program(
            id, name,department_id)
    VALUES (43, 'program not selected',3);


-------------------------------------------------------------------------------------------------------------------	

	INSERT INTO public.gapp_additional_req(
            id, name, requiredoroptional, type,gappdepartment_id)
    VALUES (81, 'GMAT', 'required', 'number',1);


INSERT INTO public.gapp_additional_req(
            id, name, requiredoroptional, type,gappdepartment_id)
    VALUES (82, 'Reason for Application','optional', 'text',1);


  INSERT INTO public.gapp_additional_req(
            id, name, requiredoroptional, type,gappdepartment_id)
    VALUES (83, 'Experience certificate', 'optional', 'file',1);  
-------------------------------------------------------------------------------------------------------------------	
	





-------------------------------------------------------------------------------------------------------------------

INSERT INTO public.gapp_application(
            id, cin, dob, toffel, citizenship, email, fname, gender, lname, 
            phoneno, term, program_id,  user_id)
    VALUES (51,'304455', '2015-01-17', '110', 'indian', 'pratikshah1701@gmail.com', 'pratik', 'male', 'shah', 
            '6269054632', 'Spring 2017', 40,  4);



--------------------------------------	


INSERT INTO public.gapp_university_degree(
            id,gpa, dergreeearned, major, timeperiod, universityname, isrecentdegree,gappapplication_id)
    VALUES (1,'4.0', 'bachelor in accounting', 'accounting', '4 years', 'Cal State LA',true,51);
	
----------------------------------------------------------------	

INSERT INTO public.gapp_university_degree(
            id,gpa, dergreeearned, major, timeperiod, universityname, isrecentdegree,gappapplication_id)
    VALUES (2,'4.0', 'Diploma in accounting', 'accounting', '3 years', 'Cal State LA',false,51);	



INSERT INTO public.gapp_additional_req_detail(
            id,  requirednumber,  additionalreq_id, 
            gappapplication_id)
    VALUES (61, 110, 81, 51);
	
	
	------------------------
	
	
	INSERT INTO public.gapp_application_status(
            id, comment, islateststatus, status, timeofchange, gappapplication_id, 
            gappusers_id)
    VALUES (71, 'test', true, 'New', '2/25/2016', 51, 
            4);


  -------------------------------------------------------------------------------------------------------------------  