DROP SCHEMA IF EXISTS elidek;
CREATE SCHEMA elidek;
USE elidek;

create table scientific_field (
scientific_field_name varchar(20),
primary key(scientific_field_name)
);

create table executive (
executive_name varchar(50),
primary key(executive_name)
);

create table program (
program_name varchar(20),
program_ID int,
primary key (program_ID)
);

create table organizations (
organization_name varchar(20) not null,
organization_abbreviation varchar(10) not null,
street varchar(30),
streetno int,
postalcode int check(postalcode >9999 and postalcode < 100000),
city varchar(10),
primary key(organization_abbreviation)
);

create table researcher (
researcher_ID int not null,
researcher_firstname varchar(20) not null,
researcher_lastname varchar(20) not null,
birthday date,
gender varchar(6),
organization_abbreviation varchar(10) not null,
organization_date_begining_relationship date not null,
primary key(researcher_ID),
foreign key(organization_abbreviation) references organizations(organization_abbreviation)
);

create table project (
project_title varchar(100) not null,
summary varchar(5000) not null,
amount float not null,
begining date not null,
ending date not null,
duration int(11) not null check (duration >= 0 and duration <= 1461),
executive_name varchar(50),
organization_abbreviation varchar(10),
program_ID int,
researcher_ID int,
primary key (project_title),
foreign key (executive_name) references executive(executive_name),
foreign key (organization_abbreviation) references organizations(organization_abbreviation),
foreign key (program_ID) references program(program_ID),
foreign key (researcher_ID) references researcher(researcher_ID)
);

create table evaluation (
researcher_ID int not null,
grade int not null check(grade>=0 and grade<=10),
dateofeval date,
project_title varchar(100),
primary key(dateofeval, grade),
foreign key(project_title) references project(project_title),
foreign key(researcher_ID) references researcher(researcher_ID)
);

create table deliverable (
deliverable_title varchar(20) not null,
summary varchar(5000),
delivery_date_from_project date not null,
project_title varchar(100),
primary key(deliverable_title, project_title),
foreign key(project_title) references project(project_title)
);

create table telephone (
phoneno bigint(20) not null check (phoneno >= 0 and phoneno <= 9999999999),
organization_abbreviation varchar(10),
primary key(phoneno), 
foreign key(organization_abbreviation) references organizations(organization_abbreviation)
);

create table company ( 
samecapitals float,         
organization_abbreviation varchar(10),
company_name varchar(30),
primary key (company_name),
foreign key (organization_abbreviation) references organizations(organization_abbreviation)
);

create table university ( 
moh_budget real,
organization_abbreviation varchar(10),
primary key(moh_budget),
foreign key (organization_abbreviation) references organizations(organization_abbreviation)
);

create table research_center (
pa_budget real,
moh_budget real,
organization_abbreviation varchar(10),
primary key(pa_budget, moh_budget),
foreign key (organization_abbreviation) references organizations(organization_abbreviation)
);

create table project_scientific_field (
project_title varchar(100),
scientific_field_name varchar(20),
primary key(project_title, scientific_field_name),
foreign key(project_title) references project(project_title),
foreign key(scientific_field_name) references scientific_field(scientific_field_name)
); 

create table works_on_project (
project_title varchar(100),
researcher_ID int not null,
primary key(project_title, researcher_ID),
foreign key(project_title) references project(project_title),
foreign key(researcher_ID) references researcher(researcher_ID)
);

