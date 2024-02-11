import 'package:flutter/material.dart';

import 'controllers/liste_stream.dart';
import 'models/model_stream.dart';

class HomePageApp extends StatefulWidget {
  const HomePageApp({super.key});

  @override
  State<HomePageApp> createState() => _HomePageAppState();
}

class _HomePageAppState extends State<HomePageApp> {
  List<StreamApp> liste = ListeStream().listeStream;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tela TV",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: liste.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    width: size.width,
                    height: liste[index].height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(liste[index].image),
                          fit: BoxFit.cover),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: (index == 0)
                        ? const Text("")
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                                Container(
                                  width: size.width,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(133, 27, 24, 24),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, bottom: 50.0),
                                        child: Text(
                                          liste[index].title.toString(),
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ]),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
