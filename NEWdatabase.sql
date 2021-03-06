USE TravelBlog
GO

INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170802180209_Initial', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170802234206_Initial', N'1.0.0-rtm-21431')
SET IDENTITY_INSERT [dbo].[Experiences] ON 

INSERT [dbo].[Experiences] ([ExperienceId], [Drink], [Eat], [Image], [LocationId], [See], [Title]) VALUES (6, NULL, NULL, N'http://www.sondoongcave.org/images/hang-son-doong-cave-vietnam2.jpg', NULL, NULL, N'Son Doong Cave')
SET IDENTITY_INSERT [dbo].[Experiences] OFF
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([LocationId], [Currency], [FlavorText], [Image], [Language], [Name], [Population]) VALUES (1, N'USD', N'This is the new York town in America called New York', N'https://www.gentlegiant.com/wp-content/uploads/2015/06/New-York.jpg', N'English', N'New York', N'8.1 million')
INSERT [dbo].[Locations] ([LocationId], [Currency], [FlavorText], [Image], [Language], [Name], [Population]) VALUES (2, N'VND', N'This is where the movie King Kong was shot', N'http://www.quangbinhtourism.vn/Portals/0/Ditichlichsu/quang_binh_quan_500_01.jpg', N'VIetnamese', N'Quang Binh', N'863,000')
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[People] ON 

INSERT [dbo].[People] ([PersonId], [Bio], [LocationId], [Name]) VALUES (1, N'asd', 1, N'sad')
SET IDENTITY_INSERT [dbo].[People] OFF
/****** Object:  Index [IX_Experiences_LocationId]    Script Date: 8/2/2017 4:49:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_Experiences_LocationId] ON [dbo].[Experiences]
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_People_LocationId]    Script Date: 8/2/2017 4:49:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_People_LocationId] ON [dbo].[People]
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Regions_LocationId]    Script Date: 8/2/2017 4:49:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_Regions_LocationId] ON [dbo].[Regions]
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Experiences]  WITH CHECK ADD  CONSTRAINT [FK_Experiences_Locations_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([LocationId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Experiences] CHECK CONSTRAINT [FK_Experiences_Locations_LocationId]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_People_Locations_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([LocationId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_People_Locations_LocationId]
GO
ALTER TABLE [dbo].[Regions]  WITH CHECK ADD  CONSTRAINT [FK_Regions_Locations_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([LocationId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Regions] CHECK CONSTRAINT [FK_Regions_Locations_LocationId]
GO
USE [master]
GO
ALTER DATABASE [TravelBlog] SET  READ_WRITE 
GO
