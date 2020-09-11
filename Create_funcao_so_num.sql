USE G_Ponto

GO


CREATE FUNCTION [dbo].[SO_NUMERO] ( @PARAMETRO VARCHAR(255) ) RETURNS VARCHAR(255) AS
BEGIN
 
    DECLARE @TAM INT
    DECLARE @I   INT
    DECLARE @CARACTER VARCHAR(1)
    DECLARE @RESULTADO VARCHAR(60)
 
    SET @TAM = LEN(@PARAMETRO)
    SET @I   = 1
 
    SET @RESULTADO = ''
    WHILE @I <= @TAM
    BEGIN
 
       SET @CARACTER = SUBSTRING(@PARAMETRO, @I, 1)
     
        
       IF (@CARACTER = '0') OR
          (@CARACTER = '1') OR
          (@CARACTER = '2') OR
          (@CARACTER = '3') OR
          (@CARACTER = '4') OR
          (@CARACTER = '5') OR
          (@CARACTER = '6') OR
          (@CARACTER = '7') OR
          (@CARACTER = '8') OR
          (@CARACTER = '9') 
 
           SET @RESULTADO = @RESULTADO + @CARACTER
 
       SET @I = @I + 1
    END
 
    RETURN @RESULTADO
 
END