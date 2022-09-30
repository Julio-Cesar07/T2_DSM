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
- tutoriais usado como base para fazer a conexão com o firebase foi o próprio tutorial do firebase flutter, quando criado um novo projeto e o seguinte vídeo do youtube https://www.youtube.com/watch?v=Tw7L2NkhwPc&t=340s
- na branch master, no arquivo lib/main.dart tem uma constante com o id do projeto criado no firebase, criado para o funcionamento do firestore. Então em caso de erro de não conseguir acessar a coleção, pode ser que a solução seja criar um projeto no firebase e substituir o id do projeto pelo novo criado, criando uma coleção no firestore database com nome de 'post', tendo em consideração que esteja logado no firebase pelo console
- o arquivo lib/login.page.dart tem as shared preferences, nela salvamos o idioma atual do aplicativo
- o arquivo lib/home.service.dart recupera os post, então ele faz uma chamada no firestore
- o arquivo lib/createpost.page.dart cria um post na base de dados do firestore
- caso dê outro erro que não conseguimos prever, a branch app_sem_firebase é uma versão do app sem a conexão da rede, ela é o app que apresentamos em aula e não tem os requisitos de shared preferences e conexão com a rede funcionando
