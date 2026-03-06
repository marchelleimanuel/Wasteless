import 'package:flutter/material.dart';
import 'package:wasteless_application/component/buttons.dart';

class PaymentMethodCards extends StatefulWidget {
  const PaymentMethodCards({super.key});
  @override
  State<PaymentMethodCards> createState() => _PaymentMethodCardsState();
}

class _PaymentMethodCardsState extends State<PaymentMethodCards> {
  String? selectedBank;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Virtual Account',
            style: TextStyle(
              color: Color(0xff717171),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 5),
        _buildPaymentMethodCard("BCA", "assets/icon/bca.png"),
        _buildPaymentMethodCard("BRI", "assets/icon/bri.png"),
        _buildPaymentMethodCard("Permata", "assets/icon/permata.png"),
        _buildPaymentMethodCard("BNI", "assets/icon/bni.png"),
        _buildPaymentMethodCard("Mandiri", "assets/icon/mandiri.png"),
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'E-Money',
            style: TextStyle(
              color: Color(0xff717171),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 5),
        _buildPaymentMethodCard("Gopay", "assets/icon/gopay.png"),
        _buildPaymentMethodCard("Ovo", "assets/icon/ovo.png"),
        _buildPaymentMethodCard("Dana", "assets/icon/dana.png"),
        _buildPaymentMethodCard("Shopeepay", "assets/icon/shopeepay.png"),
        Container(
          margin: const EdgeInsets.all(20),
          child: Buttons(
            onPressed: () {
              Navigator.pushNamed(context, '/payment-detail');
            },
            text: 'Pay',
            buttonType: ButtonType.elevated,
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentMethodCard(String bankName, String bankIconPath) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
        border: Border(
          top: BorderSide(
            color: Color(0xffF3F3F3),
          ),
          bottom: BorderSide(
            color: Color(0xffF3F3F3),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(bankIconPath, width: 60),
              const SizedBox(width: 10),
              Text(
                bankName,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          RadioButton(
            isSelected: selectedBank == bankName,
            onTap: () {
              setState(() {
                selectedBank = bankName;
              });
            },
          ),
        ],
      ),
    );
  }
}

class RadioButton extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const RadioButton({
    super.key,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isSelected
          ? const Icon(Icons.radio_button_checked_rounded, color: Colors.blue)
          : const Icon(Icons.radio_button_off, color: Colors.grey),
    );
  }
}
