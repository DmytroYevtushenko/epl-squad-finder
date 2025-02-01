USE [EplSquadFinderDb]
GO
/****** Object:  Table [dbo].[Leagues]    Script Date: 2/1/2025 9:42:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leagues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[SeasonStartDate] [datetime2](7) NOT NULL,
	[SeasonEndDate] [datetime2](7) NOT NULL,
	[EmblemPictureUri] [nvarchar](255) NULL,
	[FootballDataId] [int] NULL,
	[ApiFootballId] [int] NULL,
	[Code] [nvarchar](10) NOT NULL,
	[Season] [int] NOT NULL,
 CONSTRAINT [PK_Leagues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 2/1/2025 9:42:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Position] [nvarchar](20) NOT NULL,
	[DateOfBirth] [datetime2](7) NULL,
	[Number] [int] NULL,
	[ProfilePic] [nvarchar](255) NULL,
	[ApiFootballId] [int] NULL,
	[FootballDataId] [int] NULL,
	[TeamId] [int] NOT NULL,
	[Age] [int] NULL,
 CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamNicknames]    Script Date: 2/1/2025 9:42:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamNicknames](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[TeamId] [int] NOT NULL,
 CONSTRAINT [PK_TeamNicknames] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 2/1/2025 9:42:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ShortName] [nvarchar](50) NULL,
	[Website] [nvarchar](255) NULL,
	[EmblemPictureUri] [nvarchar](255) NULL,
	[FootballDataId] [int] NULL,
	[ApiFootballId] [int] NULL,
	[LeagueId] [int] NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Leagues] ON 
GO
INSERT [dbo].[Leagues] ([Id], [Name], [SeasonStartDate], [SeasonEndDate], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [Code], [Season]) VALUES (1, N'Premier League', CAST(N'2024-08-16T00:00:00.0000000' AS DateTime2), CAST(N'2025-05-25T00:00:00.0000000' AS DateTime2), N'https://crests.football-data.org/PL.png', 2021, NULL, N'PL', 2024)
GO
SET IDENTITY_INSERT [dbo].[Leagues] OFF
GO
SET IDENTITY_INSERT [dbo].[Players] ON 
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (457, N'David', N'Raya', N'Goalkeeper', CAST(N'1995-09-15T00:00:00.0000000' AS DateTime2), 22, N'https://media.api-sports.io/football/players/19465.png', 19465, 4832, 14, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (458, N'Neto', N'Neto', N'Goalkeeper', CAST(N'1989-07-19T00:00:00.0000000' AS DateTime2), 32, N'https://media.api-sports.io/football/players/912.png', 912, 3221, 14, 36)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (459, N'Tommy', N'Setford', N'Goalkeeper', CAST(N'2006-03-13T00:00:00.0000000' AS DateTime2), 36, N'https://media.api-sports.io/football/players/342243.png', 342243, 171455, 14, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (460, N'Aleksei', N'Fedorushchenko', N'Goalkeeper', CAST(N'2005-09-28T00:00:00.0000000' AS DateTime2), 62, N'https://media.api-sports.io/football/players/337933.png', 337933, 270668, 14, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (461, N'Jack', N'Porter', N'Goalkeeper', CAST(N'2008-07-15T00:00:00.0000000' AS DateTime2), 92, N'https://media.api-sports.io/football/players/416697.png', 416697, 270449, 14, 17)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (462, N'William', N'Saliba', N'Centre-Back', CAST(N'2001-03-24T00:00:00.0000000' AS DateTime2), 2, N'https://media.api-sports.io/football/players/22090.png', 22090, 80171, 14, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (463, N'Kieran', N'Tierney', N'Left-Back', CAST(N'1997-06-05T00:00:00.0000000' AS DateTime2), 3, N'https://media.api-sports.io/football/players/1117.png', 1117, 15615, 14, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (464, N'Ben', N'White', N'Right-Back', CAST(N'1997-10-08T00:00:00.0000000' AS DateTime2), 4, N'https://media.api-sports.io/football/players/19959.png', 19959, 6154, 14, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (465, N'Gabriel', N'Gabriel', N'Centre-Back', CAST(N'1997-12-19T00:00:00.0000000' AS DateTime2), 6, N'https://media.api-sports.io/football/players/22224.png', 22224, 23128, 14, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (466, N'Jurrien', N'Timber', N'Centre-Back', CAST(N'2001-06-17T00:00:00.0000000' AS DateTime2), 12, N'https://media.api-sports.io/football/players/38746.png', 38746, 98816, 14, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (467, N'Jakub', N'Kiwior', N'Centre-Back', CAST(N'2000-02-15T00:00:00.0000000' AS DateTime2), 15, N'https://media.api-sports.io/football/players/61431.png', 61431, 147286, 14, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (468, N'Oleksandr', N'Zinchenko', N'Left-Back', CAST(N'1996-12-15T00:00:00.0000000' AS DateTime2), 17, N'https://media.api-sports.io/football/players/641.png', 641, 7889, 14, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (469, N'Takehiro', N'Tomiyasu', N'Right-Back', CAST(N'1998-11-05T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/2597.png', 2597, 9034, 14, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (470, N'Riccardo', N'Calafiori', N'Left-Back', CAST(N'2002-05-19T00:00:00.0000000' AS DateTime2), 33, N'https://media.api-sports.io/football/players/157052.png', 157052, 133512, 14, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (471, N'Maldini', N'Kacurri', N'Defence', CAST(N'2005-10-04T00:00:00.0000000' AS DateTime2), 47, N'https://media.api-sports.io/football/players/380697.png', 380697, 270317, 14, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (472, N'Zane', N'Monlouis', N'Defence', CAST(N'2003-10-16T00:00:00.0000000' AS DateTime2), 50, N'https://media.api-sports.io/football/players/284557.png', 284557, 246388, 14, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (473, N'Josh', N'Nichols', N'Defence', CAST(N'2006-07-26T00:00:00.0000000' AS DateTime2), 51, N'https://media.api-sports.io/football/players/380696.png', 380696, 270663, 14, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (474, N'Ayden', N'Heaven', N'Centre-Back', CAST(N'2006-09-22T00:00:00.0000000' AS DateTime2), 76, N'https://media.api-sports.io/football/players/402329.png', 402329, 247644, 14, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (475, N'Thomas', N'Partey', N'Defensive Midfield', CAST(N'1993-06-13T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/49.png', 49, 110, 14, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (476, N'Martin', N'Ødegaard', N'Attacking Midfield', CAST(N'1998-12-17T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/37127.png', 37127, 7427, 14, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (477, N'Jorginho', N'Jorginho', N'Defensive Midfield', CAST(N'1991-12-20T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/2289.png', 2289, 2094, 14, 34)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (478, N'Mikel', N'Merino', N'Central Midfield', CAST(N'1996-06-22T00:00:00.0000000' AS DateTime2), 23, N'https://media.api-sports.io/football/players/47311.png', 47311, 7935, 14, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (479, N'Declan', N'Rice', N'Defensive Midfield', CAST(N'1999-01-14T00:00:00.0000000' AS DateTime2), 41, N'https://media.api-sports.io/football/players/2937.png', 2937, 8215, 14, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (480, N'Myles', N'Lewis-Skelly', N'Defensive Midfield', CAST(N'2006-09-26T00:00:00.0000000' AS DateTime2), 49, N'https://media.api-sports.io/football/players/313245.png', 313245, 244120, 14, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (481, N'Ethan', N'Nwaneri', N'Attacking Midfield', CAST(N'2007-03-21T00:00:00.0000000' AS DateTime2), 53, N'https://media.api-sports.io/football/players/313236.png', 313236, 188476, 14, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (482, N'Salah', N'M''Hand', N'Midfield', CAST(N'2003-08-20T00:00:00.0000000' AS DateTime2), 56, N'https://media.api-sports.io/football/players/278074.png', 278074, 175905, 14, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (483, N'Bukayo', N'Saka', N'Right Winger', CAST(N'2001-09-05T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/1460.png', 1460, 99813, 14, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (484, N'Gabriel', N'Jesus', N'Centre-Forward', CAST(N'1997-04-03T00:00:00.0000000' AS DateTime2), 9, N'https://media.api-sports.io/football/players/643.png', 643, 3236, 14, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (485, N'Martinelli', N'Martinelli', N'Left Winger', CAST(N'2001-06-18T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/127769.png', 127769, 61450, 14, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (486, N'Leandro', N'Trossard', N'Left Winger', CAST(N'1994-12-04T00:00:00.0000000' AS DateTime2), 19, N'https://media.api-sports.io/football/players/1946.png', 1946, 8984, 14, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (487, N'Kai', N'Havertz', N'Centre-Forward', CAST(N'1999-06-11T00:00:00.0000000' AS DateTime2), 29, N'https://media.api-sports.io/football/players/978.png', 978, 171, 14, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (488, N'Raheem', N'Sterling', N'Left Winger', CAST(N'1994-12-08T00:00:00.0000000' AS DateTime2), 30, N'https://media.api-sports.io/football/players/645.png', 645, 3329, 14, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (489, N'Nathan', N'Butler-Oyedeji', N'Midfield', CAST(N'2003-01-04T00:00:00.0000000' AS DateTime2), 37, N'https://media.api-sports.io/football/players/153407.png', 153407, 190818, 14, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (490, N'Ismeal', N'Kabia', N'Offence', CAST(N'2005-12-10T00:00:00.0000000' AS DateTime2), 46, N'https://media.api-sports.io/football/players/407033.png', 407033, 270318, 14, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (491, N'Joe', N'Gauci', N'Goalkeeper', CAST(N'2000-07-04T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/7029.png', 7029, 81871, 15, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (492, N'Emiliano', N'Martínez', N'Goalkeeper', CAST(N'1992-09-02T00:00:00.0000000' AS DateTime2), 23, N'https://media.api-sports.io/football/players/19599.png', 19599, 3141, 15, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (493, N'Robin', N'Olsen', N'Goalkeeper', CAST(N'1990-01-08T00:00:00.0000000' AS DateTime2), 25, N'https://media.api-sports.io/football/players/766.png', 766, 15512, 15, 35)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (494, N'Oliwier', N'Zych', N'Goalkeeper', CAST(N'2004-06-28T00:00:00.0000000' AS DateTime2), 48, N'https://media.api-sports.io/football/players/148270.png', 148270, 136711, 15, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (495, N'Matty', N'Cash', N'Right-Back', CAST(N'1997-08-07T00:00:00.0000000' AS DateTime2), 2, N'https://media.api-sports.io/football/players/19298.png', 19298, 11644, 15, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (496, N'Ezri', N'Konsa', N'Centre-Back', CAST(N'1998-04-06T00:00:00.0000000' AS DateTime2), 4, N'https://media.api-sports.io/football/players/19354.png', 19354, 6317, 15, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (497, N'Tyrone', N'Mings', N'Centre-Back', CAST(N'1993-03-13T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/19179.png', 19179, 8235, 15, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (498, N'Lucas', N'Digne', N'Left-Back', CAST(N'1993-07-20T00:00:00.0000000' AS DateTime2), 12, N'https://media.api-sports.io/football/players/2724.png', 2724, 3359, 15, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (499, N'Pau', N'Torres', N'Centre-Back', CAST(N'1997-01-16T00:00:00.0000000' AS DateTime2), 14, N'https://media.api-sports.io/football/players/46815.png', 46815, 33109, 15, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (500, N'Kosta', N'Nedeljković', N'Right-Back', CAST(N'2005-12-16T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/342320.png', 342320, 217929, 15, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (501, N'Ian', N'Maatsen', N'Left-Back', CAST(N'2002-03-10T00:00:00.0000000' AS DateTime2), 22, N'https://media.api-sports.io/football/players/138816.png', 138816, 131120, 15, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (502, N'Lamare', N'Bogarde', N'Centre-Back', CAST(N'2004-01-05T00:00:00.0000000' AS DateTime2), 26, N'https://media.api-sports.io/football/players/284457.png', 284457, 172899, 15, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (503, N'Kortney', N'Hause', N'Centre-Back', CAST(N'1995-07-16T00:00:00.0000000' AS DateTime2), 30, N'https://media.api-sports.io/football/players/19177.png', 19177, 4082, 15, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (504, N'Triston', N'Rowe', N'Defence', CAST(N'2006-05-18T00:00:00.0000000' AS DateTime2), 45, N'https://media.api-sports.io/football/players/360269.png', 360269, 270630, 15, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (505, N'Sil', N'Swinkels', N'Defence', CAST(N'2004-01-06T00:00:00.0000000' AS DateTime2), 50, N'https://media.api-sports.io/football/players/284523.png', 284523, 157274, 15, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (506, N'Travis', N'Patterson', N'Left-Back', CAST(N'2005-10-06T00:00:00.0000000' AS DateTime2), 66, N'https://media.api-sports.io/football/players/308843.png', 308843, 204428, 15, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (507, N'T.', N'Katsukunya', N'Defender', NULL, 73, N'https://media.api-sports.io/football/players/357060.png', 357060, NULL, 15, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (508, N'Ross', N'Barkley', N'Central Midfield', CAST(N'1993-12-05T00:00:00.0000000' AS DateTime2), 6, N'https://media.api-sports.io/football/players/2287.png', 2287, 7817, 15, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (509, N'John', N'McGinn', N'Central Midfield', CAST(N'1994-10-18T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/19191.png', 19191, 34646, 15, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (510, N'Youri', N'Tielemans', N'Central Midfield', CAST(N'1997-05-07T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/2926.png', 2926, 3658, 15, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (511, N'E.', N'Buendía', N'Midfielder', NULL, 10, N'https://media.api-sports.io/football/players/19071.png', 19071, NULL, 15, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (512, N'Amadou', N'Onana', N'Defensive Midfield', CAST(N'2001-08-16T00:00:00.0000000' AS DateTime2), 24, N'https://media.api-sports.io/football/players/162714.png', 162714, 114024, 15, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (513, N'Leon', N'Bailey', N'Right Winger', CAST(N'1997-08-09T00:00:00.0000000' AS DateTime2), 31, N'https://media.api-sports.io/football/players/983.png', 983, 157, 15, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (514, N'Jacob', N'Ramsey', N'Attacking Midfield', CAST(N'2001-05-28T00:00:00.0000000' AS DateTime2), 41, N'https://media.api-sports.io/football/players/19192.png', 19192, 111437, 15, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (515, N'Boubacar', N'Kamara', N'Defensive Midfield', CAST(N'1999-11-23T00:00:00.0000000' AS DateTime2), 44, N'https://media.api-sports.io/football/players/1904.png', 1904, 8346, 15, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (516, N'Aidan', N'Borland', N'Midfield', CAST(N'2007-04-25T00:00:00.0000000' AS DateTime2), 54, N'https://media.api-sports.io/football/players/434180.png', 434180, 270631, 15, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (517, N'Jamaldeen', N'Jimoh', N'Midfield', CAST(N'2006-10-02T00:00:00.0000000' AS DateTime2), 56, N'https://media.api-sports.io/football/players/360268.png', 360268, 270633, 15, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (518, N'Ben', N'Broggio', N'Midfield', CAST(N'2007-01-29T00:00:00.0000000' AS DateTime2), 79, N'https://media.api-sports.io/football/players/380715.png', 380715, 270628, 15, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (519, N'Bradley', N'Burrowes', N'Midfield', CAST(N'2008-03-04T00:00:00.0000000' AS DateTime2), 83, N'https://media.api-sports.io/football/players/453101.png', 453101, 274024, 15, 17)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (520, N'J.', N'Durán', N'Attacker', NULL, 9, N'https://media.api-sports.io/football/players/13489.png', 13489, NULL, 15, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (521, N'Ollie', N'Watkins', N'Centre-Forward', CAST(N'1995-12-30T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/19366.png', 19366, 4444, 15, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (522, N'Donyell', N'Malen', N'Right Winger', CAST(N'1999-01-19T00:00:00.0000000' AS DateTime2), 17, N'https://media.api-sports.io/football/players/249.png', 249, 7457, 15, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (523, N'Morgan', N'Rogers', N'Attacking Midfield', CAST(N'2002-07-26T00:00:00.0000000' AS DateTime2), 27, N'https://media.api-sports.io/football/players/19170.png', 19170, 82140, 15, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (524, N'Kadan', N'Young', N'Left Winger', CAST(N'2006-01-19T00:00:00.0000000' AS DateTime2), 72, N'https://media.api-sports.io/football/players/312260.png', 312260, 190563, 15, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (525, N'Kobei', N'Moore', N'Attacker', NULL, 77, N'https://media.api-sports.io/football/players/305736.png', 305736, NULL, 15, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (526, N'Andrés', N'Garcia', N'Defence', CAST(N'2003-02-07T00:00:00.0000000' AS DateTime2), NULL, N'https://media.api-sports.io/football/players/388013.png', 388013, 203594, 15, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (527, N'Robert', N'Sánchez', N'Goalkeeper', CAST(N'1997-11-18T00:00:00.0000000' AS DateTime2), 1, N'https://media.api-sports.io/football/players/18959.png', 18959, 135555, 16, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (528, N'Filip', N'Jörgensen', N'Goalkeeper', CAST(N'2002-04-16T00:00:00.0000000' AS DateTime2), 12, N'https://media.api-sports.io/football/players/286616.png', 286616, 153828, 16, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (529, N'Marcus', N'Bettinelli', N'Goalkeeper', CAST(N'1992-05-24T00:00:00.0000000' AS DateTime2), 13, N'https://media.api-sports.io/football/players/19012.png', 19012, 3953, 16, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (530, N'Lucas', N'Bergström', N'Goalkeeper', CAST(N'2002-09-05T00:00:00.0000000' AS DateTime2), 47, N'https://media.api-sports.io/football/players/152955.png', 152955, 179663, 16, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (531, N'E.', N'Beach', N'Goalkeeper', NULL, NULL, N'https://media.api-sports.io/football/players/303667.png', 303667, NULL, 16, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (532, N'Axel', N'Disasi', N'Centre-Back', CAST(N'1998-03-11T00:00:00.0000000' AS DateTime2), 2, N'https://media.api-sports.io/football/players/21998.png', 21998, 813, 16, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (533, N'Cucurella', N'Cucurella', N'Left-Back', CAST(N'1998-07-22T00:00:00.0000000' AS DateTime2), 3, N'https://media.api-sports.io/football/players/47380.png', 47380, 15863, 16, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (534, N'Tosin', N'Adarabioyo', N'Centre-Back', CAST(N'1997-09-24T00:00:00.0000000' AS DateTime2), 4, N'https://media.api-sports.io/football/players/19145.png', 19145, 7880, 16, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (535, N'Benoît', N'Badiashile', N'Centre-Back', CAST(N'2001-03-26T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/95.png', 95, 170426, 16, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (536, N'Levi', N'Colwill', N'Centre-Back', CAST(N'2003-02-26T00:00:00.0000000' AS DateTime2), 6, N'https://media.api-sports.io/football/players/152953.png', 152953, 170440, 16, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (537, N'Ben', N'Chilwell', N'Left-Back', CAST(N'1996-12-21T00:00:00.0000000' AS DateTime2), 21, N'https://media.api-sports.io/football/players/2933.png', 2933, 8065, 16, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (538, N'Trevoh', N'Chalobah', N'Centre-Back', CAST(N'1999-07-05T00:00:00.0000000' AS DateTime2), 23, N'https://media.api-sports.io/football/players/19720.png', 19720, 7810, 16, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (539, N'Reece', N'James', N'Right-Back', CAST(N'1999-12-08T00:00:00.0000000' AS DateTime2), 24, N'https://media.api-sports.io/football/players/19545.png', 19545, 56628, 16, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (540, N'Malo', N'Gusto', N'Right-Back', CAST(N'2003-05-19T00:00:00.0000000' AS DateTime2), 27, N'https://media.api-sports.io/football/players/161907.png', 161907, 152498, 16, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (541, N'Wesley', N'Fofana', N'Centre-Back', CAST(N'2000-12-17T00:00:00.0000000' AS DateTime2), 29, N'https://media.api-sports.io/football/players/22094.png', 22094, 8545, 16, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (542, N'Josh', N'Acheampong', N'Right-Back', CAST(N'2006-05-05T00:00:00.0000000' AS DateTime2), 34, N'https://media.api-sports.io/football/players/366735.png', 366735, 249320, 16, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (543, N'Richard', N'Olise', N'Defence', CAST(N'2004-09-09T00:00:00.0000000' AS DateTime2), 49, N'https://media.api-sports.io/football/players/306263.png', 306263, 273359, 16, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (544, N'Harrison', N'Murray-Campbell', N'Centre-Back', CAST(N'2006-08-04T00:00:00.0000000' AS DateTime2), 59, N'https://media.api-sports.io/football/players/364048.png', 364048, 248984, 16, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (545, N'Kaiden', N'Wilson', N'Defence', CAST(N'2005-09-02T00:00:00.0000000' AS DateTime2), 63, N'https://media.api-sports.io/football/players/334042.png', 334042, 273358, 16, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (546, N'A.', N'Anselmino', N'Defender', NULL, NULL, N'https://media.api-sports.io/football/players/422780.png', 422780, NULL, 16, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (547, N'Enzo', N'Fernández', N'Central Midfield', CAST(N'2001-01-17T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/5996.png', 5996, 102603, 16, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (548, N'Mykhailo', N'Mudryk', N'Left Winger', CAST(N'2001-01-05T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/63577.png', 63577, 98978, 16, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (549, N'Carney', N'Chukwuemeka', N'Central Midfield', CAST(N'2003-10-20T00:00:00.0000000' AS DateTime2), 17, N'https://media.api-sports.io/football/players/138935.png', 138935, 167570, 16, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (550, N'Cole', N'Palmer', N'Attacking Midfield', CAST(N'2002-05-06T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/152982.png', 152982, 144892, 16, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (551, N'Kiernan', N'Hall', N'Central Midfield', CAST(N'1998-09-06T00:00:00.0000000' AS DateTime2), 22, N'https://media.api-sports.io/football/players/148099.png', 148099, 140194, 16, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (552, N'Moisés', N'Caicedo', N'Defensive Midfield', CAST(N'2001-11-02T00:00:00.0000000' AS DateTime2), 25, N'https://media.api-sports.io/football/players/116117.png', 116117, 121103, 16, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (553, N'Cesare', N'Casadei', N'Central Midfield', CAST(N'2003-01-10T00:00:00.0000000' AS DateTime2), 31, N'https://media.api-sports.io/football/players/270507.png', 270507, 179558, 16, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (554, N'Kiano', N'Dyer', N'Central Midfield', CAST(N'2006-11-21T00:00:00.0000000' AS DateTime2), 33, N'https://media.api-sports.io/football/players/365660.png', 365660, 250364, 16, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (555, N'Omari', N'Kellyman', N'Offence', CAST(N'2005-09-25T00:00:00.0000000' AS DateTime2), 37, N'https://media.api-sports.io/football/players/329347.png', 329347, 214417, 16, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (556, N'Renato', N'Veiga', N'Midfielder', NULL, 40, N'https://media.api-sports.io/football/players/336671.png', 336671, NULL, 16, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (557, N'Harvey', N'Vale', N'Midfield', CAST(N'2003-09-11T00:00:00.0000000' AS DateTime2), 43, N'https://media.api-sports.io/football/players/274550.png', 274550, 175887, 16, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (558, N'Romeo', N'Lavia', N'Defensive Midfield', CAST(N'2004-01-06T00:00:00.0000000' AS DateTime2), 45, N'https://media.api-sports.io/football/players/282125.png', 282125, 172738, 16, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (559, N'Samuel', N'Rak-Sakyi', N'Midfield', CAST(N'2005-03-27T00:00:00.0000000' AS DateTime2), 51, N'https://media.api-sports.io/football/players/327733.png', 327733, 272057, 16, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (560, N'Pedro', N'Neto', N'Right Winger', CAST(N'2000-03-09T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/1864.png', 1864, 2074, 16, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (561, N'Noni', N'Madueke', N'Right Winger', CAST(N'2002-03-10T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/136723.png', 136723, 167720, 16, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (562, N'João', N'Félix', N'Offence', CAST(N'1999-11-10T00:00:00.0000000' AS DateTime2), 14, N'https://media.api-sports.io/football/players/583.png', 583, 39265, 16, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (563, N'Nicolas', N'Jackson', N'Centre-Forward', CAST(N'2001-06-20T00:00:00.0000000' AS DateTime2), 15, N'https://media.api-sports.io/football/players/283058.png', 283058, 152515, 16, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (564, N'Christopher', N'Nkunku', N'Attacking Midfield', CAST(N'1997-11-14T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/269.png', 269, 8484, 16, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (565, N'Jadon', N'Sancho', N'Left Winger', CAST(N'2000-03-25T00:00:00.0000000' AS DateTime2), 19, N'https://media.api-sports.io/football/players/18.png', 18, 146, 16, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (566, N'Tyrique', N'George', N'Left Winger', CAST(N'2006-02-04T00:00:00.0000000' AS DateTime2), 32, N'https://media.api-sports.io/football/players/334037.png', 334037, 250436, 16, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (567, N'Deivid', N'Washington', N'Centre-Forward', CAST(N'2005-06-05T00:00:00.0000000' AS DateTime2), 36, N'https://media.api-sports.io/football/players/415001.png', 415001, 203375, 16, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (568, N'Marc', N'Guiu', N'Centre-Forward', CAST(N'2006-01-04T00:00:00.0000000' AS DateTime2), 38, N'https://media.api-sports.io/football/players/392270.png', 392270, 207109, 16, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (569, N'Ato', N'Ampah', N'Offence', CAST(N'2006-04-22T00:00:00.0000000' AS DateTime2), 55, N'https://media.api-sports.io/football/players/360011.png', 360011, 273360, 16, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (570, N'Shumaira', N'Mheuka', N'Offence', CAST(N'2007-10-20T00:00:00.0000000' AS DateTime2), 76, N'https://media.api-sports.io/football/players/359117.png', 359117, 272058, 16, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (571, N'Jordan', N'Pickford', N'Goalkeeper', CAST(N'1994-03-07T00:00:00.0000000' AS DateTime2), 1, N'https://media.api-sports.io/football/players/2932.png', 2932, 3309, 17, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (572, N'João', N'Virgínia', N'Goalkeeper', CAST(N'1999-10-10T00:00:00.0000000' AS DateTime2), 12, N'https://media.api-sports.io/football/players/18755.png', 18755, 82207, 17, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (573, N'Asmir', N'Begović', N'Goalkeeper', CAST(N'1987-06-20T00:00:00.0000000' AS DateTime2), 31, N'https://media.api-sports.io/football/players/18858.png', 18858, 8229, 17, 38)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (574, N'Žan', N'Leban', N'Goalkeeper', CAST(N'2002-12-15T00:00:00.0000000' AS DateTime2), 63, N'https://media.api-sports.io/football/players/284326.png', 284326, 274005, 17, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (575, N'Nathan', N'Patterson', N'Right-Back', CAST(N'2001-10-16T00:00:00.0000000' AS DateTime2), 2, N'https://media.api-sports.io/football/players/138417.png', 138417, 138174, 17, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (576, N'Michael', N'Keane', N'Centre-Back', CAST(N'1993-01-11T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/2934.png', 2934, 7829, 17, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (577, N'James', N'Tarkowski', N'Centre-Back', CAST(N'1992-11-19T00:00:00.0000000' AS DateTime2), 6, N'https://media.api-sports.io/football/players/2936.png', 2936, 3316, 17, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (578, N'J.', N'O&apos;Brien', N'Defender', NULL, 15, N'https://media.api-sports.io/football/players/270139.png', 270139, NULL, 17, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (579, N'Ashley', N'Young', N'Left-Back', CAST(N'1985-07-09T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/894.png', 894, 3317, 17, 40)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (580, N'Vitalii', N'Mykolenko', N'Left-Back', CAST(N'1999-05-29T00:00:00.0000000' AS DateTime2), 19, N'https://media.api-sports.io/football/players/2165.png', 2165, 16165, 17, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (581, N'Séamus', N'Coleman', N'Right-Back', CAST(N'1988-10-11T00:00:00.0000000' AS DateTime2), 23, N'https://media.api-sports.io/football/players/18758.png', 18758, 7836, 17, 37)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (582, N'Jarrad', N'Branthwaite', N'Centre-Back', CAST(N'2002-06-27T00:00:00.0000000' AS DateTime2), 32, N'https://media.api-sports.io/football/players/17661.png', 17661, 114120, 17, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (583, N'Bradley', N'Moonan', N'Defence', NULL, 72, N'https://media.api-sports.io/football/players/394501.png', 394501, 270430, 17, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (584, N'Roman', N'Dixon', N'Defence', CAST(N'2004-12-26T00:00:00.0000000' AS DateTime2), 75, N'https://media.api-sports.io/football/players/297640.png', 297640, 265345, 17, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (585, N'Orel', N'Mangala', N'Defensive Midfield', CAST(N'1998-03-18T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/24882.png', 24882, 9398, 17, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (586, N'Abdoulaye', N'Doucouré', N'Central Midfield', CAST(N'1993-01-01T00:00:00.0000000' AS DateTime2), 16, N'https://media.api-sports.io/football/players/18805.png', 18805, 8119, 17, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (587, N'Idrissa', N'Guèye', N'Central Midfield', CAST(N'1989-09-26T00:00:00.0000000' AS DateTime2), 27, N'https://media.api-sports.io/football/players/2990.png', 2990, 3627, 17, 36)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (588, N'Jesper', N'Lindstrøm', N'Right Winger', CAST(N'2000-02-29T00:00:00.0000000' AS DateTime2), 29, N'https://media.api-sports.io/football/players/15884.png', 15884, 81973, 17, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (589, N'James', N'Garner', N'Defensive Midfield', CAST(N'2001-03-13T00:00:00.0000000' AS DateTime2), 37, N'https://media.api-sports.io/football/players/895.png', 895, 101076, 17, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (590, N'Tim', N'Iroegbunam', N'Central Midfield', CAST(N'2002-08-12T00:00:00.0000000' AS DateTime2), 42, N'https://media.api-sports.io/football/players/284500.png', 284500, 169326, 17, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (591, N'Harrison', N'Armstrong', N'Midfield', CAST(N'2007-01-19T00:00:00.0000000' AS DateTime2), 45, N'https://media.api-sports.io/football/players/405360.png', 405360, 264281, 17, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (592, N'Luke', N'Butterfield', N'Midfield', CAST(N'2003-09-29T00:00:00.0000000' AS DateTime2), 69, N'https://media.api-sports.io/football/players/284280.png', 284280, 270426, 17, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (593, N'Owen', N'Barker', N'Midfield', CAST(N'2005-02-23T00:00:00.0000000' AS DateTime2), 79, N'https://media.api-sports.io/football/players/301714.png', 301714, 270427, 17, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (594, N'Callum', N'Bates', N'Midfield', CAST(N'2005-09-28T00:00:00.0000000' AS DateTime2), 92, N'https://media.api-sports.io/football/players/361679.png', 361679, 272715, 17, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (595, N'T.', N'Onyango', N'Midfielder', NULL, NULL, N'https://media.api-sports.io/football/players/167657.png', 167657, NULL, 17, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (596, N'Dwight', N'McNeil', N'Left Winger', CAST(N'1999-11-22T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/18929.png', 18929, 11623, 17, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (597, N'Dominic', N'Calvert-Lewin', N'Centre-Forward', CAST(N'1997-03-16T00:00:00.0000000' AS DateTime2), 9, N'https://media.api-sports.io/football/players/18766.png', 18766, 7839, 17, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (598, N'Iliman', N'Ndiaye', N'Left Winger', CAST(N'1999-07-22T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/18592.png', 18592, 94091, 17, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (599, N'Jack', N'Harrison', N'Right Winger', CAST(N'1996-11-20T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/19128.png', 19128, 4220, 17, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (600, N'Beto', N'Beto', N'Centre-Forward', CAST(N'1998-01-31T00:00:00.0000000' AS DateTime2), 14, N'https://media.api-sports.io/football/players/125743.png', 125743, 125044, 17, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (601, N'Youssef', N'Chermiti', N'Centre-Forward', CAST(N'2004-05-24T00:00:00.0000000' AS DateTime2), 17, N'https://media.api-sports.io/football/players/330412.png', 330412, 188082, 17, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (602, N'Armando', N'Broja', N'Centre-Forward', CAST(N'2001-09-10T00:00:00.0000000' AS DateTime2), 22, N'https://media.api-sports.io/football/players/138822.png', 138822, 143054, 17, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (603, N'Martin', N'Sherif', N'Offence', CAST(N'2006-06-10T00:00:00.0000000' AS DateTime2), 67, N'https://media.api-sports.io/football/players/328115.png', 328115, 270429, 17, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (604, N'Bernd', N'Leno', N'Goalkeeper', CAST(N'1992-03-04T00:00:00.0000000' AS DateTime2), 1, N'https://media.api-sports.io/football/players/1438.png', 1438, 3174, 18, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (605, N'Steven', N'Benda', N'Goalkeeper', CAST(N'1998-10-01T00:00:00.0000000' AS DateTime2), 23, N'https://media.api-sports.io/football/players/19312.png', 19312, 81055, 18, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (606, N'Kenny', N'Tete', N'Right-Back', CAST(N'1995-10-09T00:00:00.0000000' AS DateTime2), 2, N'https://media.api-sports.io/football/players/657.png', 657, 8460, 18, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (607, N'Calvin', N'Bassey', N'Centre-Back', CAST(N'1999-12-31T00:00:00.0000000' AS DateTime2), 3, N'https://media.api-sports.io/football/players/152967.png', 152967, 146154, 18, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (608, N'Joachim', N'Andersen', N'Centre-Back', CAST(N'1996-05-31T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/2729.png', 2729, 2253, 18, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (609, N'Jorge', N'Cuenca', N'Centre-Back', CAST(N'1999-11-17T00:00:00.0000000' AS DateTime2), 15, N'https://media.api-sports.io/football/players/131.png', 131, 98750, 18, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (610, N'Timothy', N'Castagne', N'Right-Back', CAST(N'1995-12-05T00:00:00.0000000' AS DateTime2), 21, N'https://media.api-sports.io/football/players/2920.png', 2920, 1836, 18, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (611, N'Issa', N'Diop', N'Centre-Back', CAST(N'1997-01-09T00:00:00.0000000' AS DateTime2), 31, N'https://media.api-sports.io/football/players/18814.png', 18814, 8296, 18, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (612, N'Antonee', N'Robinson', N'Left-Back', CAST(N'1997-08-08T00:00:00.0000000' AS DateTime2), 33, N'https://media.api-sports.io/football/players/19549.png', 19549, 3927, 18, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (613, N'Sam', N'Amissah', N'Defence', CAST(N'2007-03-07T00:00:00.0000000' AS DateTime2), 35, N'https://media.api-sports.io/football/players/384981.png', 384981, 273201, 18, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (614, N'Harrison', N'Reed', N'Central Midfield', CAST(N'1995-01-27T00:00:00.0000000' AS DateTime2), 6, N'https://media.api-sports.io/football/players/19480.png', 19480, 3995, 18, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (615, N'Harry', N'Wilson', N'Right Winger', CAST(N'1997-03-22T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/19221.png', 19221, 11777, 18, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (616, N'Tom', N'Cairney', N'Central Midfield', CAST(N'1991-01-20T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/19025.png', 19025, 3965, 18, 34)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (617, N'Sander', N'Berge', N'Defensive Midfield', CAST(N'1998-02-14T00:00:00.0000000' AS DateTime2), 16, N'https://media.api-sports.io/football/players/1934.png', 1934, 8973, 18, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (618, N'Andreas', N'Pereira', N'Attacking Midfield', CAST(N'1996-01-01T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/899.png', 899, 33153, 18, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (619, N'Saša', N'Lukić', N'Central Midfield', CAST(N'1996-08-13T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/2823.png', 2823, 32938, 18, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (620, N'Joshua', N'King', N'Central Midfield', CAST(N'2007-01-03T00:00:00.0000000' AS DateTime2), 24, N'https://media.api-sports.io/football/players/389315.png', 389315, 246418, 18, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (621, N'Ryan', N'Sessegnon', N'Left-Back', CAST(N'2000-05-18T00:00:00.0000000' AS DateTime2), 30, N'https://media.api-sports.io/football/players/19032.png', 19032, 3959, 18, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (622, N'Emile', N'Rowe', N'Attacking Midfield', CAST(N'2000-07-28T00:00:00.0000000' AS DateTime2), 32, N'https://media.api-sports.io/football/players/1161.png', 1161, 85570, 18, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (623, N'Raúl', N'Jiménez', N'Centre-Forward', CAST(N'1991-05-05T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/2887.png', 2887, 3305, 18, 34)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (624, N'Rodrigo', N'Muniz', N'Centre-Forward', CAST(N'2001-05-04T00:00:00.0000000' AS DateTime2), 9, N'https://media.api-sports.io/football/players/195106.png', 195106, 138036, 18, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (625, N'Adama', N'Traoré', N'Right Winger', CAST(N'1996-01-25T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/18753.png', 18753, 4221, 18, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (626, N'Carlos', N'Vinícius', N'Centre-Forward', CAST(N'1995-03-25T00:00:00.0000000' AS DateTime2), 12, N'https://media.api-sports.io/football/players/104.png', 104, 37833, 18, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (627, N'Alex', N'Iwobi', N'Left Winger', CAST(N'1996-05-03T00:00:00.0000000' AS DateTime2), 17, N'https://media.api-sports.io/football/players/1455.png', 1455, 3392, 18, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (628, N'Reiss', N'Nelson', N'Right Winger', CAST(N'1999-12-10T00:00:00.0000000' AS DateTime2), 19, N'https://media.api-sports.io/football/players/727.png', 727, 7799, 18, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (629, N'Martial', N'Godo', N'Midfield', CAST(N'2003-03-14T00:00:00.0000000' AS DateTime2), 47, N'https://media.api-sports.io/football/players/359386.png', 359386, 204426, 18, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (630, N'Alisson', N'Alisson', N'Goalkeeper', CAST(N'1992-10-02T00:00:00.0000000' AS DateTime2), 1, N'https://media.api-sports.io/football/players/280.png', 280, 1795, 19, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (631, N'Vítězslav', N'Jaroš', N'Goalkeeper', CAST(N'2001-07-23T00:00:00.0000000' AS DateTime2), 56, N'https://media.api-sports.io/football/players/162687.png', 162687, 152579, 19, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (632, N'Caoimhin', N'Kelleher', N'Goalkeeper', CAST(N'1998-11-23T00:00:00.0000000' AS DateTime2), 62, N'https://media.api-sports.io/football/players/281.png', 281, 102046, 19, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (633, N'Harvey', N'Davies', N'Goalkeeper', CAST(N'2003-09-03T00:00:00.0000000' AS DateTime2), 95, N'https://media.api-sports.io/football/players/180316.png', 180316, 165154, 19, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (634, N'Joe', N'Gomez', N'Centre-Back', CAST(N'1997-05-23T00:00:00.0000000' AS DateTime2), 2, N'https://media.api-sports.io/football/players/284.png', 284, 7862, 19, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (635, N'Virgil', N'Dijk', N'Centre-Back', CAST(N'1991-07-08T00:00:00.0000000' AS DateTime2), 4, N'https://media.api-sports.io/football/players/290.png', 290, 7869, 19, 34)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (636, N'Ibrahima', N'Konaté', N'Centre-Back', CAST(N'1999-05-25T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/1145.png', 1145, 9542, 19, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (637, N'Kostas', N'Tsimikas', N'Left-Back', CAST(N'1996-05-12T00:00:00.0000000' AS DateTime2), 21, N'https://media.api-sports.io/football/players/1600.png', 1600, 7383, 19, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (638, N'Andrew', N'Robertson', N'Left-Back', CAST(N'1994-03-11T00:00:00.0000000' AS DateTime2), 26, N'https://media.api-sports.io/football/players/289.png', 289, 7868, 19, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (639, N'Amara', N'Nallo', N'Centre-Back', CAST(N'2006-11-18T00:00:00.0000000' AS DateTime2), 65, N'https://media.api-sports.io/football/players/407032.png', 407032, 248990, 19, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (640, N'Trent', N'Alexander-Arnold', N'Right-Back', CAST(N'1998-10-07T00:00:00.0000000' AS DateTime2), 66, N'https://media.api-sports.io/football/players/283.png', 283, 7867, 19, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (641, N'James', N'Norris', N'Defence', CAST(N'2003-04-04T00:00:00.0000000' AS DateTime2), 77, N'https://media.api-sports.io/football/players/152979.png', 152979, 137200, 19, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (642, N'Jarell', N'Quansah', N'Centre-Back', CAST(N'2003-01-29T00:00:00.0000000' AS DateTime2), 78, N'https://media.api-sports.io/football/players/158698.png', 158698, 176718, 19, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (643, N'Conor', N'Bradley', N'Right-Back', CAST(N'2003-07-09T00:00:00.0000000' AS DateTime2), 84, N'https://media.api-sports.io/football/players/180317.png', 180317, 175865, 19, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (644, N'Trent', N'Doherty', N'Offence', CAST(N'2006-06-30T00:00:00.0000000' AS DateTime2), 3, N'https://media.api-sports.io/football/players/8500.png', 8500, 274727, 19, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (645, N'Dominik', N'Szoboszlai', N'Attacking Midfield', CAST(N'2000-10-25T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/1096.png', 1096, 16347, 19, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (646, N'Alexis', N'Allister', N'Central Midfield', CAST(N'1998-12-24T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/6716.png', 6716, 45681, 19, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (647, N'Curtis', N'Jones', N'Central Midfield', CAST(N'2001-01-30T00:00:00.0000000' AS DateTime2), 17, N'https://media.api-sports.io/football/players/293.png', 293, 7873, 19, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (648, N'Harvey', N'Elliott', N'Central Midfield', CAST(N'2003-04-04T00:00:00.0000000' AS DateTime2), 19, N'https://media.api-sports.io/football/players/19035.png', 19035, 124824, 19, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (649, N'Ryan', N'Gravenberch', N'Central Midfield', CAST(N'2002-05-16T00:00:00.0000000' AS DateTime2), 38, N'https://media.api-sports.io/football/players/542.png', 542, 81793, 19, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (650, N'James', N'McConnell', N'Central Midfield', CAST(N'2004-09-13T00:00:00.0000000' AS DateTime2), 53, N'https://media.api-sports.io/football/players/287109.png', 287109, 214502, 19, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (651, N'Tyler', N'Morton', N'Defensive Midfield', CAST(N'2002-10-31T00:00:00.0000000' AS DateTime2), 80, N'https://media.api-sports.io/football/players/162590.png', 162590, 175845, 19, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (652, N'Trey', N'Nyoni', N'Attacking Midfield', CAST(N'2007-06-30T00:00:00.0000000' AS DateTime2), 98, N'https://media.api-sports.io/football/players/397997.png', 397997, 230517, 19, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (653, N'Luis', N'Díaz', N'Left Winger', CAST(N'1997-01-13T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/2489.png', 2489, 22396, 19, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (654, N'Darwin', N'Núñez', N'Centre-Forward', CAST(N'1999-06-24T00:00:00.0000000' AS DateTime2), 9, N'https://media.api-sports.io/football/players/51617.png', 51617, 28612, 19, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (655, N'Mohamed', N'Salah', N'Right Winger', CAST(N'1992-06-15T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/306.png', 306, 3754, 19, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (656, N'Federico', N'Chiesa', N'Right Winger', CAST(N'1997-10-25T00:00:00.0000000' AS DateTime2), 14, N'https://media.api-sports.io/football/players/30410.png', 30410, 1780, 19, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (657, N'Cody', N'Gakpo', N'Left Winger', CAST(N'1999-05-07T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/247.png', 247, 7459, 19, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (658, N'Diogo', N'Jota', N'Centre-Forward', CAST(N'1996-12-04T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/2678.png', 2678, 4092, 19, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (659, N'Rio', N'Ngumoha', N'Offence', CAST(N'2008-08-29T00:00:00.0000000' AS DateTime2), 73, N'https://media.api-sports.io/football/players/452685.png', 452685, 273453, 19, 17)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (660, N'Jayden', N'Danns', N'Centre-Forward', CAST(N'2006-01-16T00:00:00.0000000' AS DateTime2), 76, N'https://media.api-sports.io/football/players/314661.png', 314661, 247657, 19, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (661, N'Ranel', N'Young', N'Offence', CAST(N'2005-12-26T00:00:00.0000000' AS DateTime2), 82, N'https://media.api-sports.io/football/players/380657.png', 380657, 272306, 19, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (662, N'Kaide', N'Gordon', N'Attacker', NULL, NULL, N'https://media.api-sports.io/football/players/286764.png', 286764, NULL, 19, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (663, N'Stefan', N'Moreno', N'Goalkeeper', CAST(N'1992-11-06T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/25004.png', 25004, 6958, 20, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (664, N'Ederson', N'Ederson', N'Goalkeeper', CAST(N'1993-08-17T00:00:00.0000000' AS DateTime2), 31, N'https://media.api-sports.io/football/players/617.png', 617, 3222, 20, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (665, N'Scott', N'Carson', N'Goalkeeper', CAST(N'1985-09-03T00:00:00.0000000' AS DateTime2), 33, N'https://media.api-sports.io/football/players/19197.png', 19197, 4172, 20, 40)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (666, N'Spike', N'Brits', N'Goalkeeper', CAST(N'2007-06-24T00:00:00.0000000' AS DateTime2), 80, N'https://media.api-sports.io/football/players/437557.png', 437557, 273728, 20, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (667, N'K.', N'Walker', N'Defender', NULL, 2, N'https://media.api-sports.io/football/players/627.png', 627, NULL, 20, 35)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (668, N'Rúben', N'Dias', N'Centre-Back', CAST(N'1997-05-14T00:00:00.0000000' AS DateTime2), 3, N'https://media.api-sports.io/football/players/567.png', 567, 10183, 20, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (669, N'John', N'Stones', N'Centre-Back', CAST(N'1994-05-28T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/626.png', 626, 3313, 20, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (670, N'Nathan', N'Aké', N'Centre-Back', CAST(N'1995-02-18T00:00:00.0000000' AS DateTime2), 6, N'https://media.api-sports.io/football/players/18861.png', 18861, 8240, 20, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (671, N'Vitor', N'Reis', N'Defence', CAST(N'2006-01-12T00:00:00.0000000' AS DateTime2), 22, N'https://media.api-sports.io/football/players/414359.png', 414359, 249196, 20, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (672, N'Joško', N'Gvardiol', N'Left-Back', CAST(N'2002-01-23T00:00:00.0000000' AS DateTime2), 24, N'https://media.api-sports.io/football/players/129033.png', 129033, 122266, 20, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (673, N'Manuel', N'Akanji', N'Centre-Back', CAST(N'1995-07-19T00:00:00.0000000' AS DateTime2), 25, N'https://media.api-sports.io/football/players/5.png', 5, 143, 20, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (674, N'Abdukodir', N'Khusanov', N'Centre-Back', CAST(N'2004-02-29T00:00:00.0000000' AS DateTime2), 45, N'https://media.api-sports.io/football/players/360114.png', 360114, 212868, 20, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (675, N'Jahmai', N'Simpson-Pusey', N'Defence', CAST(N'2005-11-04T00:00:00.0000000' AS DateTime2), 66, N'https://media.api-sports.io/football/players/404656.png', 404656, 272307, 20, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (676, N'Max', N'Alleyne', N'Centre-Back', CAST(N'2005-07-21T00:00:00.0000000' AS DateTime2), 68, N'https://media.api-sports.io/football/players/293168.png', 293168, 244856, 20, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (677, N'Rico', N'Lewis', N'Right-Back', CAST(N'2004-11-21T00:00:00.0000000' AS DateTime2), 82, N'https://media.api-sports.io/football/players/284230.png', 284230, 187202, 20, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (678, N'Mateo', N'Kovačić', N'Central Midfield', CAST(N'1994-05-06T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/2291.png', 2291, 65, 20, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (679, N'Jack', N'Grealish', N'Left Winger', CAST(N'1995-09-10T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/19187.png', 19187, 3895, 20, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (680, N'Rodri', N'Rodri', N'Defensive Midfield', CAST(N'1996-06-22T00:00:00.0000000' AS DateTime2), 16, N'https://media.api-sports.io/football/players/44.png', 44, 3199, 20, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (681, N'Kevin', N'Bruyne', N'Attacking Midfield', CAST(N'1991-06-28T00:00:00.0000000' AS DateTime2), 17, N'https://media.api-sports.io/football/players/629.png', 629, 3654, 20, 34)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (682, N'Ilkay', N'Gündogan', N'Central Midfield', CAST(N'1990-10-24T00:00:00.0000000' AS DateTime2), 19, N'https://media.api-sports.io/football/players/633.png', 633, 3182, 20, 35)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (683, N'Bernardo', N'Silva', N'Attacking Midfield', CAST(N'1994-08-10T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/636.png', 636, 3254, 20, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (684, N'Matheus', N'Nunes', N'Central Midfield', CAST(N'1998-08-27T00:00:00.0000000' AS DateTime2), 27, N'https://media.api-sports.io/football/players/41621.png', 41621, 91512, 20, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (685, N'Phil', N'Foden', N'Right Winger', CAST(N'2000-05-28T00:00:00.0000000' AS DateTime2), 47, N'https://media.api-sports.io/football/players/631.png', 631, 7888, 20, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (686, N'Oscar', N'Bobb', N'Right Winger', CAST(N'2003-07-12T00:00:00.0000000' AS DateTime2), 52, N'https://media.api-sports.io/football/players/278133.png', 278133, 179716, 20, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (687, N'Jacob', N'Wright', N'Defensive Midfield', CAST(N'2005-09-21T00:00:00.0000000' AS DateTime2), 56, N'https://media.api-sports.io/football/players/382355.png', 382355, 245445, 20, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (688, N'N.', N'O&apos;Reilly', N'Midfielder', NULL, 75, N'https://media.api-sports.io/football/players/307123.png', 307123, NULL, 20, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (689, N'James', N'McAtee', N'Attacking Midfield', CAST(N'2002-10-18T00:00:00.0000000' AS DateTime2), 87, N'https://media.api-sports.io/football/players/158697.png', 158697, 172956, 20, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (690, N'Kian', N'Breckin', N'Midfielder', NULL, NULL, N'https://media.api-sports.io/football/players/284228.png', 284228, NULL, 20, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (691, N'Claudio', N'Echeverri', N'Midfield', CAST(N'2006-01-02T00:00:00.0000000' AS DateTime2), NULL, N'https://media.api-sports.io/football/players/414385.png', 414385, 206908, 20, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (692, N'Omar', N'Marmoush', N'Centre-Forward', CAST(N'1999-02-07T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/81573.png', 81573, 66896, 20, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (693, N'Erling', N'Haaland', N'Centre-Forward', CAST(N'2000-07-21T00:00:00.0000000' AS DateTime2), 9, N'https://media.api-sports.io/football/players/1100.png', 1100, 38101, 20, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (694, N'Jeremy', N'Doku', N'Left Winger', CAST(N'2002-05-27T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/1422.png', 1422, 99775, 20, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (695, N'Sávio', N'Sávio', N'Right Winger', CAST(N'2004-04-10T00:00:00.0000000' AS DateTime2), 26, N'https://media.api-sports.io/football/players/266657.png', 266657, 146352, 20, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (696, N'Divin', N'Mubama', N'Centre-Forward', CAST(N'2004-10-25T00:00:00.0000000' AS DateTime2), 67, N'https://media.api-sports.io/football/players/284409.png', 284409, 187380, 20, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (697, N'Altay', N'Bayındır', N'Goalkeeper', CAST(N'1998-04-14T00:00:00.0000000' AS DateTime2), 1, N'https://media.api-sports.io/football/players/50132.png', 50132, 29518, 21, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (698, N'Tom', N'Heaton', N'Goalkeeper', CAST(N'1986-04-15T00:00:00.0000000' AS DateTime2), 22, N'https://media.api-sports.io/football/players/2931.png', 2931, 8035, 21, 39)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (699, N'André', N'Onana', N'Goalkeeper', CAST(N'1996-04-02T00:00:00.0000000' AS DateTime2), 24, N'https://media.api-sports.io/football/players/526.png', 526, 7544, 21, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (700, N'Victor', N'Nilsson-Lindelöf', N'Centre-Back', CAST(N'1994-07-17T00:00:00.0000000' AS DateTime2), 2, N'https://media.api-sports.io/football/players/889.png', 889, 3492, 21, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (701, N'Noussair', N'Mazraoui', N'Right-Back', CAST(N'1997-11-14T00:00:00.0000000' AS DateTime2), 3, N'https://media.api-sports.io/football/players/545.png', 545, 7553, 21, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (702, N'Matthijs', N'Ligt', N'Centre-Back', CAST(N'1999-08-12T00:00:00.0000000' AS DateTime2), 4, N'https://media.api-sports.io/football/players/532.png', 532, 7549, 21, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (703, N'Harry', N'Maguire', N'Centre-Back', CAST(N'1993-03-05T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/2935.png', 2935, 3326, 21, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (704, N'Lisandro', N'Martínez', N'Centre-Back', CAST(N'1998-01-18T00:00:00.0000000' AS DateTime2), 6, N'https://media.api-sports.io/football/players/2467.png', 2467, 46451, 21, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (705, N'Tyrell', N'Malacia', N'Left-Back', CAST(N'1999-08-17T00:00:00.0000000' AS DateTime2), 12, N'https://media.api-sports.io/football/players/37145.png', 37145, 7467, 21, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (706, N'Leny', N'Yoro', N'Centre-Back', CAST(N'2005-11-13T00:00:00.0000000' AS DateTime2), 15, N'https://media.api-sports.io/football/players/342970.png', 342970, 181933, 21, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (707, N'Diogo', N'Dalot', N'Right-Back', CAST(N'1999-03-18T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/886.png', 886, 15905, 21, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (708, N'Luke', N'Shaw', N'Left-Back', CAST(N'1995-07-12T00:00:00.0000000' AS DateTime2), 23, N'https://media.api-sports.io/football/players/891.png', 891, 7898, 21, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (709, N'Jonny', N'Evans', N'Centre-Back', CAST(N'1988-01-03T00:00:00.0000000' AS DateTime2), 35, N'https://media.api-sports.io/football/players/18772.png', 18772, 8014, 21, 37)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (710, N'Harry', N'Amass', N'Left-Back', CAST(N'2007-03-16T00:00:00.0000000' AS DateTime2), 41, N'https://media.api-sports.io/football/players/403064.png', 403064, 210150, 21, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (711, N'Habeeb', N'Ogunneye', N'Right-Back', CAST(N'2005-11-12T00:00:00.0000000' AS DateTime2), 75, N'https://media.api-sports.io/football/players/328098.png', 328098, 248978, 21, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (712, N'Godwill', N'Kukonki', N'Defence', CAST(N'2008-02-06T00:00:00.0000000' AS DateTime2), 87, N'https://media.api-sports.io/football/players/440159.png', 440159, 273281, 21, 17)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (713, N'Mason', N'Mount', N'Attacking Midfield', CAST(N'1999-01-10T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/19220.png', 19220, 7599, 21, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (714, N'Bruno', N'Fernandes', N'Attacking Midfield', CAST(N'1994-09-08T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/1485.png', 1485, 3257, 21, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (715, N'Christian', N'Eriksen', N'Central Midfield', CAST(N'1992-02-14T00:00:00.0000000' AS DateTime2), 14, N'https://media.api-sports.io/football/players/174.png', 174, 3459, 21, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (716, N'Casemiro', N'Casemiro', N'Defensive Midfield', CAST(N'1992-02-23T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/747.png', 747, 3231, 21, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (717, N'Manuel', N'Ugarte', N'Defensive Midfield', CAST(N'2001-04-11T00:00:00.0000000' AS DateTime2), 25, N'https://media.api-sports.io/football/players/51494.png', 51494, 28549, 21, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (718, N'Kobbie', N'Mainoo', N'Central Midfield', CAST(N'2005-04-19T00:00:00.0000000' AS DateTime2), 37, N'https://media.api-sports.io/football/players/284322.png', 284322, 190797, 21, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (719, N'Toby', N'Collyer', N'Defensive Midfield', CAST(N'2004-01-03T00:00:00.0000000' AS DateTime2), 43, N'https://media.api-sports.io/football/players/284400.png', 284400, 248734, 21, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (720, N'Daniel', N'Gore', N'Midfielder', NULL, 44, N'https://media.api-sports.io/football/players/303010.png', 303010, NULL, 21, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (721, N'Jack', N'Fletcher', N'Midfield', CAST(N'2007-03-19T00:00:00.0000000' AS DateTime2), 57, N'https://media.api-sports.io/football/players/383770.png', 383770, 271941, 21, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (722, N'Jayce', N'Fitzgerald', N'Midfield', CAST(N'2007-05-09T00:00:00.0000000' AS DateTime2), 76, N'https://media.api-sports.io/football/players/389031.png', 389031, 272305, 21, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (723, N'Rasmus', N'Højlund', N'Centre-Forward', CAST(N'2003-02-04T00:00:00.0000000' AS DateTime2), 9, N'https://media.api-sports.io/football/players/288006.png', 288006, 152770, 21, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (724, N'Marcus', N'Rashford', N'Left Winger', CAST(N'1997-10-31T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/909.png', 909, 3331, 21, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (725, N'Joshua', N'Zirkzee', N'Centre-Forward', CAST(N'2001-05-22T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/70100.png', 70100, 99731, 21, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (726, N'Amad', N'Diallo', N'Right Winger', CAST(N'2002-07-11T00:00:00.0000000' AS DateTime2), 16, N'https://media.api-sports.io/football/players/157997.png', 157997, 133584, 21, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (727, N'Alejandro', N'Garnacho', N'Left Winger', CAST(N'2004-07-01T00:00:00.0000000' AS DateTime2), 17, N'https://media.api-sports.io/football/players/284324.png', 284324, 181901, 21, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (728, N'Antony', N'Antony', N'Attacker', NULL, 21, N'https://media.api-sports.io/football/players/9971.png', 9971, NULL, 21, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (729, N'E.', N'Wheatley', N'Attacker', NULL, 36, N'https://media.api-sports.io/football/players/362270.png', 362270, NULL, 21, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (730, N'Martin', N'Dúbravka', N'Goalkeeper', CAST(N'1989-01-15T00:00:00.0000000' AS DateTime2), 1, N'https://media.api-sports.io/football/players/18886.png', 18886, 7914, 22, 36)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (731, N'Odisseas', N'Vlachodimos', N'Goalkeeper', CAST(N'1994-04-26T00:00:00.0000000' AS DateTime2), 19, N'https://media.api-sports.io/football/players/557.png', 557, 42871, 22, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (732, N'Nick', N'Pope', N'Goalkeeper', CAST(N'1992-04-19T00:00:00.0000000' AS DateTime2), 22, N'https://media.api-sports.io/football/players/18911.png', 18911, 3310, 22, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (733, N'John', N'Ruddy', N'Goalkeeper', CAST(N'1986-10-24T00:00:00.0000000' AS DateTime2), 26, N'https://media.api-sports.io/football/players/18737.png', 18737, 4078, 22, 39)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (734, N'Mark', N'Gillespie', N'Goalkeeper', CAST(N'1992-03-27T00:00:00.0000000' AS DateTime2), 29, N'https://media.api-sports.io/football/players/44912.png', 44912, 5048, 22, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (735, N'Kieran', N'Trippier', N'Right-Back', CAST(N'1990-09-19T00:00:00.0000000' AS DateTime2), 2, N'https://media.api-sports.io/football/players/169.png', 169, 3312, 22, 35)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (736, N'Sven', N'Botman', N'Centre-Back', CAST(N'2000-01-12T00:00:00.0000000' AS DateTime2), 4, N'https://media.api-sports.io/football/players/38734.png', 38734, 81082, 22, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (737, N'Fabian', N'Schär', N'Centre-Back', CAST(N'1991-12-20T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/2806.png', 2806, 88, 22, 34)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (738, N'J.', N'Lascelles', N'Defender', NULL, 6, N'https://media.api-sports.io/football/players/18894.png', 18894, NULL, 22, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (739, N'Matt', N'Targett', N'Left-Back', CAST(N'1995-09-18T00:00:00.0000000' AS DateTime2), 13, N'https://media.api-sports.io/football/players/18941.png', 18941, 3962, 22, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (740, N'Emil', N'Krafth', N'Right-Back', CAST(N'1994-08-02T00:00:00.0000000' AS DateTime2), 17, N'https://media.api-sports.io/football/players/2855.png', 2855, 1868, 22, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (741, N'Lewis', N'Hall', N'Midfield', CAST(N'2004-09-08T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/284492.png', 284492, 176852, 22, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (742, N'Valentino', N'Livramento', N'Right-Back', CAST(N'2002-11-12T00:00:00.0000000' AS DateTime2), 21, N'https://media.api-sports.io/football/players/158694.png', 158694, 168712, 22, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (743, N'Lloyd', N'Kelly', N'Centre-Back', CAST(N'1998-10-06T00:00:00.0000000' AS DateTime2), 25, N'https://media.api-sports.io/football/players/19263.png', 19263, 4393, 22, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (744, N'Dan', N'Burn', N'Centre-Back', CAST(N'1992-05-09T00:00:00.0000000' AS DateTime2), 33, N'https://media.api-sports.io/football/players/18961.png', 18961, 4870, 22, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (745, N'Lewis', N'Miley', N'Central Midfield', CAST(N'2006-05-01T00:00:00.0000000' AS DateTime2), NULL, N'https://media.api-sports.io/football/players/19076.png', 19076, 191939, 22, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (746, N'Sandro', N'Tonali', N'Central Midfield', CAST(N'2000-05-08T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/31146.png', 31146, 2563, 22, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (747, N'Harvey', N'Barnes', N'Left Winger', CAST(N'1997-12-09T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/18778.png', 18778, 8076, 22, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (748, N'Jacob', N'Murphy', N'Right Winger', CAST(N'1995-02-24T00:00:00.0000000' AS DateTime2), 23, N'https://media.api-sports.io/football/players/19163.png', 19163, 7934, 22, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (749, N'M.', N'Almirón', N'Midfielder', NULL, 24, N'https://media.api-sports.io/football/players/2507.png', 2507, NULL, 22, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (750, N'Joe', N'Willock', N'Central Midfield', CAST(N'1999-08-20T00:00:00.0000000' AS DateTime2), 28, N'https://media.api-sports.io/football/players/1463.png', 1463, 7798, 22, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (751, N'Sean', N'Longstaff', N'Central Midfield', CAST(N'1997-10-30T00:00:00.0000000' AS DateTime2), 36, N'https://media.api-sports.io/football/players/18901.png', 18901, 4955, 22, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (752, N'Bruno', N'Guimarães', N'Defensive Midfield', CAST(N'1997-11-16T00:00:00.0000000' AS DateTime2), 39, N'https://media.api-sports.io/football/players/10135.png', 10135, 1684, 22, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (753, N'L.', N'Miley', N'Midfielder', NULL, 67, N'https://media.api-sports.io/football/players/328105.png', 328105, NULL, 22, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (754, N'Joelinton', N'Joelinton', N'Central Midfield', CAST(N'1996-08-14T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/723.png', 723, 10653, 22, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (755, N'Callum', N'Wilson', N'Centre-Forward', CAST(N'1992-02-27T00:00:00.0000000' AS DateTime2), 9, N'https://media.api-sports.io/football/players/2939.png', 2939, 8251, 22, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (756, N'Anthony', N'Gordon', N'Left Winger', CAST(N'2001-02-24T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/138787.png', 138787, 7848, 22, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (757, N'Alexander', N'Isak', N'Centre-Forward', CAST(N'1999-09-21T00:00:00.0000000' AS DateTime2), 14, N'https://media.api-sports.io/football/players/2864.png', 2864, 6486, 22, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (758, N'William', N'Osula', N'Centre-Forward', CAST(N'2003-08-04T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/315237.png', 315237, 169324, 22, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (759, N'Trevan', N'Sanusi', N'Midfield', CAST(N'2007-04-25T00:00:00.0000000' AS DateTime2), 75, N'https://media.api-sports.io/football/players/401389.png', 401389, 206159, 22, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (760, N'Guglielmo', N'Vicario', N'Goalkeeper', CAST(N'1996-10-07T00:00:00.0000000' AS DateTime2), 1, N'https://media.api-sports.io/football/players/31354.png', 31354, 3086, 23, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (761, N'Fraser', N'Forster', N'Goalkeeper', CAST(N'1988-03-17T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/18932.png', 18932, 8079, 23, 37)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (762, N'Antonín', N'Kinský', N'Goalkeeper', CAST(N'2003-03-13T00:00:00.0000000' AS DateTime2), 31, N'https://media.api-sports.io/football/players/265826.png', 265826, 255239, 23, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (763, N'Brandon', N'Austin', N'Goalkeeper', CAST(N'1999-01-08T00:00:00.0000000' AS DateTime2), 40, N'https://media.api-sports.io/football/players/156428.png', 156428, 133229, 23, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (764, N'Alfie', N'Whiteman', N'Goalkeeper', CAST(N'1998-10-02T00:00:00.0000000' AS DateTime2), 41, N'https://media.api-sports.io/football/players/161.png', 161, 7992, 23, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (765, N'Reguilón', N'Reguilón', N'Left-Back', CAST(N'1996-12-16T00:00:00.0000000' AS DateTime2), 3, N'https://media.api-sports.io/football/players/739.png', 739, 51116, 23, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (766, N'Radu', N'Drăgușin', N'Centre-Back', CAST(N'2002-02-03T00:00:00.0000000' AS DateTime2), 6, N'https://media.api-sports.io/football/players/162498.png', 162498, 140432, 23, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (767, N'Destiny', N'Udogie', N'Left-Back', CAST(N'2002-11-28T00:00:00.0000000' AS DateTime2), 13, N'https://media.api-sports.io/football/players/204039.png', 204039, 170378, 23, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (768, N'Christian', N'Romero', N'Centre-Back', CAST(N'1998-04-27T00:00:00.0000000' AS DateTime2), 17, N'https://media.api-sports.io/football/players/30776.png', 30776, 45735, 23, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (769, N'Pedro', N'Porro', N'Right-Back', CAST(N'1999-09-13T00:00:00.0000000' AS DateTime2), 23, N'https://media.api-sports.io/football/players/47519.png', 47519, 81037, 23, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (770, N'Djed', N'Spence', N'Right-Back', CAST(N'2000-08-09T00:00:00.0000000' AS DateTime2), 24, N'https://media.api-sports.io/football/players/19235.png', 19235, 80775, 23, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (771, N'Ben', N'Davies', N'Centre-Back', CAST(N'1993-04-24T00:00:00.0000000' AS DateTime2), 33, N'https://media.api-sports.io/football/players/164.png', 164, 7994, 23, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (772, N'Mickey', N'Ven', N'Centre-Back', CAST(N'2001-04-19T00:00:00.0000000' AS DateTime2), 37, N'https://media.api-sports.io/football/players/152849.png', 152849, 131177, 23, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (773, N'Dante', N'Cassanova', N'Midfield', CAST(N'2004-06-21T00:00:00.0000000' AS DateTime2), 59, N'https://media.api-sports.io/football/players/284417.png', 284417, 270816, 23, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (774, N'Malachi', N'Hardy', N'Defence', CAST(N'2008-03-10T00:00:00.0000000' AS DateTime2), 79, N'https://media.api-sports.io/football/players/459203.png', 459203, 272980, 23, 17)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (775, N'Yves', N'Bissouma', N'Defensive Midfield', CAST(N'1996-08-30T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/18968.png', 18968, 8410, 23, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (776, N'James', N'Maddison', N'Attacking Midfield', CAST(N'1996-11-23T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/18784.png', 18784, 3992, 23, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (777, N'Archie', N'Gray', N'Right-Back', CAST(N'2006-03-12T00:00:00.0000000' AS DateTime2), 14, N'https://media.api-sports.io/football/players/328089.png', 328089, 177040, 23, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (778, N'Lucas', N'Bergvall', N'Central Midfield', CAST(N'2006-02-02T00:00:00.0000000' AS DateTime2), 15, N'https://media.api-sports.io/football/players/347316.png', 347316, 193622, 23, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (779, N'Dejan', N'Kulusevski', N'Attacking Midfield', CAST(N'2000-04-25T00:00:00.0000000' AS DateTime2), 21, N'https://media.api-sports.io/football/players/30435.png', 30435, 1859, 23, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (780, N'Pape', N'Sarr', N'Central Midfield', CAST(N'2002-09-14T00:00:00.0000000' AS DateTime2), 29, N'https://media.api-sports.io/football/players/237129.png', 237129, 170391, 23, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (781, N'Rodrigo', N'Bentancur', N'Defensive Midfield', CAST(N'1997-06-25T00:00:00.0000000' AS DateTime2), 30, N'https://media.api-sports.io/football/players/863.png', 863, 2041, 23, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (782, N'Callum', N'Olusesi', N'Midfield', CAST(N'2007-03-11T00:00:00.0000000' AS DateTime2), 64, N'https://media.api-sports.io/football/players/380689.png', 380689, 272688, 23, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (783, N'Heung-min', N'Son', N'Left Winger', CAST(N'1992-07-08T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/186.png', 186, 170281, 23, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (784, N'Richarlison', N'Richarlison', N'Centre-Forward', CAST(N'1997-05-10T00:00:00.0000000' AS DateTime2), 9, N'https://media.api-sports.io/football/players/2413.png', 2413, 8133, 23, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (785, N'Timo', N'Werner', N'Left Winger', CAST(N'1996-03-06T00:00:00.0000000' AS DateTime2), 16, N'https://media.api-sports.io/football/players/1166.png', 1166, 3187, 23, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (786, N'Yang', N'Min-Hyeok', N'Attacker', NULL, 18, N'https://media.api-sports.io/football/players/423708.png', 423708, NULL, 23, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (787, N'Dominic', N'Solanke', N'Centre-Forward', CAST(N'1997-09-14T00:00:00.0000000' AS DateTime2), 19, N'https://media.api-sports.io/football/players/18883.png', 18883, 7878, 23, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (788, N'Brennan', N'Johnson', N'Right Winger', CAST(N'2001-05-23T00:00:00.0000000' AS DateTime2), 22, N'https://media.api-sports.io/football/players/129711.png', 129711, 124694, 23, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (789, N'Wilson', N'Odobert', N'Right Winger', CAST(N'2004-11-28T00:00:00.0000000' AS DateTime2), 28, N'https://media.api-sports.io/football/players/336564.png', 336564, 184999, 23, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (790, N'William', N'Lankshear', N'Offence', CAST(N'2005-04-20T00:00:00.0000000' AS DateTime2), 42, N'https://media.api-sports.io/football/players/393195.png', 393195, 270684, 23, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (791, N'Mikey', N'Moore', N'Left Winger', CAST(N'2007-08-11T00:00:00.0000000' AS DateTime2), 47, N'https://media.api-sports.io/football/players/380690.png', 380690, 251079, 23, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (792, N'Damola', N'Ajayi', N'Offence', CAST(N'2005-12-27T00:00:00.0000000' AS DateTime2), 63, N'https://media.api-sports.io/football/players/361734.png', 361734, 270817, 23, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (793, N'Dane', N'Scarlett', N'Centre-Forward', CAST(N'2004-03-24T00:00:00.0000000' AS DateTime2), NULL, N'https://media.api-sports.io/football/players/162552.png', 162552, 156616, 23, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (794, N'José', N'Sá', N'Goalkeeper', CAST(N'1993-01-17T00:00:00.0000000' AS DateTime2), 1, N'https://media.api-sports.io/football/players/1590.png', 1590, 15899, 24, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (795, N'Daniel', N'Bentley', N'Goalkeeper', CAST(N'1993-07-13T00:00:00.0000000' AS DateTime2), 25, N'https://media.api-sports.io/football/players/19341.png', 19341, 4418, 24, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (796, N'Sam', N'Johnstone', N'Goalkeeper', CAST(N'1993-03-25T00:00:00.0000000' AS DateTime2), 31, N'https://media.api-sports.io/football/players/19143.png', 19143, 3884, 24, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (797, N'Thomas', N'King', N'Goalkeeper', CAST(N'1995-03-09T00:00:00.0000000' AS DateTime2), 40, N'https://media.api-sports.io/football/players/82855.png', 82855, 6180, 24, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (798, N'Matt', N'Doherty', N'Right-Back', CAST(N'1992-01-16T00:00:00.0000000' AS DateTime2), 2, N'https://media.api-sports.io/football/players/18742.png', 18742, 4081, 24, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (799, N'Rayan', N'Nouri', N'Left-Back', CAST(N'2001-06-06T00:00:00.0000000' AS DateTime2), 3, N'https://media.api-sports.io/football/players/21138.png', 21138, 8642, 24, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (800, N'Santiago', N'Bueno', N'Centre-Back', CAST(N'1998-11-09T00:00:00.0000000' AS DateTime2), 4, N'https://media.api-sports.io/football/players/135334.png', 135334, 32767, 24, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (801, N'Emmanuel', N'Agbadou', N'Centre-Back', CAST(N'1997-06-17T00:00:00.0000000' AS DateTime2), 12, N'https://media.api-sports.io/football/players/135068.png', 135068, 149731, 24, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (802, N'Yerson', N'Mosquera', N'Centre-Back', CAST(N'2001-05-02T00:00:00.0000000' AS DateTime2), 14, N'https://media.api-sports.io/football/players/195717.png', 195717, 153570, 24, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (803, N'Craig', N'Dawson', N'Centre-Back', CAST(N'1990-05-06T00:00:00.0000000' AS DateTime2), 15, N'https://media.api-sports.io/football/players/19147.png', 19147, 8012, 24, 35)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (804, N'Nélson', N'Semedo', N'Right-Back', CAST(N'1993-11-16T00:00:00.0000000' AS DateTime2), 22, N'https://media.api-sports.io/football/players/130.png', 130, 15862, 24, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (805, N'Toti', N'Gomes', N'Centre-Back', CAST(N'1999-01-16T00:00:00.0000000' AS DateTime2), 24, N'https://media.api-sports.io/football/players/41606.png', 41606, 102223, 24, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (806, N'Bastien', N'Menadjou', N'Centre-Back', CAST(N'2006-03-19T00:00:00.0000000' AS DateTime2), 33, N'https://media.api-sports.io/football/players/388777.png', 388777, 214507, 24, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (807, N'Pedro', N'Lima', N'Right-Back', CAST(N'2006-07-01T00:00:00.0000000' AS DateTime2), 37, N'https://media.api-sports.io/football/players/449245.png', 449245, 249435, 24, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (808, N'Alfie', N'Pond', N'Centre-Back', CAST(N'2004-03-01T00:00:00.0000000' AS DateTime2), 46, N'https://media.api-sports.io/football/players/283272.png', 283272, 151666, 24, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (809, N'Wesley', N'Okoduwa', N'Right-Back', CAST(N'2008-05-12T00:00:00.0000000' AS DateTime2), 61, N'https://media.api-sports.io/football/players/408893.png', 408893, 249060, 24, 17)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (810, N'Mario', N'Lemina', N'Defensive Midfield', CAST(N'1993-09-01T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/18947.png', 18947, 8097, 24, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (811, N'Boubacar', N'Traoré', N'Defensive Midfield', CAST(N'2001-08-20T00:00:00.0000000' AS DateTime2), 6, N'https://media.api-sports.io/football/players/157912.png', 157912, 133553, 24, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (812, N'André', N'André', N'Defensive Midfield', CAST(N'2001-07-16T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/265784.png', 265784, 145538, 24, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (813, N'João', N'Gomes', N'Central Midfield', CAST(N'2001-02-12T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/195103.png', 195103, 138034, 24, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (814, N'Tommy', N'Doyle', N'Central Midfield', CAST(N'2001-10-17T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/144732.png', 144732, 172581, 24, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (815, N'Pablo', N'Sarabia', N'Right Winger', CAST(N'1992-05-11T00:00:00.0000000' AS DateTime2), 21, N'https://media.api-sports.io/football/players/2056.png', 2056, 74, 24, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (816, N'Jean-Ricner', N'Bellegarde', N'Central Midfield', CAST(N'1998-06-27T00:00:00.0000000' AS DateTime2), 27, N'https://media.api-sports.io/football/players/20665.png', 20665, 788, 24, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (817, N'Tawanda', N'Chirewa', N'Attacking Midfield', CAST(N'2003-10-11T00:00:00.0000000' AS DateTime2), 28, N'https://media.api-sports.io/football/players/171035.png', 171035, 135345, 24, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (818, N'Luke', N'Cundle', N'Central Midfield', CAST(N'2002-04-26T00:00:00.0000000' AS DateTime2), 34, N'https://media.api-sports.io/football/players/149564.png', 149564, 131115, 24, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (819, N'Luke', N'Rawlings', N'Midfield', NULL, 62, N'https://media.api-sports.io/football/players/401098.png', 401098, 265562, 24, 17)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (820, N'Jørgen', N'Larsen', N'Offence', CAST(N'2000-02-06T00:00:00.0000000' AS DateTime2), 9, N'https://media.api-sports.io/football/players/2032.png', 2032, 213269, 24, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (821, N'Matheus', N'Cunha', N'Centre-Forward', CAST(N'1999-05-27T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/1165.png', 1165, 30842, 24, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (822, N'Hwang', N'Heechan', N'Centre-Forward', CAST(N'1996-01-26T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/24888.png', 24888, 3354, 24, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (823, N'Saša', N'Kalajdžić', N'Centre-Forward', CAST(N'1997-07-07T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/7722.png', 7722, 10761, 24, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (824, N'Rodrigo', N'Gomes', N'Right Midfield', CAST(N'2003-07-07T00:00:00.0000000' AS DateTime2), 19, N'https://media.api-sports.io/football/players/282770.png', 282770, 151521, 24, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (825, N'Forbs', N'Forbs', N'Left Winger', CAST(N'2004-03-19T00:00:00.0000000' AS DateTime2), 26, N'https://media.api-sports.io/football/players/282126.png', 282126, 214423, 24, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (826, N'Gonçalo', N'Guedes', N'Left Winger', CAST(N'1996-11-29T00:00:00.0000000' AS DateTime2), 29, N'https://media.api-sports.io/football/players/925.png', 925, 3259, 24, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (827, N'Enso', N'Gonzalez', N'Left Winger', CAST(N'2005-01-20T00:00:00.0000000' AS DateTime2), 30, N'https://media.api-sports.io/football/players/385726.png', 385726, 193014, 24, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (828, N'Leon', N'Chiwome', N'Centre-Forward', CAST(N'2006-01-10T00:00:00.0000000' AS DateTime2), 44, N'https://media.api-sports.io/football/players/380653.png', 380653, 249354, 24, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (829, N'Tom', N'Edozie', N'Midfield', CAST(N'2006-05-18T00:00:00.0000000' AS DateTime2), 74, N'https://media.api-sports.io/football/players/389302.png', 389302, 272968, 24, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (830, N'Nathan', N'Fraser', N'Centre-Forward', CAST(N'2005-02-22T00:00:00.0000000' AS DateTime2), NULL, N'https://media.api-sports.io/football/players/303019.png', 303019, 189575, 24, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (831, N'Danny', N'Ward', N'Goalkeeper', CAST(N'1993-06-22T00:00:00.0000000' AS DateTime2), 1, N'https://media.api-sports.io/football/players/18146.png', 18146, 7857, 25, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (832, N'Mads', N'Hermansen', N'Goalkeeper', CAST(N'2000-07-11T00:00:00.0000000' AS DateTime2), 30, N'https://media.api-sports.io/football/players/15870.png', 15870, 97144, 25, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (833, N'Daniel', N'Iversen', N'Goalkeeper', CAST(N'1997-07-19T00:00:00.0000000' AS DateTime2), 31, N'https://media.api-sports.io/football/players/17736.png', 17736, 74783, 25, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (834, N'Jakub', N'Stolarczyk', N'Goalkeeper', CAST(N'2000-12-19T00:00:00.0000000' AS DateTime2), 41, N'https://media.api-sports.io/football/players/152970.png', 152970, 156764, 25, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (835, N'James', N'Justin', N'Right-Back', CAST(N'1998-02-23T00:00:00.0000000' AS DateTime2), 2, N'https://media.api-sports.io/football/players/19760.png', 19760, 5613, 25, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (836, N'Wout', N'Faes', N'Centre-Back', CAST(N'1998-04-03T00:00:00.0000000' AS DateTime2), 3, N'https://media.api-sports.io/football/players/8694.png', 8694, 7328, 25, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (837, N'Conor', N'Coady', N'Centre-Back', CAST(N'1993-02-25T00:00:00.0000000' AS DateTime2), 4, N'https://media.api-sports.io/football/players/18741.png', 18741, 4083, 25, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (838, N'Caleb', N'Okoli', N'Centre-Back', CAST(N'2001-07-13T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/30427.png', 30427, 101439, 25, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (839, N'Victor', N'Kristiansen', N'Left-Back', CAST(N'2002-12-16T00:00:00.0000000' AS DateTime2), 16, N'https://media.api-sports.io/football/players/158710.png', 158710, 167140, 25, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (840, N'Ricardo', N'Pereira', N'Right-Back', CAST(N'1993-10-06T00:00:00.0000000' AS DateTime2), 21, N'https://media.api-sports.io/football/players/18771.png', 18771, 10182, 25, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (841, N'Jannik', N'Vestergaard', N'Centre-Back', CAST(N'1992-08-03T00:00:00.0000000' AS DateTime2), 23, N'https://media.api-sports.io/football/players/18943.png', 18943, 6671, 25, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (842, N'Luke', N'Thomas', N'Left-Back', CAST(N'2001-06-10T00:00:00.0000000' AS DateTime2), 33, N'https://media.api-sports.io/football/players/152969.png', 152969, 146019, 25, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (843, N'Tom', N'Wilson-Brown', N'Defence', CAST(N'2004-10-05T00:00:00.0000000' AS DateTime2), 57, N'https://media.api-sports.io/football/players/305732.png', 305732, 273761, 25, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (844, N'Woyo', N'Coulibaly', N'Right-Back', CAST(N'1999-05-20T00:00:00.0000000' AS DateTime2), NULL, N'https://media.api-sports.io/football/players/128338.png', 128338, 123103, 25, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (845, N'Wilfred', N'Ndidi', N'Defensive Midfield', CAST(N'1996-12-16T00:00:00.0000000' AS DateTime2), 6, N'https://media.api-sports.io/football/players/18786.png', 18786, 3383, 25, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (846, N'Harry', N'Winks', N'Defensive Midfield', CAST(N'1996-02-02T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/182.png', 182, 7999, 25, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (847, N'Bilal', N'Khannouss', N'Attacking Midfield', CAST(N'2005-05-09T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/340573.png', 340573, 189873, 25, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (848, N'H.', N'Choudhury', N'Midfielder', NULL, 17, N'https://media.api-sports.io/football/players/18779.png', 18779, NULL, 25, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (849, N'Oliver', N'Skipp', N'Defensive Midfield', CAST(N'2000-09-16T00:00:00.0000000' AS DateTime2), 22, N'https://media.api-sports.io/football/players/180.png', 180, 96974, 25, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (850, N'Boubakary', N'Soumaré', N'Defensive Midfield', CAST(N'1999-02-27T00:00:00.0000000' AS DateTime2), 24, N'https://media.api-sports.io/football/players/22233.png', 22233, 8406, 25, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (851, N'Michael', N'Golding', N'Central Midfield', CAST(N'2006-05-23T00:00:00.0000000' AS DateTime2), 34, N'https://media.api-sports.io/football/players/330986.png', 330986, 245340, 25, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (852, N'Kasey', N'McAteer', N'Right Winger', CAST(N'2001-11-22T00:00:00.0000000' AS DateTime2), 35, N'https://media.api-sports.io/football/players/283290.png', 283290, 176777, 25, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (853, N'Will', N'Alves', N'Attacking Midfield', CAST(N'2005-02-03T00:00:00.0000000' AS DateTime2), 37, N'https://media.api-sports.io/football/players/305733.png', 305733, 179651, 25, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (854, N'Facundo', N'Buonanotte', N'Attacking Midfield', CAST(N'2004-12-23T00:00:00.0000000' AS DateTime2), 40, N'https://media.api-sports.io/football/players/311334.png', 311334, 184273, 25, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (855, N'Henry', N'Cartwright', N'Midfield', CAST(N'2005-04-12T00:00:00.0000000' AS DateTime2), 49, N'https://media.api-sports.io/football/players/304316.png', 304316, 273415, 25, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (856, N'Brandon', N'Cover', N'Midfielder', NULL, NULL, N'https://media.api-sports.io/football/players/284530.png', 284530, NULL, 25, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (857, N'A.', N'Fatawu', N'Attacker', NULL, 7, N'https://media.api-sports.io/football/players/303467.png', 303467, NULL, 25, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (858, N'Jamie', N'Vardy', N'Centre-Forward', CAST(N'1987-01-11T00:00:00.0000000' AS DateTime2), 9, N'https://media.api-sports.io/football/players/18788.png', 18788, 3330, 25, 38)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (859, N'Stephy', N'Mavididi', N'Left Winger', CAST(N'1998-05-31T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/879.png', 879, 6332, 25, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (860, N'B.', N'Cordova-Reid', N'Attacker', NULL, 14, N'https://media.api-sports.io/football/players/19004.png', 19004, NULL, 25, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (861, N'Jordan', N'Ayew', N'Centre-Forward', CAST(N'1991-09-11T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/3428.png', 3428, 7984, 25, 34)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (862, N'Patson', N'Daka', N'Centre-Forward', CAST(N'1998-10-09T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/1098.png', 1098, 16348, 25, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (863, N'Odsonne', N'Edouard', N'Centre-Forward', CAST(N'1998-01-16T00:00:00.0000000' AS DateTime2), 29, N'https://media.api-sports.io/football/players/1135.png', 1135, 16077, 25, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (864, N'Alex', N'McCarthy', N'Goalkeeper', CAST(N'1989-12-03T00:00:00.0000000' AS DateTime2), 1, N'https://media.api-sports.io/football/players/18935.png', 18935, 8080, 26, 36)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (865, N'Joe', N'Lumley', N'Goalkeeper', CAST(N'1995-02-15T00:00:00.0000000' AS DateTime2), 13, N'https://media.api-sports.io/football/players/19573.png', 19573, 4010, 26, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (866, N'Aaron', N'Ramsdale', N'Goalkeeper', CAST(N'1998-05-14T00:00:00.0000000' AS DateTime2), 30, N'https://media.api-sports.io/football/players/20355.png', 20355, 5530, 26, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (867, N'Gavin', N'Bazunu', N'Goalkeeper', CAST(N'2002-02-20T00:00:00.0000000' AS DateTime2), 31, N'https://media.api-sports.io/football/players/105971.png', 105971, 36680, 26, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (868, N'Kyle', N'Walker-Peters', N'Right-Back', CAST(N'1997-04-13T00:00:00.0000000' AS DateTime2), 2, N'https://media.api-sports.io/football/players/171.png', 171, 7995, 26, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (869, N'Ryan', N'Manning', N'Left-Back', CAST(N'1996-06-14T00:00:00.0000000' AS DateTime2), 3, N'https://media.api-sports.io/football/players/19587.png', 19587, 4024, 26, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (870, N'Jack', N'Stephens', N'Centre-Back', CAST(N'1994-01-27T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/18940.png', 18940, 8085, 26, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (871, N'Taylor', N'Harwood-Bellis', N'Centre-Back', CAST(N'2002-01-30T00:00:00.0000000' AS DateTime2), 6, N'https://media.api-sports.io/football/players/144729.png', 144729, 131035, 26, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (872, N'James', N'Bree', N'Right-Back', CAST(N'1997-10-11T00:00:00.0000000' AS DateTime2), 14, N'https://media.api-sports.io/football/players/19719.png', 19719, 3899, 26, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (873, N'Nathan', N'Wood-Gordon', N'Centre-Back', CAST(N'2002-05-31T00:00:00.0000000' AS DateTime2), 15, N'https://media.api-sports.io/football/players/19248.png', 19248, 76745, 26, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (874, N'Yukinari', N'Sugawara', N'Right-Back', CAST(N'2000-06-28T00:00:00.0000000' AS DateTime2), 16, N'https://media.api-sports.io/football/players/32887.png', 32887, 48670, 26, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (875, N'Charlie', N'Taylor', N'Left-Back', CAST(N'1993-09-18T00:00:00.0000000' AS DateTime2), 21, N'https://media.api-sports.io/football/players/18918.png', 18918, 8043, 26, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (876, N'Juan', N'Larios', N'Left-Back', CAST(N'2004-01-12T00:00:00.0000000' AS DateTime2), 28, N'https://media.api-sports.io/football/players/284264.png', 284264, 187977, 26, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (877, N'Welington', N'Welington', N'Defence', CAST(N'2001-02-19T00:00:00.0000000' AS DateTime2), 34, N'https://media.api-sports.io/football/players/180919.png', 180919, 136783, 26, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (878, N'Jan', N'Bednarek', N'Centre-Back', CAST(N'1996-04-12T00:00:00.0000000' AS DateTime2), 35, N'https://media.api-sports.io/football/players/2999.png', 2999, 8086, 26, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (879, N'Armel', N'Kotchap', N'Centre-Back', CAST(N'2001-12-11T00:00:00.0000000' AS DateTime2), 37, N'https://media.api-sports.io/football/players/25061.png', 25061, 111555, 26, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (880, N'Joachim', N'Sanda', N'Defence', CAST(N'2006-11-29T00:00:00.0000000' AS DateTime2), 39, N'https://media.api-sports.io/football/players/395809.png', 395809, 213018, 26, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (881, N'Jayden', N'Moore', N'Defence', CAST(N'2006-12-12T00:00:00.0000000' AS DateTime2), 57, N'https://media.api-sports.io/football/players/412152.png', 412152, 265566, 26, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (882, N'Flynn', N'Downes', N'Defensive Midfield', CAST(N'1999-01-20T00:00:00.0000000' AS DateTime2), 4, N'https://media.api-sports.io/football/players/19733.png', 19733, 5626, 26, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (883, N'Joe', N'Aribo', N'Central Midfield', CAST(N'1996-07-21T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/19825.png', 19825, 6318, 26, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (884, N'William', N'Smallbone', N'Central Midfield', CAST(N'2000-02-21T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/130421.png', 130421, 137396, 26, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (885, N'Adam', N'Lallana', N'Attacking Midfield', CAST(N'1988-05-10T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/295.png', 295, 3318, 26, 37)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (886, N'Mateus', N'Fernandes', N'Central Midfield', CAST(N'2004-07-10T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/336585.png', 336585, 187216, 26, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (887, N'Kamal', N'Sulemana', N'Left Winger', CAST(N'2002-02-15T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/199837.png', 199837, 142140, 26, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (888, N'Ryan', N'Fraser', N'Left Winger', CAST(N'1994-02-24T00:00:00.0000000' AS DateTime2), 24, N'https://media.api-sports.io/football/players/18873.png', 18873, 8247, 26, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (889, N'Chimuanya', N'Ugochukwu', N'Defensive Midfield', CAST(N'2004-03-26T00:00:00.0000000' AS DateTime2), 26, N'https://media.api-sports.io/football/players/270508.png', 270508, 153555, 26, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (890, N'Samuel', N'Amo-Ameyaw', N'Right Winger', CAST(N'2006-07-18T00:00:00.0000000' AS DateTime2), 27, N'https://media.api-sports.io/football/players/334035.png', 334035, 206809, 26, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (891, N'Tyler', N'Dibling', N'Right Winger', CAST(N'2006-02-17T00:00:00.0000000' AS DateTime2), 33, N'https://media.api-sports.io/football/players/304317.png', 304317, 218525, 26, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (892, N'Romeo', N'Akachukwu', N'Midfield', CAST(N'2006-07-28T00:00:00.0000000' AS DateTime2), 54, N'https://media.api-sports.io/football/players/358666.png', 358666, 265568, 26, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (893, N'Joe', N'O''Brien-Whitmarsh', N'Midfield', CAST(N'2005-05-11T00:00:00.0000000' AS DateTime2), 60, N'https://media.api-sports.io/football/players/322305.png', 322305, 265565, 26, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (894, N'Cameron', N'Archer', N'Centre-Forward', CAST(N'2001-07-21T00:00:00.0000000' AS DateTime2), NULL, N'https://media.api-sports.io/football/players/304318.png', 304318, 128242, 26, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (895, N'A.', N'Grønbæk', N'Midfielder', NULL, NULL, N'https://media.api-sports.io/football/players/263177.png', 263177, NULL, 26, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (896, N'Adam', N'Armstrong', N'Centre-Forward', CAST(N'1997-02-10T00:00:00.0000000' AS DateTime2), 9, N'https://media.api-sports.io/football/players/19484.png', 19484, 4863, 26, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (897, N'Ross', N'Stewart', N'Centre-Forward', CAST(N'1996-09-01T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/45078.png', 45078, 35101, 26, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (898, N'C.', N'Archer', N'Attacker', NULL, 19, N'https://media.api-sports.io/football/players/137302.png', 137302, NULL, 26, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (899, N'Paul', N'Onuachu', N'Centre-Forward', CAST(N'1994-05-28T00:00:00.0000000' AS DateTime2), 32, N'https://media.api-sports.io/football/players/15812.png', 15812, 24215, 26, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (900, N'Jay', N'Robinson', N'Offence', CAST(N'2007-03-15T00:00:00.0000000' AS DateTime2), 46, N'https://media.api-sports.io/football/players/380691.png', 380691, 265567, 26, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (901, N'Arijanet', N'Muric', N'Goalkeeper', CAST(N'1998-11-07T00:00:00.0000000' AS DateTime2), 1, N'https://media.api-sports.io/football/players/616.png', 616, 81179, 27, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (902, N'Cieran', N'Slicker', N'Goalkeeper', CAST(N'2002-09-15T00:00:00.0000000' AS DateTime2), 13, N'https://media.api-sports.io/football/players/158702.png', 158702, 172723, 27, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (903, N'Christian', N'Walton', N'Goalkeeper', CAST(N'1995-11-09T00:00:00.0000000' AS DateTime2), 28, N'https://media.api-sports.io/football/players/19541.png', 19541, 4867, 27, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (904, N'Jack', N'Clarke', N'Left Winger', CAST(N'2000-11-23T00:00:00.0000000' AS DateTime2), 2, N'https://media.api-sports.io/football/players/138836.png', 138836, 4158, 27, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (905, N'Leif', N'Davis', N'Left-Back', CAST(N'1999-12-31T00:00:00.0000000' AS DateTime2), 3, N'https://media.api-sports.io/football/players/19119.png', 19119, 99120, 27, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (906, N'Luke', N'Woolfenden', N'Centre-Back', CAST(N'1998-10-21T00:00:00.0000000' AS DateTime2), 6, N'https://media.api-sports.io/football/players/17714.png', 17714, 4235, 27, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (907, N'Cameron', N'Burgess', N'Centre-Back', CAST(N'1995-10-21T00:00:00.0000000' AS DateTime2), 15, N'https://media.api-sports.io/football/players/20457.png', 20457, 5432, 27, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (908, N'Ben', N'Johnson', N'Right-Back', CAST(N'2000-01-24T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/18823.png', 18823, 8224, 27, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (909, N'Conor', N'Townsend', N'Left-Back', CAST(N'1993-03-04T00:00:00.0000000' AS DateTime2), 22, N'https://media.api-sports.io/football/players/19152.png', 19152, 5430, 27, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (910, N'Jacob', N'Greaves', N'Centre-Back', CAST(N'2000-09-12T00:00:00.0000000' AS DateTime2), 24, N'https://media.api-sports.io/football/players/127579.png', 127579, 125651, 27, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (911, N'D.', N'O&apos;Shea', N'Defender', NULL, 26, N'https://media.api-sports.io/football/players/17597.png', 17597, NULL, 27, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (912, N'Axel', N'Tuanzebe', N'Centre-Back', CAST(N'1997-11-14T00:00:00.0000000' AS DateTime2), 40, N'https://media.api-sports.io/football/players/19182.png', 19182, 3894, 27, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (913, N'Ben', N'Godfrey', N'Centre-Back', CAST(N'1998-01-15T00:00:00.0000000' AS DateTime2), 44, N'https://media.api-sports.io/football/players/19073.png', 19073, 5487, 27, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (914, N'G.', N'Edmundson', N'Defender', NULL, NULL, N'https://media.api-sports.io/football/players/17739.png', 17739, NULL, 27, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (915, N'Sam', N'Morsy', N'Central Midfield', CAST(N'1991-09-10T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/19558.png', 19558, 3765, 27, 34)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (916, N'Kalvin', N'Phillips', N'Defensive Midfield', CAST(N'1995-12-02T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/19130.png', 19130, 4147, 27, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (917, N'Jens', N'Cajuste', N'Defensive Midfield', CAST(N'1999-08-10T00:00:00.0000000' AS DateTime2), 12, N'https://media.api-sports.io/football/players/15797.png', 15797, 31676, 27, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (918, N'Jack', N'Taylor', N'Central Midfield', CAST(N'1998-06-23T00:00:00.0000000' AS DateTime2), 14, N'https://media.api-sports.io/football/players/18397.png', 18397, 5999, 27, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (919, N'Samuel', N'Szmodics', N'Attacking Midfield', CAST(N'1995-09-24T00:00:00.0000000' AS DateTime2), 23, N'https://media.api-sports.io/football/players/17579.png', 17579, 5578, 27, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (920, N'Massimo', N'Luongo', N'Central Midfield', CAST(N'1992-09-25T00:00:00.0000000' AS DateTime2), 25, N'https://media.api-sports.io/football/players/2752.png', 2752, 3416, 27, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (921, N'Julio', N'Enciso', N'Attacking Midfield', CAST(N'2004-01-23T00:00:00.0000000' AS DateTime2), NULL, N'https://media.api-sports.io/football/players/70747.png', 70747, 168949, 27, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (922, N'Wes', N'Burns', N'Right Winger', CAST(N'1994-11-23T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/20089.png', 20089, 5332, 27, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (923, N'Conor', N'Chaplin', N'Offence', CAST(N'1997-02-16T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/20007.png', 20007, 4931, 27, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (924, N'Ali', N'Hamadi', N'Attacker', NULL, 16, N'https://media.api-sports.io/football/players/299813.png', 299813, NULL, 27, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (925, N'Liam', N'Delap', N'Centre-Forward', CAST(N'2003-02-08T00:00:00.0000000' AS DateTime2), 19, N'https://media.api-sports.io/football/players/161948.png', 161948, 151095, 27, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (926, N'Omari', N'Hutchinson', N'Right Winger', CAST(N'2003-10-29T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/284428.png', 284428, 177477, 27, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (927, N'Chiedozie', N'Ogbene', N'Right Winger', CAST(N'1997-05-01T00:00:00.0000000' AS DateTime2), 21, N'https://media.api-sports.io/football/players/19365.png', 19365, 4440, 27, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (928, N'George', N'Hirst', N'Centre-Forward', CAST(N'1999-02-15T00:00:00.0000000' AS DateTime2), 27, N'https://media.api-sports.io/football/players/8794.png', 8794, 25606, 27, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (929, N'Jaden', N'Philogene-Bidace', N'Left Winger', CAST(N'2002-02-08T00:00:00.0000000' AS DateTime2), 29, N'https://media.api-sports.io/football/players/138931.png', 138931, 172632, 27, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (930, N'Nathan', N'Broadhead', N'Left Winger', CAST(N'1998-04-05T00:00:00.0000000' AS DateTime2), 33, N'https://media.api-sports.io/football/players/126791.png', 126791, 7853, 27, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (931, N'J.', N'Clarke', N'Attacker', NULL, 47, N'https://media.api-sports.io/football/players/19136.png', 19136, NULL, 27, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (932, N'Wayne', N'Hennessey', N'Goalkeeper', CAST(N'1987-01-24T00:00:00.0000000' AS DateTime2), 13, N'https://media.api-sports.io/football/players/18836.png', 18836, 8137, 28, 38)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (933, N'Matz', N'Sels', N'Goalkeeper', CAST(N'1992-02-26T00:00:00.0000000' AS DateTime2), 26, N'https://media.api-sports.io/football/players/2919.png', 2919, 3643, 28, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (934, N'Carlos', N'Miguel', N'Goalkeeper', CAST(N'1998-10-09T00:00:00.0000000' AS DateTime2), 33, N'https://media.api-sports.io/football/players/10373.png', 10373, 118029, 28, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (935, N'Morato', N'Morato', N'Centre-Back', CAST(N'2001-06-30T00:00:00.0000000' AS DateTime2), 4, N'https://media.api-sports.io/football/players/67943.png', 67943, 119596, 28, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (936, N'Murillo', N'Murillo', N'Centre-Back', CAST(N'2002-07-04T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/363695.png', 363695, 192637, 28, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (937, N'Neco', N'Williams', N'Right-Back', CAST(N'2001-04-13T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/138780.png', 138780, 133765, 28, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (938, N'A.', N'Omobamidele', N'Defender', NULL, NULL, N'https://media.api-sports.io/football/players/147835.png', 147835, NULL, 28, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (939, N'Harry', N'Toffolo', N'Left-Back', CAST(N'1995-08-19T00:00:00.0000000' AS DateTime2), 15, N'https://media.api-sports.io/football/players/17365.png', 17365, 4376, 28, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (940, N'Alex', N'Moreno', N'Left-Back', CAST(N'1993-06-08T00:00:00.0000000' AS DateTime2), 19, N'https://media.api-sports.io/football/players/47547.png', 47547, 32123, 28, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (941, N'Willy', N'Boly', N'Centre-Back', CAST(N'1991-02-03T00:00:00.0000000' AS DateTime2), 30, N'https://media.api-sports.io/football/players/18739.png', 18739, 4086, 28, 34)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (942, N'Nikola', N'Milenković', N'Centre-Back', CAST(N'1997-10-12T00:00:00.0000000' AS DateTime2), 31, N'https://media.api-sports.io/football/players/2817.png', 2817, 1775, 28, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (943, N'Ola', N'Aina', N'Right-Back', CAST(N'1996-10-08T00:00:00.0000000' AS DateTime2), 34, N'https://media.api-sports.io/football/players/2771.png', 2771, 3386, 28, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (944, N'Zach', N'Abbott', N'Centre-Back', CAST(N'2006-05-13T00:00:00.0000000' AS DateTime2), 44, N'https://media.api-sports.io/football/players/329357.png', 329357, 204483, 28, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (945, N'Ibrahim', N'Sangaré', N'Defensive Midfield', CAST(N'1997-12-02T00:00:00.0000000' AS DateTime2), 6, N'https://media.api-sports.io/football/players/22149.png', 22149, 8307, 28, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (946, N'Elliot', N'Anderson', N'Central Midfield', CAST(N'2002-11-06T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/138908.png', 138908, 107330, 28, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (947, N'Morgan', N'Gibbs-White', N'Attacking Midfield', CAST(N'2000-01-27T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/18746.png', 18746, 4091, 28, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (948, N'Nicolás', N'Domínguez', N'Central Midfield', CAST(N'1998-06-28T00:00:00.0000000' AS DateTime2), 16, N'https://media.api-sports.io/football/players/6056.png', 6056, 46346, 28, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (949, N'James', N'Ward-Prowse', N'Central Midfield', CAST(N'1994-11-01T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/2938.png', 2938, 8088, 28, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (950, N'Ryan', N'Yates', N'Central Midfield', CAST(N'1997-11-21T00:00:00.0000000' AS DateTime2), 22, N'https://media.api-sports.io/football/players/19305.png', 19305, 5435, 28, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (951, N'Danilo', N'Oliveira', N'Defensive Midfield', CAST(N'2001-04-29T00:00:00.0000000' AS DateTime2), 28, N'https://media.api-sports.io/football/players/275170.png', 275170, 149704, 28, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (952, N'Taiwo', N'Awoniyi', N'Centre-Forward', CAST(N'1997-08-12T00:00:00.0000000' AS DateTime2), 9, N'https://media.api-sports.io/football/players/8598.png', 8598, 9218, 28, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (953, N'Chris', N'Wood', N'Centre-Forward', CAST(N'1991-12-07T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/18931.png', 18931, 8057, 28, 34)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (954, N'Callum', N'Hudson-Odoi', N'Left Winger', CAST(N'2000-11-07T00:00:00.0000000' AS DateTime2), 14, N'https://media.api-sports.io/football/players/2298.png', 2298, 7816, 28, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (955, N'Eric', N'Moreira', N'Right Winger', CAST(N'2006-05-03T00:00:00.0000000' AS DateTime2), 17, N'https://media.api-sports.io/football/players/380492.png', 380492, 227007, 28, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (956, N'Jota', N'Silva', N'Left Winger', CAST(N'1999-08-01T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/141901.png', 141901, 136334, 28, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (957, N'Anthony', N'Elanga', N'Right Winger', CAST(N'2002-04-27T00:00:00.0000000' AS DateTime2), 21, N'https://media.api-sports.io/football/players/153430.png', 153430, 166376, 28, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (958, N'Ramón', N'Sosa', N'Left Winger', CAST(N'1999-08-31T00:00:00.0000000' AS DateTime2), 24, N'https://media.api-sports.io/football/players/196298.png', 196298, 140647, 28, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (959, N'Emmanuel', N'Dennis', N'Centre-Forward', CAST(N'1997-11-15T00:00:00.0000000' AS DateTime2), 25, N'https://media.api-sports.io/football/players/80.png', 80, 8894, 28, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (960, N'Dean', N'Henderson', N'Goalkeeper', CAST(N'1997-03-12T00:00:00.0000000' AS DateTime2), 1, N'https://media.api-sports.io/football/players/19088.png', 19088, 5457, 29, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (961, N'Matt', N'Turner', N'Goalkeeper', CAST(N'1994-06-24T00:00:00.0000000' AS DateTime2), 30, N'https://media.api-sports.io/football/players/50999.png', 50999, 76936, 29, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (962, N'Remi', N'Matthews', N'Goalkeeper', CAST(N'1994-02-10T00:00:00.0000000' AS DateTime2), 31, N'https://media.api-sports.io/football/players/19684.png', 19684, 6413, 29, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (963, N'Joel', N'Ward', N'Right-Back', CAST(N'1989-10-29T00:00:00.0000000' AS DateTime2), 2, N'https://media.api-sports.io/football/players/18847.png', 18847, 8141, 29, 36)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (964, N'Tyrick', N'Mitchell', N'Left-Back', CAST(N'1999-09-01T00:00:00.0000000' AS DateTime2), 3, N'https://media.api-sports.io/football/players/182201.png', 182201, 137068, 29, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (965, N'Rob', N'Holding', N'Centre-Back', CAST(N'1995-09-20T00:00:00.0000000' AS DateTime2), 4, N'https://media.api-sports.io/football/players/1440.png', 1440, 7784, 29, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (966, N'Maxence', N'Lacroix', N'Centre-Back', CAST(N'2000-04-06T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/20995.png', 20995, 82351, 29, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (967, N'Marc', N'Guéhi', N'Centre-Back', CAST(N'2000-07-13T00:00:00.0000000' AS DateTime2), 6, N'https://media.api-sports.io/football/players/67971.png', 67971, 118489, 29, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (968, N'Daniel', N'Muñoz', N'Right-Back', CAST(N'1996-05-26T00:00:00.0000000' AS DateTime2), 12, N'https://media.api-sports.io/football/players/13736.png', 13736, 22010, 29, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (969, N'Nathaniel', N'Clyne', N'Right-Back', CAST(N'1991-04-05T00:00:00.0000000' AS DateTime2), 17, N'https://media.api-sports.io/football/players/18862.png', 18862, 7863, 29, 34)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (970, N'Chris', N'Richards', N'Centre-Back', CAST(N'2000-03-28T00:00:00.0000000' AS DateTime2), 26, N'https://media.api-sports.io/football/players/126949.png', 126949, 99856, 29, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (971, N'Chadi', N'Riad', N'Centre-Back', CAST(N'2003-06-17T00:00:00.0000000' AS DateTime2), 34, N'https://media.api-sports.io/football/players/278898.png', 278898, 150948, 29, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (972, N'Caleb', N'Kporha', N'Defence', CAST(N'2006-07-15T00:00:00.0000000' AS DateTime2), 58, N'https://media.api-sports.io/football/players/380679.png', 380679, 270859, 29, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (973, N'Jefferson', N'Lerma', N'Defensive Midfield', CAST(N'1994-10-25T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/2490.png', 2490, 3737, 29, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (974, N'Eberechi', N'Eze', N'Attacking Midfield', CAST(N'1998-06-29T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/19586.png', 19586, 4032, 29, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (975, N'Jeffrey', N'Schlupp', N'Left Midfield', CAST(N'1992-12-23T00:00:00.0000000' AS DateTime2), 15, N'https://media.api-sports.io/football/players/18843.png', 18843, 8145, 29, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (976, N'Daichi', N'Kamada', N'Attacking Midfield', CAST(N'1996-08-05T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/2601.png', 2601, 6716, 29, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (977, N'Will', N'Hughes', N'Central Midfield', CAST(N'1995-04-17T00:00:00.0000000' AS DateTime2), 19, N'https://media.api-sports.io/football/players/18806.png', 18806, 8124, 29, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (978, N'Adam', N'Wharton', N'Midfield', CAST(N'2004-02-06T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/288102.png', 288102, 180389, 29, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (979, N'Romain', N'Esse', N'Attacking Midfield', CAST(N'1999-02-06T00:00:00.0000000' AS DateTime2), 21, N'https://media.api-sports.io/football/players/402640.png', 402640, 190550, 29, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (980, N'Cheick', N'Doucouré', N'Defensive Midfield', CAST(N'2000-01-08T00:00:00.0000000' AS DateTime2), 28, N'https://media.api-sports.io/football/players/3339.png', 3339, 74677, 29, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (981, N'Kaden', N'Rodney', N'Defensive Midfield', CAST(N'2004-10-07T00:00:00.0000000' AS DateTime2), 42, N'https://media.api-sports.io/football/players/301295.png', 301295, 187401, 29, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (982, N'Justin', N'Devenny', N'Midfield', CAST(N'2003-10-11T00:00:00.0000000' AS DateTime2), 55, N'https://media.api-sports.io/football/players/286458.png', 286458, 152149, 29, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (983, N'Ismaïla', N'Sarr', N'Right Winger', CAST(N'1998-02-25T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/2218.png', 2218, 3638, 29, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (984, N'Eddie', N'Nketiah', N'Centre-Forward', CAST(N'1999-05-30T00:00:00.0000000' AS DateTime2), 9, N'https://media.api-sports.io/football/players/1468.png', 1468, 7800, 29, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (985, N'Matheus', N'Franca', N'Attacking Midfield', CAST(N'2004-04-01T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/311157.png', 311157, 176241, 29, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (986, N'Jean-Philippe', N'Mateta', N'Centre-Forward', CAST(N'1997-06-28T00:00:00.0000000' AS DateTime2), 14, N'https://media.api-sports.io/football/players/25927.png', 25927, 641, 29, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (987, N'Malcolm', N'Ebiowei', N'Right Winger', CAST(N'2003-09-04T00:00:00.0000000' AS DateTime2), 23, N'https://media.api-sports.io/football/players/328808.png', 328808, 177250, 29, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (988, N'Franco', N'Umeh', N'Offence', CAST(N'2005-01-26T00:00:00.0000000' AS DateTime2), 46, N'https://media.api-sports.io/football/players/340136.png', 340136, 247375, 29, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (989, N'Luke', N'Plange', N'Centre-Forward', CAST(N'2002-11-04T00:00:00.0000000' AS DateTime2), 48, N'https://media.api-sports.io/football/players/284059.png', 284059, 176647, 29, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (990, N'Zach', N'Marsh', N'Offence', CAST(N'2005-10-06T00:00:00.0000000' AS DateTime2), 63, N'https://media.api-sports.io/football/players/363974.png', 363974, 272716, 29, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (991, N'Mark', N'Flekken', N'Goalkeeper', CAST(N'1993-06-13T00:00:00.0000000' AS DateTime2), 1, N'https://media.api-sports.io/football/players/26232.png', 26232, 9923, 30, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (992, N'Hákon', N'Valdimarsson', N'Goalkeeper', CAST(N'2001-10-13T00:00:00.0000000' AS DateTime2), 12, N'https://media.api-sports.io/football/players/61742.png', 61742, 144530, 30, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (993, N'M.', N'Cox', N'Goalkeeper', NULL, 13, N'https://media.api-sports.io/football/players/278041.png', 278041, NULL, 30, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (994, N'J.', N'Eyestone', N'Goalkeeper', NULL, 99, N'https://media.api-sports.io/football/players/389579.png', 389579, NULL, 30, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (995, N'Aaron', N'Hickey', N'Right-Back', CAST(N'2002-01-01T00:00:00.0000000' AS DateTime2), 2, N'https://media.api-sports.io/football/players/44871.png', 44871, 101111, 30, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (996, N'Rico', N'Henry', N'Left-Back', CAST(N'1997-07-08T00:00:00.0000000' AS DateTime2), 3, N'https://media.api-sports.io/football/players/19346.png', 19346, 4426, 30, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (997, N'Sepp', N'Berg', N'Centre-Back', CAST(N'2001-12-20T00:00:00.0000000' AS DateTime2), 4, N'https://media.api-sports.io/football/players/36922.png', 36922, 7720, 30, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (998, N'Ethan', N'Pinnock', N'Centre-Back', CAST(N'1993-05-29T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/19789.png', 19789, 4334, 30, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (999, N'Ben', N'Mee', N'Centre-Back', CAST(N'1989-09-21T00:00:00.0000000' AS DateTime2), 16, N'https://media.api-sports.io/football/players/18917.png', 18917, 167115, 30, 36)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1000, N'Kristoffer', N'Ajer', N'Centre-Back', CAST(N'1998-04-17T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/1119.png', 1119, 16068, 30, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1001, N'Nathan', N'Collins', N'Centre-Back', CAST(N'2001-04-30T00:00:00.0000000' AS DateTime2), 22, N'https://media.api-sports.io/football/players/19495.png', 19495, 115642, 30, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1002, N'M.', N'Roerslev', N'Defender', NULL, 30, N'https://media.api-sports.io/football/players/15745.png', 15745, NULL, 30, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1003, N'Kim', N'Ji-Soo', N'Defender', NULL, 36, N'https://media.api-sports.io/football/players/356237.png', 356237, NULL, 30, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1004, N'Benjamin', N'Arthur', N'Centre-Back', CAST(N'2005-10-09T00:00:00.0000000' AS DateTime2), 43, N'https://media.api-sports.io/football/players/430827.png', 430827, 249409, 30, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1005, N'Michael', N'Kayode', N'Right-Back', CAST(N'2004-07-10T00:00:00.0000000' AS DateTime2), NULL, N'https://media.api-sports.io/football/players/342022.png', 342022, 204348, 30, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1006, N'Christian', N'Nørgaard', N'Defensive Midfield', CAST(N'1994-03-10T00:00:00.0000000' AS DateTime2), 6, N'https://media.api-sports.io/football/players/30407.png', 30407, 24102, 30, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1007, N'Kevin', N'Schade', N'Left Winger', CAST(N'2001-11-27T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/178077.png', 178077, 123286, 30, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1008, N'Mathias', N'Jensen', N'Central Midfield', CAST(N'1996-01-01T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/47438.png', 47438, 10194, 30, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1009, N'Josh', N'Dasilva', N'Central Midfield', CAST(N'1998-10-23T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/19362.png', 19362, 7796, 30, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1010, N'Yoane', N'Wissa', N'Centre-Forward', CAST(N'1996-09-03T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/20649.png', 20649, 612, 30, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1011, N'Fabio', N'Carvalho', N'Attacking Midfield', CAST(N'2002-08-30T00:00:00.0000000' AS DateTime2), 14, N'https://media.api-sports.io/football/players/153066.png', 153066, 151119, 30, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1012, N'Yegor', N'Yarmolyuk', N'Attacking Midfield', CAST(N'2004-03-01T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/263538.png', 263538, 204421, 30, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1013, N'Bryan', N'Mbeumo', N'Right Winger', CAST(N'1999-08-07T00:00:00.0000000' AS DateTime2), 19, N'https://media.api-sports.io/football/players/20589.png', 20589, 8626, 30, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1014, N'Mikkel', N'Damsgaard', N'Left Winger', CAST(N'2000-07-03T00:00:00.0000000' AS DateTime2), 24, N'https://media.api-sports.io/football/players/15908.png', 15908, 24238, 30, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1015, N'Yunus', N'Konak', N'Defensive Midfield', NULL, 26, N'https://media.api-sports.io/football/players/430734.png', 430734, 214532, 30, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1016, N'Vitaly', N'Janelt', N'Defensive Midfield', CAST(N'1998-05-10T00:00:00.0000000' AS DateTime2), 27, N'https://media.api-sports.io/football/players/25073.png', 25073, 10000, 30, 27)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1017, N'Ryan', N'Trevitt', N'Central Midfield', CAST(N'2003-03-12T00:00:00.0000000' AS DateTime2), 28, N'https://media.api-sports.io/football/players/382925.png', 382925, 188818, 30, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1018, N'Edmond-Paris', N'Maghoma', N'Central Midfield', CAST(N'2001-05-08T00:00:00.0000000' AS DateTime2), 32, N'https://media.api-sports.io/football/players/162075.png', 162075, 138015, 30, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1019, N'Thiago', N'Rodrigues', N'Offence', CAST(N'2001-06-26T00:00:00.0000000' AS DateTime2), 9, N'https://media.api-sports.io/football/players/196156.png', 196156, 175994, 30, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1020, N'Keane', N'Lewis-Potter', N'Left Winger', CAST(N'2001-02-22T00:00:00.0000000' AS DateTime2), 23, N'https://media.api-sports.io/football/players/106725.png', 106725, 101910, 30, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1021, N'Gustavo', N'Gomes', N'Left Winger', CAST(N'2005-11-20T00:00:00.0000000' AS DateTime2), 39, N'https://media.api-sports.io/football/players/427736.png', 427736, 213296, 30, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1022, N'Iwan', N'Morgan', N'Offence', CAST(N'2006-01-29T00:00:00.0000000' AS DateTime2), 40, N'https://media.api-sports.io/football/players/400938.png', 400938, 263324, 30, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1023, N'Łukasz', N'Fabiański', N'Goalkeeper', CAST(N'1985-04-18T00:00:00.0000000' AS DateTime2), 1, N'https://media.api-sports.io/football/players/2997.png', 2997, 3526, 31, 40)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1024, N'Wesley', N'Foderingham', N'Goalkeeper', CAST(N'1991-01-14T00:00:00.0000000' AS DateTime2), 21, N'https://media.api-sports.io/football/players/1736.png', 1736, 34907, 31, 34)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1025, N'Alphonse', N'Aréola', N'Goalkeeper', CAST(N'1993-02-27T00:00:00.0000000' AS DateTime2), 23, N'https://media.api-sports.io/football/players/253.png', 253, 3357, 31, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1026, N'Aaron', N'Cresswell', N'Left-Back', CAST(N'1989-12-15T00:00:00.0000000' AS DateTime2), 3, N'https://media.api-sports.io/football/players/18813.png', 18813, 8201, 31, 36)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1027, N'Vladimir', N'Coufal', N'Right-Back', CAST(N'1992-08-22T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/1231.png', 1231, 62631, 31, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1028, N'Konstantinos', N'Mavropanos', N'Centre-Back', CAST(N'1997-12-11T00:00:00.0000000' AS DateTime2), 15, N'https://media.api-sports.io/football/players/1445.png', 1445, 7789, 31, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1029, N'Jean-Clair', N'Todibo', N'Centre-Back', CAST(N'1999-12-30T00:00:00.0000000' AS DateTime2), 25, N'https://media.api-sports.io/football/players/138.png', 138, 79903, 31, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1030, N'Max', N'Kilman', N'Centre-Back', CAST(N'1997-05-23T00:00:00.0000000' AS DateTime2), 26, N'https://media.api-sports.io/football/players/18744.png', 18744, 25376, 31, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1031, N'Aaron', N'Wan-Bissaka', N'Right-Back', CAST(N'1997-11-26T00:00:00.0000000' AS DateTime2), 29, N'https://media.api-sports.io/football/players/18846.png', 18846, 8158, 31, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1032, N'Emerson', N'Emerson', N'Left-Back', CAST(N'1994-08-03T00:00:00.0000000' AS DateTime2), 33, N'https://media.api-sports.io/football/players/2284.png', 2284, 7809, 31, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1033, N'Kaelan', N'Casey', N'Centre-Back', CAST(N'2004-10-28T00:00:00.0000000' AS DateTime2), 42, N'https://media.api-sports.io/football/players/288116.png', 288116, 209125, 31, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1034, N'Oliver', N'Scarles', N'Left-Back', CAST(N'2005-12-12T00:00:00.0000000' AS DateTime2), 57, N'https://media.api-sports.io/football/players/327730.png', 327730, 188900, 31, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1035, N'Ezra', N'Mayers', N'Defence', CAST(N'2007-01-16T00:00:00.0000000' AS DateTime2), 63, N'https://media.api-sports.io/football/players/405530.png', 405530, 273157, 31, 18)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1036, N'Carlos', N'Soler', N'Central Midfield', CAST(N'1997-01-02T00:00:00.0000000' AS DateTime2), 4, N'https://media.api-sports.io/football/players/930.png', 930, 33148, 31, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1037, N'Lucas', N'Paquetá', N'Attacking Midfield', CAST(N'1997-08-27T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/1646.png', 1646, 1543, 31, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1038, N'Mohammed', N'Kudus', N'Right Winger', CAST(N'2000-08-02T00:00:00.0000000' AS DateTime2), 14, N'https://media.api-sports.io/football/players/15911.png', 15911, 77399, 31, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1039, N'Edson', N'Álvarez', N'Defensive Midfield', CAST(N'1997-10-24T00:00:00.0000000' AS DateTime2), 19, N'https://media.api-sports.io/football/players/2869.png', 2869, 3293, 31, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1040, N'Guido', N'Rodríguez', N'Defensive Midfield', CAST(N'1994-04-12T00:00:00.0000000' AS DateTime2), 24, N'https://media.api-sports.io/football/players/2476.png', 2476, 39104, 31, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1041, N'Tomáš', N'Souček', N'Defensive Midfield', CAST(N'1995-02-27T00:00:00.0000000' AS DateTime2), 28, N'https://media.api-sports.io/football/players/1243.png', 1243, 15742, 31, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1042, N'Andy', N'Irving', N'Central Midfield', CAST(N'2000-05-13T00:00:00.0000000' AS DateTime2), 39, N'https://media.api-sports.io/football/players/68466.png', 68466, 170617, 31, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1043, N'Lewis', N'Orford', N'Central Midfield', CAST(N'2006-02-18T00:00:00.0000000' AS DateTime2), 61, N'https://media.api-sports.io/football/players/288118.png', 288118, 209130, 31, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1044, N'Crysencio', N'Summerville', N'Left Winger', CAST(N'2001-10-30T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/37724.png', 37724, 102193, 31, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1045, N'Michail', N'Antonio', N'Centre-Forward', CAST(N'1990-03-28T00:00:00.0000000' AS DateTime2), 9, N'https://media.api-sports.io/football/players/18819.png', 18819, 8212, 31, 35)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1046, N'Niclas', N'Füllkrug', N'Centre-Forward', CAST(N'1993-02-09T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/25391.png', 25391, 304, 31, 32)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1047, N'Luis', N'Guilherme', N'Right Winger', CAST(N'2006-02-09T00:00:00.0000000' AS DateTime2), 17, N'https://media.api-sports.io/football/players/404574.png', 404574, 192653, 31, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1048, N'Danny', N'Ings', N'Centre-Forward', CAST(N'1992-07-23T00:00:00.0000000' AS DateTime2), 18, N'https://media.api-sports.io/football/players/18955.png', 18955, 7875, 31, 33)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1049, N'Jarrod', N'Bowen', N'Right Winger', CAST(N'1996-01-01T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/19428.png', 19428, 11414, 31, 29)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1050, N'Kepa', N'Arrizabalaga', N'Goalkeeper', CAST(N'1994-10-03T00:00:00.0000000' AS DateTime2), 13, N'https://media.api-sports.io/football/players/2273.png', 2273, 3189, 32, 31)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1051, N'Will', N'Dennis', N'Goalkeeper', CAST(N'2000-07-10T00:00:00.0000000' AS DateTime2), 40, N'https://media.api-sports.io/football/players/151756.png', 151756, 131127, 32, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1052, N'Marcus', N'Tavernier', N'Left Midfield', CAST(N'1999-03-22T00:00:00.0000000' AS DateTime2), 42, N'https://media.api-sports.io/football/players/18860.png', 18860, 6396, 32, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1053, N'Callan', N'McKenna', N'Goalkeeper', CAST(N'2006-12-22T00:00:00.0000000' AS DateTime2), 46, N'https://media.api-sports.io/football/players/394710.png', 394710, 246451, 32, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1054, N'Dean', N'Huijsen', N'Centre-Back', CAST(N'2005-04-14T00:00:00.0000000' AS DateTime2), 2, N'https://media.api-sports.io/football/players/361497.png', 361497, 191727, 32, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1055, N'Milos', N'Kerkez', N'Left-Back', CAST(N'2003-11-07T00:00:00.0000000' AS DateTime2), 3, N'https://media.api-sports.io/football/players/206254.png', 206254, 171141, 32, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1056, N'Marcos', N'Senesi', N'Centre-Back', CAST(N'1997-05-10T00:00:00.0000000' AS DateTime2), 5, N'https://media.api-sports.io/football/players/6610.png', 6610, 46046, 32, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1057, N'Adam', N'Smith', N'Right-Back', CAST(N'1991-04-29T00:00:00.0000000' AS DateTime2), 15, N'https://media.api-sports.io/football/players/18869.png', 18869, 8231, 32, 34)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1058, N'Julio', N'Soler', N'Defence', CAST(N'2005-02-16T00:00:00.0000000' AS DateTime2), 20, N'https://media.api-sports.io/football/players/363333.png', 363333, 183583, 32, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1059, N'Julian', N'Araujo', N'Right-Back', CAST(N'2001-08-13T00:00:00.0000000' AS DateTime2), 22, N'https://media.api-sports.io/football/players/51051.png', 51051, 113335, 32, 24)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1060, N'James', N'Hill', N'Centre-Back', CAST(N'2002-01-10T00:00:00.0000000' AS DateTime2), 23, N'https://media.api-sports.io/football/players/20093.png', 20093, 82145, 32, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1061, N'Illia', N'Zabarnyi', N'Centre-Back', CAST(N'2002-09-01T00:00:00.0000000' AS DateTime2), 27, N'https://media.api-sports.io/football/players/161671.png', 161671, 143573, 32, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1062, N'Matai', N'Akinmboni', N'Defence', CAST(N'2006-10-17T00:00:00.0000000' AS DateTime2), 45, N'https://media.api-sports.io/football/players/359942.png', 359942, 187546, 32, 19)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1063, N'Maxwell', N'Kinsey-Wellings', N'Centre-Back', CAST(N'2005-02-02T00:00:00.0000000' AS DateTime2), 48, N'https://media.api-sports.io/football/players/382170.png', 382170, 191449, 32, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1064, N'Archie', N'Harris', N'Defence', CAST(N'2004-12-27T00:00:00.0000000' AS DateTime2), 50, N'https://media.api-sports.io/football/players/449224.png', 449224, 273732, 32, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1065, N'Lewis', N'Cook', N'Central Midfield', CAST(N'1997-02-03T00:00:00.0000000' AS DateTime2), 4, N'https://media.api-sports.io/football/players/18872.png', 18872, 3327, 32, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1066, N'David', N'Brooks', N'Right Winger', CAST(N'1997-07-08T00:00:00.0000000' AS DateTime2), 7, N'https://media.api-sports.io/football/players/18870.png', 18870, 4321, 32, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1067, N'Alex', N'Scott', N'Central Midfield', CAST(N'2003-08-21T00:00:00.0000000' AS DateTime2), 8, N'https://media.api-sports.io/football/players/304853.png', 304853, 161088, 32, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1068, N'Ryan', N'Christie', N'Central Midfield', CAST(N'1995-02-22T00:00:00.0000000' AS DateTime2), 10, N'https://media.api-sports.io/football/players/1125.png', 1125, 34495, 32, 30)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1069, N'Tyler', N'Adams', N'Defensive Midfield', CAST(N'1999-02-14T00:00:00.0000000' AS DateTime2), 12, N'https://media.api-sports.io/football/players/1150.png', 1150, 77596, 32, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1070, N'M.', N'Tavernier', N'Midfielder', NULL, 16, N'https://media.api-sports.io/football/players/19245.png', 19245, NULL, 32, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1071, N'Ben', N'Winterburn', N'Midfield', NULL, 47, N'https://media.api-sports.io/football/players/402432.png', 402432, 273152, 32, 21)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1072, N'Evanilson', N'Evanilson', N'Centre-Forward', CAST(N'1999-10-06T00:00:00.0000000' AS DateTime2), 9, N'https://media.api-sports.io/football/players/152856.png', 152856, 131260, 32, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1073, N'Dango', N'Ouattara', N'Left Winger', CAST(N'2002-02-11T00:00:00.0000000' AS DateTime2), 11, N'https://media.api-sports.io/football/players/284797.png', 284797, 177305, 32, 23)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1074, N'Luis', N'Sinisterra', N'Left Winger', CAST(N'1999-06-17T00:00:00.0000000' AS DateTime2), 17, N'https://media.api-sports.io/football/players/37161.png', 37161, 22040, 32, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1075, N'Justin', N'Kluivert', N'Left Winger', CAST(N'1999-05-05T00:00:00.0000000' AS DateTime2), 19, N'https://media.api-sports.io/football/players/792.png', 792, 7561, 32, 26)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1076, N'Daniel', N'Jebbison', N'Centre-Forward', CAST(N'2003-07-11T00:00:00.0000000' AS DateTime2), 21, N'https://media.api-sports.io/football/players/296458.png', 296458, 169191, 32, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1077, N'Antoine', N'Semenyo', N'Right Winger', CAST(N'2000-01-07T00:00:00.0000000' AS DateTime2), 24, N'https://media.api-sports.io/football/players/19281.png', 19281, 4417, 32, 25)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1078, N'Enes', N'Ünal', N'Centre-Forward', CAST(N'1997-05-10T00:00:00.0000000' AS DateTime2), 26, N'https://media.api-sports.io/football/players/47499.png', 47499, 33132, 32, 28)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1079, N'Zain', N'Silcott-Duberry', N'Midfield', CAST(N'2005-07-09T00:00:00.0000000' AS DateTime2), 43, N'https://media.api-sports.io/football/players/298060.png', 298060, 274246, 32, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1080, N'Daniel', N'Adu-Adjei', N'Centre-Forward', CAST(N'2005-06-21T00:00:00.0000000' AS DateTime2), 44, N'https://media.api-sports.io/football/players/382160.png', 382160, 190508, 32, 20)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1081, N'Dominic', N'Sadi', N'Left Winger', CAST(N'2003-09-02T00:00:00.0000000' AS DateTime2), 49, N'https://media.api-sports.io/football/players/334725.png', 334725, 209103, 32, 22)
GO
INSERT [dbo].[Players] ([Id], [FirstName], [Surname], [Position], [DateOfBirth], [Number], [ProfilePic], [ApiFootballId], [FootballDataId], [TeamId], [Age]) VALUES (1082, N'Remy', N'Rees-Dottin', N'Offence', CAST(N'2006-03-06T00:00:00.0000000' AS DateTime2), 51, N'https://media.api-sports.io/football/players/402434.png', 402434, 273757, 32, 19)
GO
SET IDENTITY_INSERT [dbo].[Players] OFF
GO
SET IDENTITY_INSERT [dbo].[TeamNicknames] ON 
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (26, N'The Gunners', 14)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (27, N'The Villa', 15)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (28, N'The Blues', 16)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (29, N'The Toffees', 17)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (30, N'The Cottagers', 18)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (31, N'The Reds', 19)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (32, N'The Citizens', 20)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (33, N'The Red Devils', 21)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (34, N'The Magpies', 22)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (35, N'Spurs', 23)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (36, N'Wolves', 24)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (37, N'The Foxes', 25)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (38, N'The Saints', 26)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (39, N'The Tractor Boys', 27)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (40, N'The Reds', 28)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (41, N'The Eagles', 29)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (42, N'The Bees', 30)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (43, N'The Hammers', 31)
GO
INSERT [dbo].[TeamNicknames] ([Id], [Name], [TeamId]) VALUES (44, N'The Cherries', 32)
GO
SET IDENTITY_INSERT [dbo].[TeamNicknames] OFF
GO
SET IDENTITY_INSERT [dbo].[Teams] ON 
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (14, N'Arsenal FC', N'Arsenal', N'http://www.arsenal.com/', N'https://crests.football-data.org/57.png', 57, 42, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (15, N'Aston Villa FC', N'Aston Villa', N'http://www.avfc.co.uk/', N'https://crests.football-data.org/58.png', 58, 66, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (16, N'Chelsea FC', N'Chelsea', N'http://www.chelseafc.com/', N'https://crests.football-data.org/61.png', 61, 49, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (17, N'Everton FC', N'Everton', N'http://www.evertonfc.com/', N'https://crests.football-data.org/62.png', 62, 45, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (18, N'Fulham FC', N'Fulham', N'http://www.fulhamfc.com/', N'https://crests.football-data.org/63.png', 63, 36, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (19, N'Liverpool FC', N'Liverpool', N'http://www.liverpoolfc.tv/', N'https://crests.football-data.org/64.png', 64, 40, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (20, N'Manchester City FC', N'Man City', N'https://www.mancity.com/', N'https://crests.football-data.org/65.png', 65, 50, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (21, N'Manchester United FC', N'Man United', N'http://www.manutd.com/', N'https://crests.football-data.org/66.png', 66, 33, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (22, N'Newcastle United FC', N'Newcastle', N'http://www.nufc.co.uk/', N'https://crests.football-data.org/67.png', 67, 34, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (23, N'Tottenham Hotspur FC', N'Tottenham', N'http://www.tottenhamhotspur.com/', N'https://crests.football-data.org/73.png', 73, 47, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (24, N'Wolverhampton Wanderers FC', N'Wolverhampton', N'http://www.wolves.co.uk/', N'https://crests.football-data.org/76.png', 76, 39, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (25, N'Leicester City FC', N'Leicester City', N'http://www.lcfc.com/', N'https://crests.football-data.org/338.png', 338, 46, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (26, N'Southampton FC', N'Southampton', N'http://www.saintsfc.co.uk/', N'https://crests.football-data.org/340.png', 340, 41, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (27, N'Ipswich Town FC', N'Ipswich Town', N'http://www.itfc.co.uk/', N'https://crests.football-data.org/349.png', 349, 57, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (28, N'Nottingham Forest FC', N'Nottingham', N'http://www.nottinghamforest.co.uk/', N'https://crests.football-data.org/351.png', 351, 65, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (29, N'Crystal Palace FC', N'Crystal Palace', N'http://www.cpfc.co.uk/', N'https://crests.football-data.org/354.png', 354, 52, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (30, N'Brentford FC', N'Brentford', N'http://www.brentfordfc.co.uk/', N'https://crests.football-data.org/402.png', 402, 55, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (31, N'West Ham United FC', N'West Ham', N'http://www.whufc.com/', N'https://crests.football-data.org/563.png', 563, 48, 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [ShortName], [Website], [EmblemPictureUri], [FootballDataId], [ApiFootballId], [LeagueId]) VALUES (32, N'AFC Bournemouth', N'Bournemouth', N'http://www.afcb.co.uk/', N'https://crests.football-data.org/bournemouth.png', 1044, 35, 1)
GO
SET IDENTITY_INSERT [dbo].[Teams] OFF
GO
ALTER TABLE [dbo].[Leagues] ADD  DEFAULT (N'') FOR [Code]
GO
ALTER TABLE [dbo].[Leagues] ADD  DEFAULT ((0)) FOR [Season]
GO
ALTER TABLE [dbo].[Players]  WITH CHECK ADD  CONSTRAINT [FK_Players_Teams_TeamId] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Players] CHECK CONSTRAINT [FK_Players_Teams_TeamId]
GO
ALTER TABLE [dbo].[TeamNicknames]  WITH CHECK ADD  CONSTRAINT [FK_TeamNicknames_Teams_TeamId] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeamNicknames] CHECK CONSTRAINT [FK_TeamNicknames_Teams_TeamId]
GO
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_Teams_Leagues_LeagueId] FOREIGN KEY([LeagueId])
REFERENCES [dbo].[Leagues] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK_Teams_Leagues_LeagueId]
GO
