#pregunta 1 
¿Qué pasa si no especifico el directorio de trabajo?
---
#pregunta 2
Sin workdir se abre en el directory raiz. Con workdir, se abre en el directorio especificado.
---
#pregunta 3
¿Es necesario especificar el `workdir` en docker?, ¿Porqué?
si. por que si no se especifica, el directorio de trabajo seria la raiz
---
#pregunta 4
2. ¿Que hacen los siguientes comandos? 
`docker ps` muestra los contenedores activos
`docker pull` baja la imagen
`docker push` sube la imagen
`docker rm` elimina el contenedor
`docker rmi` elimina la imagen
`docker run` crea el contenedor
`docker tag` tagea la imagen
`docker search`busca la imagen
`docker login` logea en la cuenta del host especificado en el registry
`docker exec` ejecuta un comando en el contenedor activo
`docker build` contruye la imagen
`docker inspect` muestra el detalle del contenedor
`docker network` gestiona la red de contenedores
---
#pregunta 5
3. ¿Para qué sirve el archivo `Makefile`?
Sirve para crear comandos que encapsulen un conjuntos de comandos bash
---
#pregunta 6
4. ¿Qué es un `target` en `Makefile`?
Es una palabra nombra al conjunto de comandos para ser ejecutados con el comando make
---
#pregunta 7
5.¿Qué significa el comando -d?
verifica que existe el directorio
---
#pregunta 8
6.¿Porqué la sentencia comienza con @?
Omite la imoresion de la sentencia
---
#pregunta 9
7.¿Para qué sirve el comando mkdir?
Sirve para crear un directorio
---
#pregunta 10
8.Explicar lo que hace la función mkdir_deploy_dir
Verifica si el directorio existe, sino , lo crea.
---
#pregunta 11
9.¿Para qué sirve el uso de \?
Para continuar la sentencia en otra linea
---
#pregunta 12
10.¿Para qué sirve el uso de &&?
Es una compuerta logica de inclusion
---
#pregunta 13
11.¿Qué función cumple usar los argumentos -rf?
La funcion remove
---
#pregunta 14
12.Explicar lo que hace la función git_init (linea por linea)
Ingresa al directorio, borrar el directorio .git e inicializa el repositorio
---
#pregunta 15
13.¿Para qué sirve el uso de eval?
Ejecuta la salida de una variable
---
#pregunta 16
14.¿Para qué sirve el uso de shell?
Ejecuta un comando en la terminal
---
#pregunta 17
15.¿Para qué sirve el uso de git log --pretty=format:"%an"?
Para obtener el nombre del usuario del ultimo commit
---
#pregunta 18
16.¿Cuál es la diferencia en usar git config y git config --global?
Configura las credecniales para el repo local y con global configura la cuenta en general para todos los repos
---
#pregunta 19
Explicar lo que hace la función git_config (línea por línea)
extrae el nombre y correo del repo y configura las credecniales del repo local con las del usuario
---
#pregunta 20
¿Para qué sirve el uso de awk?
es un lenguaje de programacion que sirve para extraer texto
---
#pregunta 21
¿Para qué sirve el uso de sed?
Es un lenguaje de edicion de texto
---
#pregunta 22
¿Para qué sirve el uso de git log --pretty=format:"%an"?
sirve para obtener el autor de los commits
---
#pregunta 23
Explicar lo que hace la función git_add_remote_repository
Agrega el repositorio
---
#pregunta 24
Explicar lo que hace la función create_branch_gh_pages
Crea una nueva rama y se posiciona en esta
---
#pregunta 25
Explicar lo que hace la función copy_files_to_deploy
Copia en contenido del directorio a la rama
---
#pregunta 26
Explicar lo que hace la función git_add
Agrega los cambios
---
#pregunta 27
Explicar lo que hace la función create_commit (línea por línea)
Copia el ultimo mensaje del commit y lo asigna a la variable. Se dirige al directorio de la rama y realiza un commit con el mensaje almacenado.
---
#pregunta 28
Explicar lo que hace la función git_push (línea por línea)
Realiza un push forzado a la rama remota
---
#pregunta 29
Explicar lo que hace la función clean_workspace
Eliminar el directorio de la rama
---
#pregunta 30
¿Para qué sirve el uso de ifeq?
Compara la igualdad de los 2 argumentos de la instruccion
---
#pregunta 31
¿Para qué sirve el uso de strip?
remueve espacios en blanco la final e inicio de la cadena. reduce varios espacios juntos a uno.
---
#pregunta 32
Explicar lo que hace la función show_deploy_url (línea por línea)
Captura la url del repositorio remoto.
imprime un mensaje con el cnombre del usuario  el repositorio
---
#pregunta 33
¿Qué hace cada paso?
ejecuta todos los comandos vistos anteriormente
---
#pregunta 34
¿Que sucede si no volumeo el docker.sock?
no habria comunicacion entre jenkis y docker Engine
---
#pregunta 35
¿Para que sirve el volumen var/jenkins_home?
para alojar los datos de jenkins
---
#pregunta 36
¿Puedo cambiar de puerto?
si
---
#pregunta 37
¿Que pasa si no utlizo el usuario root?
no tendria permisos suficientes
---
#pregnuta 38
¿Còmo instalo make en una imagen?
no se instala. solo se crea el archivo makefile.
---
#preguntas 39
¿Se puede crear un volúmen desde otro volúmen en docker? ¿Porqué?
no. porque es una restriccion.
---
#pregunta 40
¿Para que sirve el comando docker create -v <dir> --name <container> <image>?
Crea un container con volumen.
---
#pregunta 41
¿Qué hace el comando docker cp ./ <container>:<dir>?
copia el container en un ruta especifica.
---
#pregunta 42
¿Cómo creo una network usando docker run?
con el flag --network
---
#pregunta 43
¿Cómo conecto una network a un container? usando docker run
con el flag --net
---
#pregunta 44
¿Qué hace docker run -it --rm --volumes-from <container> -w <dir> <image> <command>?
corre el container eliminando la instancia anterior. 