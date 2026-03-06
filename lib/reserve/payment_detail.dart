import 'package:flutter/material.dart';
import 'package:wasteless_application/component/buttons.dart';
import 'package:wasteless_application/component/my_app_bar.dart';

class PaymentDetail extends StatelessWidget {
  const PaymentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Payment Detail'),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Invoice',
                  style: TextStyle(
                    color: const Color(0xff717171).withOpacity(0.75),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text('AVCD2024qf8'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Due Date',
                  style: TextStyle(
                    color: const Color(0xff717171).withOpacity(0.75),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  '23:59:59',
                  style: TextStyle(
                    color: Color(0xffEED202),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Item',
                  style: TextStyle(
                    color: const Color(0xff717171).withOpacity(0.75),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'Sweet Butter Avocado Jumbo 1kg ',
                  textAlign: TextAlign.end,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Payment',
                  style: TextStyle(
                    color: const Color(0xff717171).withOpacity(0.75),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text('Rp.13.911'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'No. Virtual Account',
                  style: TextStyle(
                    color: const Color(0xff717171).withOpacity(0.75),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      '122085215533902',
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.copy,
                      size: 15,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 10),
              height: 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xffD2D2D2),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Rp.13.911',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Buttons(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return const MyPopUp();
                  },
                );
                // Navigator.pushNamed(context, '/payment-success');
              },
              text: 'Pay',
              buttonType: ButtonType.elevated,
            )
          ],
        ),
      ),
    );
  }
}

class MyPopUp extends StatefulWidget {
  const MyPopUp({super.key});

  @override
  State<MyPopUp> createState() => _MyPopUpState();
}

class _MyPopUpState extends State<MyPopUp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushNamed(context, '/payment-success');
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(0),
              // width: 0,
              // decoration: BoxDecoration(
              //   border: Border.all(),
              // ),
              child: Image.asset(
                'assets/icon/loading.png',
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              'Payment in process',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Color(0xff83942B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
