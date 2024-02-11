import '../models/model_stream.dart';

class ListeStream {
  List<StreamApp> listeStream = [
    StreamApp(image: "asset/quiz.jpg", onTap: () {}, height: 160),
    StreamApp(
        title: "Tela Pub",
        image: "asset/pubImage.jpg",
        onTap: () {},
        height: 260),
    StreamApp(
        title: "Tela Original",
        image: "asset/imageslive.jpeg",
        onTap: () {},
        height: 260),
    StreamApp(
        title: "Tela Sport",
        image: "asset/sportImage.jpg",
        onTap: () {},
        height: 260)
  ];
}
