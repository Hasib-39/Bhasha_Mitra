import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:translator/translator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, String> languageCodes = {
    'Afrikaans': 'af',
    'Albanian': 'sq',
    'Amharic': 'am',
    'Arabic': 'ar',
    'Armenian': 'hy',
    'Azerbaijani': 'az',
    'Basque': 'eu',
    'Belarusian': 'be',
    'Bengali': 'bn',
    'Bosnian': 'bs',
    'Bulgarian': 'bg',
    'Catalan': 'ca',
    'Cebuano': 'ceb',
    'Corsican': 'co',
    'Croatian': 'hr',
    'Czech': 'cs',
    'Danish': 'da',
    'Dutch': 'nl',
    'English': 'en',
  };
  // List of languages
  var languages = [
    'Afrikaans',
    'Albanian',
    'Amharic',
    'Arabic',
    'Armenian',
    'Azerbaijani',
    'Basque',
    'Belarusian',
    'Bengali',
    'Bosnian',
    'Bulgarian',
    'Catalan',
    'Cebuano',
    'Corsican',
    'Croatian',
    'Czech',
    'Danish',
    'Dutch',
    'English',
  ];

  var originLanguage = 'From';
  var destinationLanguage = 'To';
  var output = '';
  TextEditingController languageController = TextEditingController();

  void translate(String src, String dest, String input) async{
    GoogleTranslator translator =  GoogleTranslator();
    var translation = await translator.translate(input, from: src, to: dest);
    setState(() {
      output = translation.text.toString();
    });

    if(src=='--' || dest == '--'){
      setState(() {
        output = 'Failed to Translate';
      });
    }
  }
  String? getLanguageCode(String language){
    return languageCodes[language] ?? '--' ;
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30,),
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
                        offset: const Offset(1, 1), // Position of shadow (x, y)
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
                          return DropdownMenuItem(value: dropDownStringItem, child: Text(dropDownStringItem), );
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
                const SizedBox(width: 5,),
                Container(
                  width: 55,
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
                        offset: const Offset(1, 1), // Position of shadow (x, y)
                      ),
                    ],
                  ),
                  child: const Icon(Icons.compare_arrows_outlined, color: Color(0xFF0141D8),),
                ),
                const SizedBox(width: 5,),
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
                        offset: const Offset(1,1), // Position of shadow (x, y)
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
                          return DropdownMenuItem( value: dropDownStringItem,child: Text(dropDownStringItem),);
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
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 400,
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
                        offset: const Offset(1,1), // Position of shadow (x, y)
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: languageController,
                        cursorColor: const Color(0xFF0141D8),
                      autofocus: false,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: null,
                      expands: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 10,),
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
                          translate(getLanguageCode(originLanguage) ?? '--', getLanguageCode(destinationLanguage) ?? '--', languageController.text.toString());
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
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 400,
                  height: 330,
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
                        offset: const Offset(1,1), // Position of shadow (x, y)
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                        output,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
