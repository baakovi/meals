# meals

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Na próxima aula um pequeno ajuste referente à utilização do Map criado pelo Professor precisará ser feito. Será necessário fazer o "cast" da tipagem de cada dado utilizado, ou seja, basta fazer dessa forma:

    title: Text(
              _screens[_selectedScreenIndex]['title'] as String,
            ),

    body: _screens[_selectedScreenIndex]['screen'] as Widget,

E mais tarde na aula, quando for criado o "BottomNavigationBarItem” a propriedade "title” não existe mais, agora a propriedade é chamada de "label”. E nessa nova propriedade não é mais necessário o uso do Widget "Text”, basta inserir a String mesmo. Dessa forma:

    BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: 'Categorias',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'Favoritos',
              ),

Bons estudos!