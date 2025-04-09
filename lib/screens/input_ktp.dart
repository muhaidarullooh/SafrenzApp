import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:safrenz/screens/navigation/nav_screen_tenant.dart';
import 'package:safrenz/widgets/s_r_icon_icons.dart';

import '../common/my_colors.dart';
import '../common/my_style.dart';
import '../widgets/components/buttons.dart';
import '../widgets/components/input_field.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: InputKtp(),
  ));
}

class InputKtp extends StatefulWidget {
  @override
  State<InputKtp> createState() => _InputKtpState();
}

class _InputKtpState extends State<InputKtp> {
  final TextEditingController _ktpController = TextEditingController();
  File? _ktpImage;

  void _showPanduanBottomSheet() async {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
      ),
      backgroundColor: Colors.white,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Panduan Foto KTP',
                  style: Subtitle1Style.copyWith(
                    color: MyColors.blackText,
                    fontWeight: FontWeight.bold,),
                ),
                SizedBox(height: 12),
                Text(
                  'Siapkan kartu KTP Anda dan foto dengan ketentuan seperti di bawah ini:',
                  style: body2Style.copyWith(
                    color: MyColors.blackSoftText,),
                ),
                SizedBox(height: 16),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/ktpsample.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                SizedBox(height: 8),
                Center(child: Text('Contoh foto kartu KTP yang benar', style: captionStyle.copyWith(color: MyColors.blackSoftText,),)),
                SizedBox(height: 16),
                Text('1. Foto dan isi kartu KTP jelas (tidak buram, tidak blur dan dapat terbaca)',style: body2Style.copyWith(color: MyColors.blackSoftText,)),
                Text('2. Tidak boleh menggunakan fotokopi kartu KTP',style: body2Style.copyWith(color: MyColors.blackSoftText,)),
                Text('3. Kartu KTP masih dalam masa berlaku',style: body2Style.copyWith(color: MyColors.blackSoftText,)),
                SizedBox(height: 24),
                BoxButton(
                  title:'Lanjutkan',
                  onTap: () {
                    Navigator.pop(context);
                    _showImageSourceOptions();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showImageSourceOptions() async {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
      ),
      backgroundColor: Colors.white,
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.photo_camera),
                title: Text('Ambil dari Kamera'),
                onTap: () async {
                  Navigator.pop(context);
                  final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
                  if (pickedFile != null) {
                    setState(() {
                      _ktpImage = File(pickedFile.path);
                    });
                  }
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Pilih dari Galeri'),
                onTap: () async {
                  Navigator.pop(context);
                  final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
                  if (pickedFile != null) {
                    setState(() {
                      _ktpImage = File(pickedFile.path);
                    });
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        backgroundColor: MyColors.white,
        elevation: 0,
      ),
      backgroundColor: MyColors.white,
      body: Stack(children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Text(
                    'Anda diharuskan untuk\nupload KTP sebagai data penyewa',
                    textAlign: TextAlign.center,
                    style: body1Style.copyWith(
                      color: MyColors.blackText,
                      fontWeight: FontWeight.bold,)
                  ),
                  SizedBox(height: 16),
                  BoxInputField(
                    controller: TextEditingController(),
                    placeholder: 'Nomor KTP', labelText: 'Nomor KTP',
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 16),
                  GestureDetector(
                    onTap: _showPanduanBottomSheet,
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(color: MyColors.softGrey,),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: _ktpImage != null
                          ? Image.file(_ktpImage!, fit: BoxFit.cover)
                          : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(SRIcon.camera, size: 40, color: MyColors.grey,),
                          SizedBox(height: 10),
                          Text('Upload foto KTP',style: body1Style.copyWith(
                            color: MyColors.grey,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    ),
                  ),


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
        child: BoxButton(
          title:'Lanjutkan',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NavScreenTenant()),
            );
          },
        ),
      ),
    );
  }
}
