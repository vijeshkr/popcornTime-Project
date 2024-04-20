
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popcorn_time/pages/detailed_selection_seat.dart';
import 'package:popcorn_time/widgets/seat_layout_model.dart';

import '../constants/apptheme.dart';

class SelectSeatBottom extends StatefulWidget {
  const SelectSeatBottom({Key? key}) : super(key: key);

  @override
  State<SelectSeatBottom> createState() => _SelectSeatBottomState();
}

class _SelectSeatBottomState extends State<SelectSeatBottom> {
  int selected_inx = 1;
  @override
  Widget build(BuildContext context) {
    var n = 10;
    var listOfContainers = <Padding>[];
    var list = List<int>.generate(n, (i) => i + 1);

    list.forEach((j) {
      Color myColor = (j == selected_inx) ? Colors.red : Colors.white;
      Color textColor = (j == selected_inx) ? Colors.white : Colors.black;
      listOfContainers.add(
        Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: myColor,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            child: InkWell(
              onTap: () {
                setState(() {
                  selected_inx = j;
                  // print(selected_inx);
                });
              },
              child: Center(
                child: Text(
                  '$j', // Display the seat number
                  style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });

    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'How many seats ?',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: listOfContainers,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 20),

                          Text('PLATINUM',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),),
                          SizedBox(height: 8),
                          Text('Rs. 150',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 20),

                          Text('GOLD',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),),
                          SizedBox(height: 8),
                          Text('Rs. 120',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(vertical: 12),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailedSelectionSeats(model: SeatLayoutModel(
                    rows: 9,
                    cols: 12,
                    seatTypes: [
                      {"title": "Silver", "price": 120.0, "status": "Filling Fast"},
                      {"title": "Gold", "price": 150.0, "status": "Available"},
                      {"title": "Platinum", "price": 250.0, "status": "Available"},
                    ],
                    theatreId: 123,
                    gap: 2,
                    gapColIndex: 5,
                    isLastFilled: true,
                    rowBreaks: [3, 5, 1],),),
              ),
            );
          },
          child: Text(
            'Select Seats',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
