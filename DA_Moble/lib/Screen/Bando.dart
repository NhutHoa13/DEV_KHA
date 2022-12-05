import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math' as math;

class BandoScreen extends StatefulWidget {
  const BandoScreen({super.key});

  @override
  State<BandoScreen> createState() => _BandoScreenState();
}

class _BandoScreenState extends State<BandoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
           height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/backgroup5.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
        child: SingleChildScrollView(
          child:Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),   
            
          ) ,
          
        ) ,
      ),
    );
  }
}



class ClickyButtonPage extends StatefulWidget {
  final List<MaterialColor> colors = const [
    Colors.green,
    Colors.purple,
    Colors.yellow,
    Colors.blue,
    Colors.red,
    Colors.pink,
    Colors.amber,
  ];

  const ClickyButtonPage({Key? key}) : super(key: key);

  @override
  _ClickyButtonPageState createState() => _ClickyButtonPageState();
}

class _ClickyButtonPageState extends State<ClickyButtonPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 40.0,
            ),
            ClickyButton(
              child: Text(
                'Click Me!',
                style: TextStyle(
                    color: _counter % widget.colors.length == 2
                        ? Colors.black
                        : Colors.white,
                    fontSize: 22),
              ),
              color: widget.colors[_counter % widget.colors.length],
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'You clicked me $_counter times',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
class ClickyButton extends StatefulWidget {
  final Duration _duration = const Duration(milliseconds: 70);
  final Widget child;
  final MaterialColor color;
  final GestureTapCallback onPressed;

  const ClickyButton({
    Key? key,
    required this.child,
    this.color = Colors.green,
    required this.onPressed,
  })  : assert(onPressed != null),
        assert(child != null),
        super(key: key);

  @override
  _ClickyButtonState createState() => _ClickyButtonState();
}

class _ClickyButtonState extends State<ClickyButton> {
  double _faceLeft = 20.0;
  double _faceTop = 0.0;
  double _sideWidth = 20.0;
  double _bottomHeight = 20.0;
  final Curve _curve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.0,
      height: 80.0,
      child: GestureDetector(
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Transform(
                origin: const Offset(20, 0),
                transform: Matrix4.skewY(-0.79),
                child: AnimatedContainer(
                  duration: widget._duration,
                  curve: _curve,
                  width: _sideWidth,
                  height: 60.0,
                  color: widget.color[800],
                ),
              ),
              top: 0.2,
            ),
            Positioned(
              child: Transform(
                transform: Matrix4.skewX(-0.8),
                child: Transform(
                  origin: const Offset(100, 10),
                  transform: Matrix4.rotationZ(math.pi),
                  child: AnimatedContainer(
                    duration: widget._duration,
                    curve: _curve,
                    width: 200.0,
                    height: _bottomHeight,
                    color: widget.color[800],
                  ),
                ),
              ),
              top: 60.0,
              left: 20.1,
            ),
            AnimatedPositioned(
              duration: widget._duration,
              curve: _curve,
              child: Container(
                alignment: Alignment.center,
                width: 200.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: widget.color,
                  border: Border.all(color: widget.color, width: 1),
                ),
                child: widget.child,
              ),
              left: _faceLeft,
              top: _faceTop,
            ),
          ],
        ),
        onTapDown: _pressed,
        onTapUp: _unPressedOnTapUp,
        onTapCancel: _unPressed,
      ),
    );
  }

  void _pressed(_) {
    setState(() {
      _faceLeft = 0.0;
      _faceTop = 20.0;
      _sideWidth = 0.0;
      _bottomHeight = 0.0;
    });
    widget.onPressed();
  }

  void _unPressedOnTapUp(_) => _unPressed();

  void _unPressed() {
    setState(() {
      _faceLeft = 20.0;
      _faceTop = 0.0;
      _sideWidth = 20.0;
      _bottomHeight = 20.0;
    });
  }
}