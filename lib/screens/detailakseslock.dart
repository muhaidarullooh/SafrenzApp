import 'package:flutter/material.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/screens/processakseslock.dart';
import 'package:safrenz/widgets/log_activity_device.dart';
import '../common/my_style.dart';
import '../widgets/components/buttons.dart';
import '../widgets/s_r_icon_icons.dart';
import 'dart:math' as math;

class SliderButton extends StatefulWidget {
  final String label;
  final Function onPressed;
  final double width;
  final double height;

  SliderButton({
    required this.label,
    required this.onPressed,
    this.width = 351,
    this.height = 60,
  });

  @override
  _SliderButtonState createState() => _SliderButtonState();
}

class _SliderButtonState extends State<SliderButton> with SingleTickerProviderStateMixin {
  double _dragPosition = 0.0;
  bool _isCompleted = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.0, end: 2.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    setState(() {
      _dragPosition = details.localPosition.dx;
      if (_dragPosition >= widget.width - widget.height) {
        _dragPosition = widget.width - widget.height;
      }
    });
  }

  void _onHorizontalDragEnd(DragEndDetails details) {
    if (_dragPosition >= widget.width - widget.height) {
      setState(() {
        _isCompleted = true;
      });
      widget.onPressed();
    } else {
      setState(() {
        _dragPosition = 0.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: _onHorizontalDragUpdate,
      onHorizontalDragEnd: _onHorizontalDragEnd,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: MyColors.primary,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 100),
              left: _dragPosition,
              child: Container(
                width: widget.height,
                height: widget.height,
                decoration: BoxDecoration(
                  color: _isCompleted ? MyColors.green : MyColors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: _isCompleted ? MyColors.primary : MyColors.primary,
                    width: 4,
                  ),
                ),
                child: Center(
                  child: Icon(
                    _isCompleted ? Icons.check : Icons.arrow_forward,
                    color: MyColors.primary,
                  ),
                ),
              ),
            ),
            Center(
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [
                          Colors.white.withOpacity(0.5),
                          Colors.white.withOpacity(1),
                          Colors.white.withOpacity(0.5)
                        ],
                        stops: [0.1, _animation.value, 0.9],
                        tileMode: TileMode.mirror,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        transform: GradientRotation(math.pi / 4),
                      ).createShader(bounds);
                    },
                    child: Text(
                      widget.label,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class DetailAksesLock extends StatelessWidget {
  const DetailAksesLock({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Konten utama Bottom Sheet
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                icon: Icon(Icons.close, color: Colors.black),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: ListView(
              children: <Widget>[
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
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
                                    style: body1Style.copyWith(color: MyColors.white, fontWeight: FontWeight.bold,),
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
                            Container(
                              decoration: BoxDecoration(
                                color: MyColors.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: MyColors.softGrey),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Icon(SRIcon.pin, color: Colors.black, size: 24),
                                      const SizedBox(height: 4),
                                      Text(
                                        'PIN',
                                        style: TextStyle(fontWeight: FontWeight.bold, color: MyColors.blackText, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              LogActivityDevice(),
                              LogActivityDevice(),
                              LogActivityDevice(),
                              LogActivityDevice(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: MyColors.white,
            ),
            padding: EdgeInsets.all(16.0),
            child: SliderButton(
              label: 'Geser untuk buka kunci',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProcessAksesLock()),
                );
              },
            ),
          ),
        ),
      ],
    );

  }
}
