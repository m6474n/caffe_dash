// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pos/components/cards/paymentMethodCard.dart';
// import 'package:pos/components/cards/profileCard.dart';
// import 'package:pos/components/checkout/calculationContainer.dart';
// import 'package:pos/components/customButtom.dart';
// import 'package:pos/controller/checkout/checkoutController.dart';
// import 'package:pos/utility/constants.dart';

// class CheckoutSection extends StatelessWidget {
//   const CheckoutSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return GetBuilder(
//         init: CheckoutController(),
//         builder: (cont) {
//           return Container(
//             height: height,
//             width: width * 0.25,
//             padding: EdgeInsets.all(24),
//             color: whiteColor,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 ProfileCard(
//                   userName: "Muhammad Mohsin",
//                   role: "Manager",
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   "Bill",
//                   style: TextStyle(fontSize: 24, color: headingColor),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Expanded(
//                   child: Container(
//                     height: height *0.5,
//                    width: double.infinity,
//                     color: primaryColor,
//                     child: Expanded(child: ListView.builder(itemBuilder: (context, indx){
//                       return Text('$indx');
//                     })),
//                   ),
//                 ),
//                 CalculationContainer(),
//                 Text(
//                   "Payment Method",
//                   style: TextStyle(
//                       color: headingColor,
//                       fontSize: 24,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 SizedBox(
//                   height: 12,
//                 ),
//                 Container(
//                   height: 85,
//                   child: Row(
//                       children:
//                           List.generate(cont.paymentMethods.length, (index) {
//                     return Expanded(
//                         child: PaymentCard(
//                             onTap: () {
//                               cont.resetPaymentMethod();
//                               cont.changePaymentMethod(index);
//                             },
//                             title: cont.paymentMethods[index]['title'],
//                             image: cont.paymentMethods[index]['image'],
//                             isActive: cont.paymentMethods[index]['isActive']));
//                   })),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                     height: 70,
//                     child: CustomButton(
//                       title: "Print Bill",
//                       onTap: () {},
//                       titleSize: 18,
//                       letterSpacing: 1.3,
//                     ))
//               ],
//             ),
//           );
//         });
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/cards/paymentMethodCard.dart';
import 'package:pos/components/cards/profileCard.dart';
import 'package:pos/components/checkout/calculationContainer.dart';
import 'package:pos/components/customButtom.dart';
import 'package:pos/controller/checkout/checkoutController.dart';
import 'package:pos/utility/constants.dart';

class CheckoutSection extends StatelessWidget {
  const CheckoutSection({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GetBuilder(
        init: CheckoutController(),
        builder: (cont) {
          return Container(
            height: height,
            width: width * 0.25,
            padding: EdgeInsets.all(24),
            color: whiteColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileCard(
                  userName: "Muhammad Mohsin",
                  role: "Manager",
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Bill",
                  style: TextStyle(fontSize: 24, color: headingColor),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    color: primaryColor,
                    child: ListView.builder(
                       // Assuming you have a list of items in your controller
                      itemBuilder: (context, indx) {
                        return Text('$indx');
                      },
                    ),
                  ),
                ),
                CalculationContainer(),

                SizedBox(height: 100,),
                Text(
                  "Payment Method",
                  style: TextStyle(
                      color: headingColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 85,
                  child: Row(
                      children:
                          List.generate(cont.paymentMethods.length, (index) {
                    return Expanded(
                        child: PaymentCard(
                            onTap: () {
                              cont.resetPaymentMethod();
                              cont.changePaymentMethod(index);
                            },
                            title: cont.paymentMethods[index]['title'],
                            image: cont.paymentMethods[index]['image'],
                            isActive: cont.paymentMethods[index]['isActive']));
                  })),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 70,
                    child: CustomButton(
                      title: "Print Bill",
                      onTap: () {},
                      titleSize: 18,
                      letterSpacing: 1.3,
                    ))
              ],
            ),
          );
        });
  }
}
