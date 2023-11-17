import 'package:accountsettings/shared_widgets/custom_card.dart';
import 'package:accountsettings/shared_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          //useMaterial3: true,
          ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController firstName = TextEditingController();

  TextEditingController lastName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            // Add your navigation logic here
            Navigator.pop(context);
          },
        ),
        elevation: 4,
        title: Text(
          'Account Settings',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CustomCard(
              text: "Name",
              customWidget: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: CustomTextField(
                      textFieldController: firstName,
                      hintName: 'First Name',
                    ),
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(
                    child: CustomTextField(
                      textFieldController: lastName,
                      hintName: 'Last Name',
                    ),
                    width: 150,
                    height: 150,
                  )
                ],
              ),
              imageUrl: 'assets/images/person.png',
            ),
            CustomCard(
              text: "Email",
              customWidget: CustomTextField(
                textFieldController: firstName,
                hintName: 'Email',
              ),
              imageUrl: 'assets/images/mail.png',
            ),
            CustomCard(
              text: "Phone Number",
              customWidget: CustomTextField(
                textFieldController: firstName,
                hintName: 'Phone Number',
              ),
              imageUrl: 'assets/images/call.png',
            ),
            GestureDetector(
              onTap: () {
                //TODO: SUBMIT REQUEST
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  // : Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.transparent,
                    width: 1.0,
                  ),

                  //more than 50% of width makes circle
                ),
                child: Center(
                  child: Text(
                    "SAVE",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
