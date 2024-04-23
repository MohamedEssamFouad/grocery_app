import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Next_page.dart';

class first_home_gap extends StatelessWidget {
  const first_home_gap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 70,right: 70,left: 70),
            child: Center(child: Image.asset('assests/images/avocado.png',)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Text(

              'We deliver groceries at your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,

              ),
            ),
          ),
          Text(
            'Fresh items everday',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          SizedBox(height: 50,),
          //Spacer(),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return Next_page();},));

            },
            child: Container(
              //height: 50,
      //alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.all(24),
              child: Text(
                'Get Started',
                //  textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
