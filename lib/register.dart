import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'XS';
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Color(0xFF4960a3)),
          title: Text('Register a new item'),
          centerTitle: true,
          backgroundColor: Colors.white,
          titleTextStyle: const TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 36, vertical: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Item name:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      initialValue: 'Polkujen Unikko',
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Polkujen Unikko',
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Size: ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Expanded(
                            child: DropdownButton<String>(
                                isExpanded: true,
                                value: 'XS',
                                icon: const Icon(Icons.expand_more),
                                iconSize: 24,
                                elevation: 16,
                                style:
                                    const TextStyle(color: Color(0xFF4960a3)),
                                underline: Container(
                                  height: 2,
                                  color: Color(0xFF4960a3),
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>[
                                  'XS',
                                  'S',
                                  'M',
                                  'L'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                    ),
                                  );
                                }).toList()))
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Add a picture',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        IconButton(
                            onPressed: () => {}, icon: Icon(Icons.add_a_photo))
                      ],
                    ),
                    SizedBox(
                      width: 400,
                      height: 400,
                      child: Image(
                        image: NetworkImage(
                            'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/e396cb0073464ba3b251ad5700f2c020_9366/Marimekko_Sweatshirt_with_Allover_Print_Pink_H20190_21_model.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(seconds: 5),
                              backgroundColor: Colors.white,
                              elevation: 10,
                              behavior: SnackBarBehavior.floating,
                              margin: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Color(0xFF4960a3), width: 5),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Lottie.network(
                                    'https://assets9.lottiefiles.com/packages/lf20_63lqvlla.json',
                                    fit: BoxFit.fill,
                                  ),
                                  Text(
                                    'Congratulations!',
                                    style: TextStyle(
                                        color: Color(0xFF4960a3),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  SizedBox(height: 24),
                                  Text(
                                    'A new item has been registered. You can now mark it as available if you want to sell it.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Color(0xFF4960a3)),
                                  ),
                                  SizedBox(height: 25),
                                ],
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF4960a3),
                        ),
                      ),
                    ),
                  ],
                )
              ]),
        ));
  }
}
