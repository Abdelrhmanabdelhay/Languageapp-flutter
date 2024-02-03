import 'package:flutter/material.dart';
import '../models/number.dart';
import 'package:audioplayers/audioplayers.dart';

class Item extends StatefulWidget {
  Number number;
  Color color;
  Item({required this.number,required this.color});
  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: widget.color,
      height: 100,
      child: Row(
        children: [
          Container(color:Color(0xFFfef5da),
              child: Image.asset(widget.number.image)),
          Padding(
            padding: const EdgeInsets.only(left:12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.number.jpName,style: TextStyle(color: Colors.white,fontSize: 18.0),),
                Text(widget.number.enName,style: TextStyle(color: Colors.white,fontSize: 18.0),),
              ],
            ),
          ),
          Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
             child: IconButton(icon: Icon(Icons.play_arrow,color: Colors.white,size: 25.0,), onPressed: () {
               setState(() {
                 final player=AudioPlayer();
               player.play(AssetSource(widget.number.snName));
               });

             },),
          ),
        ],
      ),
    );

  }
}
