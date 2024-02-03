import 'package:flutter/material.dart';
import 'package:toku/Componenets/Item.dart';

import '../models/number.dart';

class NumberPage extends StatefulWidget {
  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  final List<Number> numbers = [
    Number(enName: "one", jpName: "ichi", image: "assets/images/numbers/number_one.png", snName: "sounds/numbers/number_one_sound.mp3"),
    Number(enName: "two", jpName: "ni", image: "assets/images/numbers/number_two.png", snName: "sounds/numbers/number_two_sound.mp3"),
    Number(enName: "three", jpName: "san", image: "assets/images/numbers/number_three.png", snName: "sounds/numbers/number_three_sound.mp3"),
    Number(enName: "four", jpName: "shi", image: "assets/images/numbers/number_four.png", snName: "sounds/numbers/number_four_sound.mp3"),
    Number(enName: "five", jpName: "go", image: "assets/images/numbers/number_five.png", snName: "sounds/numbers/number_five_sound.mp3"),
    Number(enName: "six", jpName: "roku", image: "assets/images/numbers/number_six.png", snName: "sounds/numbers/number_six_sound.mp3"),
    Number(enName: "seven", jpName: "shichi", image: "assets/images/numbers/number_seven.png", snName: "sounds/numbers/number_seven_sound.mp3"),
    Number(enName: "eight", jpName: "hachi", image: "assets/images/numbers/number_eight.png", snName: "sounds/numbers/number_eight_sound.mp3"),
    Number(enName: "nine", jpName: "kyuu", image: "assets/images/numbers/number_nine.png", snName: "sounds/numbers/number_nine_sound.mp3"),
    Number(enName: "ten", jpName: "juu", image: "assets/images/numbers/number_ten.png", snName: "sounds/numbers/number_ten_sound.mp3"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers",style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Color(0xFF47312b),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context,num){
          return Item(number: numbers[num],color: Color(0xFFf09136),);
        },
      ),
    );
  }
}


