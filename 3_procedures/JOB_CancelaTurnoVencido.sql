

update turno set estado = 2
where convert(char(8), fechaturno, 112) < convert(char(8), getdate(), 112)
and estado = 0