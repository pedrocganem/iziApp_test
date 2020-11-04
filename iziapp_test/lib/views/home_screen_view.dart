import 'package:flutter/material.dart';
import 'package:iziapp_test/size_settings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SizeSettings _controller = SizeSettings();
  @override
  Widget build(BuildContext context) {
    _controller.init(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(children: [
        Image.asset('assets/background.png',
            filterQuality: FilterQuality.high,
            colorBlendMode: BlendMode.saturation,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.none
            // fit: BoxFit.cover,
            ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.white, Colors.transparent],
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            stops: [0.1, 1.0],
          )),
        ),
        Positioned(
          top: pHeight(550),
          left: pWidth(75),
          child: Image.asset(
            'assets/logo.png',
            scale: 2.5,
          ),
        ),
        Positioned(
          top: pHeight(70),
          left: pWidth(25),
          child: Text(
            'Ola!',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Positioned(
          left: pWidth(25),
          top: pHeight(117),
          child: Text(
            'Esta pronto para mudar sua vida?',
            textAlign: TextAlign.start,
          ),
        ),
        Positioned(
          left: pWidth(35),
          top: pHeight(175),
          child: Text('Seu Login'),
        ),
        
        Positioned(
          width: pWidth(300),
          height: pHeight(50),
          left: pWidth(25),
          top: pHeight(200),
          child: TextFormField(
          decoration: InputDecoration(
            hintText: 'contato@teste.com.br',
            hintStyle: TextStyle(fontSize: 10),
            fillColor: Colors.grey,
            
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), )

          ),
        ),)
      ]),
    );
  }
}
