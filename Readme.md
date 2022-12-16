# MELI Challenge - Stack maker

Este repositorio ha sido creado para levantar el stack Docker con el desafío MELI.

## Funcionamiento

Este repositorio se encarga de (por cada uno de los repositorios):

- Descargar el repositorio desde Github
- Instalar dependencias
- Transpilar código
- Generar imagen Docker

Luego, se encarga de levantar el stack, que se compone de:

- **Front**: Levantado en Angular
- **Kong**: Función de Ingress
- **Backend**: 6 microservicios

![Diagrama](https://lucid.app/publicSegments/view/daaffc36-944c-4833-990f-10f7bfdb2a2c/image.png)

## Comando

Para levantar el stack, es necesario correr el siguiente comando en la raíz de este repositorio:

```
make deploy
```

Una vez ejecutado el comando, ve por un café. A la vuelta, el stack estará listo para ser utilizado en **http://localhost:8080**
