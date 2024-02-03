import 'package:flutter/material.dart';
import 'package:toku/Componenets/Item.dart';

import '../models/number.dart';
class Family extends StatefulWidget {

  @override
  State<Family> createState() => _FamilyState();
}

class _FamilyState extends State<Family> {
  final List<Number> numbers = [
    Number(enName: "daughter", jpName: "musume", image: "assets/images/family_members/family_daughter.png", snName: "sounds/family_members/daughter.wav"),
    Number(enName: "father", jpName: "chichi", image: "assets/images/family_members/family_father.png", snName: "sounds/family_members/father.wav"),
    Number(enName: "grandfather", jpName: "sofu", image: "assets/images/family_members/family_grandfather.png", snName: "sounds/family_members/grand father.wav"),
    Number(enName: "grandmother", jpName: "sobo", image: "assets/images/family_members/family_grandmother.png", snName: "sounds/family_members/grand mother.wav"),
    Number(enName: "mother", jpName: "haha", image: "assets/images/family_members/family_mother.png", snName: "sounds/family_members/mother.wav"),
    Number(enName: "older brother", jpName: "ani", image: "assets/images/family_members/family_older_brother.png", snName: "sounds/family_members/older bother.wav"),
    Number(enName: "older sister", jpName: "ane", image: "assets/images/family_members/family_older_sister.png", snName: "sounds/family_members/older sister.wav"),
    Number(enName: "son", jpName: "musuko", image: "assets/images/family_members/family_son.png", snName: "sounds/family_members/son.wav"),
    Number(enName: "younger brother", jpName: "otouto", image: "assets/images/family_members/family_younger_brother.png", snName: "sounds/family_members/younger brohter.wav"),
    Number(enName: "younger sister", jpName: "imouto", image: "assets/images/family_members/family_younger_sister.png", snName: "sounds/family_members/younger sister.wav"),
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
          return Item(number: numbers[num],color: Color(0xFF568a34),);
        },
      ),
    );
  }
}
