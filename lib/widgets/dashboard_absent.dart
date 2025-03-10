import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class absentdash extends StatefulWidget {
  const absentdash({Key? key}) : super(key: key);

  @override
  State<absentdash> createState() => _absentdashState();
}

class _absentdashState extends State<absentdash> {
  // bool tappedStar1 = false;
  // bool tappedStar2 = false;
  // bool tappedStar3 = false;
  // bool tappedStar4 = false;
  // bool tappedStar5 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      color: Colors.transparent,
      // height: 150,
      child: Stack(
        // scrollDirection: Axis.horizontal,
        // clipBehavior: Clip.none,
        children: [
          Container(
            height: 150,
            // width: 340,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(color: Colors.grey, blurRadius: 0.3),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // SizedBox(
                          //   height: 15,
                          //   child: Image.asset(
                          //       'assets/images/icon gofood flat.png'),
                          // ),
                          const SizedBox(
                            width: 3,
                          ),
                          const Text(
                            'Aktifitas Absensi',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      ),
                      // const Icon(Icons.close_rounded)
                    ],
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10), // Image border
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(30), // Image radius
                          child: SvgPicture.asset('assets/images/il_empty.svg'),
                          // fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Belum ada aktivitas absensi!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Kamu belum malakukan absensi',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
