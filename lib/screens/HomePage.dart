import 'package:flutter/material.dart';
import 'package:toku/screens/numbers_page.dart';
import '../Componenets/Containers.dart';
import 'Family_memberspage.dart';
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfef5da),
      appBar: AppBar(
        title: Text("Toku",style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Color(0xFF47312b),
      ),
      body: Column(
        children: [
          Catogerise(color: Color(0xFFf09136), txt: "Numbers",onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return NumberPage();
            }));
          }),
          Catogerise(color: Color(0xFF568a34), txt: "Family Members",onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Family();
            }));
          },),
          Catogerise(color: Color(0xFF79339e), txt: "Colors"),
          Catogerise(color: Color(0xFF4fadc8), txt: "Pharses"),
        ],
      ),
    );
  }
}
