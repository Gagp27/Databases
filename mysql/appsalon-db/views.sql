create view view_citas as
    select citas.id, citas.fecha, citas.hora, concat(usuarios.nombre, " ", usuarios.apellido) as "cliente", usuarios.email, servicios.nombre as servicio, servicios.precio
    from citas
    inner join usuarios on citas.usuarioId = usuarios.id
    inner join citas_x_servicios cxs on citas.id = cxs.citaId
    inner join servicios on cxs.servicioId = servicios.id;