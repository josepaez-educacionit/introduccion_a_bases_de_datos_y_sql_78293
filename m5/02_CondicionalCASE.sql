Use laboratoriosab01;

-- Condicional CASE
-- El condicional CASE permite realizar comparaciones 
-- y devolver valores específicos basados en condiciones.

select	*,
	case
		when Precio < 800 
			then 'Barato'
        when Precio between 800 and 1800 
			then 'Equilibrado'
			else 'Caro'
    end as Categoria
from 	Articulos;
