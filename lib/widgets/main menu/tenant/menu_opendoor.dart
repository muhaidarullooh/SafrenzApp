import 'package:flutter/material.dart';
import 'package:safrenz/widgets/main%20menu/tenant/device_akses.dart';

class MenuOpendoor extends StatefulWidget {
  const MenuOpendoor({super.key});

  @override
  State<MenuOpendoor> createState() => _MenuOpendoorState();
}

class _MenuOpendoorState extends State<MenuOpendoor> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(14, 0, 14, 14),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              // boxShadow: const [
              //   BoxShadow(color: Colors.grey, blurRadius: 0.3),
              // ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Akses Buka Kunci',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            int crossAxisCount = constraints.maxWidth > 600 ? 3 : 2;
                            return GridView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: crossAxisCount,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                childAspectRatio: constraints.maxWidth / (crossAxisCount * 200),
                              ),
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return SizedBox(
                                  width: constraints.maxWidth / crossAxisCount,
                                  child: DeviceAkses(),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      );
  }
}
