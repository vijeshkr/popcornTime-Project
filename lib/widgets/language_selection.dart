import 'package:flutter/material.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/pages/theatre_selection_screen.dart';
String screen = '2D';

class LanguageSelectionBlock extends StatefulWidget {
  const LanguageSelectionBlock({super.key});



  @override
  State<LanguageSelectionBlock> createState() => _LanguageSelectionBlockState();
}

class _LanguageSelectionBlockState extends State<LanguageSelectionBlock> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(20),
          child: Text(
            'Malayalam $screen',style: TextStyle(
            fontSize: 16
          ),
          ),
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      screen = '2D';
                    });
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => TheatreSelectionScreen(),
                      ),
                    );

                  },
                  child: Container(
                    width: 40,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.redAccent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          '2D',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                InkWell(
                  onTap: (){
                    setState(() {
                      screen = '3D';
                    });
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => TheatreSelectionScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 40,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.redAccent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          '3D',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],

            ),
          )
        ],
      ),
    );
  }
}
