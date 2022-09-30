# t2_dsw

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


----------------------- Especificações do trabalho ---------------------------------

- a branch master possui o shared preferences e o firebase instalado, então é necessário ter o firebase instalado na máquina
- na branch master, no arquivo lib/main.dart tem uma constante com o id do projeto criado no firebase, criado para o funcionamento do firestore. Então caso de erro, pode ser que a solução seja criar um projeto no firestore e substituir o id do projeto pelo novo criado, criando uma coleção no firestore com nome de post
- o arquivo lib/login.page.dart tem as shared preferences, nela salvamos o idioma atual do aplicativo
- o arquivo lib/home.service.dart recupera os post, então ele faz uma chamada no firestore
- o arquivo lib/createpost.page.dart cria um post na base de dados do firestore
- a branch app_sem_firebase é uma versão do app sem a conexão da rede
