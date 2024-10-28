import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var languages = ['Bangla', 'English', 'Hindi'];
  var originLanguage = 'From';
  var destinationLanguage = 'To';
  var output = '';
  TextEditingController languageController = TextEditingController();

  void translate(String src, String dest, String input){

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          'Bhasha Mitra',
          style: GoogleFonts.lobster(
            textStyle: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Color(0xFF0141D8),
              fontSize: 30,
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                      spreadRadius: 2, // Extent of shadow spread
                      blurRadius: 8,   // How soft the shadow is
                      offset: Offset(1, 1), // Position of shadow (x, y)
                    ),
                  ],
                ),

                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton(
                        focusColor: Colors.blueGrey,
                        iconDisabledColor: Theme.of(context).primaryColor,
                      hint: Text(
                        originLanguage,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      dropdownColor: Colors.white,
                      underline: const SizedBox.shrink(),
                      items: languages.map((String dropDownStringItem){
                        return DropdownMenuItem(child: Text(dropDownStringItem), value: dropDownStringItem,);
                      }).toList(),
                      onChanged: (String? value) {
                          setState(() {
                            originLanguage = value!;
                          });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5,),
              Container(
                width: 55,
                  height: 55,
                  child: Icon(Icons.compare_arrows_outlined, color: Color(0xFF0141D8),),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                      spreadRadius: 2, // Extent of shadow spread
                      blurRadius: 8,   // How soft the shadow is
                      offset: Offset(1, 1), // Position of shadow (x, y)
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5,),
              Container(
                width: 150,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                      spreadRadius: 2, // Extent of shadow spread
                      blurRadius: 8,   // How soft the shadow is
                      offset: Offset(1,1), // Position of shadow (x, y)
                    ),
                  ],
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton(
                      focusColor: Colors.blueGrey,
                      iconDisabledColor: Theme.of(context).primaryColor,
                      hint: Text(
                        destinationLanguage,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      dropdownColor: Colors.white,
                      underline: const SizedBox.shrink(),
                      items: languages.map((String dropDownStringItem){
                        return DropdownMenuItem(child: Text(dropDownStringItem), value: dropDownStringItem,);
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          destinationLanguage = value!;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 450,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                      spreadRadius: 2, // Extent of shadow spread
                      blurRadius: 8,   // How soft the shadow is
                      offset: Offset(1,1), // Position of shadow (x, y)
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                      cursorColor:Color(0xFF0141D8),
                    autofocus: false,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    maxLines: null,
                    expands: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 130,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: (){

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0141D8),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                          'Translate',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 450,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                      spreadRadius: 2, // Extent of shadow spread
                      blurRadius: 8,   // How soft the shadow is
                      offset: Offset(1,1), // Position of shadow (x, y)
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    cursorColor:Color(0xFF0141D8),
                    autofocus: false,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    maxLines: null,
                    expands: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
