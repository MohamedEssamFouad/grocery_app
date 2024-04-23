import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Cart_item_grocery.dart';
import 'Groc_tile.dart';
import 'Prov_model.dart';

class Next_page extends StatelessWidget {
  const Next_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){return Cart_item_grocery();},));


        },
        child: Icon(
          Icons.shop,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
            child: Text(
              'Good Morning',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 25,),
              child: Text(
                'Let`s order fresh items for you',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 24,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
              color: Colors.deepPurple,
              thickness: 1,
            ),


            ),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 24,),
              child: Text(
                'Fresh Items',
                style: TextStyle(
                  fontSize: 25,
                //  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(

                child:Consumer<prov_groc>(
                  builder: (context,value,child){
                    return  GridView.builder(
                      itemCount: value.shopItems.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                        childAspectRatio: 1/1.2
                    ), itemBuilder: (context,index)
                    {
                      return Groc_tile(itemName: value.shopItems[index][0],
                        itemPrice: value.shopItems[index][1],
                        imgpath: value.shopItems[index][2],
                     color: value.shopItems[index][3],
                        onpressed: (){
                        Provider.of<prov_groc>(context,listen: false).addItemCart(index);
                        },



                      );
                    },
                    );

                  },
                ),

            ),
          ],
        ),
      ),
    );
  }
}
