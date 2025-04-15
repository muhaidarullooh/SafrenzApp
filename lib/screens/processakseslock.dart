import 'dart:async';
import 'package:flutter/material.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/widgets/log_activity_device.dart';
import '../common/my_style.dart';
import '../widgets/s_r_icon_icons.dart';

class ProcessAksesLock extends StatefulWidget {
  const ProcessAksesLock({Key? key}) : super(key: key);

  @override
  State<ProcessAksesLock> createState() => _ProcessAksesLockState();
}

class _ProcessAksesLockState extends State<ProcessAksesLock> {
  int _seconds = 30;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_seconds > 0) {
        setState(() {
          _seconds--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double progress = _seconds / 30;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: MyColors.softGrey),
                image: const DecorationImage(
                  image: AssetImage("assets/images/imgback.png"),
                  fit: BoxFit.cover,
                  opacity: 200,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(
                      decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: MyColors.softGrey),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(color: MyColors.softGrey),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/imagedevicelock.png',
                                        width: 200,
                                        height: 200,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                      decoration: BoxDecoration(
                                        color: MyColors.green,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Text(
                                        'Aktif',
                                        style: body2Style.copyWith(color: MyColors.white, fontWeight: FontWeight.bold,),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pintu Kamar',
                                      style: body1Style.copyWith(color: MyColors.blackText, fontWeight: FontWeight.bold,),
                                    ),
                                    Text(
                                        '3 h ago',
                                        style: captionStyle.copyWith(
                                          color: MyColors.blackText,
                                        )
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(SRIcon.battery, color: MyColors.green, size: 18),
                                        const SizedBox(width: 4),
                                        Text(
                                          '100%',
                                          style: body2Style.copyWith(color: MyColors.green, fontWeight: FontWeight.bold,),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Transform.scale(
                            scale: 2.2,
                            child: CircularProgressIndicator(
                              value: progress,
                              strokeWidth: 3,
                              backgroundColor: MyColors.grey,
                              valueColor: AlwaysStoppedAnimation<Color>(MyColors.primary),
                            ),
                          ),
                          Text(
                            '$_seconds',
                            style: heading2Style.copyWith(color: MyColors.primary, fontWeight: FontWeight.bold,),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Konfirmasi Kehadiran',
                      textAlign: TextAlign.center,
                      style: Subtitle1Style.copyWith(color: MyColors.blackText, fontWeight: FontWeight.bold,),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Tekan',
                          style: body2Style.copyWith(color: MyColors.blackText, fontWeight: FontWeight.bold,),
                        ),
                        const SizedBox(width: 4),
                        Icon(SRIcon.notification, color: MyColors.yellow, size: 20),
                        const SizedBox(width: 4),
                        Text(
                          'Pada Smartlock',
                          style: body2Style.copyWith(color: MyColors.blackText, fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Tekan',
                          style: body2Style.copyWith(color: MyColors.blackText,),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '9# ',
                          style: body1Style.copyWith(color: MyColors.yellow, fontWeight: FontWeight.bold,),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'jika tidak ada',
                          style: body2Style.copyWith(color: MyColors.blackText,),
                        ),
                        const SizedBox(width: 4),
                        Icon(SRIcon.notification, color: MyColors.grey, size: 20),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
