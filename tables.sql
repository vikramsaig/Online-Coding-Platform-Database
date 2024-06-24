Create table users
(
User_id varchar(10) not null Primary key,
Firstname varchar(20),
Lastname varchar(20),
Email_id varchar(30),
Password varchar(20),
Pincode int,
);


Create table Profile
(
User_id varchar(10),
Rating decimal(2,1),
Rank int,
Coins int,
Total_submissions int,
Accepted_submissions int,
Primary key(user_id),
Foreign key(user_id) references users(user_id)
);



Create table STATE
(
State varchar(20),
Country varchar(20),
primary key(state)
);


Create table PIN
(
Pincode int,
State varchar(20),
primary key(pincode)
);

Create table Problems
(
Problem_id varchar (10) not null Primary Key ,
Problem_name varchar(50),
Problem_description varchar(max)
);

Create table Topic
(
Topic_name varchar(100) not null Primary key,
No_of_questions int,
Diffuclty_level varchar(20)
);

Create table belongs_to
(
Problem_id varchar(10),
Topic_name varchar(100),
Primary key(topic_name,problem_id),
Foreign key (Problem_id) references Problems(Problem_id),
Foreign key (topic_name) references topic(topic_name)
);

Create table Practice_problems
(
Problem_id varchar(10) not null primary key,
Problem_Difficulty_level varchar(10) ,
Foreign key (Problem_id) references Problems(Problem_id)
);

Create table Contest
(
contest_id int not null primary key,
contest_name varchar(20),
Prize int ,
Organizer varchar(max)
);

Create table contest_problems
(
Problem_id varchar(10),
contest_id int,
Marks int,
Primary key(Problem_id,Contest_id),
Foreign key (Problem_id) references Problems(Problem_id),
Foreign key (contest_id) references contest(contest_id)
);

Create table participates_in
(
Contest_id int,
User_id varchar(10),
Participant_id int not null primary key,
Foreign key (contest_id) references contest(contest_id),
Foreign key(user_id) references users(user_id)
);

Create table Results
(
Participant_id int not null primary key,
Contest_rank int,
Total_score int,
Finish_time datetime
);
