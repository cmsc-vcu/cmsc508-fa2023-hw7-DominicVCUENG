# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
drop table if exists peopleroles;
drop table if exists peopleskills;
DROP TABLE IF EXISTS people;
drop table if exists skills;
drop table if exists roles;
# ...
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

create table skills (
    skills_id int NOT NULL,
    skills_name varchar(255) NOT NULL,
    skills_description varchar(255) NOT NULL DEFAULT '(average skill)',
    skills_tag varchar(255) NOT NULL,
    skills_url varchar(4096),
    skills_time_commitment int,
    primary key(skills_id)
);

# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

INSERT INTO skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) VALUES
    (1, 'rock climbing', 'intense workout', 'Skill 1', 'https://example.com/rock_climbing', 30),
    (2, 'mind reading', 'superpower', 'Skill 2', 'https://example.com/mind_reading', 20),
    (3, 'cooking', 'making food', 'Skill 3', 'https://example.com/cooking', 40),
    (4, 'coding with python', 'computer programming', 'Skill 4', 'https://example.com/coding_python', 60),
    (5, 'break dancing', 'having fun!', 'Skill 5', 'https://example.com/break_dancing', 25),
    (6, 'drawing', 'performing artistry', 'Skill 6', 'https://example.com/drawing', 50),
    (7, 'skateboarding', 'doing cool tricks', 'Skill 7', 'https://example.com/skateboarding', 35),
    (8, 'kickboxing', 'physical combat', 'Skill 8', 'https://example.com/kickboxing', 45);

# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    people_id int NOT NULL,
    people_first_name varchar(255),
    people_last_name varchar(255) NOT NULL,
    people_email varchar(255),
    people_linkedin_url varchar(4096),
    people_headshot_url varchar(4096),
    people_discord_handle varchar(255),
    people_brief_bio varchar(4096),
    people_date_joined date NOT NULL,
    PRIMARY KEY (people_id)
);

# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined)
VALUES
    (1, 'John', 'Person 1', 'john.doe@example.com', 'https://www.linkedin.com/in/johndoe', 'https://example.com/johndoe.jpg', 'john.doe#1234', 'Passionate software engineer with experience in web development.', '2023-01-01'),
    (2, 'Jane', 'Person 2', 'jane.smith@example.com', 'https://www.linkedin.com/in/janesmith', 'https://example.com/janesmith.jpg', 'jane.smith#5678', 'Marketing specialist with a focus on digital marketing strategies.', '2023-02-15'),
    (3, 'Bob', 'Person 3', 'bob.johnson@example.com', 'https://www.linkedin.com/in/bobjohnson', 'https://example.com/bobjohnson.jpg', 'bob.johnson#9012', 'Experienced project manager with a track record of successful delivery.', '2023-03-20'),
    (4, 'Alice', 'Person 4', 'alice.williams@example.com', 'https://www.linkedin.com/in/alicewilliams', 'https://example.com/alicewilliams.jpg', 'alice.williams#3456', 'Graphic designer passionate about creating visually stunning designs.', '2023-04-10'),
    (5, 'Charlie', 'Person 5', 'charlie.brown@example.com', 'https://www.linkedin.com/in/charliebrown', 'https://example.com/charliebrown.jpg', 'charlie.brown#7890', 'Aspiring data scientist with a strong background in mathematics.', '2023-05-05'),
    (6, 'Eva', 'Person 6', 'eva.garcia@example.com', 'https://www.linkedin.com/in/evagarcia', 'https://example.com/evagarcia.jpg', 'eva.garcia#1235', 'Passionate about environmental sustainability and green technologies.', '2023-06-30'),
    (7, 'David', 'Person 7', 'david.jones@example.com', 'https://www.linkedin.com/in/davidjones', 'https://example.com/davidjones.jpg', 'david.jones#2345', 'Passionate UX/UI designer with a focus on creating intuitive user experiences.', '2023-07-15'),
    (8, 'Grace', 'Person 8', 'grace.miller@example.com', 'https://www.linkedin.com/in/gracemiller', 'https://example.com/gracemiller.jpg', 'grace.miller#6789', 'Full-stack developer with expertise in multiple programming languages.', '2023-08-01'),
    (9, 'Sam', 'Person 9', 'sam.roberts@example.com', 'https://www.linkedin.com/in/samroberts', 'https://example.com/samroberts.jpg', 'sam.roberts#0123', 'Data scientist specializing in machine learning and predictive analytics.', '2023-09-01'),
    (10, 'Mia', 'Person 10', 'mia.jenkins@example.com', 'https://www.linkedin.com/in/miajenkins', 'https://example.com/miajenkins.jpg', 'mia.jenkins#4567', 'Marketing coordinator with a passion for creating compelling digital content.', '2023-10-15');

# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

create table peopleskills (
    peopleskills_id int NOT NULL AUTO_INCREMENT,
    peopleskills_skills_id int NOT NULL,
    peopleskills_people_id int NOT NULL,
    peopleskills_date_acquired date NOT NULL default (current_date),
    primary key (peopleskills_id),
    foreign key (peopleskills_skills_id) references skills (skills_id) ON DELETE CASCADE,
    foreign key (peopleskills_people_id) references people (people_id) ON DELETE CASCADE
);

# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.
 
insert into peopleskills (peopleskills_skills_id, peopleskills_people_id, peopleskills_date_acquired) values
    (1, 1, '2023-01-15'),
    (3, 1, '2023-02-15'),
    (6, 1, '2023-03-15'),
    (3, 2, '2023-02-01'),
    (4, 2, '2023-03-01'),
    (5, 2, '2023-04-01'),
    (1, 3, '2023-01-01'),
    (5, 3, '2023-02-01'),
    (3, 5, '2023-01-15'),
    (6, 5, '2023-02-15'),
    (2, 6, '2023-07-15'),
    (3, 6, '2023-08-22'),
    (4, 6, '2023-09-20'),
    (3, 7, '2023-01-04'),
    (5, 7, '2023-04-16'),
    (6, 7, '2023-09-15'),
    (1, 8, '2023-06-15'),
    (3, 8, '2023-03-15'),
    (5, 8, '2023-01-15'),
    (6, 8, '2023-02-15'),
    (2, 9, '2023-02-15'),
    (5, 9, '2023-02-15'),
    (6, 9, '2023-02-15'),
    (1, 10, '2023-02-15'),
    (4, 10, '2023-02-15'),
    (5, 10, '2023-02-15')
    ;

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

create table roles (
    roles_id int,
    roles_name varchar(255),
    roles_sort_priority int,
    primary key (roles_id)
);

# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

## Section 9
insert into roles (roles_id, roles_name, roles_sort_priority) values
    (1, 'Designer', 10),
    (2, 'Developer', 20),
    (3, 'Recruit', 30),
    (4, 'Team Lead', 40),
    (5, 'Boss', 50),
    (6, 'Mentor', 60);

# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

create table peopleroles (
    peopleroles_id int AUTO_INCREMENT,
    peopleroles_people_id int NOT NULL,
    peopleroles_role_id int NOT NULL,
    peopleroles_date_assigned date NOT NULL,
    primary key (peopleroles_id),
    foreign key (peopleroles_people_id) references people (people_id) ON DELETE CASCADE,
    foreign key (peopleroles_role_id) references roles (roles_id) ON DELETE CASCADE
);

# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

insert into peopleroles (peopleroles_people_id, peopleroles_role_id, peopleroles_date_assigned) values
    (1, 2, '2023-01-15'),
    (2, 5, '2023-02-01'),
    (3, 2, '2023-01-01'),
    (3, 4, '2023-02-01'),
    (4, 3, '2023-03-01'),
    (5, 3, '2023-04-01'),
    (6, 1, '2023-05-01'),
    (6, 2, '2023-05-01'),
    (7, 1, '2023-06-01'),
    (8, 1, '2023-06-01'),
    (8, 4, '2023-06-01'),
    (9, 2, '2023-07-01'),
    (10, 1, '2023-07-01'),
    (10, 2, '2023-08-01');