package com.company.spring_boot_crud_app;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import java.util.List;
// Anotación que indica que esta interfaz es un repositorio
@Repository
public interface NotaRepository extends CrudRepository<Nota, Long> {
    // Encuentra notas por su titulo
    List<Nota> findByTitulo(String titulo);

    // Encuentra notas cuyo contenido sea igual a un valor dado
    List<Nota> findBycontenido(String contenido);

    
}
