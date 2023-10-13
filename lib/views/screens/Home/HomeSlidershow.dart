import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';


class HomeSliderShow extends StatelessWidget{
  
  final List buttons;

  const HomeSliderShow({ super.key, required this.buttons });

  @override
  Widget build(BuildContext context){
    // print(buttons);
    return SizedBox(
      height: 210,
      width: double.infinity,
      child: Swiper(
        viewportFraction: 0.7,
        scale: 0.7,
        itemCount: buttons.length,
        itemBuilder: (context, index) => _Slide(btn: buttons[index]),
      ),
    );
  }
}

class _Slide extends StatelessWidget{
  
  final List btn;


  const _Slide({ required this.btn });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, btn.last);
      },
      child: Container(
        
        decoration: BoxDecoration(
          color: btn[1],
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        height: 100,
        width: 100,
        child: Container(
          padding: EdgeInsets.only(top:30, left: 30),
          child: Text(btn.first, style:  TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w900
          ),),
        ),
      ),
    );
  }
}