import 'package:flutter/material.dart';
import 'package:flutter_notebook_4th/ep355_monochrome_shop_app/entered_page.dart';

class ItemDetailPage extends StatelessWidget {
  final Wear wear;

  ItemDetailPage({this.wear});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Spacer(),
                    Text(
                      "${wear.name}",
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(wear.img),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.color)),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      height: 4,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      height: 4,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      height: 4,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      height: 4,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text("No matter the occasion girl, get ready to edge\n"
                    "out your suits collection and be best dressed"),
              ),
            ),
            Expanded(
              flex: 7,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 10,
                            child: Container(
                              padding: EdgeInsets.only(left: 40),
                              height: double.infinity,
                              color: Colors.grey.shade200,
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Detail",
                                    style: TextStyle(fontSize: 20),
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Center(
                                child: Icon(
                                  Icons.card_giftcard,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 10,
                            child: Container(
                              padding: EdgeInsets.only(left: 80),
                              height: double.infinity,
                              color: Colors.grey.shade400,
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Delivery",
                                    style: TextStyle(fontSize: 20),
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Center(
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 10,
                            child: Container(
                              padding: EdgeInsets.only(left: 120),
                              height: double.infinity,
                              color: Colors.grey.shade600,
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Discount",
                                    style: TextStyle(fontSize: 20),
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Center(
                                child: Icon(
                                  Icons.share,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 10,
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      color: Colors.white,
                                      child: Center(
                                        child: Text(
                                          "\$${wear.price}",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: Container(
                                      color: Colors.black,
                                      child: Center(
                                        child: Text(
                                          "Add to Cart",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Center(
                                child: Icon(
                                  Icons.more_horiz,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
