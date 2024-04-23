import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Prov_model.dart';
class Cart_item_grocery extends StatelessWidget {
  const Cart_item_grocery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Cart',

        ),
      ),
      body:Consumer<prov_groc>(
        builder: (context,value,child){
          return Column(
            children: [
              Expanded(
                child: ListView.builder(itemCount: value.cartItems.length,
                itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                    ),
                    child: ListTile(
                      leading: Image.asset(value.cartItems[index][2],),
                       title: Text(value.cartItems[index][0],

                       ),
                      subtitle: Text('\$ ${value.cartItems[index][1]}'),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.cancel,
                        ),
                        onPressed: ()=>Provider.of<prov_groc>
                          (context,listen: false).RemoveItem(index),
                      ),
                    ),
                  ),
                );
              },
              ),
              ),
             Padding(
               padding: const EdgeInsets.all(24),
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.green,
                   borderRadius: BorderRadius.circular(8),

                 ),
                 padding: EdgeInsets.all(24),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(

                           'Total Price',
                           style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: 15,
                           ),
                         ),
                         Text(
                          '\$ ${value.Calc_items()}',
                           style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: 25,
                           ),

                         ),
                       ],
                     ),
                     Container(

                       decoration: BoxDecoration(
                         
                         border: Border.all(color: Colors.green.shade100),
                         borderRadius: BorderRadius.circular(12)
                       ),
                       padding: EdgeInsets.all(12),
                       child: Row(
                         children: [
                           Text(
                             'Pay Now',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                           ),
                           Icon(
                             Icons.arrow_forward_ios,
                             size: 16,
                             color: Colors.white,
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
             ),
            ],
          );
        },
      ) ,
    );
  }
}
