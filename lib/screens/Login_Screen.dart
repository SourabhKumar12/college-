import 'package:college/screens/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String selectedCountryCode = '+91';
  TextEditingController _textController = TextEditingController();
  Color buttonColor = Color.fromARGB(255, 182, 194, 201);
  Color buttonTextColor = Colors.black;

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      if (_textController.text.length > 10) {
        _textController.text = _textController.text.substring(0, 10);
        _textController.selection = TextSelection.fromPosition(
          TextPosition(offset: _textController.text.length),
        );
      }
      setState(() {
        if (_textController.text.length == 10) {
          buttonColor = Color.fromARGB(255, 51, 104, 131);
          buttonTextColor = Colors.white;
        } else {
          buttonColor = Color.fromARGB(255, 182, 194, 201);
          buttonTextColor = Colors.black;
        }
      });
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  String? validateInput(String value) {
    if (value.length != 10) {
      return 'Please enter exactly 10 digits.';
    }
    if (value.contains(RegExp(r'[^0-9]'))) {
      return 'Please enter only numeric digits.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 17.0, right: 10, top: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome!',
                      style: TextStyle(
                          color: Color.fromARGB(255, 51, 104, 131),
                          fontSize: 45,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Sign in to access personalized academic resources.',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 137, 147, 147)),
                    ),
                    SizedBox(height: 55),
                    Text(
                      'Mobile Number',
                      style: TextStyle(
                          fontSize: 16, color: Color.fromARGB(255, 82, 105, 117)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 182, 194, 201), width: 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        // Country Code Dropdown
      
                        DropdownButton<String>(
                          value: selectedCountryCode,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedCountryCode = newValue!;
                            });
                          },
                          items:
                              <String>['+91', '+11', '123'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          underline: Container(
                            // Set the underline to a zero-height Container
                            height: 0,
                          ),
                        ),
      
                        // Phone Number Input Field
      
                        const SizedBox(
                          width: 10,
                        ),
      
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: TextFormField(
                              controller: _textController,
                              decoration: const InputDecoration(
                                  hintText: '00000 00000',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      fontSize: 25,
                                      color: Color.fromARGB(255, 182, 194, 201),
                                      fontWeight: FontWeight.normal)),
                              keyboardType: TextInputType.phone,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(10),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: ElevatedButton(
                  onPressed: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoadingPage()
      ),
      );
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(buttonColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Center(
                        child: Text(
                      'Get OTP  >',
                      style: TextStyle(
                        color: buttonTextColor,
                      ),
                    )),
                  ),
                ),
              ),
              Container(
      child: Center(
        child:   Column(
        
          children: [
      SizedBox(height: 5,),
        const Text('or',style: TextStyle(color: Color.fromARGB(255, 76, 136, 167),fontSize: 16),),
        SizedBox(height: 5,),
        const Text('Login in with',style: TextStyle(color: Color.fromARGB(255, 76, 136, 167),fontSize: 16),),
        
        Padding(
          padding: const EdgeInsets.only(left: 25,top: 4),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
              Image.asset('images/Google.png',height: 60,width: 60,),
          
              Image.asset('images/fb.png',height: 100,width: 100,),
          
            ],
          
          ),
        )
        
          ],
        
        ),
      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
