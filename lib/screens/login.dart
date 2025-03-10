import 'package:flutter/material.dart';
import 'package:safrenz_app/screens/daftar_penyewa.dart';
import 'package:safrenz_app/screens/nav_screen.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: const BackButton(
          color: Colors.black,
        ),
        // title: Text(
        //   'How to Flutter',
        //   style: TextStyle(
        //       color: Color.fromARGB(255, 0, 0, 0),
        //       fontSize: 16,
        //       fontWeight: FontWeight.bold),
        // ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED)),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Color(0xFF0D47A1)),
                    ),
                    border: OutlineInputBorder(),
                    // labelStyle: new TextStyle(color: Color(0xFF0D47A1)),
                    labelText: 'Full Name',
                  ),
                  onChanged: (text) {},
                )),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
              child: Container(
                height: 1.5,
                // width: 130.0,
                color: Color.fromARGB(255, 238, 238, 238),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Masukkan kode perusahaan di bawah',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Hubungi admin dan rekan kerja lain untuk mendapatkan kode perusahaan',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED)),
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Color(0xFF0D47A1)),
                    ),
                    border: OutlineInputBorder(),
                    // labelStyle: new TextStyle(color: Color(0xFF0D47A1)),
                    labelText: 'Masukkan Kode perusahaan disini',
                  ),
                  onChanged: (text) {},
                )),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Belum punya perusahaan?',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            width: 0,
                          ),
                          TextButton(
                            child: Container(
                              child: Text(
                                'Klik disini',
                                style: TextStyle(
                                    color: Color(0xFF0D47A1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => daftar()));
                            },
                          ),
                        ],
                      ),
                      // const Icon(Icons.close_rounded)
                    ],
                  ),
                ],
              ),
            ),
          ]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.all(16.0),
        child: TextButton(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Text(
              '    Lanjutkan   ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => NavScreen()));
          },
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFF0D47A1)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: const Color(0xFF0D47A1))))),
        ),
      ),
    );
  }
}
