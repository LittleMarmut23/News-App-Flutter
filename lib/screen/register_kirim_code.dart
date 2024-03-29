import 'package:flutter/material.dart';
import 'package:projek1/screen/home.dart';

class RegisterKirimCode extends StatefulWidget {
  const RegisterKirimCode({Key? key}) : super(key: key);

  @override
  State<RegisterKirimCode> createState() => _RegisterKirimCodeState();
}

class _RegisterKirimCodeState extends State<RegisterKirimCode> {
  List<TextEditingController> controllers =
      List.generate(4, (index) => TextEditingController());
  List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < focusNodes.length - 1; i++) {
      controllers[i].addListener(() {
        if (controllers[i].text.isNotEmpty) {
          FocusScope.of(context).requestFocus(focusNodes[i + 1]);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "assets/images/logo.png",
            width: 80,
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Masukkan kode verifikasi:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  controllers.length,
                  (index) => SizedBox(
                    width: 60,
                    child: TextField(
                      controller: controllers[index],
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        if (value.isNotEmpty &&
                            index < controllers.length - 1) {
                          FocusScope.of(context)
                              .requestFocus(focusNodes[index + 1]);
                        }
                      },
                      focusNode: focusNodes[index],
                      decoration: InputDecoration(
                        counterText: '',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => home(initialTabIndex: 1)));
                },
                child: Text('Verifikasi'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
