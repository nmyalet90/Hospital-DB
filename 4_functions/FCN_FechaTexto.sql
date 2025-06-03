--print dbo.FCN_FechaTexto ('20190502')

ALTER FUNCTION FCN_FechaTexto (@fecha datetime)

returns varchar (60)

AS
begin

declare @dia varchar (20)
declare @mes varchar (20)
declare @fechatexto varchar (50)

set @dia = (case when datepart(dw,@fecha) = 1 THEN 'Domingo ' + convert(char(2), datepart(dd, @fecha))
                 when datepart(dw,@fecha) = 2 THEN 'Lunes ' + convert(char(2), datepart(dd, @fecha))
				 when datepart(dw,@fecha) = 3 THEN 'Martes ' + convert(char(2), datepart(dd, @fecha))
				 when datepart(dw,@fecha) = 4 THEN 'Miércoles ' + convert(char(2), datepart(dd, @fecha))
				 when datepart(dw,@fecha) = 5 THEN 'Jueves ' + convert(char(2), datepart(dd, @fecha))
				 when datepart(dw,@fecha) = 6 THEN 'Viernes ' + convert(char(2), datepart(dd, @fecha))
				 when datepart(dw,@fecha) = 7 THEN 'Sábado ' + convert(char(2), datepart(dd, @fecha))
            END) 

set @mes = (case when datepart(mm,@fecha) = 1 THEN 'Enero'
                 when datepart(mm,@fecha) = 2 THEN 'Febrero'
				 when datepart(mm,@fecha) = 3 THEN 'Marzo'
				 when datepart(mm,@fecha) = 4 THEN 'Abril'
				 when datepart(mm,@fecha) = 5 THEN 'Mayo'
				 when datepart(mm,@fecha) = 6 THEN 'Junio'
				 when datepart(mm,@fecha) = 7 THEN 'Julio'
				 when datepart(mm,@fecha) = 8 THEN 'Agosto'
				 when datepart(mm,@fecha) = 9 THEN 'Septiembre'
				 when datepart(mm,@fecha) = 10 THEN 'Octubre'
				 when datepart(mm,@fecha) = 12 THEN 'Noviembre'
				 when datepart(mm,@fecha) = 13 THEN 'Diciembre'

			END)

set @fechatexto = @dia + ' de ' + @mes
RETURN @fechatexto

END