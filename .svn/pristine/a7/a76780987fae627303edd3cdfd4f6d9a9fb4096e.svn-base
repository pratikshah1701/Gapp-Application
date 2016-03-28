
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

    create sequence hibernate_sequence;
