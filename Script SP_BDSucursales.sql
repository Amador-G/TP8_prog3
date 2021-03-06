USE [BDSucursales]
GO
/****** Object:  StoredProcedure [dbo].[spAgregarSucursal]    Script Date: 01/10/2021 17:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[spAgregarSucursal]
(
@NOMBRESUCU VARCHAR(100),
@DESCRIPCION VARCHAR(100),
@IDPROVSUCURSAL INT,
@DIRECCIONSUCU VARCHAR(100)
)
AS
INSERT INTO Sucursal (NombreSucursal,DescripcionSucursal,Id_ProvinciaSucursal,DireccionSucursal) 
values (@NOMBRESUCU,@DESCRIPCION,@IDPROVSUCURSAL,@DIRECCIONSUCU)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[spEliminarSucursal]    Script Date: 01/10/2021 17:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[spEliminarSucursal]
        (
               @IDSUCURSAL INT
               )
               AS
        DELETE Sucursal WHERE Id_Sucursal = @IDSUCURSAL
        RETURN
GO
