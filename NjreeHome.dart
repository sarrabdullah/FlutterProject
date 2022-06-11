import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'NjreeProfile.dart';

class Njree extends StatefulWidget {
  const Njree({Key? key}) : super(key: key);

  @override
  State<Njree> createState() => _NjreeState();
}

class _NjreeState extends State<Njree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 244, 228),
      body: ListView(children: [
        // Header
        Container(
            margin: EdgeInsets.only(top: 20, bottom: 50),
            height: 150,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 0.5, color: Colors.grey),
            ),
            child: Image.network(
              "https://cdn.nejree.com/media/wysiwyg/logo-en-b-small.png",
              fit: BoxFit.cover,
            )),

        //GridView Items
        Container(
          width: MediaQuery.of(context).size.width,
          child: GridView(
              //Setting
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 9 / 13,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 6),

              //Items
              children: [
                Item(
                    image:
                        "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e6ea66d1-fd36-4436-bcac-72ed14d8308d/wearallday-younger-shoes-5bnMmp.png",
                    productName: "NiKE",
                    price: "333 SR",
                    description: "Black and White"),
                Item(
                    image:
                        "https://images.stockx.com/images/Air-Jordan-4-Retro-Red-Thunder-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1641394023.png",
                    productName: "NiKE JORDEN",
                    price: "393 SR",
                    description: "Blach and Red"),
                Item(
                    image:
                        "https://cdn-images.farfetch-contents.com/13/67/83/45/13678345_21609919_1000.jpg",
                    productName: "NiKE JORDEN",
                    price: "333 SR",
                    description: "Red and White"),
                Item(
                    image:
                        "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e6ea66d1-fd36-4436-bcac-72ed14d8308d/wearallday-younger-shoes-5bnMmp.png",
                    productName: "NiKE",
                    price: "333 SR",
                    description: "Black and White"),
                Item(
                    image:
                        "https://images.stockx.com/images/Air-Jordan-4-Retro-Red-Thunder-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1641394023.png",
                    productName: "NiKE JORDEN",
                    price: "393 SR",
                    description: "Blach and Red"),
                Item(
                    image:
                        "https://cdn-images.farfetch-contents.com/13/67/83/45/13678345_21609919_1000.jpg",
                    productName: "NiKE JORDEN",
                    price: "333 SR",
                    description: "Red and White"),
                Item(
                    image:
                        "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e6ea66d1-fd36-4436-bcac-72ed14d8308d/wearallday-younger-shoes-5bnMmp.png",
                    productName: "NiKE",
                    price: "333 SR",
                    description: "Black and White"),
                Item(
                    image:
                        "https://images.stockx.com/images/Air-Jordan-4-Retro-Red-Thunder-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1641394023.png",
                    productName: "NiKE JORDEN",
                    price: "393 SR",
                    description: "Blach and Red"),
                Item(
                    image:
                        "https://cdn-images.farfetch-contents.com/13/67/83/45/13678345_21609919_1000.jpg",
                    productName: "NiKE JORDEN",
                    price: "333 SR",
                    description: "Red and White"),
                Item(
                    image:
                        "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e6ea66d1-fd36-4436-bcac-72ed14d8308d/wearallday-younger-shoes-5bnMmp.png",
                    productName: "NiKE",
                    price: "333 SR",
                    description: "Black and White"),
              ]),
        )
      ]),
    );
  }
}

class Item extends StatefulWidget {
  //constructor to pass data through it
  Item(
      {Key? key,
      required this.image,
      required this.productName,
      required this.price,
      required this.description})
      : super(key: key);
  //main variables
  late String image;
  late String productName;
  late String price;
  late String description;

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0), // backgrounds of item
        body: Container(
            //styling
            margin: EdgeInsets.all(3),
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 0.5,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,

              // getting
              children: [
                Padding(
                    padding: EdgeInsets.all(3),
                    child: Image.network(
                      "${widget.image}",
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      fit: BoxFit.contain,
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${widget.productName}",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                          )),
                      Text("${widget.price}",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900)),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("${widget.description}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400))),
              ],
            )));
  }
}
