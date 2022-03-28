import 'package:flutter/material.dart';
import 'package:healthindex/screens/home_page.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({ Key? key }) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  String feature = "Environment";
  int idx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const MyHomePage(title: "title")));},
        child: Icon(Icons.home_filled),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Profile",
               style: TextStyle(
                 fontSize: 21,
                 color: Colors.black
               ),
              ),
              Text("Latest Results", 
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black
                ),
              )
            ],
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(//color of shadow
                          color: Colors.grey.shade200,
                          spreadRadius: 10, //spread radius
                          blurRadius: 7, // blur radius
                          offset: Offset(0, 2),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade50)
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Username",
                        style: TextStyle(
                          fontSize: 18
                        ),
                      ),
                      const SizedBox(width: 30,),
                      Image.asset("assets/profile.png"),
                      const SizedBox(width: 10,)
                    ],
                  ),
                ),
               const Positioned(
                    left: 20,
                    bottom: 5,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.white70,
                      backgroundImage: AssetImage("assets/usericon.png"),
                    )
                ),
              ],
              fit: StackFit.loose,
              ),
          ),
          Container(
            margin: const EdgeInsets.symmetric( horizontal: 20),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(//color of shadow
                    color: Colors.grey.shade200,
                    spreadRadius: 10, //spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(0, 2),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade50)
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Curriculum",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text("5",
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Image.asset("assets/chart.png")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text("rating",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54
                            ),
                          ),
                        ),
                        Text("Congrats, got a helpful curriculum!",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black54
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric( horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Container(
                  // margin: const EdgeInsets.symmetric( horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(//color of shadow
                        color: Colors.grey.shade200,
                        spreadRadius: 10, //spread radius
                        blurRadius: 7, // blur radius
                        offset: const Offset(0, 2),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade100),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Text("Interaction",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: RichText(text:  const TextSpan(
                              children: [
                                TextSpan(
                                    text: "14",
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    )
                                ),
                                TextSpan(
                                    text: "times",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black
                                    )
                                )
                              ]
                          )),
                        ),
                        const Text("In Average",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15),
                                child: RichText(text:  const TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "Increased ",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black54
                                          )
                                      ),
                                      TextSpan(
                                          text: "57%",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.green
                                          )
                                      )
                                    ]
                                )),
                              ),
                              const Icon(Icons.keyboard_arrow_up_rounded, size: 25, color: Colors.green,)
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                          width: 100,
                          child: Image.asset("assets/chart.png", fit: BoxFit.contain),
                        )
                      ],
                    ),
                  ),
                ),),
                Expanded(
                  child: Container(
                    // margin: const EdgeInsets.symmetric( horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(//color of shadow
                          color: Colors.grey.shade200,
                          spreadRadius: 10, //spread radius
                          blurRadius: 7, // blur radius
                          offset: const Offset(0, 2),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text("Security",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: RichText(text:  const TextSpan(
                                children: [
                                  TextSpan(
                                      text: "3",
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                      )
                                  ),
                                  TextSpan(
                                      text: "issues",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black
                                      )
                                  )
                                ]
                            )),
                          ),
                          const Text("In Average",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black54
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15),
                                  child: RichText(text:  const TextSpan(
                                      children: [
                                        TextSpan(
                                            text: "Lower ",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black54
                                            )
                                        ),
                                        TextSpan(
                                            text: "53%",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.red
                                            )
                                        )
                                      ]
                                  )),
                                ),
                                const Icon(Icons.keyboard_arrow_down_rounded, size: 25, color: Colors.red,)
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                            width: 100,
                            child: Image.asset("assets/chart.png", fit: BoxFit.contain),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top:5, bottom: 15 ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(//color of shadow
                  color: Colors.grey.shade200,
                  spreadRadius: 10, //spread radius
                  blurRadius: 7, // blur radius
                  offset: const Offset(0, 2),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade100)
            ),
            child: getScrollingWidget(),
          ),
        ],
      ),
    );
  }
  Widget getScrollingWidget(){
    return idx == 0 ? Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios, size: 17),
                onPressed: (){
                  setState(() {
                    idx = (idx+1)%2;
                    if(idx == 0) {
                      feature = "Environment";
                    } else {
                      feature = "Implications";
                    }
                  });
                },
              ),
              Text(feature,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios, size: 17,),
                onPressed: (){
                  setState(() {
                    idx = (idx+1)%2;
                    if(idx == 0) {
                      feature = "Environment";
                    } else {
                      feature = "Implications";
                    }
                  });
                },
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Image.asset("assets/echart.png"),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text("•",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 20
                          ),),
                        Text("Class")
                      ],
                    ),
                    const SizedBox(width: 55,),
                    Row(
                      children: const [
                        Text("•",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 20
                          ),),
                        Text("Societies")
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text("•",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 20
                          ),),
                        Text("Canteen")
                      ],
                    ),
                    const SizedBox(width: 38,),
                    Row(
                      children: const [
                        Text("•",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 20
                          ),),
                        Text("Labs")
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text("•",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 20
                          ),),
                        Text("Playground")
                      ],
                    ),
                    const SizedBox(width: 20,),
                    Row(
                      children: const [
                        Text("•",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 20
                          ),),
                        Text("Smart Class")
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ) : Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios, size: 17),
                onPressed: (){setState(() {
                  idx = (idx+1)%2;
                  if(idx == 0) {
                    feature = "Environment";
                  } else {
                    feature = "Implications";
                  }
                });},
              ),
              Text(feature,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios, size: 17,),
                onPressed: (){
                  setState(() {
                    idx = (idx+1)%2;
                    if(idx == 0) {
                      feature = "Environment";
                    } else {
                      feature = "Implications";
                    }
                  });
                },
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Image.asset("assets/ichart.png"),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("•",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 20
                      ),),
                    Text("Sexual")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("•",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 20
                      ),),
                    Text("Gender Bias"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("•",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 20
                      ),),
                    Text("Body Shaming")
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}