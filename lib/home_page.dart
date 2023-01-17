import 'package:flutter/material.dart';

import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.transparent,
          labelPadding: const EdgeInsets.only(top: 5, bottom: 5),
          tabs: [
            Tab(
              icon: Icon(
                Icons.home_filled,
                color: Colors.brown.shade900,
                size: 25,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.video_collection,
                color: Colors.brown.shade100,
                size: 25,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.public_rounded,
                color: Colors.brown.shade100,
                size: 25,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person_rounded,
                color: Colors.brown.shade100,
                size: 25,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Fashion App",
          style: TextStyle(fontFamily: "Montserrat", color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.camera_alt,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: const AppBody(),
    );
  }
}

class AppBody extends StatefulWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 165,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(15),
            scrollDirection: Axis.horizontal,
            children: [
              profile("assets/model1.jpeg", "assets/chanellogo.jpg"),
              profile("assets/model3.jpeg", "assets/louisvuitton.jpg"),
              profile("assets/model2.jpeg", "assets/chanellogo.jpg"),
              profile("assets/modelgrid1.jpeg", "assets/chanellogo.jpg"),
              profile("assets/modelgrid2.jpeg", "assets/chanellogo.jpg"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Material(
            borderRadius: BorderRadius.circular(20),
            elevation: 4,
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 500,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                              image: AssetImage("assets/model1.jpeg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Daisy",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "34 mins ago",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.more_vert,
                        size: 25,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommend to friends",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => const DetailPage(
                                  imgPath: "assets/modelgrid1.jpeg"))));
                        },
                        child: Hero(
                          tag: "assets/modelgrid1.jpeg",
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: const DecorationImage(
                                image: AssetImage("assets/modelgrid1.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            height: 200,
                            width: (MediaQuery.of(context).size.width - 50) / 2,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: ((context) => const DetailPage(
                                      imgPath: "assets/modelgrid2.jpeg")),
                                ),
                              );
                            },
                            child: Hero(
                              tag: "assets/modelgrid2.jpeg",
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/modelgrid2.jpeg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: ((context) => const DetailPage(
                                      imgPath: "assets/modelgrid3.jpeg")),
                                ),
                              );
                            },
                            child: Container(
                              height: 95,
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage("assets/modelgrid3.jpeg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.shade100),
                        child: const Text(
                          "#louisvuitton",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              color: Colors.brown,
                              fontSize: 10),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.shade100),
                        child: const Text(
                          "#chloe",
                          style: TextStyle(
                              color: Colors.brown,
                              fontFamily: "Montserrat",
                              fontSize: 10),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.reply_rounded,
                        textDirection: TextDirection.rtl,
                        size: 30,
                        color: Colors.brown.shade100,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "1.7k",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 15,
                            color: Colors.brown.shade100),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.chat_bubble,
                        size: 25,
                        color: Colors.brown.shade100,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "325",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 15,
                            color: Colors.brown.shade100),
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.favorite_rounded,
                            color: Colors.red,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "12.5k",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 15,
                                color: Colors.brown.shade100),
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ))
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget profile(String imgPath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover)),
            ),
            Positioned(
              left: 60,
              top: 60,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.bottomCenter,
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: const Center(
              child: Text(
            "Folow",
            style: TextStyle(
                fontFamily: "Montserrat", fontSize: 15, color: Colors.white),
          )),
        ),
        const SizedBox(
          width: 100,
        )
      ],
    );
  }
}
