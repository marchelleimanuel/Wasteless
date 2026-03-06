import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final bool isCollected;
  final String logoPath;
  final String supermarketName;
  final String day;
  final String month;
  final String year;
  final String? timeCollectionStart;
  final String? timeCollectionEnd;
  final String? timeCollection;
  final String location;

  const OrderCard({
    super.key,
    required this.isCollected,
    required this.logoPath,
    required this.supermarketName,
    required this.day,
    required this.month,
    required this.year,
    this.timeCollectionStart,
    this.timeCollectionEnd,
    this.timeCollection,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 5, 20, 20),
      // height: 175,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xffEBEBEB),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              // logo
              Transform.translate(
                offset: const Offset(0, 10),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: const Color(0xffDADADA),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      logoPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              // nama dan jadwal
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      supermarketName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      isCollected
                          ? 'Collect $day/$month/$year, $timeCollection'
                          : 'Collect $day/$month/$year, $timeCollectionStart - $timeCollectionEnd',
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      isCollected ? 'Collected' : 'Pending Collection',
                      style: TextStyle(
                        color: isCollected
                            ? const Color(0xff5CB85C)
                            : const Color(0xffE90505),
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),
          // Row paling bawah
          Container(
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.red),
            // ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // lokasi sama logo
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                    ),
                    Text(
                      location,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.black.withOpacity(0.75),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  // width: 135,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        isCollected ? '/review' : '/barcode',
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff83942B),
                      foregroundColor: const Color(0xffF2F2F2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      isCollected ? 'Review' : 'Collect',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        // color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
