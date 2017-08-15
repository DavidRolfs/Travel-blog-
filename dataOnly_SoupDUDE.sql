USE [TravelBlog]
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'cb3798a7-ca0b-4634-9709-579187d5a04b', 0, N'60210c92-4cbd-4e13-8835-70e64e94c875', NULL, 0, 1, NULL, NULL, N'DERP', N'AQAAAAEAACcQAAAAEKDR1gTJox6R/XMLhkjvoWwfGJCDFYFoFaiGOlrx0ZM7/Rv5kvZn4y+kx7Yb+dlT7g==', NULL, 0, N'452e8393-b252-444c-8de6-0bdd47e5835d', 0, N'derp')
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([LocationId], [Currency], [FlavorText], [Image], [Language], [Name], [Population]) VALUES (1, N'USD', N'This is the new York town in America called New York', N'https://www.gentlegiant.com/wp-content/uploads/2015/06/New-York.jpg', N'English', N'New York', N'8.1 million')
INSERT [dbo].[Locations] ([LocationId], [Currency], [FlavorText], [Image], [Language], [Name], [Population]) VALUES (2, N'VND', N'This is where the movie King Kong was shot', N'http://www.quangbinhtourism.vn/Portals/0/Ditichlichsu/quang_binh_quan_500_01.jpg', N'VIetnamese', N'Quang Binh', N'863,000')
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[Experiences] ON 

INSERT [dbo].[Experiences] ([ExperienceId], [Drink], [Eat], [Image], [LocationId], [See], [Title]) VALUES (7, N'Ouzo', N'Soup Dude', N'http://cdn.shopify.com/s/files/1/0228/9021/products/fh_dudesoup_image_grande.jpg?v=1492022411', 1, N'People', N'HI')
INSERT [dbo].[Experiences] ([ExperienceId], [Drink], [Eat], [Image], [LocationId], [See], [Title]) VALUES (8, N'Soup', N'Rice', N'http://food.fnr.sndimg.com/content/dam/images/food/fullset/2009/12/13/0/FNM_011009-W-N-Dinners-011_s4x3.jpg.rend.hgtvcom.616.462.suffix/1371591445997.jpeg', 2, N'More Soup', N'Yay soup')
SET IDENTITY_INSERT [dbo].[Experiences] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([CommentId], [CommentBody], [ExperienceId], [UserId]) VALUES (1, N'moar soup
', 7, N'cb3798a7-ca0b-4634-9709-579187d5a04b')
SET IDENTITY_INSERT [dbo].[Comments] OFF
SET IDENTITY_INSERT [dbo].[People] ON 

INSERT [dbo].[People] ([PersonId], [Bio], [LocationId], [Name]) VALUES (1, N'asd', 1, N'sad')
SET IDENTITY_INSERT [dbo].[People] OFF

SET IDENTITY_INSERT [dbo].[Suggestions] ON 

INSERT [dbo].[Suggestions] ([SuggestionId], [Author], [Description], [Place]) VALUES (1, NULL, NULL, N'Fukken France')
SET IDENTITY_INSERT [dbo].[Suggestions] OFF
