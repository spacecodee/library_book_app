# library_book_app

An application where everyone can read theirs favorites books

## Código para correr el proyecto

```bash
flutter pub get # para instalar las dependencias
flutter run # para correr el proyecto

##comandos para auto_route
flutter packages pub run build_runner watch # para correr el watcher
flutter packages pub run build_runner build # para correr el builder
```

## ¿Cómo escribir código?

- Snake Case (contar_elementos) -> Nombres de archivos
- Pascal Case (ContarElementos) -> Clases
- Camel Case (contarElementos) -> Variables, métodos, funciones

## Carpetas

- assets = Imágenes, iconos, etc.
- lib = Código fuente
- test = Archivos de pruebas
- android = Archivos de configuración de Android
- ios = Archivos de configuración de iOS
- lib/main.dart = Archivo principal de la aplicación
- lib/core = Corazón de la aplicación (dto, interfaces, etc.)
- lib/guards = Archivos que protegen las rutas
- lib/providers = Archivos que proveen información a la aplicación
- lib/routes = Archivos que definen las rutas de la aplicación
- lib/service = Archivos que consumen servicios
- lib/shared = Archivos que se comparten en toda la aplicación
- lib/view = Archivos que definen las vistas de la aplicación (pages, widgets, etc.)
- lib/view/pages = Archivos que definen las páginas de la aplicación
- lib/view/shared = Archivos que se comparten en toda la aplicación (widgets, etc.)
- lib/view/shared/widgets = Archivos que definen los widgets de la aplicación (buttons, inputs, etc.)
- lib/view/shared/components = Archivos que definen los componentes de la aplicación

## ¿Cómo escribir comentarios?

- Comentarios de una línea: /// Comentario

## Comandos de git

- `git add .` Agregar todos los archivos al stage (preparar archivos para hacer commit)
- `git commit -m "Mensaje"` Guardar los cambios en la rama actual
- `git push -u origin <remote-repository>` o `git push` Subir los cambios a la rama actual del repositorio remoto
- `git pull` Traer los cambios del repositorio remoto a la rama actual
- `git checkout -b <nombre-rama>` Crear una rama y cambiar a ella
- `git checkout <nombre-rama>` Cambiar a una rama
- `git branch` = Ver las ramas
- `git branch -d <nombre-rama>` Eliminar una rama
- `git merge <nombre-rama>` Unir los cambios de la rama actual con la rama especificada
- `git switch -c <nombre-rama>` Crear una rama y cambiar a ella
- `git branch set-upstream-to=origin/<remote-branch> <nombre-rama>` Enlazar la rama actual con el repositorio remoto
- `git branch -vv` Ver las ramas y su estado
- `git branch -m <nombre-rama>` Renombrar una rama
- `git branch -u origin/<server branch> <local branch>` para crear una rama local y apuntarla a una rama remota

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
