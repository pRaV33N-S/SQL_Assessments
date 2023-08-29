use Assignment

Create Table Articles
(ArticleID int Primary key,
Title nvarchar(50),
Content nvarchar(350),
PublishDate datetime)

Insert Into Articles Values  
(1, 'Breaking the News', 'In-depth analysis of the role of journalists in modern democracy.', '2023-07-15'),
(2, 'Uncovering Injustice', 'An investigative piece shedding light on a controversial criminal case.', '2023-05-02'),
(3, 'Voices of the Unheard', 'A series of articles highlighting the experiences of marginalized groups.', '2023-09-10'),
(4, 'Climate Crossroads', 'Exploring the urgent need for international cooperation to address climate change.', '2023-04-20'),
(5, 'Resilience in Adversity', 'Captivating narratives of individuals and communities overcoming natural disasters.', '2023-08-03'),
(6, 'Redefining Work', 'An in-depth examination of the gig economy''s influence on traditional employment.', '2023-06-08'),
(7, 'Art Beyond Borders', 'Exploring how art and culture transcend geographical and political boundaries.', '2023-09-25'),
(8, 'Silicon Society', 'A series of investigative reports on the power and consequences of big tech corporations.', '2023-03-15'),
(9, 'Healing Through Harmony', 'Examining the therapeutic potential of music in treating mental health issues.', '2023-07-10'),
(10, 'The Digital Divide', 'Investigating the disparities in internet access and its impact on society.', '2023-11-05');

Select * From Articles