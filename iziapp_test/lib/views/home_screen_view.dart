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
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.png'), fit: BoxFit.cover),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              stops: [0.54, 1.0],
            ),
          ),
        ),
        Positioned(
          top: pHeight(525),
          left: pWidth(75),
          child: Image.asset(
            'assets/logo.png',
            scale: 2.1,
          ),
        ),
        Positioned(
          top: pHeight(70),
          left: pWidth(25),
          child: Text(
            'Olá!',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Positioned(
          left: pWidth(25),
          top: pHeight(117),
          child: Text(
            'Está pronto para mudar sua vida?',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Positioned(
          left: pWidth(35),
          top: pHeight(175),
          child: Text(
            'Seu Login',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Positioned(
          width: pWidth(325),
          height: pHeight(50),
          left: pWidth(25),
          top: pHeight(200),
          child: TextFormField(
            autofocus: false,
            autocorrect: false,
            decoration: InputDecoration(
              enabled: true,
              focusColor: Colors.white,
              hoverColor: Colors.white,
                hintText: 'contato@teste.com.br',
                hintStyle: TextStyle(fontSize: pHeight(13)),
                fillColor: Color(0xFFF2F2F2),
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
                 ),
          ),
        ),
        Positioned(
          left: pWidth(35),
          top: pHeight(280),
          child: Text(
            'Senha',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Positioned(
            left: pWidth(25),
            top: pHeight(305),
            height: pHeight(50),
            width: pWidth(325),
            child: TextFormField(
            autofocus: false,
            autocorrect: false,
            decoration: InputDecoration(
              enabled: true,
                hintText: '********************',
                hintStyle: TextStyle(fontSize: pHeight(13)),
                fillColor: Color(0xFFF2F2F2),
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))

                 ),
          ),),
        Positioned(
            left: pWidth(25),
            top: pHeight(385),
            height: pHeight(55),
            width: pWidth(325),
            child: RaisedButton(
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              child: Text('Fazer login',
                  style: Theme.of(context).textTheme.button),
            ))
      ]),
    );
  }
}
