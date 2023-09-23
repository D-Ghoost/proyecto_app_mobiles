# Comandos para utilizar git con el proyecto

1. git clone: permite clonar el repositorio remoto en el repositorio local
```bash
    git clone {url del repositorio}
```
2. git status: ver el estado de los archivos en el repositorio local
3. git add: agregar archivos al stage para ser guardados
```bash
    git add {nombre del archivo}
```
4. git commit: guardar los cambios en el repositorio local con un mensaje
```bash
    git commit -m "mensaje"
```
5. git push: subir los cambios al repositorio remoto (github)
```bash
    git push origin {nombre de la rama}
```
6. git pull: actualizar el repositorio local con los cambios del remoto (github)
```bash
    git pull origin {nombre de la rama}
```
7. git branch: ver las ramas del repositorio local y en la que se encuentra actualmente
```bash
    git branch
```
8. git checkout: cambiar de rama en el repositorio local
```bash
    git checkout {nombre de la rama}
```
## Como hacer un pull request
1. Crear una rama con el nombre de la funcionalidad que se va a desarrollar
2. Hacer los cambios en la rama
3. Hacer un commit con los cambios
4. Hacer un push de la rama al repositorio remoto
5. En github, ir a la pestaña pull requests y crear un nuevo pull request
6. Seleccionar la rama a la que se le va a hacer el pull request
7. Agregar un titulo y una descripcion al pull request
8. Crear el pull request
9. Esperar a que el pull request sea aprobado y mergeado
