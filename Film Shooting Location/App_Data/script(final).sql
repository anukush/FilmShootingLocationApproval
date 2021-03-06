USE [filmshooting]
GO
/****** Object:  Table [dbo].[applicationforward]    Script Date: 03/31/18 3:59:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[applicationforward](
	[applicationid] [varchar](500) NOT NULL,
	[stakeholderid] [varchar](500) NOT NULL,
	[statusid] [varchar](500) NULL,
	[locationid] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[applicationstatus]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[applicationstatus](
	[applicationid] [varchar](50) NOT NULL,
	[userid] [varchar](50) NULL,
	[statusid] [int] NULL,
	[remarks] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datesavail]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datesavail](
	[unavaildates] [varchar](50) NOT NULL,
	[loacationid] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datesstatus]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datesstatus](
	[date] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[filmmaker]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filmmaker](
	[applicationid] [varchar](500) NOT NULL,
	[name] [varchar](100) NULL,
	[phoneno] [varchar](10) NULL,
	[email] [varchar](50) NULL,
	[address] [varchar](250) NULL,
	[type] [varchar](25) NULL,
	[experianceprofile] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[forwarddates]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[forwarddates](
	[forwardid] [varchar](50) NULL,
	[dateofforward] [datetime] NULL,
	[dateofreceival] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[forwardstatus]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[forwardstatus](
	[applicationid] [varchar](50) NOT NULL,
	[forwardid] [varchar](50) NULL,
	[statusid] [int] NULL,
	[stakeholderid] [varchar](50) NULL,
	[locationid] [varchar](50) NULL,
	[remark] [varchar](50) NULL,
	[fee] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[location]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[location](
	[locationid] [varchar](50) NOT NULL,
	[locationname] [varchar](200) NOT NULL,
	[locationdescription] [varchar](max) NULL,
	[stakeholderid] [varchar](max) NOT NULL,
	[latitude] [varchar](20) NULL,
	[longitude] [varchar](20) NULL,
	[keywords] [varchar](max) NULL,
	[imgpath] [varchar](max) NULL,
 CONSTRAINT [PK__Location__30646B0EE335FD0C] PRIMARY KEY CLUSTERED 
(
	[locationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie](
	[applicationid] [varchar](500) NOT NULL,
	[moviename] [varchar](200) NULL,
	[productionhouse] [varchar](250) NULL,
	[language] [varchar](50) NULL,
	[movietype] [varchar](10) NULL,
	[actor] [varchar](200) NULL,
	[actress] [varchar](200) NULL,
	[noofcast] [int] NULL,
	[totalnooffilmunit] [int] NULL,
	[dateofcommencement] [datetime] NULL,
	[dateofend] [datetime] NULL,
	[stayplace] [varchar](50) NULL,
	[releasedate] [datetime] NULL,
	[script] [varchar](500) NULL,
	[certificateIMPA] [varchar](500) NULL,
	[certificateWIFPA] [varchar](500) NULL,
	[userid] [varchar](50) NULL,
	[dateofapplication] [varchar](200) NULL,
	[formcompleted] [bit] NULL,
	[scriptparameter] [varchar](max) NULL,
 CONSTRAINT [PK_movie] PRIMARY KEY CLUSTERED 
(
	[applicationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[requestedshotinglocations]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[requestedshotinglocations](
	[locationid] [varchar](50) NULL,
	[applicationid] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[starttime] [varchar](25) NULL,
	[endtime] [varchar](25) NULL,
	[scenescript] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resetpasswordrequest]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resetpasswordrequest](
	[resetid] [varchar](50) NOT NULL,
	[emailid] [varchar](200) NULL,
	[userid] [varchar](50) NULL,
	[requesttime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scriptkeyworddetails]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scriptkeyworddetails](
	[keywordid] [int] NOT NULL,
	[keywordname] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[keywordid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stakeholder]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stakeholder](
	[stakeholderID] [varchar](50) NOT NULL,
	[stakeholdername] [varchar](200) NOT NULL,
	[stakeholderdescription] [varchar](max) NULL,
	[email] [varchar](50) NULL,
	[phoneno] [varchar](50) NULL,
	[address] [varchar](500) NULL,
 CONSTRAINT [PK__StakeHol__988F0C07F8AEABD8] PRIMARY KEY CLUSTERED 
(
	[stakeholderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statusdetails]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statusdetails](
	[statusid] [varchar](50) NULL,
	[statusname] [varchar](50) NULL,
	[statusdescription] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transactiondetails]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transactiondetails](
	[applicationid] [varchar](50) NOT NULL,
	[transactionid] [varchar](50) NULL,
	[transactiontime] [varchar](50) NULL,
	[amount] [decimal](18, 0) NULL,
	[completed] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[applicationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unit]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unit](
	[unitID] [int] NOT NULL,
	[unitname] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[unitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[userid] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[name] [varchar](100) NULL,
	[phoneno] [varchar](10) NULL,
	[gender] [varchar](10) NULL,
	[dateofbirth] [varchar](50) NULL,
	[address] [varchar](500) NULL,
	[adhaarid] [varchar](12) NULL,
	[password] [varchar](50) NULL,
	[role] [varchar](50) NULL,
	[lastlogindate] [datetime] NULL,
	[lastpasswordchangedate] [datetime] NULL,
	[creationdate] [datetime] NULL,
	[modificationdate] [datetime] NULL,
	[active] [bit] NOT NULL,
	[stakeholderid] [varchar](50) NULL,
 CONSTRAINT [PK_userdetails] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userrole]    Script Date: 03/31/18 3:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userrole](
	[roleid] [varchar](50) NOT NULL,
	[rolename] [varchar](200) NOT NULL,
	[roledescription] [varchar](200) NULL,
 CONSTRAINT [PK__tmp_ms_x__FAC09B40C6CFE056] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[applicationforward] ([applicationid], [stakeholderid], [statusid], [locationid]) VALUES (N'', N'FS319263', NULL, NULL)
INSERT [dbo].[applicationforward] ([applicationid], [stakeholderid], [statusid], [locationid]) VALUES (N'1b1a5f14-f3fb-4f68-9fd3-1c26e471ed38, 91e51d6f-b7e9-4188-9e7a-ab73e9553134, b573a41e-1aa3-4cad-a21a-9f2e02a64675', N'FS3121639', NULL, NULL)
INSERT [dbo].[applicationforward] ([applicationid], [stakeholderid], [statusid], [locationid]) VALUES (N'6118d54c-bdb2-4912-a298-58a7f7085161', N'', NULL, NULL)
INSERT [dbo].[applicationforward] ([applicationid], [stakeholderid], [statusid], [locationid]) VALUES (N'6118d54c-bdb2-4912-a298-58a7f7085161, 6c7f6d45-09f6-4e80-86aa-ceb3fa039523', N'', NULL, NULL)
INSERT [dbo].[applicationforward] ([applicationid], [stakeholderid], [statusid], [locationid]) VALUES (N'7892e0c9-a1c0-4b01-8aa6-786c51e2fcbb', N'', NULL, NULL)
INSERT [dbo].[applicationforward] ([applicationid], [stakeholderid], [statusid], [locationid]) VALUES (N'b573a41e-1aa3-4cad-a21a-9f2e02a64675', N'FS3191963', NULL, NULL)
INSERT [dbo].[applicationforward] ([applicationid], [stakeholderid], [statusid], [locationid]) VALUES (N'Delhi Police', N'', NULL, NULL)
INSERT [dbo].[applicationforward] ([applicationid], [stakeholderid], [statusid], [locationid]) VALUES (N'NDMC', N'', NULL, NULL)
INSERT [dbo].[applicationforward] ([applicationid], [stakeholderid], [statusid], [locationid]) VALUES (N'NDMC, Delhi Police', N'', NULL, NULL)
INSERT [dbo].[applicationforward] ([applicationid], [stakeholderid], [statusid], [locationid]) VALUES (N'Northern Railway, Delhi Police, Sport Authority Of India', N'', NULL, NULL)
INSERT [dbo].[applicationforward] ([applicationid], [stakeholderid], [statusid], [locationid]) VALUES (N'91e51d6f-b7e9-4188-9e7a-ab73e9553134, ba3c4716-e7e4-4b58-94c5-dad2535ee0de', N'FS31152363', NULL, NULL)
INSERT [dbo].[applicationstatus] ([applicationid], [userid], [statusid], [remarks]) VALUES (N'FS31152363', N'58a17015-8e5c-4c26-bf35-e2659baf0ba8', 2, NULL)
INSERT [dbo].[applicationstatus] ([applicationid], [userid], [statusid], [remarks]) VALUES (N'FS30221472', N'123456', 2, NULL)
INSERT [dbo].[applicationstatus] ([applicationid], [userid], [statusid], [remarks]) VALUES (N'FS30221472', N'123456', 2, NULL)
INSERT [dbo].[applicationstatus] ([applicationid], [userid], [statusid], [remarks]) VALUES (N'FS31152363', N'bcc578b9-7d75-4e20-baed-cf4e50c85e2b', 1, NULL)
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'02/26/18', N'18d6d66f-185b-4e42-bfd8-8b56c652a42e')
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'02/27/18', N'18d6d66f-185b-4e42-bfd8-8b56c652a42e')
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'02/28/18', N'18d6d66f-185b-4e42-bfd8-8b56c652a42e')
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'03/14/18', N'18d6d66f-185b-4e42-bfd8-8b56c652a42e')
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'03/21/18', N'18d6d66f-185b-4e42-bfd8-8b56c652a42e')
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'03/28/18', N'18d6d66f-185b-4e42-bfd8-8b56c652a42e')
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'03/15/18', N'18d6d66f-185b-4e42-bfd8-8b56c652a42e')
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'03/09/18', N'18d6d66f-185b-4e42-bfd8-8b56c652a42e')
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'02/27/18', N'50684108-a3dd-4477-9d22-cbffe6001b41')
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'03/06/18', N'50684108-a3dd-4477-9d22-cbffe6001b41')
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'03/13/18', N'50684108-a3dd-4477-9d22-cbffe6001b41')
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'03/20/18', N'50684108-a3dd-4477-9d22-cbffe6001b41')
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'03/27/18', N'50684108-a3dd-4477-9d22-cbffe6001b41')
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'02/27/18', N'5d4747fe-03b1-4952-ba84-6d3c4265d3a6')
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'02/28/18', N'5d4747fe-03b1-4952-ba84-6d3c4265d3a6')
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'03/01/18', N'5d4747fe-03b1-4952-ba84-6d3c4265d3a6')
INSERT [dbo].[datesavail] ([unavaildates], [loacationid]) VALUES (N'03/02/18', N'5d4747fe-03b1-4952-ba84-6d3c4265d3a6')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS301712941', N'k', N'7896541230', N'n@gmail.com', N'l', N'Producer', N'm')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS301712941', N'm', N'7896541230', N'nskdj@gmail.com', N'm', N'Director', N'hsdj')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS301712941', N'k', N'7896541230', N'm@gmil.com', N'k', N'LocalProducer', N'shdk')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS301731952', N'k', N'7896541230', N'n@gmail.com', N'h', N'Producer', N'h')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS301731952', N'h', N'7896541230', N'm@gmsil.com', N'k', N'Director', N'm')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS301731952', N'm', N'7896541230', N'm@gmail.com', N'm', N'LocalProducer', N'hs')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS301736317', N'n', N'7896541230', N'n@gmail.com', N'k', N'Producer', N'nj')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS301736317', N'm', N'7896541230', N'n@gmail.com', N'l', N'Director', N'm')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS301736317', N'm', N'7896541230', N'n@gmail.com', N'm', N'LocalProducer', N'kjsdh')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'38fc8d19-797f-4a26-b553-226d78633587', N'fghjk', N'9876543210', N'anu.anurag75@gmai.com', N'xfghjkl', N'Producer', N'dfghjbknm,')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'38fc8d19-797f-4a26-b553-226d78633587', N'fggjj', N'9876543210', N'anu.anurag75@gmai.com', N'dytuhj', N'Director', N'ddfghjkl;')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'38fc8d19-797f-4a26-b553-226d78633587', N'Anurag Kushwaha', N'9876543210', N'anu.anurag75@gmai.com', N'f-32 jagjeevan nagar kumharpura,gwalior', N'LocalProducer', N'sdfgkjl;')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30223271', N'k', N'7896541230', N'n@gmail.com', N'k', N'Producer', N'h')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30223271', N'k', N'7896541230', N'l@gmail.com', N'k', N'Director', N'k')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30223271', N'l', N'7896541230', N'm@gmil.com', N'l', N'LocalProducer', N'k')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS3121190', N'khgkhg', N'8959175777', N'hjfh', N'kjbjkbkj', N'Producer', N'kjghjgiuyhj')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS3121190', N'hyjfyih', N'8959175777', N'hgjh@gmail.com', N'hgvhjk', N'Director', N'iufyuf')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS3121190', N'iuguig', N'8959715777', N'aga@g.com', N'uyfyi', N'LocalProducer', N'jfyjhgf')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS3121639', N'kjgjkg', N'8959175777', N'gsh@ga.com', N'jkgjkgkj', N'Producer', N'lkhklhlk')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS3121639', N'goiugol', N'8959175777', N'gsh@ga.com', N'jgig', N'Director', N'hgkgh')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS3121639', N'kjgfkug', N'8959175777', N'gsh@ga.com', N'bkjghkjhgk', N'LocalProducer', N'yfufiut')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS319263', N'k', N'7896541230', N'n@gmail.com', N'k', N'Producer', N'k')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS319263', N'k', N'9874563210', N'm@gmsil.com', N'k', N'Director', N'kl')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS319263', N'l', N'9874563210', N'm@gmil.com', N'l', N'LocalProducer', N'kl')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS3191963', N'jj', N'9874563210', N'hj@h.com', N'j', N'Producer', N'k')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS3191963', N'k', N'9874563210', N'm@gmsil.com', N'k', N'Director', N'j')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS3191963', N'k', N'9874563210', N'm@gmil.com', N'k', N'LocalProducer', N'hjh')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS31141882', N'k', N'7896541230', N'n@gmail.com', N'k', N'Producer', N'h')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS31141882', N'n', N'7896541230', N'n@k.com', N'l', N'Director', N'h')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS31141882', N'h', N'7896541230', N'm@h.com', N'h', N'LocalProducer', N'k')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS31151263', N'aA', N'9876543210', N'email@rmail.com', N'A', N'Producer', N'sdhfjgk')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS31151263', N'chgadh', N'9876543210', N'email@email.com', N'jfjhgk', N'Director', N'hyguhij')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS31151263', N'dfgh', N'1234567890', N'ema@email.com', N'fdghj', N'LocalProducer', N'fghjk')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS31151463', N'as', N'7894561230', N'dsf@gmail.com', N'sda', N'Producer', N'esrt')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS31151463', N'dfdgh', N'7894561235', N'dsfgd@gmail.com', N'fsddg', N'Director', N'dfs')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS31151563', N'as', N'7894561230', N'dsf@gmail.com', N'sda', N'Producer', N'esrt')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS31151563', N'dfdgh', N'7894561235', N'dsfgd@gmail.com', N'fsddg', N'Director', N'dfs')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS31152363', N'producer', N'9876543210', N'email@email.com', N'asdff', N'Producer', N'a')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS31152363', N'a', N'9111111111', N'a@b.in', N'a', N'Director', N'a')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS31152363', N'a', N'899999', N'c@c.i', N'a', N'LocalProducer', N'c')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'6ee3e809-fe4a-43a0-be33-1b23934bdeb0', N'n', N'7896542310', N'n@gmail.com', N'n', N'Producer', N'd')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'6ee3e809-fe4a-43a0-be33-1b23934bdeb0', N'n', N'7896541230', N'n@gmail.com', N'n', N'Director', N'm')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'6ee3e809-fe4a-43a0-be33-1b23934bdeb0', N'd', N'7896541230', N'm@gmil.com', N'd', N'LocalProducer', N'n')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'aed912cc-bc68-4115-ae0a-57baa76ae53f', N'k', N'7896541230', N'n@gmail.com', N'k', N'Producer', N'jk')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'aed912cc-bc68-4115-ae0a-57baa76ae53f', N'k', N'7896541230', N'n@gmail.com', N'k', N'Director', N'j')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'aed912cc-bc68-4115-ae0a-57baa76ae53f', N'm', N'7896541230', N'n@gmail.com', N'm', N'LocalProducer', N'j')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30214095', N'l', N'9874563210', N'n@gmail.com', N'k', N'Producer', N'hg')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30214095', N'j', N'7896541230', N'n@gmail.com', N'j', N'Director', N'j')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30214095', N'j', N'7896541230', N'm@gmil.comn', N'j', N'LocalProducer', N'n')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30221131', N'l', N'7896541230', N'n@gmail.com', N'l', N'Producer', N'l')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30221131', N'l', N'7896541230', N'n@gmail.com', N'l', N'Director', N'q')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30221131', N'l', N'7896541230', N'l@gmail.com', N'l', N'LocalProducer', N'j')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30221754', N'j', N'7896541230', N'n@gmail.com', N'k', N'Producer', N'ms')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30221754', N'l', N'7896541230', N'n@gmail.com', N'l', N'Director', N's')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30221754', N'h', N'7896541230', N'm@gmil.com', N'h', N'LocalProducer', N's')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS3113765', N'j', N'7896541230', N'n@gmail.com', N'j', N'Producer', N'l')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS3113765', N'k', N'7896541230', N'l@gmail.com', N'k', N'Director', N'l')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS3113765', N'l', N'7896541230', N'n@gmail.com', N'l', N'LocalProducer', N'o')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30221472', N'k', N'7896541230', N'n@gmail.com', N'j', N'Producer', N'n')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30221472', N'p', N'7896541230', N'l@gmail.com', N'p', N'Director', N'j')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30221472', N'j', N'7896541230', N'm@gmil.com', N'j', N'LocalProducer', N's')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30222150', N'p', N'7896541230', N'n@gmail.com', N'p', N'Producer', N'k')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30222150', N'k', N'9874563210', N'm@gmsil.com', N'k', N'Director', N'j')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30222150', N'l', N'7896541230', N'm@gmil.com', N'l', N'LocalProducer', N'k')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30222644', N'j', N'7896541230', N'n@gmail.com', N'm', N'Producer', N'd')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30222644', N'k', N'7896541230', N'l@gmail.com', N'k', N'Director', N'l')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30222644', N'l', N'8796541230', N'm@gmil.com', N'l', N'LocalProducer', N'k')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30222836', N'k', N'7896541230', N'n@gmail.com', N'K', N'Producer', N'k')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30222836', N'l', N'7896541230', N'l@gmail.com', N'l', N'Director', N'k')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS30222836', N'N', N'7896541230', N'M', N'r;fghjkl;', N'LocalProducer', N'P')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS31141563', N'ssd', N'7894563214', N'as@gmail.com', N'dsf', N'Producer', N'er')
INSERT [dbo].[filmmaker] ([applicationid], [name], [phoneno], [email], [address], [type], [experianceprofile]) VALUES (N'FS31141563', N'ert', N'7894152985', N'dsf@gmail.com', N'fg', N'Director', N'sdf')
INSERT [dbo].[forwardstatus] ([applicationid], [forwardid], [statusid], [stakeholderid], [locationid], [remark], [fee]) VALUES (N'FS31152363', N'af1b5e15-53f0-4cc5-8ae4-3e77facd0f85', 1, N'f8b8014b-84f7-440d-b280-eaf193ef2ab2', N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N' ', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[forwardstatus] ([applicationid], [forwardid], [statusid], [stakeholderid], [locationid], [remark], [fee]) VALUES (N'FS31152363', N'f3686741-c102-4273-b713-34a8af2bafbd', 1, N'56fc21d1-4ed9-4df2-a240-2c0fd7b9cb37', N'a51c24b8-f276-424f-bda2-53549c645016', N' ', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[forwardstatus] ([applicationid], [forwardid], [statusid], [stakeholderid], [locationid], [remark], [fee]) VALUES (N'FS31152363', N'bf4ef3a7-ea3e-4ce9-b8e9-c162859e0d15', 1, N' 59585918-de05-4d2b-a076-287c9234b4a1', N'a51c24b8-f276-424f-bda2-53549c645016', N' ', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[forwardstatus] ([applicationid], [forwardid], [statusid], [stakeholderid], [locationid], [remark], [fee]) VALUES (N'FS31152363', N'd7f50fdb-97ae-43da-970e-1152112fa0fb', 1, N' b573a41e-1aa3-4cad-a21a-9f2e02a64675', N'a51c24b8-f276-424f-bda2-53549c645016', N' ', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[forwardstatus] ([applicationid], [forwardid], [statusid], [stakeholderid], [locationid], [remark], [fee]) VALUES (N'FS31152363', N'e60134f2-cabc-4a62-a94d-2002ed4202c5', 1, N'56fc21d1-4ed9-4df2-a240-2c0fd7b9cb37', N'Select', N' ', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[forwardstatus] ([applicationid], [forwardid], [statusid], [stakeholderid], [locationid], [remark], [fee]) VALUES (N'FS31152363', N'f96dc0f8-625e-48f2-9172-a92c5a6f4288', 1, N' 59585918-de05-4d2b-a076-287c9234b4a1', N'Select', N' ', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[forwardstatus] ([applicationid], [forwardid], [statusid], [stakeholderid], [locationid], [remark], [fee]) VALUES (N'FS31152363', N'c9fb5532-8cef-4e07-9ec4-6c0156a78f7f', 1, N' b573a41e-1aa3-4cad-a21a-9f2e02a64675', N'Select', N' ', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[forwardstatus] ([applicationid], [forwardid], [statusid], [stakeholderid], [locationid], [remark], [fee]) VALUES (N'FS31152363', N'83d9404f-2e03-480a-9f1c-b3390dc06d51', 1, N'56fc21d1-4ed9-4df2-a240-2c0fd7b9cb37', N'Select', N' ', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[forwardstatus] ([applicationid], [forwardid], [statusid], [stakeholderid], [locationid], [remark], [fee]) VALUES (N'FS31152363', N'df185acb-dcaa-48d0-9f78-7628bdedcd7e', 1, N' 59585918-de05-4d2b-a076-287c9234b4a1', N'Select', N' ', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[forwardstatus] ([applicationid], [forwardid], [statusid], [stakeholderid], [locationid], [remark], [fee]) VALUES (N'FS31152363', N'6ecb59d2-0f61-4be9-9f70-7f29d8ab2b28', 1, N' b573a41e-1aa3-4cad-a21a-9f2e02a64675', N'Select', N' ', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[location] ([locationid], [locationname], [locationdescription], [stakeholderid], [latitude], [longitude], [keywords], [imgpath]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'India Gate', N'The India Gate (originally called the All India War Memorial) is a war memorial located astride the Rajpath, on the eastern edge of the "ceremonial axis" of New Delhi, India, formerly called Kingsway.

India Gate is a memorial to 70,000 soldiers of the Indian Army who died in the period 1914–21 in the First World War, in France, Flanders, Mesopotamia, Persia, East Africa, Gallipoli and elsewhere in the Near and the Far East, and the Third Anglo-Afghan War. 13,300 servicemen''s names, including some soldiers and officers from the United Kingdom, are inscribed on the gate.', N'b573a41e-1aa3-4cad-a21a-9f2e02a64675, f8b8014b-84f7-440d-b280-eaf193ef2ab2', N'28.6129', N'77.2295', NULL, N'indiagate.jpg')
INSERT [dbo].[location] ([locationid], [locationname], [locationdescription], [stakeholderid], [latitude], [longitude], [keywords], [imgpath]) VALUES (N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N'Connaught Place', N'Connaught Place is one of the largest financial, commercial and business centres in New Delhi, India. It is often abbreviated as CP and houses the headquarters of several noted Indian firms. The main commercial area of the new city, New Delhi, occupies a place of pride in the city and are counted among the top heritage structures in New Delhi. It was developed as a showpiece of Lutyens'' Delhi with a prominent Central Business District.

Named after Prince Arthur, 1st Duke of Connaught and Strathearn, construction work began in 1929 and was completed in 1933. A metro railway station built under it is named Rajiv Chowk (after Rajiv Gandhi).', N'f8b8014b-84f7-440d-b280-eaf193ef2ab2', N'28.6315', N'77.2167', NULL, N'ConnaughtPlace.jpg')
INSERT [dbo].[location] ([locationid], [locationname], [locationdescription], [stakeholderid], [latitude], [longitude], [keywords], [imgpath]) VALUES (N'5d4747fe-03b1-4952-ba84-6d3c4265d3a6', N'Jantar Mantar', N'The Jantar Mantar is an equinoctial sundial, consisting a gigantic triangular gnomon with the hypotenuse parallel to the Earth''s axis. On either side of the gnomon is a quadrant of a circle, parallel to the plane of the equator. The instrument is intended to measure the time of day, correct to half a second and declination of the Sun and the other heavenly bodies.

There are five Jantar Mantar monuments in India, of which the largest is in Jaipur which features many instruments along with the world''s largest stone sundial. The Vrihat Samrat yantra is a sundial that can give the local time to an accuracy of 2 seconds.[2] It is a UNESCO World Heritage Site.', N'1b1a5f14-f3fb-4f68-9fd3-1c26e471ed38, 1b7e8fac-773e-44c9-ae22-932069fbb883', N'28.6271', N'77.2166', NULL, N'jantar mantar.JPG')
INSERT [dbo].[location] ([locationid], [locationname], [locationdescription], [stakeholderid], [latitude], [longitude], [keywords], [imgpath]) VALUES (N'8688e5e7-02cc-4df8-a7d1-4b48f78b7d55', N'Red Fort', N'The Red Fort (Hindi: ??? ?????, Urdu: ??? ??????) is a historic fort in the city of Delhi in India. It was the main residence of the emperors of the Mughal dynasty for nearly 200 years, until 1856. It is located in the center of Delhi and houses a number of museums. In addition to accommodating the emperors and their households, it was the ceremonial and political center of the Mughal state and the setting for events critically impacting the region.', N'qwe, bbb', N'28.6562', N'77.2410', N'', N'redfort.jpg')
INSERT [dbo].[location] ([locationid], [locationname], [locationdescription], [stakeholderid], [latitude], [longitude], [keywords], [imgpath]) VALUES (N'a51c24b8-f276-424f-bda2-53549c645016', N'Qutb Minar', N'The qutub minar is a minorate that forms of the Qutub Complex, a UNESCO World Site Heritage Site.', N'56fc21d1-4ed9-4df2-a240-2c0fd7b9cb37, 59585918-de05-4d2b-a076-287c9234b4a1, b573a41e-1aa3-4cad-a21a-9f2e02a64675', N'28.5244 ', N'77.1855', NULL, N'qutub.jpg')
INSERT [dbo].[location] ([locationid], [locationname], [locationdescription], [stakeholderid], [latitude], [longitude], [keywords], [imgpath]) VALUES (N'fa882406-c673-4da5-9849-7a255c828304', N'Chandni Chowk', N'The Chandni Chowk (Moonlight Square) is one of the oldest and busiest markets in Old Delhi, India. Chandni Chowk is located close to Old Delhi Railway Station. The Red Fort monument is located within the market. It was built in the 17th century by Mughal Emperor of India Shah Jahan and designed by his daughter Jahanara. The market was once divided by canals (now closed) to reflect moonlight and remains one of India''s largest wholesale markets.', N'f8b8014b-84f7-440d-b280-eaf193ef2ab2', N'28.6506', N'77.2303', NULL, N'chandni.jpg')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'38fc8d19-797f-4a26-b553-226d78633587', N'dfghj', N'dfghjk', N'dsfghjk', N'U', N'dfghjk', N'dfghjk', 5, 6, CAST(N'2018-03-21T00:00:00.000' AS DateTime), CAST(N'2018-03-24T00:00:00.000' AS DateTime), N'dsfghj', CAST(N'2018-03-21T00:00:00.000' AS DateTime), N'C:\Users\Anurag Kushwaha\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\38fc8d19-797f-4a26-b553-226d78633587Script', N'C:\Users\Anurag Kushwaha\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\38fc8d19-797f-4a26-b553-226d78633587IMPA', N'C:\Users\Anurag Kushwaha\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\38fc8d19-797f-4a26-b553-226d78633587WIFPA', N'123456', N'03/30/18 7:40:33 PM', 0, N'')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'6ee3e809-fe4a-43a0-be33-1b23934bdeb0', N'd', N'd', N'd', N'U', N'd', N'd', 5, 5, CAST(N'2018-03-08T00:00:00.000' AS DateTime), CAST(N'2018-03-10T00:00:00.000' AS DateTime), N'k', CAST(N'2018-03-24T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\6ee3e809-fe4a-43a0-be33-1b23934bdeb0Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\6ee3e809-fe4a-43a0-be33-1b23934bdeb0IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\6ee3e809-fe4a-43a0-be33-1b23934bdeb0WIFPA.jpg', N'123456', N'3/30/2018 7:39:41 PM', 0, N'')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'aed912cc-bc68-4115-ae0a-57baa76ae53f', N'h', N'h', N'h', N'U', N'h', N'h', 8, 8, CAST(N'2018-03-10T00:00:00.000' AS DateTime), CAST(N'2018-03-11T00:00:00.000' AS DateTime), N'm', CAST(N'2018-03-13T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\aed912cc-bc68-4115-ae0a-57baa76ae53fScript.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\aed912cc-bc68-4115-ae0a-57baa76ae53fIMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\aed912cc-bc68-4115-ae0a-57baa76ae53fWIFPA.jpg', N'123456', N'3/30/2018 9:32:25 PM', 0, N'')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS301712941', N'gG', N'g', N'g', N'U', N'g', N'g', 8, 8, CAST(N'2018-03-17T00:00:00.000' AS DateTime), CAST(N'2018-03-18T00:00:00.000' AS DateTime), N'm', CAST(N'2018-03-19T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\UploadedFiles\FS301712941Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\UploadedFiles\FS301712941IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\UploadedFiles\FS301712941WIFPA.jpg', N'123456', N'3/30/2018 5:12:47 PM', 0, N'')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS301731952', N'q', N'e', N'e', N'U', N'e', N'e', 8, 8, CAST(N'2018-03-23T00:00:00.000' AS DateTime), CAST(N'2018-03-27T00:00:00.000' AS DateTime), N'm', CAST(N'2018-03-29T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS301731952Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS301731952IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS301731952WIFPA.jpg', N'123456', N'3/30/2018 5:31:48 PM', 0, N'Romantic, Thriller')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS301736317', N'k', N'k', N'k', N'U', N'k', N'k', 8, 8, CAST(N'2018-03-09T00:00:00.000' AS DateTime), CAST(N'2018-03-14T00:00:00.000' AS DateTime), N'm', CAST(N'2018-03-20T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS301736317Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS301736317IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS301736317WIFPA.jpg', N'123456', N'3/30/2018 5:36:51 PM', 0, N'')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS30214095', N'k', N'k', N'k', N'U', N'k', N'k', 8, 8, CAST(N'2018-03-01T00:00:00.000' AS DateTime), CAST(N'2018-03-03T00:00:00.000' AS DateTime), N'm', CAST(N'2018-03-14T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30214095Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30214095IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30214095WIFPA.jpg', N'123456', N'3/30/2018 9:40:21 PM', 0, N'')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS30221131', N'j', N'j', N'j', N'U', N'j', N'j', 7, 7, CAST(N'2018-03-07T00:00:00.000' AS DateTime), CAST(N'2018-03-08T00:00:00.000' AS DateTime), N'n', CAST(N'2018-03-30T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30221131Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30221131IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30221131WIFPA.jpg', N'123456', N'3/30/2018 10:11:05 PM', 0, N'')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS30221472', N'jJ', N'l', N'l', N'U', N'k', N'k', 2, 2, CAST(N'2018-03-03T00:00:00.000' AS DateTime), CAST(N'2018-03-10T00:00:00.000' AS DateTime), N'm', CAST(N'2018-03-13T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30221472Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30221472IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30221472WIFPA.jpg', N'123456', N'3/30/2018 10:14:17 PM', 1, N'')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS30221754', N'j', N'j', N'j', N'U', N'j', N'j', 2, 2, CAST(N'2018-03-17T00:00:00.000' AS DateTime), CAST(N'2018-03-18T00:00:00.000' AS DateTime), N'm', CAST(N'2018-03-22T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30221754Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30221754IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30221754WIFPA.jpg', N'123456', N'3/30/2018 10:18:00 PM', 0, N'')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS30222150', N'k', N'k', N'k', N'U', N'k', N'k', 8, 8, CAST(N'2018-03-01T00:00:00.000' AS DateTime), CAST(N'2018-03-03T00:00:00.000' AS DateTime), N'k', CAST(N'2018-03-20T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30222150Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30222150IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30222150WIFPA.jpg', N'123456', N'3/30/2018 10:21:58 PM', 0, N'')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS30222644', N'k', N'k', N'k', N'U', N'k', N'k', 8, 8, CAST(N'2018-03-03T00:00:00.000' AS DateTime), CAST(N'2018-03-04T00:00:00.000' AS DateTime), N'm', CAST(N'2018-03-05T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30222644Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30222644IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30222644WIFPA.jpg', N'123456', N'3/30/2018 10:26:08 PM', 0, N'')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS30222836', N'k', N'K', N'K', N'U', N'K', N'K', 8, 8, CAST(N'2018-03-23T00:00:00.000' AS DateTime), CAST(N'2018-03-24T00:00:00.000' AS DateTime), N'm', CAST(N'2018-03-09T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30222836Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30222836IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS30222836WIFPA.jpg', N'123456', N'3/30/2018 10:28:51 PM', 0, N'')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS30223271', N'j', N'j', N'j', N'U', N'j', N'j', 8, 8, CAST(N'2018-03-09T00:00:00.000' AS DateTime), CAST(N'2018-03-10T00:00:00.000' AS DateTime), N'm', CAST(N'2018-03-20T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS30223271Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS30223271IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS30223271WIFPA.jpg', N'123456', N'3/30/2018 10:33:01 PM', 0, N'Patriotic, Romantic')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS3113765', N'j', N'j', N'j', N'U', N'k', N'k', 8, 8, CAST(N'2018-03-21T00:00:00.000' AS DateTime), CAST(N'2018-03-23T00:00:00.000' AS DateTime), N'm', CAST(N'2018-03-21T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS3113765Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS3113765IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS3113765WIFPA.jpg', N'123456', N'3/31/2018 1:37:06 AM', 0, N'Patriotic, Romantic')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS31141563', N'a', N'a', N'd', N'U', N'dsf', N'dsf', 12, 8, CAST(N'2001-01-01T00:00:00.000' AS DateTime), CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'delhi', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'C:\Hack\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS31141563Script.html', N'C:\Hack\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS31141563IMPA.html', N'C:\Hack\Film Shooting Location\Film Shooting Location\Applicant\Uploads\FS31141563WIFPA.html', N'123456', N'31-Mar-18 2:15:24 PM', 0, N'')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS31141882', N'k', N'k', N'k', N'U', N'k', N'k', 8, 8, CAST(N'2018-03-03T00:00:00.000' AS DateTime), CAST(N'2018-03-07T00:00:00.000' AS DateTime), N'kj', CAST(N'2018-03-17T00:00:00.000' AS DateTime), N'C:\Users\Anurag Kushwaha\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS31141882Script.jpg', N'C:\Users\Anurag Kushwaha\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS31141882IMPA.jpg', N'C:\Users\Anurag Kushwaha\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS31141882WIFPA.jpg', N'58a17015-8e5c-4c26-bf35-e2659baf0ba8', N'03/31/18 2:18:18 PM', 0, N'Crowdy, Market')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS31151263', N'a', N'a', N'a', N'U', N'a', N'a', 4, 4, CAST(N'2018-03-13T00:00:00.000' AS DateTime), CAST(N'2018-03-20T00:00:00.000' AS DateTime), N'gfhjk', CAST(N'2018-03-13T00:00:00.000' AS DateTime), N'C:\Users\Anurag Kushwaha\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS31151263Script.jpg', N'C:\Users\Anurag Kushwaha\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS31151263IMPA.jpg', N'C:\Users\Anurag Kushwaha\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS31151263WIFPA.jpg', N'58a17015-8e5c-4c26-bf35-e2659baf0ba8', N'03/31/18 3:12:08 PM', 0, N'Romantic')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS31151463', N'i', N'i', N'hindi', N'U', N'prabhas', N'ritika', 12, 12, CAST(N'2018-06-03T00:00:00.000' AS DateTime), CAST(N'2018-07-03T00:00:00.000' AS DateTime), N'zdfg', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'C:\Hack\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS31151463Script', N'C:\Hack\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS31151463IMPA', N'C:\Hack\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS31151463WIFPA', N'58a17015-8e5c-4c26-bf35-e2659baf0ba8', N'31-Mar-18 3:14:17 PM', 0, N'Patriotic, Romantic')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS31151563', N'i', N'i', N'hindi', N'U', N'prabhas', N'ritika', 12, 12, CAST(N'2018-06-03T00:00:00.000' AS DateTime), CAST(N'2018-08-03T00:00:00.000' AS DateTime), N'zdfg', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'C:\Hack\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS31151563Script', N'C:\Hack\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS31151563IMPA', N'C:\Hack\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS31151563WIFPA', N'58a17015-8e5c-4c26-bf35-e2659baf0ba8', N'31-Mar-18 3:15:05 PM', 0, N'Patriotic, Romantic')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS31152363', N'Film1', N'Banner', N'Hindi', N'U/A', N'Actor', N'actresss', 50, 50, CAST(N'2018-04-04T00:00:00.000' AS DateTime), CAST(N'2018-04-07T00:00:00.000' AS DateTime), N'a', CAST(N'2018-04-07T00:00:00.000' AS DateTime), N'C:\Users\Anurag Kushwaha\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS31152363Script.jpg', N'C:\Users\Anurag Kushwaha\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS31152363IMPA.jpg', N'C:\Users\Anurag Kushwaha\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS31152363WIFPA.jpg', N'58a17015-8e5c-4c26-bf35-e2659baf0ba8', N'03/31/18 3:23:23 PM', 1, N'Patriotic')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS3121190', N'anuj', N'hj', N'giuhg', N'U', N'kjgbjkg', N'kh', 88, 99, CAST(N'2018-03-16T00:00:00.000' AS DateTime), CAST(N'2018-03-24T00:00:00.000' AS DateTime), N'khfjyf', CAST(N'2018-03-16T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS3121190Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS3121190IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS3121190WIFPA.jpg', N'123456', N'3/31/2018 2:11:23 AM', 0, N'Crowdy')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS3121639', N'hjg', N'hk', N'hjvhhj', N'U', N'hjfvhjvfh', N'hjfvjh', 55, 55, CAST(N'2018-03-02T00:00:00.000' AS DateTime), CAST(N'2018-03-09T00:00:00.000' AS DateTime), N'hjfj', CAST(N'2018-03-17T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS3121639Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS3121639IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS3121639WIFPA.jpg', N'123456', N'3/31/2018 2:16:57 AM', 0, N'Market')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS3191963', N'k', N'k', N'k', N'U', N'k', N'k', 8, 8, CAST(N'2018-03-10T00:00:00.000' AS DateTime), CAST(N'2018-03-12T00:00:00.000' AS DateTime), N'jk', CAST(N'2018-03-24T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS3191963Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS3191963IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS3191963WIFPA.jpg', N'7b2b084f-0a81-4724-b5a3-ca9699db77b7', N'3/31/2018 9:19:56 AM', 0, N'Patriotic, Crowdy, Comedy')
INSERT [dbo].[movie] ([applicationid], [moviename], [productionhouse], [language], [movietype], [actor], [actress], [noofcast], [totalnooffilmunit], [dateofcommencement], [dateofend], [stayplace], [releasedate], [script], [certificateIMPA], [certificateWIFPA], [userid], [dateofapplication], [formcompleted], [scriptparameter]) VALUES (N'FS319263', N'm', N'm', N'm', N'U', N'm', N'm', 9, 9, CAST(N'2018-03-10T00:00:00.000' AS DateTime), CAST(N'2018-03-15T00:00:00.000' AS DateTime), N'h', CAST(N'2018-03-06T00:00:00.000' AS DateTime), N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS319263Script.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS319263IMPA.jpg', N'C:\Users\Nakul\source\Workspaces\Single Window Clerance Film Shooting Location\Film Shooting Location\Film Shooting Location\Applicant\Resources\Uploads\FS319263WIFPA.jpg', N'7b2b084f-0a81-4724-b5a3-ca9699db77b7', N'3/31/2018 9:02:50 AM', 0, N'Patriotic, Crowdy')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'00274898-5133-4cdc-8d8a-41ecd0868e5d', N'aed912cc-bc68-4115-ae0a-57baa76ae53f', N'3/10/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'00274898-5133-4cdc-8d8a-41ecd0868e5d', N'aed912cc-bc68-4115-ae0a-57baa76ae53f', N'3/11/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'00274898-5133-4cdc-8d8a-41ecd0868e5d', N'FS30214095', N'3/1/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS30214095', N'3/2/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS30214095', N'3/3/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS30221131', N'3/7/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS30221131', N'3/8/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS30221472', N'3/3/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'FS3113765', N'3/21/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N'FS3113765', N'3/22/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'a51c24b8-f276-424f-bda2-53549c645016', N'FS3113765', N'3/23/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS319263', N'3/10/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS319263', N'3/11/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS319263', N'3/12/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS319263', N'3/13/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS319263', N'3/14/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS319263', N'3/15/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'FS3191963', N'3/10/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS3191963', N'3/11/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS3191963', N'3/12/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'', N'01/01/01', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'', N'01/01/01', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'8688e5e7-02cc-4df8-a7d1-4b48f78b7d55', N'', N'01/01/01', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'8688e5e7-02cc-4df8-a7d1-4b48f78b7d55', N'', N'01/01/01', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'8688e5e7-02cc-4df8-a7d1-4b48f78b7d55', N'', N'01/01/01', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'5d4747fe-03b1-4952-ba84-6d3c4265d3a6', N'', N'01/01/01', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N'', N'01/01/01', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'', N'01/01/01', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'', N'01-Jan-01', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'', N'01-Jan-01', N'12:00', N'2:00', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'', N'01-Jan-01', N'12:00', N'02:00', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'', N'01-Jan-01', N'12:00', N'02:00', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'', N'01-Jan-01', N'12', N'02', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'', N'03-Jun-18', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'', N'03-Jun-18', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'', N'03-Jun-18', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'', N'03-Jun-18', N'12:00', N'02:00', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N'', N'03-Jun-18', N'12:00', N'02:00', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N'', N'03-Jun-18', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N'FS31152363', N'04/04/18', N'0900', N'1200', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'a51c24b8-f276-424f-bda2-53549c645016', N'FS31152363', N'04/05/18', N'11:24', N'2300', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS31152363', N'04/06/18', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS31152363', N'04/07/18', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS30221472', N'3/4/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS30221472', N'3/5/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS30221472', N'3/6/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS30221472', N'3/7/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS30221472', N'3/8/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS30221472', N'3/9/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS30221472', N'3/10/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N'FS3121190', N'3/16/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'FS3121190', N'3/17/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'FS3121190', N'3/18/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'fa882406-c673-4da5-9849-7a255c828304', N'FS3121190', N'3/19/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS3121190', N'3/20/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS3121190', N'3/21/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS3121190', N'3/22/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS3121190', N'3/23/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS3121190', N'3/24/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'', N'1/1/0001', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'FS31151263', N'03/13/18', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'5d4747fe-03b1-4952-ba84-6d3c4265d3a6', N'FS31151263', N'03/14/18', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N'FS31151263', N'03/15/18', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'5d4747fe-03b1-4952-ba84-6d3c4265d3a6', N'FS31151263', N'03/16/18', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'FS31151263', N'03/17/18', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'5d4747fe-03b1-4952-ba84-6d3c4265d3a6', N'FS31151263', N'03/18/18', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N'FS31151263', N'03/19/18', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N'FS31151263', N'03/20/18', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'FS31151263', N'03/13/18', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'5d4747fe-03b1-4952-ba84-6d3c4265d3a6', N'FS31151263', N'03/14/18', N'12:10', N'12:20.', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N'FS31151263', N'03/15/18', N'12:10', N'12:10', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'5d4747fe-03b1-4952-ba84-6d3c4265d3a6', N'FS31151263', N'03/16/18', N'12:10', N'12:10', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'FS31151263', N'03/17/18', N'12:10', N'12:10', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'5d4747fe-03b1-4952-ba84-6d3c4265d3a6', N'FS31151263', N'03/18/18', N'12:10', N'12:10', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N'FS31151263', N'03/19/18', N'12:10', N'12:10', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N'FS31151263', N'03/20/18', N'12:10', N'12:10', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'FS31151263', N'03/13/18', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'5d4747fe-03b1-4952-ba84-6d3c4265d3a6', N'FS31151263', N'03/14/18', N'12:10', N'12:20.', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N'FS31151263', N'03/15/18', N'12:10', N'12:20', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'5d4747fe-03b1-4952-ba84-6d3c4265d3a6', N'FS31151263', N'03/16/18', N'12:10', N'12:20', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'FS31151263', N'03/17/18', N'12:10', N'12:20', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'5d4747fe-03b1-4952-ba84-6d3c4265d3a6', N'FS31151263', N'03/18/18', N'12:10', N'12:20', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N'FS31151263', N'03/19/18', N'12:10', N'12:20', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'2825e6f2-83fb-4e5e-ad6e-f2649afad522', N'FS31151263', N'03/20/18', N'12:10', N'12:20', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'18d6d66f-185b-4e42-bfd8-8b56c652a42e', N'FS3121639', N'3/2/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'5d4747fe-03b1-4952-ba84-6d3c4265d3a6', N'FS3121639', N'3/3/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'8688e5e7-02cc-4df8-a7d1-4b48f78b7d55', N'FS3121639', N'3/4/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS3121639', N'3/5/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS3121639', N'3/6/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS3121639', N'3/7/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS3121639', N'3/8/2018', N'', N'', N'')
INSERT [dbo].[requestedshotinglocations] ([locationid], [applicationid], [date], [starttime], [endtime], [scenescript]) VALUES (N'Select', N'FS3121639', N'3/9/2018', N'', N'', N'')
INSERT [dbo].[resetpasswordrequest] ([resetid], [emailid], [userid], [requesttime]) VALUES (N'c92d75f4-fcce-478f-afdf-64f06a742b6e', N'anujm4467@gmail.com', N'cebb5d04-054c-4d6f-8b0f-825881b099a9', CAST(N'2018-03-30T18:04:25.000' AS DateTime))
INSERT [dbo].[scriptkeyworddetails] ([keywordid], [keywordname]) VALUES (1, N'Patriotic')
INSERT [dbo].[scriptkeyworddetails] ([keywordid], [keywordname]) VALUES (2, N'Romantic')
INSERT [dbo].[scriptkeyworddetails] ([keywordid], [keywordname]) VALUES (3, N'Action')
INSERT [dbo].[scriptkeyworddetails] ([keywordid], [keywordname]) VALUES (4, N'Crowdy')
INSERT [dbo].[scriptkeyworddetails] ([keywordid], [keywordname]) VALUES (5, N'Market')
INSERT [dbo].[scriptkeyworddetails] ([keywordid], [keywordname]) VALUES (6, N'Thriller')
INSERT [dbo].[scriptkeyworddetails] ([keywordid], [keywordname]) VALUES (7, N'Sci-fi')
INSERT [dbo].[scriptkeyworddetails] ([keywordid], [keywordname]) VALUES (8, N'Comedy')
INSERT [dbo].[scriptkeyworddetails] ([keywordid], [keywordname]) VALUES (9, N'Suspense')
INSERT [dbo].[scriptkeyworddetails] ([keywordid], [keywordname]) VALUES (10, N'Historic')
INSERT [dbo].[scriptkeyworddetails] ([keywordid], [keywordname]) VALUES (11, N'Mythological')
INSERT [dbo].[scriptkeyworddetails] ([keywordid], [keywordname]) VALUES (12, N'Adventure')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'1b1a5f14-f3fb-4f68-9fd3-1c26e471ed38', N'NDMC', N'New Delhi Municipal Council', N'ddevent@ndmc.gov.in', N'989981555', N'')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'1b7e8fac-773e-44c9-ae22-932069fbb883', N'FFO', N'Film Faciliatation Office', N'vikramjit@ndfcindia.com', N'9819309196', N'')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'1bcd848c-bc22-46f2-b86d-00241ffc4d65', N'Northern Railway', N'Northern Railway', N'ncr@railway.com', N'9717630006', N'')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'39d0ab05-0e5b-48b4-82b8-6be8c2eb34e8', N'North And East MCD', N'North and east', N'dirpindmc@gmail.com', N'9811778465', N'')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'56fc21d1-4ed9-4df2-a240-2c0fd7b9cb37', N'CPWD', N'Central Public Works Department', N'cpwd@nic.in', N'9810511288', N'')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'5717737a-64ba-4b4f-a3be-3ddc6ad3c3e6', N'DGCA', N'Directorate General of Civil Aviation', N'Skumar.dgca@nic.in', N'9599915290', N'')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'59585918-de05-4d2b-a076-287c9234b4a1', N'Delhi Police', N'Delhi Government Police', N'dcp.hq@delhipolice.gov.in', N'9818032514', N'')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'6118d54c-bdb2-4912-a298-58a7f7085161', N'Sport Authority Of India', N'Sport Authority Of India', N'edstadia.sai@gmail.com', N'8588892339', N'')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'6c7f6d45-09f6-4e80-86aa-ceb3fa039523', N'Delhi Traffic Police', N'Delhi Traffic Police', N'Soniravinder1959@gmail.com', N'8750871419', N'')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'7445c041-e61c-476a-8aba-98e505d7c387', N'Ministry of defence', N'', N'as@sdfds.com', N'7894561235', N'delhi')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'75d4a413-c3e0-4ca1-83e7-93541418c764', N'DDA', N'Delhi Development Authority', N'ch.manishpalsingh@gmail.com', N'9968260244', N'')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'7892e0c9-a1c0-4b01-8aa6-786c51e2fcbb', N'DIAL', N'', N'Shyam.sundar@gmrgroup.in', N'01147197621', N'')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'91e51d6f-b7e9-4188-9e7a-ab73e9553134', N'SDMC', N'South Delhi Municipal Corporation', N'Directorpi.sdmc@gmail.com', N'9911108847', N'')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'aaaace66-1d7d-4989-be6f-8b5f42149bb0', N'Department of Environment and Forest', N'Department of Environment and Forest', N'Ak.shukla@nic.in', N'9868954426', N'')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'b573a41e-1aa3-4cad-a21a-9f2e02a64675', N'ASI', N'Archaeological Survey of India', N'Circledel.asi@gmail.com', N'9810042209', N'Office of the Director General
24 Tilak Marg, New Delhi   ')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'ba3c4716-e7e4-4b58-94c5-dad2535ee0de', N'DMRC', N'Delhi Metro Railway Corporation', N'mohinderyadav17@gmail.com', N'9810497397', N'')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'd6c64ad8-3103-4afb-9564-722e0e72758f', N'PWD', N'Public Works Department', N'Debasisbiswal@gmail.com', N'23923379', N'')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'e3bf56a7-076f-40af-b01c-73dd72c446e7', N'Ministry of Home Affairs', N'Ministry of Home Affairs', N'dirdelhi@mha.gov.in', N'23094387', N'')
INSERT [dbo].[stakeholder] ([stakeholderID], [stakeholdername], [stakeholderdescription], [email], [phoneno], [address]) VALUES (N'ede847c8-9d9e-489e-a657-b4dd62450310', N'kajsdd', N'kjjbdfjsdb', N'email@emaol.com', N'9876543210', N'sgdhfjgkhl;')
INSERT [dbo].[statusdetails] ([statusid], [statusname], [statusdescription]) VALUES (N'0', N'Submitted', N'Your Application is successfully submitted')
INSERT [dbo].[statusdetails] ([statusid], [statusname], [statusdescription]) VALUES (N'1', N'Pending', N'Your Application is waiting for further processing.')
INSERT [dbo].[statusdetails] ([statusid], [statusname], [statusdescription]) VALUES (N'2', N'Processing', N'Processing is in progress.')
INSERT [dbo].[statusdetails] ([statusid], [statusname], [statusdescription]) VALUES (N'3', N'Approved', N'Congratulations! Your Application is Approved.')
INSERT [dbo].[statusdetails] ([statusid], [statusname], [statusdescription]) VALUES (N'4', N'Rejected', N'Your application is rejected ny DTTDC')
INSERT [dbo].[transactiondetails] ([applicationid], [transactionid], [transactiontime], [amount], [completed]) VALUES (N'FS30221472', N'FS30221472', N'03/31/2018 7:13:03 AM', CAST(2000 AS Decimal(18, 0)), 0)
INSERT [dbo].[transactiondetails] ([applicationid], [transactionid], [transactiontime], [amount], [completed]) VALUES (N'FS31152363', N'FS31152363', N'03/31/2018 3:24:40 PM', CAST(2000 AS Decimal(18, 0)), 0)
INSERT [dbo].[transactiondetails] ([applicationid], [transactionid], [transactiontime], [amount], [completed]) VALUES (N'FS3121190', N'01407db6-9483-4a11-bd2e-2dd418f95cb9', N'03/31/2018 4:56:57 AM', CAST(2000 AS Decimal(18, 0)), 0)
INSERT [dbo].[unit] ([unitID], [unitname]) VALUES (1, N'defg')
INSERT [dbo].[unit] ([unitID], [unitname]) VALUES (3, N'hijkl')
INSERT [dbo].[user] ([userid], [email], [name], [phoneno], [gender], [dateofbirth], [address], [adhaarid], [password], [role], [lastlogindate], [lastpasswordchangedate], [creationdate], [modificationdate], [active], [stakeholderid]) VALUES (N'248e0f52-be66-4d50-a135-2610057d9d17', N'ahmad.naseem2804@gmail.com', N'Naseem  Ahmad', N'1234567890', N'Male', N'03/21/2018', N'Gwalior', N'111122223333', N'LRQfoYBvUREkdAnZKygPMg==', N'Stakeholder', CAST(N'2018-03-31T15:28:54.000' AS DateTime), CAST(N'2018-03-31T09:06:51.000' AS DateTime), CAST(N'2018-03-31T09:04:11.000' AS DateTime), CAST(N'2018-03-31T09:14:36.000' AS DateTime), 1, N'59585918-de05-4d2b-a076-287c9234b4a1')
INSERT [dbo].[user] ([userid], [email], [name], [phoneno], [gender], [dateofbirth], [address], [adhaarid], [password], [role], [lastlogindate], [lastpasswordchangedate], [creationdate], [modificationdate], [active], [stakeholderid]) VALUES (N'58a17015-8e5c-4c26-bf35-e2659baf0ba8', N'ak38338@gmail.com', N'Anshu Singh', N'1234567890', N'Male', N'05/09/1994', N'delhi', N'111122223333', N'/feP9nE0orDcL1wxzB98Jw==', N'Applicant', CAST(N'2018-03-31T15:20:39.000' AS DateTime), CAST(N'2018-03-26T10:15:19.000' AS DateTime), CAST(N'2018-03-25T22:26:27.000' AS DateTime), CAST(N'2018-03-25T22:31:48.000' AS DateTime), 1, N'DTFC')
INSERT [dbo].[user] ([userid], [email], [name], [phoneno], [gender], [dateofbirth], [address], [adhaarid], [password], [role], [lastlogindate], [lastpasswordchangedate], [creationdate], [modificationdate], [active], [stakeholderid]) VALUES (N'8b858224-777b-48da-a77d-660f6e9257c8', N'pvt.naseem28@outlook.com', N'Armman  Atif ', N'7000586826', N'Male', N'28/04/1996', N'ward no 6, nagar panchayat handia, allahabad 221503', N'123456789123', N'xd3Kqn5VWVTzeoElifVbRw==', N'Administrator', CAST(N'2018-03-31T12:27:57.000' AS DateTime), CAST(N'2018-03-31T09:01:06.000' AS DateTime), CAST(N'2018-03-24T11:53:51.000' AS DateTime), CAST(N'2018-03-28T17:28:44.000' AS DateTime), 1, NULL)
INSERT [dbo].[user] ([userid], [email], [name], [phoneno], [gender], [dateofbirth], [address], [adhaarid], [password], [role], [lastlogindate], [lastpasswordchangedate], [creationdate], [modificationdate], [active], [stakeholderid]) VALUES (N'bcc578b9-7d75-4e20-baed-cf4e50c85e2b', N'mraduliitm@gmail.com', N'Mradul ', N'9074806744', N'Male', N'01/01/1989', N'13, CVR Lines, New Delhi-11', N'784523612458', N'2GHJr7IvKPtIDLFBRpAXHg==', N'DTFC', CAST(N'2018-03-31T15:56:19.000' AS DateTime), CAST(N'2018-03-30T10:50:00.000' AS DateTime), CAST(N'2018-03-30T10:40:03.000' AS DateTime), CAST(N'2018-03-30T11:02:47.000' AS DateTime), 1, N'DTFC')
INSERT [dbo].[user] ([userid], [email], [name], [phoneno], [gender], [dateofbirth], [address], [adhaarid], [password], [role], [lastlogindate], [lastpasswordchangedate], [creationdate], [modificationdate], [active], [stakeholderid]) VALUES (N'cc1e45d9-e8da-47bc-847b-c87ee3fe6d37', N'ruhidubey.cse@itmuniversity.ac.in', N'Ruhi  Dubey ', N'7000124049', N'Female', N'01/07/1993', NULL, N'327647878082', N'8pG/599r/045sDOhFQtaVg==', N'Applicant', CAST(N'2018-03-30T11:19:58.000' AS DateTime), NULL, CAST(N'2018-03-30T11:19:26.000' AS DateTime), NULL, 1, NULL)
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_EMail]    Script Date: 03/31/18 3:59:19 PM ******/
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [UC_EMail] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
