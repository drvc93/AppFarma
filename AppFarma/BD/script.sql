USE [BDFarma]
GO
/****** Object:  UserDefinedFunction [dbo].[F_HoraActual]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[F_HoraActual]() 
Returns datetime
As
 Begin
 Declare  @FechaHoraActual datetime
 Set @FechaHoraActual  = getdate()
 
 Return @FechaHoraActual
 End  
GO
/****** Object:  Table [dbo].[m_categoria]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[m_categoria](
	[n_categoria] [int] NOT NULL,
	[c_descripcion] [varchar](150) NOT NULL,
	[c_usuarioregistro] [varchar](12) NULL,
	[c_ultimafechamod] [datetime] NULL,
	[c_estado] [varchar](1) NULL,
 CONSTRAINT [PK_m_categoria] PRIMARY KEY CLUSTERED 
(
	[n_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[m_cliente]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[m_cliente](
	[c_tipocliente] [varchar](2) NOT NULL,
	[c_documento] [varchar](20) NOT NULL,
	[c_nombre] [varchar](100) NULL,
	[c_apellidopaterno] [varchar](100) NULL,
	[c_apellidomaterno] [varchar](100) NULL,
	[c_razonsocial] [varchar](300) NOT NULL,
	[d_fechanacimiento] [datetime] NULL,
	[c_estado] [varchar](2) NOT NULL,
	[c_usuarioregistro] [varchar](12) NOT NULL,
	[d_Fecharegistro] [datetime] NOT NULL,
	[c_usuarioultmodif] [varchar](12) NULL,
	[d_fechaultmodif] [datetime] NULL,
 CONSTRAINT [PK_m_cliente] PRIMARY KEY CLUSTERED 
(
	[c_tipocliente] ASC,
	[c_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[m_direccioncliente]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[m_direccioncliente](
	[c_tipocliente] [varchar](2) NOT NULL,
	[c_documento] [varchar](20) NOT NULL,
	[n_secuencia] [int] NOT NULL,
	[c_descripciondir] [varchar](150) NULL,
	[c_estado] [varchar](2) NULL,
	[c_latitud] [varchar](20) NULL,
	[c_longitud] [varchar](20) NULL,
	[c_ubigeo] [varchar](12) NULL,
	[c_usuariocreacion] [varchar](12) NULL,
	[d_fechacreacion] [datetime] NULL,
	[c_ultimausuariomod] [varchar](12) NULL,
	[d_ultimafechamod] [datetime] NULL,
 CONSTRAINT [PK_m_direccioncliente] PRIMARY KEY CLUSTERED 
(
	[c_tipocliente] ASC,
	[c_documento] ASC,
	[n_secuencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[m_presentacion]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[m_presentacion](
	[c_presentacion] [varchar](4) NOT NULL,
	[c_descripcion] [varchar](100) NOT NULL,
	[c_estado] [varchar](2) NOT NULL,
	[c_ultimousuariomod] [varchar](12) NULL,
	[d_ultimafechamod] [datetime] NULL,
 CONSTRAINT [PK_m_presentacion] PRIMARY KEY CLUSTERED 
(
	[c_presentacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[m_presentacionproducto]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[m_presentacionproducto](
	[c_codproducto] [varchar](20) NOT NULL,
	[c_presentacion] [varchar](4) NOT NULL,
	[n_cantidad] [int] NOT NULL,
	[n_correlativo] [bigint] IDENTITY(1,1) NOT NULL,
	[c_estado] [varchar](2) NULL,
	[c_usuarioregistro] [varchar](12) NULL,
	[d_Fecharegistro] [datetime] NULL,
	[c_ultimousuariomod] [varchar](12) NULL,
	[d_ultimafechamod] [datetime] NULL,
 CONSTRAINT [PK_m_presentacionproducto] PRIMARY KEY CLUSTERED 
(
	[c_codproducto] ASC,
	[c_presentacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[m_principioactivo]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[m_principioactivo](
	[n_codigoprincipoact] [int] NOT NULL,
	[c_descripcion] [varchar](100) NOT NULL,
	[c_usuarioreg] [varchar](12) NULL,
	[d_fecharegistro] [datetime] NULL,
	[c_estado] [varchar](2) NOT NULL,
 CONSTRAINT [PK_m_principioactivo] PRIMARY KEY CLUSTERED 
(
	[n_codigoprincipoact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[m_producto]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[m_producto](
	[c_codproducto] [varchar](20) NOT NULL,
	[c_descripcionprod] [varchar](250) NOT NULL,
	[n_categoria] [int] NULL,
	[n_subcategoria] [int] NULL,
	[c_codigobarras] [varchar](200) NULL,
	[c_estado] [varchar](2) NOT NULL,
	[d_fecharegistro] [datetime] NOT NULL,
	[c_usuarioregistro] [varchar](12) NOT NULL,
	[d_ultimafechamod] [datetime] NULL,
	[c_ultimousuariomod] [varchar](12) NULL,
 CONSTRAINT [PK_m_producto] PRIMARY KEY CLUSTERED 
(
	[c_codproducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[m_productoprincipioact]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[m_productoprincipioact](
	[c_codproducto] [varchar](20) NOT NULL,
	[n_codigoprincipoact] [int] NOT NULL,
	[c_estado] [varchar](1) NULL,
	[c_ultimousuario] [varchar](12) NULL,
	[d_ultimafechamod] [datetime] NULL,
 CONSTRAINT [PK_m_productoprincipioact] PRIMARY KEY CLUSTERED 
(
	[c_codproducto] ASC,
	[n_codigoprincipoact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[m_subcategoria]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[m_subcategoria](
	[n_subcategoria] [int] NOT NULL,
	[n_categoria] [int] NOT NULL,
	[c_descripcion] [varchar](100) NOT NULL,
	[c_usuarioregistro] [varchar](12) NULL,
	[d_fecharegistro] [datetime] NULL,
	[c_ultimousuariomod] [varchar](12) NULL,
	[d_ultimafechamod] [datetime] NULL,
	[c_estado] [varchar](2) NULL,
 CONSTRAINT [PK_m_subcategoria] PRIMARY KEY CLUSTERED 
(
	[n_subcategoria] ASC,
	[n_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[m_telefonocliente]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[m_telefonocliente](
	[c_tipocliente] [varchar](2) NOT NULL,
	[c_documeto] [varchar](20) NOT NULL,
	[n_linea] [int] NOT NULL,
	[c_numero] [varchar](20) NULL,
	[c_nombrecontacto] [varchar](100) NULL,
	[c_estado] [varchar](2) NULL,
	[c_ultimousuariomod] [varchar](12) NULL,
	[d_ultimafechamod] [datetime] NULL,
 CONSTRAINT [PK_m_telefonocliente] PRIMARY KEY CLUSTERED 
(
	[c_tipocliente] ASC,
	[c_documeto] ASC,
	[n_linea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[m_ubigeo]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[m_ubigeo](
	[c_ubigeo] [varchar](12) NOT NULL,
	[c_tipo] [varchar](5) NOT NULL,
	[c_descripcion] [varchar](200) NOT NULL,
	[c_ultimousuario] [varchar](12) NULL,
 CONSTRAINT [PK_m_ubigeo] PRIMARY KEY CLUSTERED 
(
	[c_ubigeo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[v_sistemaventa]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[v_sistemaventa](
	[n_sistemaveta] [bigint] IDENTITY(1,1) NOT NULL,
	[c_descripcion] [varchar](150) NOT NULL,
	[d_fechainicio] [datetime] NOT NULL,
	[d_fechafin] [datetime] NOT NULL,
	[c_estado] [varchar](1) NOT NULL,
	[c_usuarioregistro] [varchar](12) NULL,
	[d_fecharegistro] [datetime] NULL,
	[c_ultimosuauriomod] [varchar](12) NULL,
	[d_ultimafechamod] [datetime] NULL,
 CONSTRAINT [PK_v_sistemaventa] PRIMARY KEY CLUSTERED 
(
	[n_sistemaveta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[v_venta]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[v_venta](
	[n_codigoventa] [bigint] NOT NULL,
	[c_tipocliente] [varchar](2) NOT NULL,
	[c_documento] [varchar](20) NOT NULL,
	[n_condicionventa] [bigint] NULL,
	[n_montototal] [decimal](18, 6) NOT NULL,
	[n_montoigv] [decimal](18, 6) NOT NULL,
	[c_estado] [varchar](2) NOT NULL,
	[n_montoneto] [decimal](18, 6) NOT NULL,
	[c_usuarioregistro] [varchar](12) NOT NULL,
	[d_fecharegistro] [datetime] NOT NULL,
	[c_ultusuariomod] [varchar](12) NULL,
	[d_ultimfechamod] [datetime] NULL,
	[d_fechaanulacion] [datetime] NULL,
	[c_usuarioanulacion] [varchar](12) NULL,
 CONSTRAINT [PK_v_venta] PRIMARY KEY CLUSTERED 
(
	[n_codigoventa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[m_categoria] ([n_categoria], [c_descripcion], [c_usuarioregistro], [c_ultimafechamod], [c_estado]) VALUES (1, N'SADSA', N'DVILLANUEV', CAST(N'2018-11-29 23:27:37.510' AS DateTime), N'A')
INSERT [dbo].[m_categoria] ([n_categoria], [c_descripcion], [c_usuarioregistro], [c_ultimafechamod], [c_estado]) VALUES (2, N'DDDD', N'DVILLANUEV', CAST(N'2019-04-07 11:53:23.647' AS DateTime), N'A')
INSERT [dbo].[m_categoria] ([n_categoria], [c_descripcion], [c_usuarioregistro], [c_ultimafechamod], [c_estado]) VALUES (3, N'HJGGH', N'BGJK', CAST(N'2018-12-04 23:59:24.470' AS DateTime), N'A')
INSERT [dbo].[m_categoria] ([n_categoria], [c_descripcion], [c_usuarioregistro], [c_ultimafechamod], [c_estado]) VALUES (4, N'AAAAAAAAA', N'DVILLANUEV', CAST(N'2019-03-10 12:13:46.420' AS DateTime), N'A')
INSERT [dbo].[m_cliente] ([c_tipocliente], [c_documento], [c_nombre], [c_apellidopaterno], [c_apellidomaterno], [c_razonsocial], [d_fechanacimiento], [c_estado], [c_usuarioregistro], [d_Fecharegistro], [c_usuarioultmodif], [d_fechaultmodif]) VALUES (N'JU', N'22323232323', N'DSKDKSKDKAK', N'', N'', N'DSKDKSKDKAK', CAST(N'2018-12-04 00:00:00.000' AS DateTime), N'A', N'DVILLANUEV', CAST(N'2018-12-04 23:57:36.097' AS DateTime), N'DVILLANUEV', CAST(N'2018-12-04 23:57:36.097' AS DateTime))
INSERT [dbo].[m_cliente] ([c_tipocliente], [c_documento], [c_nombre], [c_apellidopaterno], [c_apellidomaterno], [c_razonsocial], [d_fechanacimiento], [c_estado], [c_usuarioregistro], [d_Fecharegistro], [c_usuarioultmodif], [d_fechaultmodif]) VALUES (N'JU', N'51454545454', N'DANIEL VILLA', N'', N'', N'DANIEL VILLA', CAST(N'2018-12-06 00:00:00.000' AS DateTime), N'A', N'DVILLANUEV', CAST(N'2018-12-06 19:25:45.097' AS DateTime), N'DVILLANUEV', CAST(N'2018-12-06 19:25:45.097' AS DateTime))
INSERT [dbo].[m_cliente] ([c_tipocliente], [c_documento], [c_nombre], [c_apellidopaterno], [c_apellidomaterno], [c_razonsocial], [d_fechanacimiento], [c_estado], [c_usuarioregistro], [d_Fecharegistro], [c_usuarioultmodif], [d_fechaultmodif]) VALUES (N'Na', N'72886949', N'DANIEL', N'VILLANUEVA', N'CRUZ', N'DANIEL VILLANUEVA CRUZ', CAST(N'2018-11-28 00:00:00.000' AS DateTime), N'A', N'DVILLANUEV', CAST(N'2018-11-28 20:43:22.677' AS DateTime), N'DVILLANUEV', CAST(N'2018-11-28 20:43:22.677' AS DateTime))
INSERT [dbo].[m_cliente] ([c_tipocliente], [c_documento], [c_nombre], [c_apellidopaterno], [c_apellidomaterno], [c_razonsocial], [d_fechanacimiento], [c_estado], [c_usuarioregistro], [d_Fecharegistro], [c_usuarioultmodif], [d_fechaultmodif]) VALUES (N'NA', N'88989888', N'SAS', N'DSADA', N'SADASD', N'SAS DSADA SADASD', CAST(N'2018-11-28 00:00:00.000' AS DateTime), N'A', N'DVILLANUEV', CAST(N'2018-11-28 21:01:19.727' AS DateTime), N'DVILLANUEV', CAST(N'2018-11-28 21:01:19.727' AS DateTime))
INSERT [dbo].[m_direccioncliente] ([c_tipocliente], [c_documento], [n_secuencia], [c_descripciondir], [c_estado], [c_latitud], [c_longitud], [c_ubigeo], [c_usuariocreacion], [d_fechacreacion], [c_ultimausuariomod], [d_ultimafechamod]) VALUES (N'JU', N'22323232323', 1, N'DIRECCION 1', N'A', N'00', N'00', N'150135', N'DVILLANUEV', CAST(N'2018-12-06 19:26:12.927' AS DateTime), N'DVILLANUEV', CAST(N'2018-12-06 19:26:12.927' AS DateTime))
INSERT [dbo].[m_direccioncliente] ([c_tipocliente], [c_documento], [n_secuencia], [c_descripciondir], [c_estado], [c_latitud], [c_longitud], [c_ubigeo], [c_usuariocreacion], [d_fechacreacion], [c_ultimausuariomod], [d_ultimafechamod]) VALUES (N'JU', N'51454545454', 1, N'DIRECCION', N'A', N'000', N'0000', N'150107', N'DVILLANUEV', CAST(N'2018-12-06 19:28:39.810' AS DateTime), N'DVILLANUEV', CAST(N'2018-12-06 19:28:39.810' AS DateTime))
INSERT [dbo].[m_direccioncliente] ([c_tipocliente], [c_documento], [n_secuencia], [c_descripciondir], [c_estado], [c_latitud], [c_longitud], [c_ubigeo], [c_usuariocreacion], [d_fechacreacion], [c_ultimausuariomod], [d_ultimafechamod]) VALUES (N'NA', N'72886949', 1, N'DIRECCION', N'A', N'888', N'888', N'150103', N'DVILLANUEV', CAST(N'2018-11-29 21:11:11.117' AS DateTime), N'DVILLANUEV', CAST(N'2019-01-06 16:33:29.053' AS DateTime))
INSERT [dbo].[m_direccioncliente] ([c_tipocliente], [c_documento], [n_secuencia], [c_descripciondir], [c_estado], [c_latitud], [c_longitud], [c_ubigeo], [c_usuariocreacion], [d_fechacreacion], [c_ultimausuariomod], [d_ultimafechamod]) VALUES (N'NA', N'88989888', 1, N'ADASDSA', N'A', N'1', N'1', N'150111', N'DVILLANUEV', CAST(N'2018-11-29 19:49:50.250' AS DateTime), N'DVILLANUEV', CAST(N'2018-11-29 21:13:01.123' AS DateTime))
INSERT [dbo].[m_direccioncliente] ([c_tipocliente], [c_documento], [n_secuencia], [c_descripciondir], [c_estado], [c_latitud], [c_longitud], [c_ubigeo], [c_usuariocreacion], [d_fechacreacion], [c_ultimausuariomod], [d_ultimafechamod]) VALUES (N'NA', N'88989888', 2, N'DANIEL', N'A', N'0000', N'54554', N'150112', N'DVILLANUEV', CAST(N'2018-11-29 20:39:16.147' AS DateTime), N'DVILLANUEV', CAST(N'2018-12-05 22:41:36.337' AS DateTime))
INSERT [dbo].[m_direccioncliente] ([c_tipocliente], [c_documento], [n_secuencia], [c_descripciondir], [c_estado], [c_latitud], [c_longitud], [c_ubigeo], [c_usuariocreacion], [d_fechacreacion], [c_ultimausuariomod], [d_ultimafechamod]) VALUES (N'NA', N'88989888', 3, N'3333333333', N'A', N'00', N'00', N'150116', N'DVILLANUEV', CAST(N'2018-11-29 20:49:59.180' AS DateTime), N'DVILLANUEV', CAST(N'2018-12-05 22:45:39.030' AS DateTime))
INSERT [dbo].[m_presentacion] ([c_presentacion], [c_descripcion], [c_estado], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'0001', N'UNIDAD', N'A', N'DVILLANUEV', CAST(N'2018-12-07 01:48:53.767' AS DateTime))
INSERT [dbo].[m_presentacion] ([c_presentacion], [c_descripcion], [c_estado], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'0002', N'PAQUETE', N'A', N'DVILLANUEV', CAST(N'2018-12-07 01:49:44.297' AS DateTime))
INSERT [dbo].[m_presentacion] ([c_presentacion], [c_descripcion], [c_estado], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'0003', N'CAJA', N'A', N'DVILLANUEV', CAST(N'2018-12-07 01:49:15.617' AS DateTime))
INSERT [dbo].[m_presentacion] ([c_presentacion], [c_descripcion], [c_estado], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'0004', N'BLISTER', N'A', N'DVILLANUEV', CAST(N'2018-12-07 01:49:55.380' AS DateTime))
INSERT [dbo].[m_presentacion] ([c_presentacion], [c_descripcion], [c_estado], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'0005', N'PRESENTACION 5', N'A', N'DVILLANUEV', CAST(N'2018-12-07 00:59:10.583' AS DateTime))
INSERT [dbo].[m_presentacion] ([c_presentacion], [c_descripcion], [c_estado], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'0006', N'MMM', N'A', N'DVILLANUEV', CAST(N'2019-01-06 16:34:12.180' AS DateTime))
INSERT [dbo].[m_presentacion] ([c_presentacion], [c_descripcion], [c_estado], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'0007', N'PRESENTACION 6', N'A', N'DVILLANUEV', CAST(N'2019-03-10 23:00:24.570' AS DateTime))
SET IDENTITY_INSERT [dbo].[m_presentacionproducto] ON 

INSERT [dbo].[m_presentacionproducto] ([c_codproducto], [c_presentacion], [n_cantidad], [n_correlativo], [c_estado], [c_usuarioregistro], [d_Fecharegistro], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'00000001', N'0001', 1, 10010, N'A', N'DVILLANUEV', CAST(N'2019-01-15 01:49:05.687' AS DateTime), N'DVILLANUEV', CAST(N'2019-01-15 01:49:05.687' AS DateTime))
INSERT [dbo].[m_presentacionproducto] ([c_codproducto], [c_presentacion], [n_cantidad], [n_correlativo], [c_estado], [c_usuarioregistro], [d_Fecharegistro], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'00000001', N'0002', 6, 10013, N'A', N'DVILLANUEV', CAST(N'2019-03-10 23:03:19.747' AS DateTime), N'DVILLANUEV', CAST(N'2019-03-10 23:03:19.747' AS DateTime))
INSERT [dbo].[m_presentacionproducto] ([c_codproducto], [c_presentacion], [n_cantidad], [n_correlativo], [c_estado], [c_usuarioregistro], [d_Fecharegistro], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'00000001', N'0004', 16, 10011, N'A', N'DVILLANUEV', CAST(N'2019-01-15 01:49:19.707' AS DateTime), N'DVILLANUEV', CAST(N'2019-03-10 23:26:21.493' AS DateTime))
INSERT [dbo].[m_presentacionproducto] ([c_codproducto], [c_presentacion], [n_cantidad], [n_correlativo], [c_estado], [c_usuarioregistro], [d_Fecharegistro], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'00000001', N'0007', 6, 10012, N'A', N'DVILLANUEV', CAST(N'2019-03-10 23:00:56.190' AS DateTime), N'DVILLANUEV', CAST(N'2019-03-10 23:00:56.190' AS DateTime))
INSERT [dbo].[m_presentacionproducto] ([c_codproducto], [c_presentacion], [n_cantidad], [n_correlativo], [c_estado], [c_usuarioregistro], [d_Fecharegistro], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'00000005', N'0001', 1, 10014, N'A', N'DVILLANUEV', CAST(N'2019-03-10 23:27:27.973' AS DateTime), N'DVILLANUEV', CAST(N'2019-03-10 23:27:27.973' AS DateTime))
INSERT [dbo].[m_presentacionproducto] ([c_codproducto], [c_presentacion], [n_cantidad], [n_correlativo], [c_estado], [c_usuarioregistro], [d_Fecharegistro], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'00000006', N'0004', 1, 10015, N'A', N'DVILLANUEV', CAST(N'2019-04-07 11:55:11.650' AS DateTime), N'DVILLANUEV', CAST(N'2019-04-07 11:55:11.650' AS DateTime))
SET IDENTITY_INSERT [dbo].[m_presentacionproducto] OFF
INSERT [dbo].[m_principioactivo] ([n_codigoprincipoact], [c_descripcion], [c_usuarioreg], [d_fecharegistro], [c_estado]) VALUES (1, N'HHHH', N'DVILLANUEV', CAST(N'2018-11-29 22:29:50.190' AS DateTime), N'A')
INSERT [dbo].[m_principioactivo] ([n_codigoprincipoact], [c_descripcion], [c_usuarioreg], [d_fecharegistro], [c_estado]) VALUES (2, N'ACTIVO 1', N'DVILLANUEV', CAST(N'2019-01-16 22:31:43.433' AS DateTime), N'A')
INSERT [dbo].[m_principioactivo] ([n_codigoprincipoact], [c_descripcion], [c_usuarioreg], [d_fecharegistro], [c_estado]) VALUES (3, N'88888', N'DVILLANUEV', CAST(N'2019-04-07 11:51:44.737' AS DateTime), N'A')
INSERT [dbo].[m_producto] ([c_codproducto], [c_descripcionprod], [n_categoria], [n_subcategoria], [c_codigobarras], [c_estado], [d_fecharegistro], [c_usuarioregistro], [d_ultimafechamod], [c_ultimousuariomod]) VALUES (N'00000001', N'PASTILLA', 1, 2, N'', N'A', CAST(N'2018-12-05 02:46:34.303' AS DateTime), N'', CAST(N'2018-12-05 02:55:00.743' AS DateTime), N'')
INSERT [dbo].[m_producto] ([c_codproducto], [c_descripcionprod], [n_categoria], [n_subcategoria], [c_codigobarras], [c_estado], [d_fecharegistro], [c_usuarioregistro], [d_ultimafechamod], [c_ultimousuariomod]) VALUES (N'00000002', N'DAYFLU', 1, 3, N'', N'A', CAST(N'2018-12-05 02:50:25.367' AS DateTime), N'', CAST(N'2019-08-05 23:21:21.380' AS DateTime), N'DVILLANUEV')
INSERT [dbo].[m_producto] ([c_codproducto], [c_descripcionprod], [n_categoria], [n_subcategoria], [c_codigobarras], [c_estado], [d_fecharegistro], [c_usuarioregistro], [d_ultimafechamod], [c_ultimousuariomod]) VALUES (N'00000003', N'PASTILLASS', 1, 3, N'', N'A', CAST(N'2018-12-19 23:37:39.303' AS DateTime), N'', CAST(N'2019-08-05 23:22:14.600' AS DateTime), N'DVILLANUEV')
INSERT [dbo].[m_producto] ([c_codproducto], [c_descripcionprod], [n_categoria], [n_subcategoria], [c_codigobarras], [c_estado], [d_fecharegistro], [c_usuarioregistro], [d_ultimafechamod], [c_ultimousuariomod]) VALUES (N'00000004', N'SASAS', 1, 3, N'', N'A', CAST(N'2019-01-06 16:31:33.183' AS DateTime), N'', CAST(N'2019-08-05 23:19:24.770' AS DateTime), N'DVILLANUEV')
INSERT [dbo].[m_producto] ([c_codproducto], [c_descripcionprod], [n_categoria], [n_subcategoria], [c_codigobarras], [c_estado], [d_fecharegistro], [c_usuarioregistro], [d_ultimafechamod], [c_ultimousuariomod]) VALUES (N'00000005', N'ALCOHOL 90º', 1, 3, N'', N'A', CAST(N'2019-01-16 22:33:47.470' AS DateTime), N'', CAST(N'2019-08-05 23:14:36.340' AS DateTime), N'DVILLANUEV')
INSERT [dbo].[m_producto] ([c_codproducto], [c_descripcionprod], [n_categoria], [n_subcategoria], [c_codigobarras], [c_estado], [d_fecharegistro], [c_usuarioregistro], [d_ultimafechamod], [c_ultimousuariomod]) VALUES (N'00000006', N'REDOXON', 1, 3, N'', N'A', CAST(N'2019-01-16 22:40:24.473' AS DateTime), N'DVILLANUEV', CAST(N'2019-08-05 23:23:35.257' AS DateTime), N'DVILLANUEV')
INSERT [dbo].[m_productoprincipioact] ([c_codproducto], [n_codigoprincipoact], [c_estado], [c_ultimousuario], [d_ultimafechamod]) VALUES (N'00000001', 1, N'A', N'DVILLANUEV', CAST(N'2019-04-07 11:57:39.730' AS DateTime))
INSERT [dbo].[m_productoprincipioact] ([c_codproducto], [n_codigoprincipoact], [c_estado], [c_ultimousuario], [d_ultimafechamod]) VALUES (N'00000001', 2, N'A', N'DVILLANUEV', CAST(N'2019-04-07 11:57:39.743' AS DateTime))
INSERT [dbo].[m_productoprincipioact] ([c_codproducto], [n_codigoprincipoact], [c_estado], [c_ultimousuario], [d_ultimafechamod]) VALUES (N'00000001', 3, N'A', N'DVILLANUEV', CAST(N'2019-04-07 11:57:39.747' AS DateTime))
INSERT [dbo].[m_productoprincipioact] ([c_codproducto], [n_codigoprincipoact], [c_estado], [c_ultimousuario], [d_ultimafechamod]) VALUES (N'00000002', 1, N'A', N'DVILLANUEV', CAST(N'2018-12-05 03:12:10.550' AS DateTime))
INSERT [dbo].[m_productoprincipioact] ([c_codproducto], [n_codigoprincipoact], [c_estado], [c_ultimousuario], [d_ultimafechamod]) VALUES (N'00000002', 2, N'A', N'DVILLANUEV', CAST(N'2018-12-05 03:12:10.550' AS DateTime))
INSERT [dbo].[m_productoprincipioact] ([c_codproducto], [n_codigoprincipoact], [c_estado], [c_ultimousuario], [d_ultimafechamod]) VALUES (N'00000004', 1, N'A', N'DVILLANUEV', CAST(N'2019-01-06 16:31:47.330' AS DateTime))
INSERT [dbo].[m_subcategoria] ([n_subcategoria], [n_categoria], [c_descripcion], [c_usuarioregistro], [d_fecharegistro], [c_ultimousuariomod], [d_ultimafechamod], [c_estado]) VALUES (1, 1, N'SDSD', N'DVILLANUEV', CAST(N'2018-12-05 00:34:50.397' AS DateTime), N'DVILLANUEV', CAST(N'2018-12-05 00:44:29.990' AS DateTime), N'A')
INSERT [dbo].[m_subcategoria] ([n_subcategoria], [n_categoria], [c_descripcion], [c_usuarioregistro], [d_fecharegistro], [c_ultimousuariomod], [d_ultimafechamod], [c_estado]) VALUES (2, 1, N'SADSAD', N'DVILLANUEV', CAST(N'2018-12-05 00:38:18.340' AS DateTime), N'DVILLANUEV', CAST(N'2018-12-05 00:38:18.340' AS DateTime), N'A')
INSERT [dbo].[m_subcategoria] ([n_subcategoria], [n_categoria], [c_descripcion], [c_usuarioregistro], [d_fecharegistro], [c_ultimousuariomod], [d_ultimafechamod], [c_estado]) VALUES (3, 1, N'AAA', N'DVILLANUEV', CAST(N'2018-12-05 02:45:58.197' AS DateTime), N'DVILLANUEV', CAST(N'2018-12-05 02:45:58.197' AS DateTime), N'I')
INSERT [dbo].[m_telefonocliente] ([c_tipocliente], [c_documeto], [n_linea], [c_numero], [c_nombrecontacto], [c_estado], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'JU', N'22323232323', 4, N'99999', N'AAA', N'A', N'DVILLANUEV', CAST(N'2018-12-06 19:26:38.133' AS DateTime))
INSERT [dbo].[m_telefonocliente] ([c_tipocliente], [c_documeto], [n_linea], [c_numero], [c_nombrecontacto], [c_estado], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'NA', N'72886949', 1, N'5454545', N'FFDDD', N'A', N'DVILLANUEV', CAST(N'2018-11-28 21:46:41.757' AS DateTime))
INSERT [dbo].[m_telefonocliente] ([c_tipocliente], [c_documeto], [n_linea], [c_numero], [c_nombrecontacto], [c_estado], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'NA', N'72886949', 2, N'8767', N'5454', N'A', N'DVILLANUEV', CAST(N'2018-11-28 21:49:12.763' AS DateTime))
INSERT [dbo].[m_telefonocliente] ([c_tipocliente], [c_documeto], [n_linea], [c_numero], [c_nombrecontacto], [c_estado], [c_ultimousuariomod], [d_ultimafechamod]) VALUES (N'NA', N'88989888', 3, N'22222', N'SSS', N'A', N'DVILLANUEV', CAST(N'2018-12-04 23:56:41.993' AS DateTime))
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010000', N'DEPT', N'AMAZONAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010100', N'PROV', N'CHACHAPOYAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010101', N'DIST', N'CHACHAPOYAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010102', N'DIST', N'ASUNCION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010103', N'DIST', N'BALSAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010104', N'DIST', N'CHETO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010105', N'DIST', N'CHILIQUIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010106', N'DIST', N'CHUQUIBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010107', N'DIST', N'GRANADA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010108', N'DIST', N'HUANCAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010109', N'DIST', N'LA JALCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010110', N'DIST', N'LEIMEBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010111', N'DIST', N'LEVANTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010112', N'DIST', N'MAGDALENA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010113', N'DIST', N'MARISCAL CASTILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010114', N'DIST', N'MOLINOPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010115', N'DIST', N'MONTEVIDEO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010116', N'DIST', N'OLLEROS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010117', N'DIST', N'QUINJALCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010118', N'DIST', N'SAN FRANCISCO DE DAGUAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010119', N'DIST', N'SAN ISIDRO DE MAINO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010120', N'DIST', N'SOLOCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010121', N'DIST', N'SONCHE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010200', N'PROV', N'BAGUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010201', N'DIST', N'BAGUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010202', N'DIST', N'ARAMANGO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010203', N'DIST', N'COPALLIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010204', N'DIST', N'EL PARCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010205', N'DIST', N'IMAZA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010206', N'DIST', N'LA PECA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010300', N'PROV', N'BONGARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010301', N'DIST', N'JUMBILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010302', N'DIST', N'CHISQUILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010303', N'DIST', N'CHURUJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010304', N'DIST', N'COROSHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010305', N'DIST', N'CUISPES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010306', N'DIST', N'FLORIDA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010307', N'DIST', N'JAZÁN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010308', N'DIST', N'RECTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010309', N'DIST', N'SAN CARLOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010310', N'DIST', N'SHIPASBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010311', N'DIST', N'VALERA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010312', N'DIST', N'YAMBRASBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010400', N'PROV', N'CONDORCANQUI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010401', N'DIST', N'NIEVA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010402', N'DIST', N'EL CENEPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010403', N'DIST', N'RIO SANTIAGO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010500', N'PROV', N'LUYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010501', N'DIST', N'LAMUD', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010502', N'DIST', N'CAMPORREDONDO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010503', N'DIST', N'COCABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010504', N'DIST', N'COLCAMAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010505', N'DIST', N'CONILA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010506', N'DIST', N'INGUILPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010507', N'DIST', N'LONGUITA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010508', N'DIST', N'LONYA CHICO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010509', N'DIST', N'LUYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010510', N'DIST', N'LUYA VIEJO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010511', N'DIST', N'MARIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010512', N'DIST', N'OCALLI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010513', N'DIST', N'OCUMAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010514', N'DIST', N'PISUQUIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010515', N'DIST', N'PROVIDENCIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010516', N'DIST', N'SAN CRISTOBAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010517', N'DIST', N'SAN FRANCISCO DEL YESO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010518', N'DIST', N'SAN JERONIMO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010519', N'DIST', N'SAN JUAN DE LOPECANCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010520', N'DIST', N'SANTA CATALINA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010521', N'DIST', N'SANTO TOMAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010522', N'DIST', N'TINGO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010523', N'DIST', N'TRITA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010600', N'PROV', N'RODRIGUEZ DE MENDOZA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010601', N'DIST', N'SAN NICOLAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010602', N'DIST', N'CHIRIMOTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010603', N'DIST', N'COCHAMAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010604', N'DIST', N'HUAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010605', N'DIST', N'LIMABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010606', N'DIST', N'LONGAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010607', N'DIST', N'MARISCAL BENAVIDES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010608', N'DIST', N'MILPUC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010609', N'DIST', N'OMIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010610', N'DIST', N'SANTA ROSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010611', N'DIST', N'TOTORA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010612', N'DIST', N'VISTA ALEGRE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010700', N'PROV', N'UTCUBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010701', N'DIST', N'BAGUA GRANDE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010702', N'DIST', N'CAJARURO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010703', N'DIST', N'CUMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010704', N'DIST', N'EL MILAGRO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010705', N'DIST', N'JAMALCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010706', N'DIST', N'LONYA GRANDE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'010707', N'DIST', N'YAMON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020000', N'DEPT', N'ANCASH', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020100', N'PROV', N'HUARAZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020101', N'DIST', N'HUARAZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020102', N'DIST', N'COCHABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020103', N'DIST', N'COLCABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020104', N'DIST', N'HUANCHAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020105', N'DIST', N'INDEPENDENCIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020106', N'DIST', N'JANGAS', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020107', N'DIST', N'LA LIBERTAD', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020108', N'DIST', N'OLLEROS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020109', N'DIST', N'PAMPAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020110', N'DIST', N'PARIACOTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020111', N'DIST', N'PIRA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020112', N'DIST', N'TARICA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020200', N'PROV', N'AIJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020201', N'DIST', N'AIJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020202', N'DIST', N'CORIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020203', N'DIST', N'HUACLLAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020204', N'DIST', N'LA MERCED', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020205', N'DIST', N'SUCCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020300', N'PROV', N'ANTONIO RAYMONDI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020301', N'DIST', N'LLAMELLIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020302', N'DIST', N'ACZO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020303', N'DIST', N'CHACCHO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020304', N'DIST', N'CHINGAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020305', N'DIST', N'MIRGAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020306', N'DIST', N'SAN JUAN DE RONTOY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020400', N'PROV', N'ASUNCION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020401', N'DIST', N'CHACAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020402', N'DIST', N'ACOCHACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020500', N'PROV', N'BOLOGNESI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020501', N'DIST', N'CHIQUIAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020502', N'DIST', N'ABELARDO PARDO LEZAMETA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020503', N'DIST', N'ANTONIO RAYMONDI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020504', N'DIST', N'AQUIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020505', N'DIST', N'CAJACAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020506', N'DIST', N'CANIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020507', N'DIST', N'COLQUIOC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020508', N'DIST', N'HUALLANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020509', N'DIST', N'HUASTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020510', N'DIST', N'HUAYLLACAYAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020511', N'DIST', N'LA PRIMAVERA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020512', N'DIST', N'MANGAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020513', N'DIST', N'PACLLON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020514', N'DIST', N'SAN MIGUEL DE CORPANQUI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020515', N'DIST', N'TICLLOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020600', N'PROV', N'CARHUAZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020601', N'DIST', N'CARHUAZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020602', N'DIST', N'ACOPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020603', N'DIST', N'AMASHCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020604', N'DIST', N'ANTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020605', N'DIST', N'ATAQUERO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020606', N'DIST', N'MARCARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020607', N'DIST', N'PARIAHUANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020608', N'DIST', N'SAN MIGUEL DE ACO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020609', N'DIST', N'SHILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020610', N'DIST', N'TINCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020611', N'DIST', N'YUNGAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020700', N'PROV', N'CARLOS FERMIN FITZCARRALD', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020701', N'DIST', N'SAN LUIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020702', N'DIST', N'SAN NICOLAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020703', N'DIST', N'YAUYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020800', N'PROV', N'CASMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020801', N'DIST', N'CASMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020802', N'DIST', N'BUENA VISTA ALTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020803', N'DIST', N'COMANDANTE NOEL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020804', N'DIST', N'YAUTAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020900', N'PROV', N'CORONGO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020901', N'DIST', N'CORONGO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020902', N'DIST', N'ACO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020903', N'DIST', N'BAMBAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020904', N'DIST', N'CUSCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020905', N'DIST', N'LA PAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020906', N'DIST', N'YANAC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'020907', N'DIST', N'YUPAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021000', N'PROV', N'HUARI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021001', N'DIST', N'HUARI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021002', N'DIST', N'ANRA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021003', N'DIST', N'CAJAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021004', N'DIST', N'CHAVIN DE HUANTAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021005', N'DIST', N'HUACACHI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021006', N'DIST', N'HUACCHIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021007', N'DIST', N'HUACHIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021008', N'DIST', N'HUANTAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021009', N'DIST', N'MASIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021010', N'DIST', N'PAUCAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021011', N'DIST', N'PONTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021012', N'DIST', N'RAHUAPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021013', N'DIST', N'RAPAYAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021014', N'DIST', N'SAN MARCOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021015', N'DIST', N'SAN PEDRO DE CHANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021016', N'DIST', N'UCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021100', N'PROV', N'HUARMEY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021101', N'DIST', N'HUARMEY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021102', N'DIST', N'COCHAPETI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021103', N'DIST', N'CULEBRAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021104', N'DIST', N'HUAYAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021105', N'DIST', N'MALVAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021200', N'PROV', N'HUAYLAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021201', N'DIST', N'CARAZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021202', N'DIST', N'HUALLANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021203', N'DIST', N'HUATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021204', N'DIST', N'HUAYLAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021205', N'DIST', N'MATO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021206', N'DIST', N'PAMPAROMAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021207', N'DIST', N'PUEBLO LIBRE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021208', N'DIST', N'SANTA CRUZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021209', N'DIST', N'SANTO TORIBIO', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021210', N'DIST', N'YURACMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021300', N'PROV', N'MARISCAL LUZURIAGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021301', N'DIST', N'PISCOBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021302', N'DIST', N'CASCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021303', N'DIST', N'ELEAZAR GUZMAN BARRON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021304', N'DIST', N'FIDEL OLIVAS ESCUDERO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021305', N'DIST', N'LLAMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021306', N'DIST', N'LLUMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021307', N'DIST', N'LUCMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021308', N'DIST', N'MUSGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021400', N'PROV', N'OCROS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021401', N'DIST', N'OCROS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021402', N'DIST', N'ACAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021403', N'DIST', N'CAJAMARQUILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021404', N'DIST', N'CARHUAPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021405', N'DIST', N'COCHAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021406', N'DIST', N'CONGAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021407', N'DIST', N'LLIPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021408', N'DIST', N'SAN CRISTOBAL DE RAJAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021409', N'DIST', N'SAN PEDRO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021410', N'DIST', N'SANTIAGO DE CHILCAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021500', N'PROV', N'PALLASCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021501', N'DIST', N'CABANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021502', N'DIST', N'BOLOGNESI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021503', N'DIST', N'CONCHUCOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021504', N'DIST', N'HUACASCHUQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021505', N'DIST', N'HUANDOVAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021506', N'DIST', N'LACABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021507', N'DIST', N'LLAPO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021508', N'DIST', N'PALLASCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021509', N'DIST', N'PAMPAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021510', N'DIST', N'SANTA ROSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021511', N'DIST', N'TAUCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021600', N'PROV', N'POMABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021601', N'DIST', N'POMABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021602', N'DIST', N'HUAYLLAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021603', N'DIST', N'PAROBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021604', N'DIST', N'QUINUABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021700', N'PROV', N'RECUAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021701', N'DIST', N'RECUAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021702', N'DIST', N'CATAC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021703', N'DIST', N'COTAPARACO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021704', N'DIST', N'HUAYLLAPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021705', N'DIST', N'LLACLLIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021706', N'DIST', N'MARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021707', N'DIST', N'PAMPAS CHICO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021708', N'DIST', N'PARARIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021709', N'DIST', N'TAPACOCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021710', N'DIST', N'TICAPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021800', N'PROV', N'SANTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021801', N'DIST', N'CHIMBOTE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021802', N'DIST', N'CACERES DEL PERU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021803', N'DIST', N'COISHCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021804', N'DIST', N'MACATE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021805', N'DIST', N'MORO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021806', N'DIST', N'NEPEÑA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021807', N'DIST', N'SAMANCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021808', N'DIST', N'SANTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021809', N'DIST', N'NUEVO CHIMBOTE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021900', N'PROV', N'SIHUAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021901', N'DIST', N'SIHUAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021902', N'DIST', N'ACOBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021903', N'DIST', N'ALFONSO UGARTE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021904', N'DIST', N'CASHAPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021905', N'DIST', N'CHINGALPO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021906', N'DIST', N'HUAYLLABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021907', N'DIST', N'QUICHES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021908', N'DIST', N'RAGASH', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021909', N'DIST', N'SAN JUAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'021910', N'DIST', N'SICSIBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'022000', N'PROV', N'YUNGAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'022001', N'DIST', N'YUNGAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'022002', N'DIST', N'CASCAPARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'022003', N'DIST', N'MANCOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'022004', N'DIST', N'MATACOTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'022005', N'DIST', N'QUILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'022006', N'DIST', N'RANRAHIRCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'022007', N'DIST', N'SHUPLUY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'022008', N'DIST', N'YANAMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030000', N'DEPT', N'APURIMAC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030100', N'PROV', N'ABANCAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030101', N'DIST', N'ABANCAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030102', N'DIST', N'CHACOCHE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030103', N'DIST', N'CIRCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030104', N'DIST', N'CURAHUASI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030105', N'DIST', N'HUANIPACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030106', N'DIST', N'LAMBRAMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030107', N'DIST', N'PICHIRHUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030108', N'DIST', N'SAN PEDRO DE CACHORA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030109', N'DIST', N'TAMBURCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030200', N'PROV', N'ANDAHUAYLAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030201', N'DIST', N'ANDAHUAYLAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030202', N'DIST', N'ANDARAPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030203', N'DIST', N'CHIARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030204', N'DIST', N'HUANCARAMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030205', N'DIST', N'HUANCARAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030206', N'DIST', N'HUAYANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030207', N'DIST', N'KISHUARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030208', N'DIST', N'PACOBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030209', N'DIST', N'PACUCHA', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030210', N'DIST', N'PAMPACHIRI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030211', N'DIST', N'POMACOCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030212', N'DIST', N'SAN ANTONIO DE CACHI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030213', N'DIST', N'SAN JERONIMO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030214', N'DIST', N'SAN MIGUEL DE CHACCRAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030215', N'DIST', N'SANTA MARIA DE CHICMO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030216', N'DIST', N'TALAVERA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030217', N'DIST', N'TUMAY HUARACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030218', N'DIST', N'TURPO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030219', N'DIST', N'KAQUIABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030300', N'PROV', N'ANTABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030301', N'DIST', N'ANTABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030302', N'DIST', N'EL ORO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030303', N'DIST', N'HUAQUIRCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030304', N'DIST', N'JUAN ESPINOZA MEDRANO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030305', N'DIST', N'OROPESA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030306', N'DIST', N'PACHACONAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030307', N'DIST', N'SABAINO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030400', N'PROV', N'AYMARAES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030401', N'DIST', N'CHALHUANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030402', N'DIST', N'CAPAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030403', N'DIST', N'CARAYBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030404', N'DIST', N'CHAPIMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030405', N'DIST', N'COLCABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030406', N'DIST', N'COTARUSE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030407', N'DIST', N'HUAYLLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030408', N'DIST', N'JUSTO APU SAHUARAURA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030409', N'DIST', N'LUCRE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030410', N'DIST', N'POCOHUANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030411', N'DIST', N'SAN JUAN DE CHACÑA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030412', N'DIST', N'SAÑAYCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030413', N'DIST', N'SORAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030414', N'DIST', N'TAPAIRIHUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030415', N'DIST', N'TINTAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030416', N'DIST', N'TORAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030417', N'DIST', N'YANACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030500', N'PROV', N'COTABAMBAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030501', N'DIST', N'TAMBOBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030502', N'DIST', N'COTABAMBAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030503', N'DIST', N'COYLLURQUI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030504', N'DIST', N'HAQUIRA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030505', N'DIST', N'MARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030506', N'DIST', N'CHALLHUAHUACHO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030600', N'PROV', N'CHINCHEROS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030601', N'DIST', N'CHINCHEROS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030602', N'DIST', N'ANCO-HUALLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030603', N'DIST', N'COCHARCAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030604', N'DIST', N'HUACCANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030605', N'DIST', N'OCOBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030606', N'DIST', N'ONGOY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030607', N'DIST', N'URANMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030608', N'DIST', N'RANRACANCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030700', N'PROV', N'GRAU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030701', N'DIST', N'CHUQUIBAMBILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030702', N'DIST', N'CURPAHUASI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030703', N'DIST', N'GAMARRA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030704', N'DIST', N'HUAYLLATI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030705', N'DIST', N'MAMARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030706', N'DIST', N'MICAELA BASTIDAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030707', N'DIST', N'PATAYPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030708', N'DIST', N'PROGRESO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030709', N'DIST', N'SAN ANTONIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030710', N'DIST', N'SANTA ROSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030711', N'DIST', N'TURPAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030712', N'DIST', N'VILCABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030713', N'DIST', N'VIRUNDO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'030714', N'DIST', N'CURASCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040000', N'DEPT', N'AREQUIPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040100', N'PROV', N'AREQUIPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040101', N'DIST', N'AREQUIPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040102', N'DIST', N'ALTO SELVA ALEGRE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040103', N'DIST', N'CAYMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040104', N'DIST', N'CERRO COLORADO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040105', N'DIST', N'CHARACATO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040106', N'DIST', N'CHIGUATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040107', N'DIST', N'JACOBO HUNTER', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040108', N'DIST', N'LA JOYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040109', N'DIST', N'MARIANO MELGAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040110', N'DIST', N'MIRAFLORES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040111', N'DIST', N'MOLLEBAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040112', N'DIST', N'PAUCARPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040113', N'DIST', N'POCSI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040114', N'DIST', N'POLOBAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040115', N'DIST', N'QUEQUEÑA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040116', N'DIST', N'SABANDIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040117', N'DIST', N'SACHACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040118', N'DIST', N'SAN JUAN DE SIGUAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040119', N'DIST', N'SAN JUAN DE TARUCANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040120', N'DIST', N'SANTA ISABEL DE SIGUAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040121', N'DIST', N'SANTA RITA DE SIGUAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040122', N'DIST', N'SOCABAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040123', N'DIST', N'TIABAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040124', N'DIST', N'UCHUMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040125', N'DIST', N'VITOR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040126', N'DIST', N'YANAHUARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040127', N'DIST', N'YARABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040128', N'DIST', N'YURA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040129', N'DIST', N'JOSE LUIS BUSTAMANTE Y RIVERO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040200', N'PROV', N'CAMANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040201', N'DIST', N'CAMANA', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040202', N'DIST', N'JOSE MARIA QUIMPER', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040203', N'DIST', N'MARIANO NICOLAS VALCARCEL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040204', N'DIST', N'MARISCAL CACERES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040205', N'DIST', N'NICOLAS DE PIEROLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040206', N'DIST', N'OCOÑA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040207', N'DIST', N'QUILCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040208', N'DIST', N'SAMUEL PASTOR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040300', N'PROV', N'CARAVELI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040301', N'DIST', N'CARAVELI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040302', N'DIST', N'ACARI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040303', N'DIST', N'ATICO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040304', N'DIST', N'ATIQUIPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040305', N'DIST', N'BELLA UNION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040306', N'DIST', N'CAHUACHO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040307', N'DIST', N'CHALA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040308', N'DIST', N'CHAPARRA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040309', N'DIST', N'HUANUHUANU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040310', N'DIST', N'JAQUI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040311', N'DIST', N'LOMAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040312', N'DIST', N'QUICACHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040313', N'DIST', N'YAUCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040400', N'PROV', N'CASTILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040401', N'DIST', N'APLAO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040402', N'DIST', N'ANDAGUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040403', N'DIST', N'AYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040404', N'DIST', N'CHACHAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040405', N'DIST', N'CHILCAYMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040406', N'DIST', N'CHOCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040407', N'DIST', N'HUANCARQUI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040408', N'DIST', N'MACHAGUAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040409', N'DIST', N'ORCOPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040410', N'DIST', N'PAMPACOLCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040411', N'DIST', N'TIPAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040412', N'DIST', N'UÑON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040413', N'DIST', N'URACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040414', N'DIST', N'VIRACO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040500', N'PROV', N'CAYLLOMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040501', N'DIST', N'CHIVAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040502', N'DIST', N'ACHOMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040503', N'DIST', N'CABANACONDE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040504', N'DIST', N'CALLALLI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040505', N'DIST', N'CAYLLOMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040506', N'DIST', N'COPORAQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040507', N'DIST', N'HUAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040508', N'DIST', N'HUANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040509', N'DIST', N'ICHUPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040510', N'DIST', N'LARI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040511', N'DIST', N'LLUTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040512', N'DIST', N'MACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040513', N'DIST', N'MADRIGAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040514', N'DIST', N'SAN ANTONIO DE CHUCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040515', N'DIST', N'SIBAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040516', N'DIST', N'TAPAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040517', N'DIST', N'TISCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040518', N'DIST', N'TUTI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040519', N'DIST', N'YANQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040520', N'DIST', N'MAJES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040600', N'PROV', N'CONDESUYOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040601', N'DIST', N'CHUQUIBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040602', N'DIST', N'ANDARAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040603', N'DIST', N'CAYARANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040604', N'DIST', N'CHICHAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040605', N'DIST', N'IRAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040606', N'DIST', N'RIO GRANDE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040607', N'DIST', N'SALAMANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040608', N'DIST', N'YANAQUIHUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040700', N'PROV', N'ISLAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040701', N'DIST', N'MOLLENDO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040702', N'DIST', N'COCACHACRA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040703', N'DIST', N'DEAN VALDIVIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040704', N'DIST', N'ISLAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040705', N'DIST', N'MEJIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040706', N'DIST', N'PUNTA DE BOMBON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040800', N'PROV', N'LA UNION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040801', N'DIST', N'COTAHUASI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040802', N'DIST', N'ALCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040803', N'DIST', N'CHARCANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040804', N'DIST', N'HUAYNACOTAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040805', N'DIST', N'PAMPAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040806', N'DIST', N'PUYCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040807', N'DIST', N'QUECHUALLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040808', N'DIST', N'SAYLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040809', N'DIST', N'TAURIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040810', N'DIST', N'TOMEPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'040811', N'DIST', N'TORO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050000', N'DEPT', N'AYACUCHO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050100', N'PROV', N'HUAMANGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050101', N'DIST', N'AYACUCHO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050102', N'DIST', N'ACOCRO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050103', N'DIST', N'ACOS VINCHOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050104', N'DIST', N'CARMEN ALTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050105', N'DIST', N'CHIARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050106', N'DIST', N'OCROS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050107', N'DIST', N'PACAYCASA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050108', N'DIST', N'QUINUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050109', N'DIST', N'SAN JOSE DE TICLLAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050110', N'DIST', N'SAN JUAN BAUTISTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050111', N'DIST', N'SANTIAGO DE PISCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050112', N'DIST', N'SOCOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050113', N'DIST', N'TAMBILLO', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050114', N'DIST', N'VINCHOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050115', N'DIST', N'JESÚS NAZARENO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050116', N'DIST', N'ANDRÉS AVELINO CÁCERES DORREGAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050200', N'PROV', N'CANGALLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050201', N'DIST', N'CANGALLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050202', N'DIST', N'CHUSCHI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050203', N'DIST', N'LOS MOROCHUCOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050204', N'DIST', N'MARIA PARADO DE BELLIDO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050205', N'DIST', N'PARAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050206', N'DIST', N'TOTOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050300', N'PROV', N'HUANCA SANCOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050301', N'DIST', N'SANCOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050302', N'DIST', N'CARAPO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050303', N'DIST', N'SACSAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050304', N'DIST', N'SANTIAGO DE LUCANAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050400', N'PROV', N'HUANTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050401', N'DIST', N'HUANTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050402', N'DIST', N'AYAHUANCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050403', N'DIST', N'HUAMANGUILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050404', N'DIST', N'IGUAIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050405', N'DIST', N'LURICOCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050406', N'DIST', N'SANTILLANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050407', N'DIST', N'SIVIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050408', N'DIST', N'LLOCHEGUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050409', N'DIST', N'CANAYRE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050410', N'DIST', N'UCHURACCAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050411', N'DIST', N'PUCACOLPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050500', N'PROV', N'LA MAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050501', N'DIST', N'SAN MIGUEL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050502', N'DIST', N'ANCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050503', N'DIST', N'AYNA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050504', N'DIST', N'CHILCAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050505', N'DIST', N'CHUNGUI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050506', N'DIST', N'LUIS CARRANZA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050507', N'DIST', N'SANTA ROSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050508', N'DIST', N'TAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050509', N'DIST', N'SAMUGARI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050510', N'DIST', N'ANCHIHUAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050600', N'PROV', N'LUCANAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050601', N'DIST', N'PUQUIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050602', N'DIST', N'AUCARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050603', N'DIST', N'CABANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050604', N'DIST', N'CARMEN SALCEDO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050605', N'DIST', N'CHAVIÑA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050606', N'DIST', N'CHIPAO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050607', N'DIST', N'HUAC-HUAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050608', N'DIST', N'LARAMATE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050609', N'DIST', N'LEONCIO PRADO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050610', N'DIST', N'LLAUTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050611', N'DIST', N'LUCANAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050612', N'DIST', N'OCAÑA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050613', N'DIST', N'OTOCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050614', N'DIST', N'SAISA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050615', N'DIST', N'SAN CRISTOBAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050616', N'DIST', N'SAN JUAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050617', N'DIST', N'SAN PEDRO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050618', N'DIST', N'SAN PEDRO DE PALCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050619', N'DIST', N'SANCOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050620', N'DIST', N'SANTA ANA DE HUAYCAHUACHO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050621', N'DIST', N'SANTA LUCIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050700', N'PROV', N'PARINACOCHAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050701', N'DIST', N'CORACORA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050702', N'DIST', N'CHUMPI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050703', N'DIST', N'CORONEL CASTAÑEDA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050704', N'DIST', N'PACAPAUSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050705', N'DIST', N'PULLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050706', N'DIST', N'PUYUSCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050707', N'DIST', N'SAN FRANCISCO DE RAVACAYCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050708', N'DIST', N'UPAHUACHO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050800', N'PROV', N'PAUCAR DEL SARA SARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050801', N'DIST', N'PAUSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050802', N'DIST', N'COLTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050803', N'DIST', N'CORCULLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050804', N'DIST', N'LAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050805', N'DIST', N'MARCABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050806', N'DIST', N'OYOLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050807', N'DIST', N'PARARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050808', N'DIST', N'SAN JAVIER DE ALPABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050809', N'DIST', N'SAN JOSE DE USHUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050810', N'DIST', N'SARA SARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050900', N'PROV', N'SUCRE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050901', N'DIST', N'QUEROBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050902', N'DIST', N'BELEN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050903', N'DIST', N'CHALCOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050904', N'DIST', N'CHILCAYOC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050905', N'DIST', N'HUACAÑA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050906', N'DIST', N'MORCOLLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050907', N'DIST', N'PAICO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050908', N'DIST', N'SAN PEDRO DE LARCAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050909', N'DIST', N'SAN SALVADOR DE QUIJE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050910', N'DIST', N'SANTIAGO DE PAUCARAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'050911', N'DIST', N'SORAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051000', N'PROV', N'VICTOR FAJARDO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051001', N'DIST', N'HUANCAPI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051002', N'DIST', N'ALCAMENCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051003', N'DIST', N'APONGO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051004', N'DIST', N'ASQUIPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051005', N'DIST', N'CANARIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051006', N'DIST', N'CAYARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051007', N'DIST', N'COLCA', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051008', N'DIST', N'HUAMANQUIQUIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051009', N'DIST', N'HUANCARAYLLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051010', N'DIST', N'HUAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051011', N'DIST', N'SARHUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051012', N'DIST', N'VILCANCHOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051100', N'PROV', N'VILCAS HUAMAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051101', N'DIST', N'VILCAS HUAMAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051102', N'DIST', N'ACCOMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051103', N'DIST', N'CARHUANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051104', N'DIST', N'CONCEPCION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051105', N'DIST', N'HUAMBALPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051106', N'DIST', N'INDEPENDENCIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051107', N'DIST', N'SAURAMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'051108', N'DIST', N'VISCHONGO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060000', N'DEPT', N'CAJAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060100', N'PROV', N'CAJAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060101', N'DIST', N'CAJAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060102', N'DIST', N'ASUNCION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060103', N'DIST', N'CHETILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060104', N'DIST', N'COSPAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060105', N'DIST', N'ENCAÑADA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060106', N'DIST', N'JESUS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060107', N'DIST', N'LLACANORA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060108', N'DIST', N'LOS BAÑOS DEL INCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060109', N'DIST', N'MAGDALENA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060110', N'DIST', N'MATARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060111', N'DIST', N'NAMORA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060112', N'DIST', N'SAN JUAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060200', N'PROV', N'CAJABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060201', N'DIST', N'CAJABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060202', N'DIST', N'CACHACHI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060203', N'DIST', N'CONDEBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060204', N'DIST', N'SITACOCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060300', N'PROV', N'CELENDIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060301', N'DIST', N'CELENDIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060302', N'DIST', N'CHUMUCH', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060303', N'DIST', N'CORTEGANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060304', N'DIST', N'HUASMIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060305', N'DIST', N'JORGE CHAVEZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060306', N'DIST', N'JOSE GALVEZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060307', N'DIST', N'MIGUEL IGLESIAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060308', N'DIST', N'OXAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060309', N'DIST', N'SOROCHUCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060310', N'DIST', N'SUCRE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060311', N'DIST', N'UTCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060312', N'DIST', N'LA LIBERTAD DE PALLAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060400', N'PROV', N'CHOTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060401', N'DIST', N'CHOTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060402', N'DIST', N'ANGUIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060403', N'DIST', N'CHADIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060404', N'DIST', N'CHIGUIRIP', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060405', N'DIST', N'CHIMBAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060406', N'DIST', N'CHOROPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060407', N'DIST', N'COCHABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060408', N'DIST', N'CONCHAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060409', N'DIST', N'HUAMBOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060410', N'DIST', N'LAJAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060411', N'DIST', N'LLAMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060412', N'DIST', N'MIRACOSTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060413', N'DIST', N'PACCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060414', N'DIST', N'PION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060415', N'DIST', N'QUEROCOTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060416', N'DIST', N'SAN JUAN DE LICUPIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060417', N'DIST', N'TACABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060418', N'DIST', N'TOCMOCHE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060419', N'DIST', N'CHALAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060500', N'PROV', N'CONTUMAZA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060501', N'DIST', N'CONTUMAZA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060502', N'DIST', N'CHILETE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060503', N'DIST', N'CUPISNIQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060504', N'DIST', N'GUZMANGO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060505', N'DIST', N'SAN BENITO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060506', N'DIST', N'SANTA CRUZ DE TOLED', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060507', N'DIST', N'TANTARICA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060508', N'DIST', N'YONAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060600', N'PROV', N'CUTERVO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060601', N'DIST', N'CUTERVO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060602', N'DIST', N'CALLAYUC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060603', N'DIST', N'CHOROS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060604', N'DIST', N'CUJILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060605', N'DIST', N'LA RAMADA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060606', N'DIST', N'PIMPINGOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060607', N'DIST', N'QUEROCOTILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060608', N'DIST', N'SAN ANDRES DE CUTERVO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060609', N'DIST', N'SAN JUAN DE CUTERVO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060610', N'DIST', N'SAN LUIS DE LUCMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060611', N'DIST', N'SANTA CRUZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060612', N'DIST', N'SANTO DOMINGO DE LA CAPILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060613', N'DIST', N'SANTO TOMAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060614', N'DIST', N'SOCOTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060615', N'DIST', N'TORIBIO CASANOVA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060700', N'PROV', N'HUALGAYOC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060701', N'DIST', N'BAMBAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060702', N'DIST', N'CHUGUR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060703', N'DIST', N'HUALGAYOC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060800', N'PROV', N'JAEN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060801', N'DIST', N'JAEN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060802', N'DIST', N'BELLAVISTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060803', N'DIST', N'CHONTALI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060804', N'DIST', N'COLASAY', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060805', N'DIST', N'HUABAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060806', N'DIST', N'LAS PIRIAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060807', N'DIST', N'POMAHUACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060808', N'DIST', N'PUCARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060809', N'DIST', N'SALLIQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060810', N'DIST', N'SAN FELIPE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060811', N'DIST', N'SAN JOSE DEL ALTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060812', N'DIST', N'SANTA ROSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060900', N'PROV', N'SAN IGNACIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060901', N'DIST', N'SAN IGNACIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060902', N'DIST', N'CHIRINOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060903', N'DIST', N'HUARANGO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060904', N'DIST', N'LA COIPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060905', N'DIST', N'NAMBALLE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060906', N'DIST', N'SAN JOSE DE LOURDES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'060907', N'DIST', N'TABACONAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061000', N'PROV', N'SAN MARCOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061001', N'DIST', N'PEDRO GALVEZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061002', N'DIST', N'CHANCAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061003', N'DIST', N'EDUARDO VILLANUEVA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061004', N'DIST', N'GREGORIO PITA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061005', N'DIST', N'ICHOCAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061006', N'DIST', N'JOSE MANUEL QUIROZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061007', N'DIST', N'JOSE SABOGAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061100', N'PROV', N'SAN MIGUEL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061101', N'DIST', N'SAN MIGUEL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061102', N'DIST', N'BOLIVAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061103', N'DIST', N'CALQUIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061104', N'DIST', N'CATILLUC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061105', N'DIST', N'EL PRADO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061106', N'DIST', N'LA FLORIDA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061107', N'DIST', N'LLAPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061108', N'DIST', N'NANCHOC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061109', N'DIST', N'NIEPOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061110', N'DIST', N'SAN GREGORIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061111', N'DIST', N'SAN SILVESTRE DE COCHAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061112', N'DIST', N'TONGOD', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061113', N'DIST', N'UNION AGUA BLANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061200', N'PROV', N'SAN PABLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061201', N'DIST', N'SAN PABLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061202', N'DIST', N'SAN BERNARDINO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061203', N'DIST', N'SAN LUIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061204', N'DIST', N'TUMBADEN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061300', N'PROV', N'SANTA CRUZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061301', N'DIST', N'SANTA CRUZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061302', N'DIST', N'ANDABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061303', N'DIST', N'CATACHE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061304', N'DIST', N'CHANCAYBAÑOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061305', N'DIST', N'LA ESPERANZA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061306', N'DIST', N'NINABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061307', N'DIST', N'PULAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061308', N'DIST', N'SAUCEPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061309', N'DIST', N'SEXI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061310', N'DIST', N'UTICYACU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'061311', N'DIST', N'YAUYUCAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'070000', N'DEPT', N'CALLAO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'070100', N'PROV', N'PROV. CONST. DEL CALLAO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'070101', N'DIST', N'CALLAO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'070102', N'DIST', N'BELLAVISTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'070103', N'DIST', N'CARMEN DE LA LEGUA REYNOSO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'070104', N'DIST', N'LA PERLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'070105', N'DIST', N'LA PUNTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'070106', N'DIST', N'VENTANILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'070107', N'DIST', N'MI PERÚ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080000', N'DEPT', N'CUSCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080100', N'PROV', N'CUSCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080101', N'DIST', N'CUSCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080102', N'DIST', N'CCORCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080103', N'DIST', N'POROY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080104', N'DIST', N'SAN JERONIMO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080105', N'DIST', N'SAN SEBASTIAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080106', N'DIST', N'SANTIAGO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080107', N'DIST', N'SAYLLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080108', N'DIST', N'WANCHAQ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080200', N'PROV', N'ACOMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080201', N'DIST', N'ACOMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080202', N'DIST', N'ACOPIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080203', N'DIST', N'ACOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080204', N'DIST', N'MOSOC LLACTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080205', N'DIST', N'POMACANCHI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080206', N'DIST', N'RONDOCAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080207', N'DIST', N'SANGARARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080300', N'PROV', N'ANTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080301', N'DIST', N'ANTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080302', N'DIST', N'ANCAHUASI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080303', N'DIST', N'CACHIMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080304', N'DIST', N'CHINCHAYPUJIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080305', N'DIST', N'HUAROCONDO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080306', N'DIST', N'LIMATAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080307', N'DIST', N'MOLLEPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080308', N'DIST', N'PUCYURA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080309', N'DIST', N'ZURITE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080400', N'PROV', N'CALCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080401', N'DIST', N'CALCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080402', N'DIST', N'COYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080403', N'DIST', N'LAMAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080404', N'DIST', N'LARES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080405', N'DIST', N'PISAC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080406', N'DIST', N'SAN SALVADOR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080407', N'DIST', N'TARAY', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080408', N'DIST', N'YANATILE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080500', N'PROV', N'CANAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080501', N'DIST', N'YANAOCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080502', N'DIST', N'CHECCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080503', N'DIST', N'KUNTURKANKI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080504', N'DIST', N'LANGUI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080505', N'DIST', N'LAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080506', N'DIST', N'PAMPAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080507', N'DIST', N'QUEHUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080508', N'DIST', N'TUPAC AMARU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080600', N'PROV', N'CANCHIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080601', N'DIST', N'SICUANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080602', N'DIST', N'CHECACUPE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080603', N'DIST', N'COMBAPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080604', N'DIST', N'MARANGANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080605', N'DIST', N'PITUMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080606', N'DIST', N'SAN PABLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080607', N'DIST', N'SAN PEDRO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080608', N'DIST', N'TINTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080700', N'PROV', N'CHUMBIVILCAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080701', N'DIST', N'SANTO TOMAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080702', N'DIST', N'CAPACMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080703', N'DIST', N'CHAMACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080704', N'DIST', N'COLQUEMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080705', N'DIST', N'LIVITACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080706', N'DIST', N'LLUSCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080707', N'DIST', N'QUIÑOTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080708', N'DIST', N'VELILLE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080800', N'PROV', N'ESPINAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080801', N'DIST', N'ESPINAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080802', N'DIST', N'CONDOROMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080803', N'DIST', N'COPORAQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080804', N'DIST', N'OCORURO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080805', N'DIST', N'PALLPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080806', N'DIST', N'PICHIGUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080807', N'DIST', N'SUYCKUTAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080808', N'DIST', N'ALTO PICHIGUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080900', N'PROV', N'LA CONVENCION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080901', N'DIST', N'SANTA ANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080902', N'DIST', N'ECHARATE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080903', N'DIST', N'HUAYOPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080904', N'DIST', N'MARANURA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080905', N'DIST', N'OCOBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080906', N'DIST', N'QUELLOUNO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080907', N'DIST', N'KIMBIRI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080908', N'DIST', N'SANTA TERESA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080909', N'DIST', N'VILCABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080910', N'DIST', N'PICHARI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080911', N'DIST', N'INKAWASI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'080912', N'DIST', N'VILLA VIRGEN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081000', N'PROV', N'PARURO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081001', N'DIST', N'PARURO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081002', N'DIST', N'ACCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081003', N'DIST', N'CCAPI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081004', N'DIST', N'COLCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081005', N'DIST', N'HUANOQUITE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081006', N'DIST', N'OMACHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081007', N'DIST', N'PACCARITAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081008', N'DIST', N'PILLPINTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081009', N'DIST', N'YAURISQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081100', N'PROV', N'PAUCARTAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081101', N'DIST', N'PAUCARTAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081102', N'DIST', N'CAICAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081103', N'DIST', N'CHALLABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081104', N'DIST', N'COLQUEPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081105', N'DIST', N'HUANCARANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081106', N'DIST', N'KOSÑIPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081200', N'PROV', N'QUISPICANCHI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081201', N'DIST', N'URCOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081202', N'DIST', N'ANDAHUAYLILLAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081203', N'DIST', N'CAMANTI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081204', N'DIST', N'CCARHUAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081205', N'DIST', N'CCATCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081206', N'DIST', N'CUSIPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081207', N'DIST', N'HUARO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081208', N'DIST', N'LUCRE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081209', N'DIST', N'MARCAPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081210', N'DIST', N'OCONGATE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081211', N'DIST', N'OROPESA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081212', N'DIST', N'QUIQUIJANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081300', N'PROV', N'URUBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081301', N'DIST', N'URUBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081302', N'DIST', N'CHINCHERO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081303', N'DIST', N'HUAYLLABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081304', N'DIST', N'MACHUPICCHU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081305', N'DIST', N'MARAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081306', N'DIST', N'OLLANTAYTAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'081307', N'DIST', N'YUCAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090000', N'DEPT', N'HUANCAVELICA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090100', N'PROV', N'HUANCAVELICA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090101', N'DIST', N'HUANCAVELICA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090102', N'DIST', N'ACOBAMBILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090103', N'DIST', N'ACORIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090104', N'DIST', N'CONAYCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090105', N'DIST', N'CUENCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090106', N'DIST', N'HUACHOCOLPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090107', N'DIST', N'HUAYLLAHUARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090108', N'DIST', N'IZCUCHACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090109', N'DIST', N'LARIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090110', N'DIST', N'MANTA', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090111', N'DIST', N'MARISCAL CACERES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090112', N'DIST', N'MOYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090113', N'DIST', N'NUEVO OCCORO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090114', N'DIST', N'PALCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090115', N'DIST', N'PILCHACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090116', N'DIST', N'VILCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090117', N'DIST', N'YAULI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090118', N'DIST', N'ASCENSIÓN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090119', N'DIST', N'HUANDO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090200', N'PROV', N'ACOBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090201', N'DIST', N'ACOBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090202', N'DIST', N'ANDABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090203', N'DIST', N'ANTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090204', N'DIST', N'CAJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090205', N'DIST', N'MARCAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090206', N'DIST', N'PAUCARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090207', N'DIST', N'POMACOCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090208', N'DIST', N'ROSARIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090300', N'PROV', N'ANGARAES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090301', N'DIST', N'LIRCAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090302', N'DIST', N'ANCHONGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090303', N'DIST', N'CALLANMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090304', N'DIST', N'CCOCHACCASA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090305', N'DIST', N'CHINCHO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090306', N'DIST', N'CONGALLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090307', N'DIST', N'HUANCA-HUANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090308', N'DIST', N'HUAYLLAY GRANDE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090309', N'DIST', N'JULCAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090310', N'DIST', N'SAN ANTONIO DE ANTAPARCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090311', N'DIST', N'SANTO TOMAS DE PATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090312', N'DIST', N'SECCLLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090400', N'PROV', N'CASTROVIRREYNA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090401', N'DIST', N'CASTROVIRREYNA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090402', N'DIST', N'ARMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090403', N'DIST', N'AURAHUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090404', N'DIST', N'CAPILLAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090405', N'DIST', N'CHUPAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090406', N'DIST', N'COCAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090407', N'DIST', N'HUACHOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090408', N'DIST', N'HUAMATAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090409', N'DIST', N'MOLLEPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090410', N'DIST', N'SAN JUAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090411', N'DIST', N'SANTA ANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090412', N'DIST', N'TANTARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090413', N'DIST', N'TICRAPO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090500', N'PROV', N'CHURCAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090501', N'DIST', N'CHURCAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090502', N'DIST', N'ANCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090503', N'DIST', N'CHINCHIHUASI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090504', N'DIST', N'EL CARMEN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090505', N'DIST', N'LA MERCED', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090506', N'DIST', N'LOCROJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090507', N'DIST', N'PAUCARBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090508', N'DIST', N'SAN MIGUEL DE MAYOCC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090509', N'DIST', N'SAN PEDRO DE CORIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090510', N'DIST', N'PACHAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090511', N'DIST', N'COSME', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090600', N'PROV', N'HUAYTARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090601', N'DIST', N'HUAYTARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090602', N'DIST', N'AYAVI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090603', N'DIST', N'CORDOVA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090604', N'DIST', N'HUAYACUNDO ARMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090605', N'DIST', N'LARAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090606', N'DIST', N'OCOYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090607', N'DIST', N'PILPICHACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090608', N'DIST', N'QUERCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090609', N'DIST', N'QUITO-ARMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090610', N'DIST', N'SAN ANTONIO DE CUSICANCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090611', N'DIST', N'SAN FRANCISCO DE SANGAYAICO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090612', N'DIST', N'SAN ISIDRO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090613', N'DIST', N'SANTIAGO DE CHOCORVOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090614', N'DIST', N'SANTIAGO DE QUIRAHUARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090615', N'DIST', N'SANTO DOMINGO DE CAPILLAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090616', N'DIST', N'TAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090700', N'PROV', N'TAYACAJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090701', N'DIST', N'PAMPAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090702', N'DIST', N'ACOSTAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090703', N'DIST', N'ACRAQUIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090704', N'DIST', N'AHUAYCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090705', N'DIST', N'COLCABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090706', N'DIST', N'DANIEL HERNANDEZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090707', N'DIST', N'HUACHOCOLPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090709', N'DIST', N'HUARIBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090710', N'DIST', N'ÑAHUIMPUQUIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090711', N'DIST', N'PAZOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090713', N'DIST', N'QUISHUAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090714', N'DIST', N'SALCABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090715', N'DIST', N'SALCAHUASI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090716', N'DIST', N'SAN MARCOS DE ROCCHAC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090717', N'DIST', N'SURCUBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'090718', N'DIST', N'TINTAY PUNCU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100000', N'DEPT', N'HUANUCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100100', N'PROV', N'HUANUCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100101', N'DIST', N'HUANUCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100102', N'DIST', N'AMARILIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100103', N'DIST', N'CHINCHAO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100104', N'DIST', N'CHURUBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100105', N'DIST', N'MARGOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100106', N'DIST', N'QUISQUI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100107', N'DIST', N'SAN FRANCISCO DE CAYRAN', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100108', N'DIST', N'SAN PEDRO DE CHAULAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100109', N'DIST', N'SANTA MARIA DEL VALLE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100110', N'DIST', N'YARUMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100111', N'DIST', N'PILLCO MARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100112', N'DIST', N'YACUS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100200', N'PROV', N'AMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100201', N'DIST', N'AMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100202', N'DIST', N'CAYNA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100203', N'DIST', N'COLPAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100204', N'DIST', N'CONCHAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100205', N'DIST', N'HUACAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100206', N'DIST', N'SAN FRANCISCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100207', N'DIST', N'SAN RAFAEL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100208', N'DIST', N'TOMAY KICHWA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100300', N'PROV', N'DOS DE MAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100301', N'DIST', N'LA UNION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100307', N'DIST', N'CHUQUIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100311', N'DIST', N'MARIAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100313', N'DIST', N'PACHAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100316', N'DIST', N'QUIVILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100317', N'DIST', N'RIPAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100321', N'DIST', N'SHUNQUI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100322', N'DIST', N'SILLAPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100323', N'DIST', N'YANAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100400', N'PROV', N'HUACAYBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100401', N'DIST', N'HUACAYBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100402', N'DIST', N'CANCHABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100403', N'DIST', N'COCHABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100404', N'DIST', N'PINRA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100500', N'PROV', N'HUAMALIES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100501', N'DIST', N'LLATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100502', N'DIST', N'ARANCAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100503', N'DIST', N'CHAVIN DE PARIARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100504', N'DIST', N'JACAS GRANDE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100505', N'DIST', N'JIRCAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100506', N'DIST', N'MIRAFLORES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100507', N'DIST', N'MONZON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100508', N'DIST', N'PUNCHAO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100509', N'DIST', N'PUÑOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100510', N'DIST', N'SINGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100511', N'DIST', N'TANTAMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100600', N'PROV', N'LEONCIO PRADO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100601', N'DIST', N'RUPA-RUPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100602', N'DIST', N'DANIEL ALOMIAS ROBLES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100603', N'DIST', N'HERMILIO VALDIZAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100604', N'DIST', N'JOSE CRESPO Y CASTILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100605', N'DIST', N'LUYANDO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100606', N'DIST', N'MARIANO DAMASO BERAUN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100700', N'PROV', N'MARAÑON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100701', N'DIST', N'HUACRACHUCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100702', N'DIST', N'CHOLON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100703', N'DIST', N'SAN BUENAVENTURA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100800', N'PROV', N'PACHITEA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100801', N'DIST', N'PANAO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100802', N'DIST', N'CHAGLLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100803', N'DIST', N'MOLINO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100804', N'DIST', N'UMARI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100900', N'PROV', N'PUERTO INCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100901', N'DIST', N'PUERTO INCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100902', N'DIST', N'CODO DEL POZUZO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100903', N'DIST', N'HONORIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100904', N'DIST', N'TOURNAVISTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'100905', N'DIST', N'YUYAPICHIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101000', N'PROV', N'LAURICOCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101001', N'DIST', N'JESUS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101002', N'DIST', N'BAÑOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101003', N'DIST', N'JIVIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101004', N'DIST', N'QUEROPALCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101005', N'DIST', N'RONDOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101006', N'DIST', N'SAN FRANCISCO DE ASIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101007', N'DIST', N'SAN MIGUEL DE CAURI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101100', N'PROV', N'YAROWILCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101101', N'DIST', N'CHAVINILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101102', N'DIST', N'CAHUAC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101103', N'DIST', N'CHACABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101104', N'DIST', N'CHUPAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101105', N'DIST', N'JACAS CHICO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101106', N'DIST', N'OBAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101107', N'DIST', N'PAMPAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'101108', N'DIST', N'CHORAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110000', N'DEPT', N'ICA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110100', N'PROV', N'ICA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110101', N'DIST', N'ICA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110102', N'DIST', N'LA TINGUIÑA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110103', N'DIST', N'LOS AQUIJES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110104', N'DIST', N'OCUCAJE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110105', N'DIST', N'PACHACUTEC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110106', N'DIST', N'PARCONA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110107', N'DIST', N'PUEBLO NUEVO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110108', N'DIST', N'SALAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110109', N'DIST', N'SAN JOSE DE LOS MOLINOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110110', N'DIST', N'SAN JUAN BAUTISTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110111', N'DIST', N'SANTIAGO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110112', N'DIST', N'SUBTANJALLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110113', N'DIST', N'TATE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110114', N'DIST', N'YAUCA DEL ROSARIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110200', N'PROV', N'CHINCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110201', N'DIST', N'CHINCHA ALTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110202', N'DIST', N'ALTO LARAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110203', N'DIST', N'CHAVIN', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110204', N'DIST', N'CHINCHA BAJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110205', N'DIST', N'EL CARMEN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110206', N'DIST', N'GROCIO PRADO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110207', N'DIST', N'PUEBLO NUEVO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110208', N'DIST', N'SAN JUAN DE YANAC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110209', N'DIST', N'SAN PEDRO DE HUACARPANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110210', N'DIST', N'SUNAMPE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110211', N'DIST', N'TAMBO DE MORA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110300', N'PROV', N'NAZCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110301', N'DIST', N'NAZCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110302', N'DIST', N'CHANGUILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110303', N'DIST', N'EL INGENIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110304', N'DIST', N'MARCONA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110305', N'DIST', N'VISTA ALEGRE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110400', N'PROV', N'PALPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110401', N'DIST', N'PALPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110402', N'DIST', N'LLIPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110403', N'DIST', N'RIO GRANDE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110404', N'DIST', N'SANTA CRUZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110405', N'DIST', N'TIBILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110500', N'PROV', N'PISCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110501', N'DIST', N'PISCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110502', N'DIST', N'HUANCANO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110503', N'DIST', N'HUMAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110504', N'DIST', N'INDEPENDENCIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110505', N'DIST', N'PARACAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110506', N'DIST', N'SAN ANDRES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110507', N'DIST', N'SAN CLEMENTE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'110508', N'DIST', N'TUPAC AMARU INCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120000', N'DEPT', N'JUNIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120100', N'PROV', N'HUANCAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120101', N'DIST', N'HUANCAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120104', N'DIST', N'CARHUACALLANGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120105', N'DIST', N'CHACAPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120106', N'DIST', N'CHICCHE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120107', N'DIST', N'CHILCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120108', N'DIST', N'CHONGOS ALTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120111', N'DIST', N'CHUPURO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120112', N'DIST', N'COLCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120113', N'DIST', N'CULLHUAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120114', N'DIST', N'EL TAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120116', N'DIST', N'HUACRAPUQUIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120117', N'DIST', N'HUALHUAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120119', N'DIST', N'HUANCAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120120', N'DIST', N'HUASICANCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120121', N'DIST', N'HUAYUCACHI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120122', N'DIST', N'INGENIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120124', N'DIST', N'PARIAHUANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120125', N'DIST', N'PILCOMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120126', N'DIST', N'PUCARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120127', N'DIST', N'QUICHUAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120128', N'DIST', N'QUILCAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120129', N'DIST', N'SAN AGUSTIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120130', N'DIST', N'SAN JERONIMO DE TUNAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120132', N'DIST', N'SAÑO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120133', N'DIST', N'SAPALLANGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120134', N'DIST', N'SICAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120135', N'DIST', N'SANTO DOMINGO DE ACOBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120136', N'DIST', N'VIQUES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120200', N'PROV', N'CONCEPCION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120201', N'DIST', N'CONCEPCION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120202', N'DIST', N'ACO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120203', N'DIST', N'ANDAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120204', N'DIST', N'CHAMBARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120205', N'DIST', N'COCHAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120206', N'DIST', N'COMAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120207', N'DIST', N'HEROINAS TOLEDO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120208', N'DIST', N'MANZANARES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120209', N'DIST', N'MARISCAL CASTILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120210', N'DIST', N'MATAHUASI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120211', N'DIST', N'MITO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120212', N'DIST', N'NUEVE DE JULIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120213', N'DIST', N'ORCOTUNA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120214', N'DIST', N'SAN JOSE DE QUERO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120215', N'DIST', N'SANTA ROSA DE OCOPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120300', N'PROV', N'CHANCHAMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120301', N'DIST', N'CHANCHAMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120302', N'DIST', N'PERENE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120303', N'DIST', N'PICHANAQUI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120304', N'DIST', N'SAN LUIS DE SHUARO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120305', N'DIST', N'SAN RAMON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120306', N'DIST', N'VITOC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120400', N'PROV', N'JAUJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120401', N'DIST', N'JAUJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120402', N'DIST', N'ACOLLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120403', N'DIST', N'APATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120404', N'DIST', N'ATAURA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120405', N'DIST', N'CANCHAYLLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120406', N'DIST', N'CURICACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120407', N'DIST', N'EL MANTARO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120408', N'DIST', N'HUAMALI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120409', N'DIST', N'HUARIPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120410', N'DIST', N'HUERTAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120411', N'DIST', N'JANJAILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120412', N'DIST', N'JULCAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120413', N'DIST', N'LEONOR ORDOÑEZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120414', N'DIST', N'LLOCLLAPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120415', N'DIST', N'MARCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120416', N'DIST', N'MASMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120417', N'DIST', N'MASMA CHICCHE', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120418', N'DIST', N'MOLINOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120419', N'DIST', N'MONOBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120420', N'DIST', N'MUQUI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120421', N'DIST', N'MUQUIYAUYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120422', N'DIST', N'PACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120423', N'DIST', N'PACCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120424', N'DIST', N'PANCAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120425', N'DIST', N'PARCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120426', N'DIST', N'POMACANCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120427', N'DIST', N'RICRAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120428', N'DIST', N'SAN LORENZO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120429', N'DIST', N'SAN PEDRO DE CHUNAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120430', N'DIST', N'SAUSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120431', N'DIST', N'SINCOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120432', N'DIST', N'TUNAN MARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120433', N'DIST', N'YAULI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120434', N'DIST', N'YAUYOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120500', N'PROV', N'JUNIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120501', N'DIST', N'JUNIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120502', N'DIST', N'CARHUAMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120503', N'DIST', N'ONDORES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120504', N'DIST', N'ULCUMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120600', N'PROV', N'SATIPO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120601', N'DIST', N'SATIPO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120602', N'DIST', N'COVIRIALI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120603', N'DIST', N'LLAYLLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120604', N'DIST', N'MAZAMARI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120605', N'DIST', N'PAMPA HERMOSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120606', N'DIST', N'PANGOA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120607', N'DIST', N'RIO NEGRO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120608', N'DIST', N'RIO TAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120699', N'DIST', N'MAZAMARI-PANGOA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120700', N'PROV', N'TARMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120701', N'DIST', N'TARMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120702', N'DIST', N'ACOBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120703', N'DIST', N'HUARICOLCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120704', N'DIST', N'HUASAHUASI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120705', N'DIST', N'LA UNION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120706', N'DIST', N'PALCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120707', N'DIST', N'PALCAMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120708', N'DIST', N'SAN PEDRO DE CAJAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120709', N'DIST', N'TAPO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120800', N'PROV', N'YAULI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120801', N'DIST', N'LA OROYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120802', N'DIST', N'CHACAPALPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120803', N'DIST', N'HUAY-HUAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120804', N'DIST', N'MARCAPOMACOCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120805', N'DIST', N'MOROCOCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120806', N'DIST', N'PACCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120807', N'DIST', N'SANTA BARBARA DE CARHUACAYAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120808', N'DIST', N'SANTA ROSA DE SACCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120809', N'DIST', N'SUITUCANCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120810', N'DIST', N'YAULI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120900', N'PROV', N'CHUPACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120901', N'DIST', N'CHUPACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120902', N'DIST', N'AHUAC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120903', N'DIST', N'CHONGOS BAJO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120904', N'DIST', N'HUACHAC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120905', N'DIST', N'HUAMANCACA CHICO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120906', N'DIST', N'SAN JUAN DE ISCOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120907', N'DIST', N'SAN JUAN DE JARPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120908', N'DIST', N'3 DE DICIEMBRE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'120909', N'DIST', N'YANACANCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130000', N'DEPT', N'LA LIBERTAD', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130100', N'PROV', N'TRUJILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130101', N'DIST', N'TRUJILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130102', N'DIST', N'EL PORVENIR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130103', N'DIST', N'FLORENCIA DE MORA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130104', N'DIST', N'HUANCHACO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130105', N'DIST', N'LA ESPERANZA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130106', N'DIST', N'LAREDO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130107', N'DIST', N'MOCHE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130108', N'DIST', N'POROTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130109', N'DIST', N'SALAVERRY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130110', N'DIST', N'SIMBAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130111', N'DIST', N'VICTOR LARCO HERRERA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130200', N'PROV', N'ASCOPE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130201', N'DIST', N'ASCOPE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130202', N'DIST', N'CHICAMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130203', N'DIST', N'CHOCOPE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130204', N'DIST', N'MAGDALENA DE CAO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130205', N'DIST', N'PAIJAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130206', N'DIST', N'RAZURI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130207', N'DIST', N'SANTIAGO DE CAO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130208', N'DIST', N'CASA GRANDE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130300', N'PROV', N'BOLIVAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130301', N'DIST', N'BOLIVAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130302', N'DIST', N'BAMBAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130303', N'DIST', N'CONDORMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130304', N'DIST', N'LONGOTEA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130305', N'DIST', N'UCHUMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130306', N'DIST', N'UCUNCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130400', N'PROV', N'CHEPEN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130401', N'DIST', N'CHEPEN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130402', N'DIST', N'PACANGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130403', N'DIST', N'PUEBLO NUEVO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130500', N'PROV', N'JULCAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130501', N'DIST', N'JULCAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130502', N'DIST', N'CALAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130503', N'DIST', N'CARABAMBA', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130504', N'DIST', N'HUASO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130600', N'PROV', N'OTUZCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130601', N'DIST', N'OTUZCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130602', N'DIST', N'AGALLPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130604', N'DIST', N'CHARAT', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130605', N'DIST', N'HUARANCHAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130606', N'DIST', N'LA CUESTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130608', N'DIST', N'MACHE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130610', N'DIST', N'PARANDAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130611', N'DIST', N'SALPO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130613', N'DIST', N'SINSICAP', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130614', N'DIST', N'USQUIL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130700', N'PROV', N'PACASMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130701', N'DIST', N'SAN PEDRO DE LLOC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130702', N'DIST', N'GUADALUPE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130703', N'DIST', N'JEQUETEPEQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130704', N'DIST', N'PACASMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130705', N'DIST', N'SAN JOSE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130800', N'PROV', N'PATAZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130801', N'DIST', N'TAYABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130802', N'DIST', N'BULDIBUYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130803', N'DIST', N'CHILLIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130804', N'DIST', N'HUANCASPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130805', N'DIST', N'HUAYLILLAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130806', N'DIST', N'HUAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130807', N'DIST', N'ONGON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130808', N'DIST', N'PARCOY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130809', N'DIST', N'PATAZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130810', N'DIST', N'PIAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130811', N'DIST', N'SANTIAGO DE CHALLAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130812', N'DIST', N'TAURIJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130813', N'DIST', N'URPAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130900', N'PROV', N'SANCHEZ CARRION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130901', N'DIST', N'HUAMACHUCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130902', N'DIST', N'CHUGAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130903', N'DIST', N'COCHORCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130904', N'DIST', N'CURGOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130905', N'DIST', N'MARCABAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130906', N'DIST', N'SANAGORAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130907', N'DIST', N'SARIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'130908', N'DIST', N'SARTIMBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131000', N'PROV', N'SANTIAGO DE CHUCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131001', N'DIST', N'SANTIAGO DE CHUCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131002', N'DIST', N'ANGASMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131003', N'DIST', N'CACHICADAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131004', N'DIST', N'MOLLEBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131005', N'DIST', N'MOLLEPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131006', N'DIST', N'QUIRUVILCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131007', N'DIST', N'SANTA CRUZ DE CHUCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131008', N'DIST', N'SITABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131100', N'PROV', N'GRAN CHIMU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131101', N'DIST', N'CASCAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131102', N'DIST', N'LUCMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131103', N'DIST', N'MARMOT', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131104', N'DIST', N'SAYAPULLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131200', N'PROV', N'VIRU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131201', N'DIST', N'VIRU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131202', N'DIST', N'CHAO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'131203', N'DIST', N'GUADALUPITO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140000', N'DEPT', N'LAMBAYEQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140100', N'PROV', N'CHICLAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140101', N'DIST', N'CHICLAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140102', N'DIST', N'CHONGOYAPE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140103', N'DIST', N'ETEN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140104', N'DIST', N'ETEN PUERTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140105', N'DIST', N'JOSE LEONARDO ORTIZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140106', N'DIST', N'LA VICTORIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140107', N'DIST', N'LAGUNAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140108', N'DIST', N'MONSEFU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140109', N'DIST', N'NUEVA ARICA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140110', N'DIST', N'OYOTUN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140111', N'DIST', N'PICSI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140112', N'DIST', N'PIMENTEL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140113', N'DIST', N'REQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140114', N'DIST', N'SANTA ROSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140115', N'DIST', N'SAÑA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140116', N'DIST', N'CAYALTÍ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140117', N'DIST', N'PATAPO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140118', N'DIST', N'POMALCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140119', N'DIST', N'PUCALÁ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140120', N'DIST', N'TUMÁN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140200', N'PROV', N'FERREÑAFE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140201', N'DIST', N'FERREÑAFE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140202', N'DIST', N'CAÑARIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140203', N'DIST', N'INCAHUASI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140204', N'DIST', N'MANUEL ANTONIO MESONES MURO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140205', N'DIST', N'PITIPO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140206', N'DIST', N'PUEBLO NUEVO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140300', N'PROV', N'LAMBAYEQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140301', N'DIST', N'LAMBAYEQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140302', N'DIST', N'CHOCHOPE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140303', N'DIST', N'ILLIMO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140304', N'DIST', N'JAYANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140305', N'DIST', N'MOCHUMI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140306', N'DIST', N'MORROPE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140307', N'DIST', N'MOTUPE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140308', N'DIST', N'OLMOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140309', N'DIST', N'PACORA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140310', N'DIST', N'SALAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140311', N'DIST', N'SAN JOSE', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'140312', N'DIST', N'TUCUME', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150000', N'DEPT', N'LIMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150100', N'PROV', N'LIMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150101', N'DIST', N'LIMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150102', N'DIST', N'ANCON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150103', N'DIST', N'ATE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150104', N'DIST', N'BARRANCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150105', N'DIST', N'BREÑA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150106', N'DIST', N'CARABAYLLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150107', N'DIST', N'CHACLACAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150108', N'DIST', N'CHORRILLOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150109', N'DIST', N'CIENEGUILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150110', N'DIST', N'COMAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150111', N'DIST', N'EL AGUSTINO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150112', N'DIST', N'INDEPENDENCIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150113', N'DIST', N'JESUS MARIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150114', N'DIST', N'LA MOLINA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150115', N'DIST', N'LA VICTORIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150116', N'DIST', N'LINCE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150117', N'DIST', N'LOS OLIVOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150118', N'DIST', N'LURIGANCHO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150119', N'DIST', N'LURIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150120', N'DIST', N'MAGDALENA DEL MAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150121', N'DIST', N'PUEBLO LIBRE (MAGDALENA VIEJA)', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150122', N'DIST', N'MIRAFLORES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150123', N'DIST', N'PACHACAMAC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150124', N'DIST', N'PUCUSANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150125', N'DIST', N'PUENTE PIEDRA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150126', N'DIST', N'PUNTA HERMOSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150127', N'DIST', N'PUNTA NEGRA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150128', N'DIST', N'RIMAC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150129', N'DIST', N'SAN BARTOLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150130', N'DIST', N'SAN BORJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150131', N'DIST', N'SAN ISIDRO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150132', N'DIST', N'SAN JUAN DE LURIGANCHO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150133', N'DIST', N'SAN JUAN DE MIRAFLORES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150134', N'DIST', N'SAN LUIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150135', N'DIST', N'SAN MARTIN DE PORRES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150136', N'DIST', N'SAN MIGUEL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150137', N'DIST', N'SANTA ANITA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150138', N'DIST', N'SANTA MARIA DEL MAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150139', N'DIST', N'SANTA ROSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150140', N'DIST', N'SANTIAGO DE SURCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150141', N'DIST', N'SURQUILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150142', N'DIST', N'VILLA EL SALVADOR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150143', N'DIST', N'VILLA MARIA DEL TRIUNFO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150200', N'PROV', N'BARRANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150201', N'DIST', N'BARRANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150202', N'DIST', N'PARAMONGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150203', N'DIST', N'PATIVILCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150204', N'DIST', N'SUPE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150205', N'DIST', N'SUPE PUERTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150300', N'PROV', N'CAJATAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150301', N'DIST', N'CAJATAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150302', N'DIST', N'COPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150303', N'DIST', N'GORGOR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150304', N'DIST', N'HUANCAPON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150305', N'DIST', N'MANAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150400', N'PROV', N'CANTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150401', N'DIST', N'CANTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150402', N'DIST', N'ARAHUAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150403', N'DIST', N'HUAMANTANGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150404', N'DIST', N'HUAROS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150405', N'DIST', N'LACHAQUI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150406', N'DIST', N'SAN BUENAVENTURA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150407', N'DIST', N'SANTA ROSA DE QUIVES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150500', N'PROV', N'CAÑETE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150501', N'DIST', N'SAN VICENTE DE CAÑETE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150502', N'DIST', N'ASIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150503', N'DIST', N'CALANGO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150504', N'DIST', N'CERRO AZUL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150505', N'DIST', N'CHILCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150506', N'DIST', N'COAYLLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150507', N'DIST', N'IMPERIAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150508', N'DIST', N'LUNAHUANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150509', N'DIST', N'MALA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150510', N'DIST', N'NUEVO IMPERIAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150511', N'DIST', N'PACARAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150512', N'DIST', N'QUILMANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150513', N'DIST', N'SAN ANTONIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150514', N'DIST', N'SAN LUIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150515', N'DIST', N'SANTA CRUZ DE FLORES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150516', N'DIST', N'ZUÑIGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150600', N'PROV', N'HUARAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150601', N'DIST', N'HUARAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150602', N'DIST', N'ATAVILLOS ALTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150603', N'DIST', N'ATAVILLOS BAJO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150604', N'DIST', N'AUCALLAMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150605', N'DIST', N'CHANCAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150606', N'DIST', N'IHUARI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150607', N'DIST', N'LAMPIAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150608', N'DIST', N'PACARAOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150609', N'DIST', N'SAN MIGUEL DE ACOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150610', N'DIST', N'SANTA CRUZ DE ANDAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150611', N'DIST', N'SUMBILCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150612', N'DIST', N'VEINTISIETE DE NOVIEMBRE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150700', N'PROV', N'HUAROCHIRI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150701', N'DIST', N'MATUCANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150702', N'DIST', N'ANTIOQUIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150703', N'DIST', N'CALLAHUANCA', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150704', N'DIST', N'CARAMPOMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150705', N'DIST', N'CHICLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150706', N'DIST', N'CUENCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150707', N'DIST', N'HUACHUPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150708', N'DIST', N'HUANZA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150709', N'DIST', N'HUAROCHIRI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150710', N'DIST', N'LAHUAYTAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150711', N'DIST', N'LANGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150712', N'DIST', N'LARAOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150713', N'DIST', N'MARIATANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150714', N'DIST', N'RICARDO PALMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150715', N'DIST', N'SAN ANDRES DE TUPICOCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150716', N'DIST', N'SAN ANTONIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150717', N'DIST', N'SAN BARTOLOME', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150718', N'DIST', N'SAN DAMIAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150719', N'DIST', N'SAN JUAN DE IRIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150720', N'DIST', N'SAN JUAN DE TANTARANCHE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150721', N'DIST', N'SAN LORENZO DE QUINTI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150722', N'DIST', N'SAN MATEO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150723', N'DIST', N'SAN MATEO DE OTAO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150724', N'DIST', N'SAN PEDRO DE CASTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150725', N'DIST', N'SAN PEDRO DE HUANCAYRE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150726', N'DIST', N'SANGALLAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150727', N'DIST', N'SANTA CRUZ DE COCACHACRA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150728', N'DIST', N'SANTA EULALIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150729', N'DIST', N'SANTIAGO DE ANCHUCAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150730', N'DIST', N'SANTIAGO DE TUNA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150731', N'DIST', N'SANTO DOMINGO DE LOS OLLEROS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150732', N'DIST', N'SURCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150800', N'PROV', N'HUAURA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150801', N'DIST', N'HUACHO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150802', N'DIST', N'AMBAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150803', N'DIST', N'CALETA DE CARQUIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150804', N'DIST', N'CHECRAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150805', N'DIST', N'HUALMAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150806', N'DIST', N'HUAURA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150807', N'DIST', N'LEONCIO PRADO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150808', N'DIST', N'PACCHO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150809', N'DIST', N'SANTA LEONOR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150810', N'DIST', N'SANTA MARIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150811', N'DIST', N'SAYAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150812', N'DIST', N'VEGUETA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150900', N'PROV', N'OYON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150901', N'DIST', N'OYON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150902', N'DIST', N'ANDAJES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150903', N'DIST', N'CAUJUL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150904', N'DIST', N'COCHAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150905', N'DIST', N'NAVAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'150906', N'DIST', N'PACHANGARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151000', N'PROV', N'YAUYOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151001', N'DIST', N'YAUYOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151002', N'DIST', N'ALIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151003', N'DIST', N'AYAUCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151004', N'DIST', N'AYAVIRI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151005', N'DIST', N'AZANGARO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151006', N'DIST', N'CACRA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151007', N'DIST', N'CARANIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151008', N'DIST', N'CATAHUASI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151009', N'DIST', N'CHOCOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151010', N'DIST', N'COCHAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151011', N'DIST', N'COLONIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151012', N'DIST', N'HONGOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151013', N'DIST', N'HUAMPARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151014', N'DIST', N'HUANCAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151015', N'DIST', N'HUANGASCAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151016', N'DIST', N'HUANTAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151017', N'DIST', N'HUAÑEC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151018', N'DIST', N'LARAOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151019', N'DIST', N'LINCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151020', N'DIST', N'MADEAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151021', N'DIST', N'MIRAFLORES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151022', N'DIST', N'OMAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151023', N'DIST', N'PUTINZA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151024', N'DIST', N'QUINCHES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151025', N'DIST', N'QUINOCAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151026', N'DIST', N'SAN JOAQUIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151027', N'DIST', N'SAN PEDRO DE PILAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151028', N'DIST', N'TANTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151029', N'DIST', N'TAURIPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151030', N'DIST', N'TOMAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151031', N'DIST', N'TUPE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151032', N'DIST', N'VIÑAC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'151033', N'DIST', N'VITIS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160000', N'DEPT', N'LORETO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160100', N'PROV', N'MAYNAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160101', N'DIST', N'IQUITOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160102', N'DIST', N'ALTO NANAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160103', N'DIST', N'FERNANDO LORES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160104', N'DIST', N'INDIANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160105', N'DIST', N'LAS AMAZONAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160106', N'DIST', N'MAZAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160107', N'DIST', N'NAPO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160108', N'DIST', N'PUNCHANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160109', N'DIST', N'PUTUMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160110', N'DIST', N'TORRES CAUSANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160112', N'DIST', N'BELÉN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160113', N'DIST', N'SAN JUAN BAUTISTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160114', N'DIST', N'TENIENTE MANUEL CLAVERO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160200', N'PROV', N'ALTO AMAZONAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160201', N'DIST', N'YURIMAGUAS', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160202', N'DIST', N'BALSAPUERTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160205', N'DIST', N'JEBEROS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160206', N'DIST', N'LAGUNAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160210', N'DIST', N'SANTA CRUZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160211', N'DIST', N'TENIENTE CESAR LOPEZ ROJAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160300', N'PROV', N'LORETO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160301', N'DIST', N'NAUTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160302', N'DIST', N'PARINARI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160303', N'DIST', N'TIGRE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160304', N'DIST', N'TROMPETEROS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160305', N'DIST', N'URARINAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160400', N'PROV', N'MARISCAL RAMON CASTILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160401', N'DIST', N'RAMON CASTILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160402', N'DIST', N'PEBAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160403', N'DIST', N'YAVARI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160404', N'DIST', N'SAN PABLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160500', N'PROV', N'REQUENA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160501', N'DIST', N'REQUENA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160502', N'DIST', N'ALTO TAPICHE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160503', N'DIST', N'CAPELO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160504', N'DIST', N'EMILIO SAN MARTIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160505', N'DIST', N'MAQUIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160506', N'DIST', N'PUINAHUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160507', N'DIST', N'SAQUENA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160508', N'DIST', N'SOPLIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160509', N'DIST', N'TAPICHE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160510', N'DIST', N'JENARO HERRERA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160511', N'DIST', N'YAQUERANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160600', N'PROV', N'UCAYALI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160601', N'DIST', N'CONTAMANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160602', N'DIST', N'INAHUAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160603', N'DIST', N'PADRE MARQUEZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160604', N'DIST', N'PAMPA HERMOSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160605', N'DIST', N'SARAYACU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160606', N'DIST', N'VARGAS GUERRA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160700', N'PROV', N'DATEM DEL MARAÑÓN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160701', N'DIST', N'BARRANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160702', N'DIST', N'CAHUAPANAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160703', N'DIST', N'MANSERICHE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160704', N'DIST', N'MORONA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160705', N'DIST', N'PASTAZA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160706', N'DIST', N'ANDOAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160800', N'PROV', N'PUTUMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160801', N'DIST', N'PUTUMAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160802', N'DIST', N'ROSA PANDURO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160803', N'DIST', N'TENIENTE MANUEL CLAVERO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'160804', N'DIST', N'YAGUAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'170000', N'DEPT', N'MADRE DE DIOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'170100', N'PROV', N'TAMBOPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'170101', N'DIST', N'TAMBOPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'170102', N'DIST', N'INAMBARI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'170103', N'DIST', N'LAS PIEDRAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'170104', N'DIST', N'LABERINTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'170200', N'PROV', N'MANU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'170201', N'DIST', N'MANU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'170202', N'DIST', N'FITZCARRALD', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'170203', N'DIST', N'MADRE DE DIOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'170204', N'DIST', N'HUEPETUHE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'170300', N'PROV', N'TAHUAMANU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'170301', N'DIST', N'IÑAPARI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'170302', N'DIST', N'IBERIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'170303', N'DIST', N'TAHUAMANU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180000', N'DEPT', N'MOQUEGUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180100', N'PROV', N'MARISCAL NIETO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180101', N'DIST', N'MOQUEGUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180102', N'DIST', N'CARUMAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180103', N'DIST', N'CUCHUMBAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180104', N'DIST', N'SAMEGUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180105', N'DIST', N'SAN CRISTOBAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180106', N'DIST', N'TORATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180200', N'PROV', N'GENERAL SANCHEZ CERRO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180201', N'DIST', N'OMATE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180202', N'DIST', N'CHOJATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180203', N'DIST', N'COALAQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180204', N'DIST', N'ICHUÑA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180205', N'DIST', N'LA CAPILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180206', N'DIST', N'LLOQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180207', N'DIST', N'MATALAQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180208', N'DIST', N'PUQUINA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180209', N'DIST', N'QUINISTAQUILLAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180210', N'DIST', N'UBINAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180211', N'DIST', N'YUNGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180300', N'PROV', N'ILO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180301', N'DIST', N'ILO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180302', N'DIST', N'EL ALGARROBAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'180303', N'DIST', N'PACOCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190000', N'DEPT', N'PASCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190100', N'PROV', N'PASCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190101', N'DIST', N'CHAUPIMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190102', N'DIST', N'HUACHON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190103', N'DIST', N'HUARIACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190104', N'DIST', N'HUAYLLAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190105', N'DIST', N'NINACACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190106', N'DIST', N'PALLANCHACRA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190107', N'DIST', N'PAUCARTAMBO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190108', N'DIST', N'SAN FCO. DE ASÍS DE YARUSYACÁN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190109', N'DIST', N'SIMON BOLIVAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190110', N'DIST', N'TICLACAYAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190111', N'DIST', N'TINYAHUARCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190112', N'DIST', N'VICCO', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190113', N'DIST', N'YANACANCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190200', N'PROV', N'DANIEL ALCIDES CARRION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190201', N'DIST', N'YANAHUANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190202', N'DIST', N'CHACAYAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190203', N'DIST', N'GOYLLARISQUIZGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190204', N'DIST', N'PAUCAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190205', N'DIST', N'SAN PEDRO DE PILLAO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190206', N'DIST', N'SANTA ANA DE TUSI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190207', N'DIST', N'TAPUC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190208', N'DIST', N'VILCABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190300', N'PROV', N'OXAPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190301', N'DIST', N'OXAPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190302', N'DIST', N'CHONTABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190303', N'DIST', N'HUANCABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190304', N'DIST', N'PALCAZU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190305', N'DIST', N'POZUZO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190306', N'DIST', N'PUERTO BERMUDEZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190307', N'DIST', N'VILLA RICA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'190308', N'DIST', N'CONSTITUCION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200000', N'DEPT', N'PIURA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200100', N'PROV', N'PIURA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200101', N'DIST', N'PIURA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200104', N'DIST', N'CASTILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200105', N'DIST', N'CATACAOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200107', N'DIST', N'CURA MORI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200108', N'DIST', N'EL TALLAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200109', N'DIST', N'LA ARENA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200110', N'DIST', N'LA UNION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200111', N'DIST', N'LAS LOMAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200114', N'DIST', N'TAMBO GRANDE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200115', N'DIST', N'VEINTISÉIS DE OCTUBRE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200200', N'PROV', N'AYABACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200201', N'DIST', N'AYABACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200202', N'DIST', N'FRIAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200203', N'DIST', N'JILILI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200204', N'DIST', N'LAGUNAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200205', N'DIST', N'MONTERO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200206', N'DIST', N'PACAIPAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200207', N'DIST', N'PAIMAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200208', N'DIST', N'SAPILLICA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200209', N'DIST', N'SICCHEZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200210', N'DIST', N'SUYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200300', N'PROV', N'HUANCABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200301', N'DIST', N'HUANCABAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200302', N'DIST', N'CANCHAQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200303', N'DIST', N'EL CARMEN DE LA FRONTERA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200304', N'DIST', N'HUARMACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200305', N'DIST', N'LALAQUIZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200306', N'DIST', N'SAN MIGUEL DE EL FAIQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200307', N'DIST', N'SONDOR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200308', N'DIST', N'SONDORILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200400', N'PROV', N'MORROPON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200401', N'DIST', N'CHULUCANAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200402', N'DIST', N'BUENOS AIRES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200403', N'DIST', N'CHALACO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200404', N'DIST', N'LA MATANZA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200405', N'DIST', N'MORROPON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200406', N'DIST', N'SALITRAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200407', N'DIST', N'SAN JUAN DE BIGOTE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200408', N'DIST', N'SANTA CATALINA DE MOSSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200409', N'DIST', N'SANTO DOMINGO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200410', N'DIST', N'YAMANGO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200500', N'PROV', N'PAITA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200501', N'DIST', N'PAITA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200502', N'DIST', N'AMOTAPE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200503', N'DIST', N'ARENAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200504', N'DIST', N'COLAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200505', N'DIST', N'LA HUACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200506', N'DIST', N'TAMARINDO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200507', N'DIST', N'VICHAYAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200600', N'PROV', N'SULLANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200601', N'DIST', N'SULLANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200602', N'DIST', N'BELLAVISTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200603', N'DIST', N'IGNACIO ESCUDERO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200604', N'DIST', N'LANCONES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200605', N'DIST', N'MARCAVELICA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200606', N'DIST', N'MIGUEL CHECA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200607', N'DIST', N'QUERECOTILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200608', N'DIST', N'SALITRAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200700', N'PROV', N'TALARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200701', N'DIST', N'PARIÑAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200702', N'DIST', N'EL ALTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200703', N'DIST', N'LA BREA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200704', N'DIST', N'LOBITOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200705', N'DIST', N'LOS ORGANOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200706', N'DIST', N'MANCORA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200800', N'PROV', N'SECHURA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200801', N'DIST', N'SECHURA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200802', N'DIST', N'BELLAVISTA DE LA UNION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200803', N'DIST', N'BERNAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200804', N'DIST', N'CRISTO NOS VALGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200805', N'DIST', N'VICE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'200806', N'DIST', N'RINCONADA LLICUAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210000', N'DEPT', N'PUNO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210100', N'PROV', N'PUNO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210101', N'DIST', N'PUNO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210102', N'DIST', N'ACORA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210103', N'DIST', N'AMANTANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210104', N'DIST', N'ATUNCOLLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210105', N'DIST', N'CAPACHICA', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210106', N'DIST', N'CHUCUITO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210107', N'DIST', N'COATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210108', N'DIST', N'HUATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210109', N'DIST', N'MAÑAZO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210110', N'DIST', N'PAUCARCOLLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210111', N'DIST', N'PICHACANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210112', N'DIST', N'PLATERIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210113', N'DIST', N'SAN ANTONIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210114', N'DIST', N'TIQUILLACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210115', N'DIST', N'VILQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210200', N'PROV', N'AZANGARO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210201', N'DIST', N'AZANGARO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210202', N'DIST', N'ACHAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210203', N'DIST', N'ARAPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210204', N'DIST', N'ASILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210205', N'DIST', N'CAMINACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210206', N'DIST', N'CHUPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210207', N'DIST', N'JOSE DOMINGO CHOQUEHUANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210208', N'DIST', N'MUÑANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210209', N'DIST', N'POTONI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210210', N'DIST', N'SAMAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210211', N'DIST', N'SAN ANTON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210212', N'DIST', N'SAN JOSE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210213', N'DIST', N'SAN JUAN DE SALINAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210214', N'DIST', N'SANTIAGO DE PUPUJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210215', N'DIST', N'TIRAPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210300', N'PROV', N'CARABAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210301', N'DIST', N'MACUSANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210302', N'DIST', N'AJOYANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210303', N'DIST', N'AYAPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210304', N'DIST', N'COASA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210305', N'DIST', N'CORANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210306', N'DIST', N'CRUCERO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210307', N'DIST', N'ITUATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210308', N'DIST', N'OLLACHEA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210309', N'DIST', N'SAN GABAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210310', N'DIST', N'USICAYOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210400', N'PROV', N'CHUCUITO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210401', N'DIST', N'JULI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210402', N'DIST', N'DESAGUADERO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210403', N'DIST', N'HUACULLANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210404', N'DIST', N'KELLUYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210405', N'DIST', N'PISACOMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210406', N'DIST', N'POMATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210407', N'DIST', N'ZEPITA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210500', N'PROV', N'EL COLLAO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210501', N'DIST', N'ILAVE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210502', N'DIST', N'CAPASO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210503', N'DIST', N'PILCUYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210504', N'DIST', N'SANTA ROSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210505', N'DIST', N'CONDURIRI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210600', N'PROV', N'HUANCANE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210601', N'DIST', N'HUANCANE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210602', N'DIST', N'COJATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210603', N'DIST', N'HUATASANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210604', N'DIST', N'INCHUPALLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210605', N'DIST', N'PUSI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210606', N'DIST', N'ROSASPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210607', N'DIST', N'TARACO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210608', N'DIST', N'VILQUE CHICO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210700', N'PROV', N'LAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210701', N'DIST', N'LAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210702', N'DIST', N'CABANILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210703', N'DIST', N'CALAPUJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210704', N'DIST', N'NICASIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210705', N'DIST', N'OCUVIRI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210706', N'DIST', N'PALCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210707', N'DIST', N'PARATIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210708', N'DIST', N'PUCARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210709', N'DIST', N'SANTA LUCIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210710', N'DIST', N'VILAVILA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210800', N'PROV', N'MELGAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210801', N'DIST', N'AYAVIRI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210802', N'DIST', N'ANTAUTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210803', N'DIST', N'CUPI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210804', N'DIST', N'LLALLI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210805', N'DIST', N'MACARI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210806', N'DIST', N'NUÑOA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210807', N'DIST', N'ORURILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210808', N'DIST', N'SANTA ROSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210809', N'DIST', N'UMACHIRI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210900', N'PROV', N'MOHO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210901', N'DIST', N'MOHO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210902', N'DIST', N'CONIMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210903', N'DIST', N'HUAYRAPATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'210904', N'DIST', N'TILALI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211000', N'PROV', N'SAN ANTONIO DE PUTINA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211001', N'DIST', N'PUTINA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211002', N'DIST', N'ANANEA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211003', N'DIST', N'PEDRO VILCA APAZA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211004', N'DIST', N'QUILCAPUNCU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211005', N'DIST', N'SINA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211100', N'PROV', N'SAN ROMAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211101', N'DIST', N'JULIACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211102', N'DIST', N'CABANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211103', N'DIST', N'CABANILLAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211104', N'DIST', N'CARACOTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211200', N'PROV', N'SANDIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211201', N'DIST', N'SANDIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211202', N'DIST', N'CUYOCUYO', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211203', N'DIST', N'LIMBANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211204', N'DIST', N'PATAMBUCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211205', N'DIST', N'PHARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211206', N'DIST', N'QUIACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211207', N'DIST', N'SAN JUAN DEL ORO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211208', N'DIST', N'YANAHUAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211209', N'DIST', N'ALTO INAMBARI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211210', N'DIST', N'SAN PEDRO DE PUTINA PUNCO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211300', N'PROV', N'YUNGUYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211301', N'DIST', N'YUNGUYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211302', N'DIST', N'ANAPIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211303', N'DIST', N'COPANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211304', N'DIST', N'CUTURAPI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211305', N'DIST', N'OLLARAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211306', N'DIST', N'TINICACHI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'211307', N'DIST', N'UNICACHI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220000', N'DEPT', N'SAN MARTIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220100', N'PROV', N'MOYOBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220101', N'DIST', N'MOYOBAMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220102', N'DIST', N'CALZADA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220103', N'DIST', N'HABANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220104', N'DIST', N'JEPELACIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220105', N'DIST', N'SORITOR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220106', N'DIST', N'YANTALO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220200', N'PROV', N'BELLAVISTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220201', N'DIST', N'BELLAVISTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220202', N'DIST', N'ALTO BIAVO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220203', N'DIST', N'BAJO BIAVO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220204', N'DIST', N'HUALLAGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220205', N'DIST', N'SAN PABLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220206', N'DIST', N'SAN RAFAEL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220300', N'PROV', N'EL DORADO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220301', N'DIST', N'SAN JOSE DE SISA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220302', N'DIST', N'AGUA BLANCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220303', N'DIST', N'SAN MARTIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220304', N'DIST', N'SANTA ROSA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220305', N'DIST', N'SHATOJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220400', N'PROV', N'HUALLAGA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220401', N'DIST', N'SAPOSOA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220402', N'DIST', N'ALTO SAPOSOA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220403', N'DIST', N'EL ESLABON', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220404', N'DIST', N'PISCOYACU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220405', N'DIST', N'SACANCHE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220406', N'DIST', N'TINGO DE SAPOSOA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220500', N'PROV', N'LAMAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220501', N'DIST', N'LAMAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220502', N'DIST', N'ALONSO DE ALVARADO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220503', N'DIST', N'BARRANQUITA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220504', N'DIST', N'CAYNARACHI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220505', N'DIST', N'CUÑUMBUQUI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220506', N'DIST', N'PINTO RECODO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220507', N'DIST', N'RUMISAPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220508', N'DIST', N'SAN ROQUE DE CUMBAZA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220509', N'DIST', N'SHANAO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220510', N'DIST', N'TABALOSOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220511', N'DIST', N'ZAPATERO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220600', N'PROV', N'MARISCAL CACERES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220601', N'DIST', N'JUANJUI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220602', N'DIST', N'CAMPANILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220603', N'DIST', N'HUICUNGO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220604', N'DIST', N'PACHIZA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220605', N'DIST', N'PAJARILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220700', N'PROV', N'PICOTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220701', N'DIST', N'PICOTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220702', N'DIST', N'BUENOS AIRES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220703', N'DIST', N'CASPISAPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220704', N'DIST', N'PILLUANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220705', N'DIST', N'PUCACACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220706', N'DIST', N'SAN CRISTOBAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220707', N'DIST', N'SAN HILARION', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220708', N'DIST', N'SHAMBOYACU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220709', N'DIST', N'TINGO DE PONASA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220710', N'DIST', N'TRES UNIDOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220800', N'PROV', N'RIOJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220801', N'DIST', N'RIOJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220802', N'DIST', N'AWAJUN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220803', N'DIST', N'ELIAS SOPLIN VARGAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220804', N'DIST', N'NUEVA CAJAMARCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220805', N'DIST', N'PARDO MIGUEL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220806', N'DIST', N'POSIC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220807', N'DIST', N'SAN FERNANDO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220808', N'DIST', N'YORONGOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220809', N'DIST', N'YURACYACU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220900', N'PROV', N'SAN MARTIN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220901', N'DIST', N'TARAPOTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220902', N'DIST', N'ALBERTO LEVEAU', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220903', N'DIST', N'CACATACHI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220904', N'DIST', N'CHAZUTA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220905', N'DIST', N'CHIPURANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220906', N'DIST', N'EL PORVENIR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220907', N'DIST', N'HUIMBAYOC', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220908', N'DIST', N'JUAN GUERRA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220909', N'DIST', N'LA BANDA DE SHILCAYO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220910', N'DIST', N'MORALES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220911', N'DIST', N'PAPAPLAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220912', N'DIST', N'SAN ANTONIO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220913', N'DIST', N'SAUCE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'220914', N'DIST', N'SHAPAJA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'221000', N'PROV', N'TOCACHE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'221001', N'DIST', N'TOCACHE', N'DVILLANUEV')
GO
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'221002', N'DIST', N'NUEVO PROGRESO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'221003', N'DIST', N'POLVORA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'221004', N'DIST', N'SHUNTE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'221005', N'DIST', N'UCHIZA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230000', N'DEPT', N'TACNA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230100', N'PROV', N'TACNA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230101', N'DIST', N'TACNA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230102', N'DIST', N'ALTO DE LA ALIANZA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230103', N'DIST', N'CALANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230104', N'DIST', N'CIUDAD NUEVA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230105', N'DIST', N'INCLAN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230106', N'DIST', N'PACHIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230107', N'DIST', N'PALCA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230108', N'DIST', N'POCOLLAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230109', N'DIST', N'SAMA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230110', N'DIST', N'CORONEL GREGORIO ALBARRACÍN L', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230200', N'PROV', N'CANDARAVE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230201', N'DIST', N'CANDARAVE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230202', N'DIST', N'CAIRANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230203', N'DIST', N'CAMILACA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230204', N'DIST', N'CURIBAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230205', N'DIST', N'HUANUARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230206', N'DIST', N'QUILAHUANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230300', N'PROV', N'JORGE BASADRE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230301', N'DIST', N'LOCUMBA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230302', N'DIST', N'ILABAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230303', N'DIST', N'ITE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230400', N'PROV', N'TARATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230401', N'DIST', N'TARATA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230402', N'DIST', N'CHUCATAMANI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230403', N'DIST', N'ESTIQUE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230404', N'DIST', N'ESTIQUE-PAMPA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230405', N'DIST', N'SITAJARA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230406', N'DIST', N'SUSAPAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230407', N'DIST', N'TARUCACHI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'230408', N'DIST', N'TICACO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240000', N'DEPT', N'TUMBES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240100', N'PROV', N'TUMBES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240101', N'DIST', N'TUMBES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240102', N'DIST', N'CORRALES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240103', N'DIST', N'LA CRUZ', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240104', N'DIST', N'PAMPAS DE HOSPITAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240105', N'DIST', N'SAN JACINTO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240106', N'DIST', N'SAN JUAN DE LA VIRGEN', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240200', N'PROV', N'CONTRALMIRANTE VILLAR', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240201', N'DIST', N'ZORRITOS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240202', N'DIST', N'CASITAS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240203', N'DIST', N'CANOAS DE PUNTA SAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240300', N'PROV', N'ZARUMILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240301', N'DIST', N'ZARUMILLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240302', N'DIST', N'AGUAS VERDES', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240303', N'DIST', N'MATAPALO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'240304', N'DIST', N'PAPAYAL', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250000', N'DEPT', N'UCAYALI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250100', N'PROV', N'CORONEL PORTILLO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250101', N'DIST', N'CALLARIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250102', N'DIST', N'CAMPOVERDE', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250103', N'DIST', N'IPARIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250104', N'DIST', N'MASISEA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250105', N'DIST', N'YARINACOCHA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250106', N'DIST', N'NUEVA REQUENA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250107', N'DIST', N'MANANTAY', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250200', N'PROV', N'ATALAYA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250201', N'DIST', N'RAYMONDI', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250202', N'DIST', N'SEPAHUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250203', N'DIST', N'TAHUANIA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250204', N'DIST', N'YURUA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250300', N'PROV', N'PADRE ABAD', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250301', N'DIST', N'PADRE ABAD', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250302', N'DIST', N'IRAZOLA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250303', N'DIST', N'CURIMANA', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250400', N'PROV', N'PURUS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'250401', N'DIST', N'PURUS', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'990000', N'DEPT', N'EXTRANJERO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'999900', N'PROV', N'EXTRANJERO', N'DVILLANUEV')
INSERT [dbo].[m_ubigeo] ([c_ubigeo], [c_tipo], [c_descripcion], [c_ultimousuario]) VALUES (N'999999', N'DIST', N'EXTRANJERO', N'DVILLANUEV')
/****** Object:  StoredProcedure [dbo].[SP_LISTADIRECCIONCLIENTE]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_LISTADIRECCIONCLIENTE] 
@TipoCli varchar(2),
@Documento varchar(20)

as 

select c_tipocliente, c_documento, n_secuencia  as n_secuenciadireccion, c_descripciondir,  case c_estado when 'A' then convert(bit,1) else convert(bit,0) end c_estado , 
c_latitud, c_longitud, c_ubigeo , c_usuariocreacion, d_fechacreacion, c_ultimausuariomod, d_ultimafechamod
from m_direccioncliente
where c_tipocliente  like @TipoCli 
and c_documento like  @Documento
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAPRODUCTOS]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_LISTAPRODUCTOS] 
@CodProducto varchar(20),
@Categoria int ,
@SubCategoria int ,
@Descripcion varchar(250),
@Estado  varchar(2),
@PrincipActivo varchar(200)
as

select c_codproducto, c_descripcionprod, n_categoria, n_subcategoria, c_codigobarras, d_fecharegistro , c_usuarioregistro, d_ultimafechamod,
 c_ultimousuariomod	, case c_estado when 'A' then convert(bit ,1 ) else convert(bit,0) end c_estado , convert(varchar(150),'') c_DescripCategoria ,
 convert(varchar(100) , '') c_DescripSubCateg
into #Data
from  m_producto
where   c_codproducto like @CodProducto
and  ((@Categoria = 0) or (@Categoria<> 0 and n_categoria = @Categoria) )
and  ((@SubCategoria = 0) or (@SubCategoria<> 0 and n_categoria = @SubCategoria) )
and  c_descripcionprod like @Descripcion
and c_estado like @Estado 
--and  ((@PrincipActivo = 0) or (@PrincipActivo<> 0 and p = @PrincipActivo) )

update #Data set c_DescripCategoria = m_categoria.c_descripcion
from	 #Data left	 join m_categoria  on m_categoria.n_categoria = #Data.n_categoria

update #Data set c_DescripSubCateg = m_subcategoria.c_descripcion 
from #Data  left join m_subcategoria on m_subcategoria.n_categoria = #Data.n_categoria
and m_subcategoria.n_subcategoria = #Data.n_subcategoria

select   c_codproducto , m_principioactivo.n_codigoprincipoact , c_descripcion 
into #DataPA
from  m_productoprincipioact inner join  m_principioactivo
on m_principioactivo.n_codigoprincipoact = m_productoprincipioact.n_codigoprincipoact
and c_codproducto  in (select c_codproducto from #Data)


select c_codproducto, c_descripcionprod, n_categoria, n_subcategoria, c_codigobarras, d_fecharegistro , c_usuarioregistro,
d_ultimafechamod, c_ultimousuariomod, c_estado, c_DescripCategoria, c_DescripSubCateg ,
 (SELECT ',' + US.c_descripcion    FROM #DataPA US
 WHERE US.c_codproducto = #Data.c_codproducto
 FOR XML PATH('')) c_princp_act
 into #DataFin
 from #Data

 update #DataFin set	 c_princp_act  = substring(c_princp_act , 2, len(c_princp_act))

 select c_codproducto, c_descripcionprod, n_categoria, n_subcategoria, c_codigobarras, d_fecharegistro, c_usuarioregistro, d_ultimafechamod,
  c_ultimousuariomod, c_estado, c_DescripCategoria, c_DescripSubCateg, c_princp_act	
  from #DataFin
GO
/****** Object:  StoredProcedure [dbo].[SP_UBIGEO]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- exec SP_UBIGEO '%' , 'GRID'
CREATE  Procedure [dbo].[SP_UBIGEO]
@Ubigeo varchar(12),
@Tipo varchar(5)

As

if @Tipo = 'GRID'
begin
	select c_ubigeo, c_Descripcion
	into #data
	from m_ubigeo
	where c_tipo = 'DIST'

	update #data set   c_descripcion = m_ubigeo.c_descripcion + '-' + #data.c_descripcion
	from #data left join m_ubigeo on m_ubigeo.c_ubigeo =  substring(#data.c_ubigeo,1,4) + '00'

	update #data set   c_descripcion = m_ubigeo.c_descripcion + '-' + #data.c_descripcion
	from #data left join m_ubigeo on m_ubigeo.c_ubigeo =  substring(#data.c_ubigeo,1,2) + '0000'

	select c_ubigeo, c_descripcion 
	from #data
end
if  @Tipo  = 'DEPT'
begin
	select c_ubigeo , c_descripcion 
	from m_ubigeo
	where c_tipo  = 'DEPT'
end
if  @Tipo  = 'PROV'
begin
	select c_ubigeo , c_descripcion 
	from m_ubigeo
	where c_tipo  = 'PROV'
	and substring(@Ubigeo,1,2) = substring(c_ubigeo,1,2)
end
if @Tipo  = 'DIST'
begin
	select c_ubigeo , c_descripcion 
	from m_ubigeo
	where c_tipo  = 'DIST'
	and substring(@Ubigeo,1,4) = substring(c_ubigeo,1,4)
end


GO
/****** Object:  StoredProcedure [dbo].[SPD_PRINCPACT_PROD]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SPD_PRINCPACT_PROD]
@Producto varchar(20)

as 

delete m_productoprincipioact 
where c_codproducto  = @Producto
GO
/****** Object:  StoredProcedure [dbo].[SPI_CATEGORIA]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure	[dbo].[SPI_CATEGORIA]
@Categoria int ,
@Descripcion varchar(150),
@UltimoUsuario varchar(12) 

as 

declare @TempCategoria int
set @TempCategoria =  isnull( (select max(n_categoria) from m_categoria ),0) + 1
if not exists (select * from m_categoria   where n_categoria  = @Categoria )
begin
	insert into m_categoria
	( n_categoria, c_descripcion, c_usuarioregistro, c_ultimafechamod, c_estado)
	values (@TempCategoria , @Descripcion , @UltimoUsuario , dbo.F_HoraActual(), 'A')
end
else 
begin
 update m_categoria  set c_descripcion = @Descripcion , c_usuarioregistro = @UltimoUsuario  , c_ultimafechamod = dbo.F_HoraActual()
 where  n_categoria = @Categoria
end
GO
/****** Object:  StoredProcedure [dbo].[SPI_CLIENTE]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SPI_CLIENTE] 
@TipoCliente varchar(2),
@Documento varchar(20),
@Nombres varchar(100),
@ApellidoPat varchar(100),
@ApellidoMat varchar(100),
@FechaNacimiento datetime,
@UsuarioRegistro varchar(12),
@Estado varchar(2)

As 

Declare @RazonSoc varchar(300) , @HoraActual datetime

set @TipoCliente = upper( @TipoCliente)
Set @HoraActual = dbo.F_HoraActual()
If @TipoCliente = 'NA'
Begin
	Set @RazonSoc =  isnull(@Nombres,'') + ' ' + isnull(@ApellidoPat,'') + ' ' + isnull(@ApellidoMat,'')
End
Else
Begin
	Set @RazonSoc  = @Nombres
End

if  not exists  (select * from m_cliente where c_tipocliente = @TipoCliente and c_documento = @Documento )
begin
	Insert Into m_cliente (c_tipocliente, c_documento, c_nombre, c_apellidopaterno, c_apellidomaterno, 
	d_fechanacimiento, c_usuarioregistro, d_Fecharegistro, c_usuarioultmodif, d_fechaultmodif, c_razonsocial, c_estado)
	Values (@TipoCliente, @Documento , @Nombres ,  @ApellidoPat , @ApellidoMat,@FechaNacimiento,@UsuarioRegistro,@HoraActual,
			@UsuarioRegistro, @HoraActual, @RazonSoc, @Estado)
end
else
begin
	update m_cliente set c_nombre = @Nombres , c_apellidopaterno = @ApellidoPat , c_apellidomaterno = @ApellidoMat,
			c_razonsocial  = @RazonSoc , c_estado = @Estado ,c_usuarioultmodif = @UsuarioRegistro , d_fechaultmodif = dbo.F_HoraActual()
			where c_tipocliente = @TipoCliente and  c_documento = @Documento
end

GO
/****** Object:  StoredProcedure [dbo].[SPI_DIRECCIONCLIENTE]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPI_DIRECCIONCLIENTE]
@TipoCliente varchar(2) ,
@Documento varchar(12),
@Secuencia int ,
@DescDireccion varchar(150) ,
@Longitud varchar(20),
@Latitud varchar(20),
@Ubigeo varchar(12),
@Estado varchar(2),
@FechaCreacion datetime,
@UsuarioCreacion varchar(12),
@FechaMod datetime ,
@UsuarioMod varchar(12)

as 

declare @SecuanciaTemp int , @Fecha datetime

set @Fecha = dbo.F_HoraActual()
set @DescDireccion = upper(@DescDireccion)

if not exists (select * from m_direccioncliente where c_tipocliente = @TipoCliente and c_documento = @Documento and n_secuencia = @Secuencia)
begin
	set @SecuanciaTemp = (select max(n_secuencia) from m_direccioncliente where c_tipocliente = @TipoCliente and c_documento= @Documento)
	set @SecuanciaTemp = isnull(@SecuanciaTemp,0)+1
	insert into m_direccioncliente
	( c_tipocliente , c_documento, n_secuencia, c_descripciondir, c_estado, c_latitud , c_longitud , c_ubigeo, c_usuariocreacion, 
	 d_fechacreacion, c_ultimausuariomod, d_ultimafechamod	)
	 values(@TipoCliente,@Documento , @SecuanciaTemp, @DescDireccion , @Estado , @Latitud , @Longitud, @Ubigeo , @UsuarioCreacion,
			 getdate() ,  @UsuarioCreacion , getdate())

end
else
begin
	update m_direccioncliente set c_descripciondir = @DescDireccion , c_estado = @Estado ,c_latitud = @Latitud , c_longitud = @Longitud,
	c_ubigeo = @Ubigeo , c_ultimausuariomod = @UsuarioCreacion , d_ultimafechamod = dbo.F_HoraActual() 
	where c_tipocliente = @TipoCliente
	and c_documento = @Documento
	and n_secuencia = @Secuencia
end
GO
/****** Object:  StoredProcedure [dbo].[SPI_PRESENTACION]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SPI_PRESENTACION] 
@Presetacion varchar(4),
@Descripcion varchar(100),
@Estado varchar(2) ,
@Usuario varchar(12),
@Fecha datetime 
as

declare @MaxPresentacion bigint

if not exists (select * from m_presentacion where c_presentacion = @Presetacion)
begin
	
	set @MaxPresentacion = (select max(convert(bigint, c_presentacion)) from m_presentacion)
	set @MaxPresentacion = isnull(@MaxPresentacion , 0 ) + 1
	set @Presetacion = format(@MaxPresentacion , '0000')

	insert into m_presentacion (c_presentacion, c_descripcion, c_estado, c_ultimousuariomod, d_ultimafechamod)
	values ( @Presetacion , upper(@Descripcion) , 'A' , @Usuario , dbo.F_HoraActual())
end
else
begin
	update dbo.m_presentacion set c_estado = @Estado , c_descripcion = @Descripcion , c_ultimousuariomod = @Usuario , d_ultimafechamod  = dbo.F_HoraActual()
	where c_presentacion = @Presetacion
end
GO
/****** Object:  StoredProcedure [dbo].[SPI_PRINCIP_ACTIVO]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[SPI_PRINCIP_ACTIVO] 
@CodPrincipio int ,
@Descripcion varchar(100),
@Estado varchar(2),
@Usuario varchar(12),
@Fecha datetime 

as 

declare @CodigoTemp int 

set @CodigoTemp =  isnull( (select  max(n_codigoprincipoact) from m_principioactivo ),0) + 1

if  not exists (select * from m_principioactivo where n_codigoprincipoact = @CodPrincipio)
begin
	insert into m_principioactivo
	(  n_codigoprincipoact ,c_descripcion , c_usuarioreg , d_fecharegistro ,c_estado)
	values(  @CodigoTemp , @Descripcion , @Usuario , @Fecha , @Estado   )
end
else
begin
	update m_principioactivo set  c_descripcion = @Descripcion ,  c_usuarioreg = @Usuario , d_fecharegistro = @Fecha , c_estado = @Estado
	where  n_codigoprincipoact = @CodPrincipio
end
GO
/****** Object:  StoredProcedure [dbo].[SPI_PROD_PRINCPIOACT]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPI_PROD_PRINCPIOACT]
@CodProducto varchar(20),
@Principio int ,
@Usuario varchar(12)

as 


If @Principio <= 0
Begin
	THROW 99001, ' ==> Falta seleccionar un principio activo para alguna fila, revisar por favor.', 1
End

insert into m_productoprincipioact (c_codproducto, n_codigoprincipoact, c_estado, c_ultimousuario, d_ultimafechamod)
values ( @CodProducto , @Principio , 'A' , @Usuario , dbo.F_HoraActual())
GO
/****** Object:  StoredProcedure [dbo].[SPI_PRODUCTO]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPI_PRODUCTO] 
@CodProducto varchar(20),
@DescripcionProd varchar(250),
@Categoria int,
@SubCategoria int ,
@CodBarra varchar(200),
@Estado  varchar(2),
@Usuario varchar(12),
@Fecha datetime
as

declare @MaxCodProd bigint

if not exists (select * from  m_producto where c_codproducto = @CodProducto)

begin
	set @MaxCodProd = (select convert(bigint, max( c_codproducto)) from  m_producto)
	set @MaxCodProd = isnull( @MaxCodProd , 0) + 1
	set @CodProducto = format(@MaxCodProd , '00000000')
	
	insert into m_producto (c_codproducto, c_descripcionprod, n_categoria, n_subcategoria, c_codigobarras, c_estado
	                          , d_fecharegistro, c_usuarioregistro, d_ultimafechamod, c_ultimousuariomod)
	values (@CodProducto , upper(@DescripcionProd) , @Categoria , @SubCategoria,@CodBarra , 'A', dbo.F_HoraActual(),@Usuario,dbo.F_HoraActual(),@Usuario)

end 
else 
begin
	update  m_producto  set n_categoria = @Categoria , n_subcategoria = @SubCategoria	, c_codigobarras = @CodBarra , d_ultimafechamod = dbo.F_HoraActual(),
	c_ultimousuariomod = @Usuario , c_descripcionprod = @DescripcionProd
	where c_codproducto =  @CodProducto
end

GO
/****** Object:  StoredProcedure [dbo].[SPI_PRODUCTOPRESENTACION]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SPI_PRODUCTOPRESENTACION] 
@Producto varchar(20) ,
@Presentacion varchar(4),
@Correlativo bigint ,
@Usuario varchar(12),
@Fecha datetime , 
@Cantidad bigint ,
@Estado varchar(2)

As

If isnull(@Correlativo,0 ) = 0 
Begin
	 If Exists (select * From dbo.m_presentacionproducto Where c_codproducto = @Producto And c_presentacion = @Presentacion)
	 Begin
			THROW 99001, ' ==> La presentacion para el producto seleccionado ya se encuentra registrada.', 1
	 End 
	 Else
	 Begin
		Insert Into	 m_presentacionproducto (c_codproducto, c_presentacion, n_cantidad, c_estado, c_usuarioregistro, d_Fecharegistro, c_ultimousuariomod, d_ultimafechamod)
		Values ( @Producto , @Presentacion , @Cantidad , 'A' , @Usuario , dbo.F_HoraActual(), @Usuario , dbo.F_HoraActual())
	 End
End 
Else
Begin
	If Exists (select * From m_presentacionproducto Where c_codproducto = @Producto And c_presentacion = @Presentacion And n_cantidad = @Cantidad)
		 Begin
				THROW 99001, ' ==> La presentacion para el producto seleccionado ya se encuentra registrada.', 1
		 End 
	Else
	Begin
		Update  m_presentacionproducto Set c_presentacion = @Presentacion , c_codproducto = @Producto , d_ultimafechamod = dbo.F_HoraActual() , 
		c_ultimousuariomod = @Usuario , c_estado = @Estado , n_cantidad = @Cantidad
		Where n_correlativo = @Correlativo
	End
	
End
GO
/****** Object:  StoredProcedure [dbo].[SPI_SUBCATEGORIA]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[SPI_SUBCATEGORIA] 
@SubCategoria int,
@Categoria int,
@Descripcion varchar(100),
@UsuarioReg varchar(12),
@Estado varchar(2)
as

declare @CodSubCatTemp int

if not exists (select * from  m_subcategoria where n_categoria = @Categoria and n_subcategoria = @SubCategoria)
begin
	set @CodSubCatTemp = (select max(n_subcategoria) from m_subcategoria where n_categoria = @Categoria)
	set @CodSubCatTemp = isnull(@CodSubCatTemp,0) +1
	insert into m_subcategoria (n_subcategoria, n_categoria, c_descripcion, c_usuarioregistro, d_fecharegistro
	                              , c_ultimousuariomod, d_ultimafechamod, c_estado)
	values(@CodSubCatTemp,@Categoria ,upper(@Descripcion), @UsuarioReg, dbo.F_HoraActual(),@UsuarioReg , dbo.F_HoraActual(), @Estado)
end
else
begin
	update m_subcategoria set c_descripcion = upper(@Descripcion) , c_estado = @Estado, 
	c_ultimousuariomod = @UsuarioReg , d_ultimafechamod = dbo.F_HoraActual()
	where n_categoria = @Categoria and n_subcategoria =  @SubCategoria

end

GO
/****** Object:  StoredProcedure [dbo].[SPI_TELEFONOCLIENTE]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPI_TELEFONOCLIENTE] 
@TipoCli varchar(2) ,
@CodCli varchar(20) ,
@Linea int ,
@Numero varchar(20) ,
@NombContacto varchar(100),
@Estado varchar(2),
@Usuario varchar(12)

as 

declare @LineaTemp int

if  not exists (select * from  m_telefonocliente where c_tipocliente = @TipoCli  and c_documeto = @CodCli and n_linea = @Linea)
begin
	set @LineaTemp =  isnull( (select max(n_linea) from m_telefonocliente), 0 ) + 1

	insert into m_telefonocliente
	( c_tipocliente, c_documeto, n_linea, c_numero, c_nombrecontacto, c_estado, d_ultimafechamod, c_ultimousuariomod)
	values
	( @TipoCli, @CodCli,@LineaTemp , @Numero , @NombContacto , 'A' , dbo.F_HoraActual(), @Usuario)

end
else
begin
	update  m_telefonocliente set c_numero = @Numero ,  c_nombrecontacto = @NombContacto, c_estado = @Estado,
			d_ultimafechamod = dbo.F_HoraActual() , c_ultimousuariomod = @Usuario 
			where c_tipocliente = @TipoCli
			and c_documeto = @CodCli
			and n_linea = @Linea
end
GO
/****** Object:  StoredProcedure [dbo].[SPS_CATEGORIA]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SPS_CATEGORIA]
@CodigoCategoria int ,
@Estado varchar(2)
as

select n_categoria, c_descripcion, c_usuarioregistro, c_ultimafechamod, c_estado 
from m_categoria
where ((@CodigoCategoria =0 ) or (@CodigoCategoria <> 0 and n_categoria = @CodigoCategoria))
and c_estado like @Estado
GO
/****** Object:  StoredProcedure [dbo].[SPS_LISTA_PRESENTACION]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[SPS_LISTA_PRESENTACION]
@Presentacion varchar(4),
@Estado varchar(2)

as

select c_presentacion, c_descripcion,   case c_estado when 'A' then convert(bit,1) else convert(bit,0) end c_estado, c_ultimousuariomod, d_ultimafechamod
from m_presentacion
where c_presentacion like @Presentacion
and c_estado like @Estado

GO
/****** Object:  StoredProcedure [dbo].[SPS_LISTA_PRESENTACIONPRODUCTO]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SPS_LISTA_PRESENTACIONPRODUCTO] 
@Producto varchar(20),
@Presentacion  varchar(4),
@Correlativo bigint ,
@Estado varchar(2)

as
Select c_codproducto,c_presentacion, n_cantidad,n_correlativo,c_usuarioregistro,d_Fecharegistro,c_ultimousuariomod,d_ultimafechamod,
Case c_estado When 'A' Then convert(bit,1) Else convert(bit,0) End c_estado
From   m_presentacionproducto
Where c_presentacion  Like @Presentacion
And c_codproducto Like @Producto 
And ((@Correlativo = 0) Or (@Correlativo<> 0 And n_correlativo = @Correlativo))
And c_estado Like @Estado

GO
/****** Object:  StoredProcedure [dbo].[SPS_LISTA_PRINCIPIOSACTIVOS]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SPS_LISTA_PRINCIPIOSACTIVOS]
@CodPrincipio int ,
@Descripcion varchar(100),
@Estado varchar(2)

as 

select n_codigoprincipoact, c_descripcion, c_usuarioreg, d_fecharegistro, case c_estado when 'A' then convert(bit,1) else convert(bit,0) end c_estado	
from m_principioactivo
where (( @CodPrincipio = 0 ) or (@CodPrincipio<> 0 and n_codigoprincipoact = @CodPrincipio ))
and c_descripcion like @Descripcion
and c_estado like @Estado  
GO
/****** Object:  StoredProcedure [dbo].[SPS_LISTACLIENTE]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SPS_LISTACLIENTE] 
@TipoCliente varchar(2),
@NroDoc varchar(20)
As

Select  case c_tipocliente when 'NA' then 'NATURAL' else 'JURIDICO' end c_tipocliente ,c_documento,c_nombre,c_apellidopaterno,c_apellidomaterno,c_razonsocial,
d_fechanacimiento, Case c_estado When 'A'  Then convert(bit,1) Else convert(bit,0) End c_estado,
c_usuarioregistro,d_Fecharegistro,c_usuarioultmodif,d_fechaultmodif 
From  m_cliente
GO
/****** Object:  StoredProcedure [dbo].[SPS_LISTATELEFONO]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPS_LISTATELEFONO]
@TipoCli varchar(2),
@Doc varchar(20)
as 

select c_tipocliente, c_documeto  as c_codcliente, n_linea, c_numero, c_nombrecontacto, 
 case  c_estado when 'A'  then  convert(bit,1) else convert(bit,0) end c_estado , c_ultimousuariomod, d_ultimafechamod 
from m_telefonocliente
where   c_tipocliente = @TipoCli
and c_documeto = @Doc
GO
/****** Object:  StoredProcedure [dbo].[SPS_PRINCP_ACT_XP_PROD]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SPS_PRINCP_ACT_XP_PROD]
@CodProducto varchar(12)

as
select c_codproducto, n_codigoprincipoact, c_estado, c_ultimousuario, d_ultimafechamod 
from m_productoprincipioact	
where c_codproducto like @CodProducto
GO
/****** Object:  StoredProcedure [dbo].[SPS_SUBCATGORIA]    Script Date: 11/08/2019 19:41:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[SPS_SUBCATGORIA]
@SubCategoria int  , 
@Categoria int 
as

select n_subcategoria, n_categoria, convert(varchar(100),'')  as c_DescripCategoria ,c_descripcion, c_usuarioregistro,
d_fecharegistro, c_ultimousuariomod, d_ultimafechamod, case c_estado when 'A' then	 convert(bit,1) else  convert(bit,0) end c_estado 
into #data
from m_subcategoria
where   (( @Categoria = 0 ) or (@Categoria <> 0 and n_categoria = @Categoria) )  
and ((@SubCategoria  =  0 ) or ( @SubCategoria <> 0 and n_subcategoria = @SubCategoria) )

update #data set c_DescripCategoria = m_categoria.c_descripcion
from #data left join m_categoria on m_categoria.n_categoria = #data.n_categoria

select n_subcategoria, n_categoria, c_DescripCategoria, c_descripcion, c_usuarioregistro, d_fecharegistro, c_ultimousuariomod, d_ultimafechamod, c_estado
from #data
GO
