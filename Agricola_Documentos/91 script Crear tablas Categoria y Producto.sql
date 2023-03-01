use dbAgricola
 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Categoria](
	[IDCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IDCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Producto](
	[IDProducto] [int] IDENTITY(1,1) NOT NULL,
	[IDCategoria] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Precio] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[IDProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([IDCategoria], [Codigo], [Nombre], [Estado]) VALUES (1, N'TEC', N'TECLADO', 1)
INSERT [dbo].[Categoria] ([IDCategoria], [Codigo], [Nombre], [Estado]) VALUES (2, N'MOU', N'MOUSE', 1)
INSERT [dbo].[Categoria] ([IDCategoria], [Codigo], [Nombre], [Estado]) VALUES (3, N'COM', N'COMPUTADORA', 1)
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([IDProducto], [IDCategoria], [Nombre], [Precio]) VALUES (1, 1, N'TECLADO XYZ', CAST(35.00 AS Decimal(18, 2)))
INSERT [dbo].[Producto] ([IDProducto], [IDCategoria], [Nombre], [Precio]) VALUES (2, 2, N'MOUSE PHP 254', CAST(75.00 AS Decimal(18, 2)))
INSERT [dbo].[Producto] ([IDProducto], [IDCategoria], [Nombre], [Precio]) VALUES (3, 3, N'PC GAMER XYZ', CAST(2546.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Categoria_Listar]
(
	@idEstado int
)
as
begin
	select *
	from Categoria
	where Estado = @idEstado
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Producto_Listar]
as
begin
	select *
	from Producto
end
GO