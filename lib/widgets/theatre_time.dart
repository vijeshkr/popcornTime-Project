import 'package:flutter/material.dart';

class TheatreTime extends StatelessWidget {
  final String theatreName;
  const TheatreTime({
    super.key,
    required this.theatreName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                theatreName,
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.info_outline,
                color: Colors.black38,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        // color: Color(0xffe5e5e5),
                        color: Colors.yellow,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        '11:30 AM',
                        style: TextStyle(color: Colors.yellow[600]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        // color: Color(0xffe5e5e5),

                        color: Colors.green,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        '03:00 PM',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          width: 1,
                          // color: Color(0xffe5e5e5),
                          color: Colors.red),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        '06:00 PM',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          width: 1,
                          // color: Color(0xffe5e5e5),
                          color: Colors.green),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        '09:30 PM',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
