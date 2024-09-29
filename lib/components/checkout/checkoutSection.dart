import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/cards/billItemCard.dart';
import 'package:pos/components/cards/paymentMethodCard.dart';
import 'package:pos/components/cards/profileCard.dart';
import 'package:pos/components/checkout/calculationContainer.dart';
import 'package:pos/components/customButtom.dart';
import 'package:pos/components/noteButton.dart';
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
          return ClipRect(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 400),
              height: height,
              width:cont.expandCheckout ?  width * 0.25: 0,
              padding: EdgeInsets.all(24),
              color: whiteColor,
              child: cont.showCheckoutContent ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileCard(
                    onTap: (){
                      // cont.toggleCheckoutBar();
                    },
                    image: "assets/profile-pic.png",
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
                  Container(
                    height: 350,
                    width: double.infinity,
                    
                    child: ListView.builder(
                      itemCount: cont.billItems.length,
                      itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(bottom: 8),
                        child: BillItemCard(
                          image: cont.billItems[index]['image'],
                          title: cont.billItems[index]['item_name'], price:cont.billItems[index]['price'],quantity: cont.billItems[index]['quantity'],)
                      );
                    }),
                  ),
                  CalculationContainer(),
                   Spacer(),
                  Text(
                    "Payment Method",
                    style: TextStyle(
                        color: headingColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                 SizedBox(height: 12,),
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
              ):Container(),
            ),
          );
        });
  }
}
