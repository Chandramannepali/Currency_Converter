import 'package:flutter/material.dart';
class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() => 
      _CurrencyConverterMaterialPageState();
}
  
class _CurrencyConverterMaterialPageState
 extends State<CurrencyConverterMaterialPage> {
  double result = 0; // Variable to store the conversion result
  final textEditingController = TextEditingController(); // Controller for the TextField

  
  @override
  Widget build(BuildContext context){
    print('rebuild');
    final border =OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(10.0)
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar:AppBar(
        backgroundColor: Colors.blueGrey,
        elevation:0,
        title: Text('Currency Converter'),
      ),
      body: Center(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children:[
          Text(
           'INR $result',// Displaying the result in INR
                style: const  TextStyle(
                 fontSize: 50,
                 fontWeight: FontWeight.bold,
                 color: Colors.white,
                )
              ),
        Padding(
          padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                controller: textEditingController,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter amount',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    ),
                    prefixIcon: Icon(Icons.monetization_on),
                    filled: true,
                    fillColor:Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(),
              ),
            ),
          
        ),
        
        //button
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextButton(
            onPressed: () {
              result = double.parse(textEditingController.text) * 81; // Example conversion logic
              setState(() {}); // Update the UI with the new result
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 50.0), // Full width button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const Text('Convert'),
          ),
        ),
      ],
    ),
  ),
);
  }
}



textEditingController() {
}
//what is object
// An object is an instance of a class.
// It is a collection of properties and methods that define its behavior and state.
//enumeration is a special type in Dart that allows you to define a set of named constants.
// It is used to define a type that can have a limited set of values.
// types of enumerations
// 1. simple enumeration
// 2. constant enumeration
// 3. constant enumeration with values
// 4. constant enumeration with methods
// 5. constant enumeration with properties
// 6. constant enumeration with methods and properties
// 7. constant enumeration with methods, properties, and values
// 8. constant enumeration with methods, properties, values, and constructors
// types of buttons
// 1. RaisedButton
// 2. FlatButton
// 3. OutlineButton
// 4. IconButton
// 5. TextButton
// 6. ElevatedButton
// 7. FloatingActionButton
// 8. PopupMenuButton
// 9. DropdownButton
// 10. Switch
// 11. Checkbox
// 12. Radio
// 13. Slider
// 14. ProgressIndicator
// types of modes
// debug mode
// release mode
// profile mode
// debug mode is used for development and testing purposes.
// It provides additional debugging information and allows you to use the debugger.
// release mode is used for production purposes.
// It is optimized for performance and does not provide any debugging information.
// profile mode is used for profiling the application.
// It provides some debugging information and is optimized for performance.
// types of prints
// 1. print
//    - used to print messages to the console
//    - can be used to print variables, strings, and other data types
// 2. debugPrint
//    - used to print messages to the console in debug mode
//    - can be used to print variables, strings, and other data types
// 3. debugPrintStack
// 4. debugPrintSynchronously

