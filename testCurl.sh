#!/bin/bash

# Script para probar la API de productos

# URL base de la API
BASE_URL="http://localhost:8081/api/notas"

# 1. Crear un nuevo producto
echo "Creando una nueva nota..."
curl -X POST $BASE_URL \
-H "Content-Type: application/json" \
-d '{"Nota1": "Nota numero 1"}'
echo -e "\n"

# 2. Actualizar nota
curl -X PUT http://localhost:8081/api/notas/1 -H "Content-Type: application/json" -d "{\"titulo\":\"Nota Actualizada\", \"contenido\":\"Contenido actualizado.\"}"

# 3. Eliminar nota
curl -X DELETE http://localhost:8081/api/notas/1

# 2. Obtener todos los productos
echo "Obteniendo todos los productos..."
curl -X GET $BASE_URL
echo -e "\n"

# 3. Actualizar el producto con ID 1
echo "Actualizando el producto con ID 1..."
curl -X PUT $BASE_URL/1 \
-H "Content-Type: application/json" \
-d '{"nombre": "Producto Actualizado"}'
echo -e "\n"

# 4. Obtener todos los productos después de la actualización
echo "Obteniendo todos los productos después de la actualización..."
curl -X GET $BASE_URL
echo -e "\n"

# 5. Eliminar el producto con ID 1
echo "Eliminando el producto con ID 1..."
curl -X DELETE $BASE_URL/3
echo -e "\n"

# 6. Obtener todos los productos después de la eliminación
echo "Obteniendo todos los productos después de la eliminación..."
curl -X GET $BASE_URL
echo -e "\n"

echo "Pruebas completadas."
