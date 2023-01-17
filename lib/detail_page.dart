import "package:flutter/material.dart";

class DetailPage extends StatefulWidget {
  final String imgPath;
  const DetailPage({required this.imgPath, Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: widget.imgPath,
        child: Stack(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              widget.imgPath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 30,
            child: Container(
              height: 230,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.brown.shade100),
                          image: const DecorationImage(
                            image: AssetImage("assets/PngItem_756560.png"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "LAMINATED",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 22,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Louis vuitton",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 30,
                            width: MediaQuery.of(context).size.width - 180,
                            child: const Text(
                              "One button V-neck sling long-sleeved waist female stitching dress",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 13,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "\$6500",
                        style:
                            TextStyle(fontFamily: "Montserrat", fontSize: 23),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        heroTag: null,
                        backgroundColor: Colors.brown,
                        child: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
