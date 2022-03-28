import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthindex/screens/profile.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textFieldController = TextEditingController();

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Enter your experience'),
          content: TextField(
            controller: _textFieldController,
            maxLines: 10,
            decoration: InputDecoration(hintText: "Enter Experience"),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                print(_textFieldController.text);
                if(_textFieldController.text.length > 0) setState(() {

                });
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          padding: const EdgeInsets.only(top: 20),
          child: const Text("Hi, User",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const UserProfile()));},
        child: const Icon(Icons.account_circle),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          const SizedBox(height: 10.0,),
          const Text(
            'Your Happiness Index ',
            style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500,),
          ),const SizedBox(height: 30.0,),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xff00C35A),
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(20.0)
            ),

            padding: const EdgeInsets.all(20.0),
            child:Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(20.0)
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  const [
                  Center(
                    child: Text('😃',style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.w700,),),
                  ),SizedBox(height: 10.0,),Center(
                    child: Text('100',style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.w700,),),
                  ),SizedBox(height: 10.0,),
                  Center(
                    child: Text('Hi',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700,),),
                  ),
                ],
              ),
            ) ,
          ),
          const SizedBox(height: 30.0,),
          Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(child: Text('Tell us about Today 😃',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700,color: Colors.black,))),
                  const SizedBox(height: 30.0,),
                  TextButton(onPressed: () {
                    _displayTextInputDialog(context);
                  },
                      child:const Text('Write about Today!',style: TextStyle(fontSize: 25.0,color: Colors.black,fontWeight: FontWeight.w500,) ,)),
                  TextButton(onPressed: () {

                  },
                      child:const Text('Record Audio',style: TextStyle(fontSize: 25.0,color: Colors.black,fontWeight: FontWeight.w500,)  ,)),
                  TextButton(onPressed: () {  },
                      child:const Text('Record Video',style: TextStyle(fontSize: 25.0,color: Colors.black,fontWeight: FontWeight.w500,)  ,)),
                ],
              ),
            ),
          ),
          _textFieldController.text.length != 0 ? Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(_textFieldController.text))  : Container()
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}