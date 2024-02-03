import 'package:flutter/material.dart';

class Catogerise extends StatefulWidget {
  Color? color;
  String? txt;
  Function()? onTap;
  Catogerise({Key? key,
     this.color,
     this.txt,
     this.onTap,
   }) : super(key: key);

  @override
  State<Catogerise> createState() => _CatogeriseState();
}

class _CatogeriseState extends State<Catogerise> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.only(left: 12.0),
        alignment: Alignment.centerLeft,
        height: 65,
        width: MediaQuery.of(context).size.width,
        color: widget.color,
        child: Text(widget.txt!,style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),),
      ),
    )
    ;
  }
}
