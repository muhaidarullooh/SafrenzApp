import 'package:flutter/material.dart';

import '../common/my_colors.dart';

void main() {
  runApp(MaterialApp(
    home: KodePin(),
    debugShowCheckedModeBanner: false,
  ));
}

class KodePin extends StatefulWidget {
  @override
  _KodePinState createState() => _KodePinState();
}

class _KodePinState extends State<KodePin> {
  List<String> pin = [];

  void _onKeyboardTap(String value) {
    setState(() {
      if (value == 'back') {
        if (pin.isNotEmpty) {
          pin.removeLast();
        }
      } else if (pin.length < 6) {
        pin.add(value);
      }
    });
  }

  Widget _buildPinIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: index < pin.length ? MyColors.primary : MyColors.softGrey,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }

  Widget _buildKeyboard() {
    final keys = [
      '1', '2', '3',
      '4', '5', '6',
      '7', '8', '9',
      '', '0', 'back',
    ];

    return GridView.builder(
      shrinkWrap: true,
      itemCount: keys.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.5,
      ),
      itemBuilder: (context, index) {
        final key = keys[index];
        if (key.isEmpty) return SizedBox.shrink();

        return GestureDetector(
          onTap: () => _onKeyboardTap(key),
          behavior: HitTestBehavior.translucent,
          child: Center(
            child: key == 'back'
                ? Icon(Icons.backspace_outlined, size: 28)
                : Text(
              key,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(Icons.arrow_back),
              ),
              SizedBox(height: 40),
              Text(
                'Buat kode PIN 6 Digit',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'untuk keamanan aplikasi',
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              SizedBox(height: 40),
              _buildPinIndicator(),
              SizedBox(height: 40),
              _buildKeyboard(),
            ],
          ),
        ),
      ),
    );
  }
}
