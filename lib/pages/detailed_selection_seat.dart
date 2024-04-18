import 'package:flutter/material.dart';
import 'package:popcorn_time/widgets/seat_layout_model.dart';

class DetailedSelectionSeats extends StatelessWidget {
  final SeatLayoutModel model;
  const DetailedSelectionSeats({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    int alphabets = 0;
    int seatCounter = 0;
    return  Scaffold(
      backgroundColor: Color(0xffdce8fc),
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Center(child: Container(
            height: 5,
            width: 250,
            color: Colors.red.shade200,

          ),),
          SizedBox(height: 10,),
          Expanded(child: ListView.builder(
            itemCount: model.seatTypes.length,
            itemBuilder: (_,index){
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("\u20B9 ${model.seatTypes[index]['price']} ${model.seatTypes[index]['title']}"),
                    SizedBox(
                      height: 10,
                    ),
                    ...List.generate(model.rowBreaks[index], (row) {
                      alphabets++;
                        return Wrap(
                          children: List.generate(model.cols, (col){
                            if(col == 0){
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                 child: Text(String.fromCharCode(64 + alphabets),),
                                  height: 20,
                                  width: 20,
                                ),
                              );
                            }

                            //for the gap in the center
                            if((col == model.gapColIndex || col == model.gapColIndex + 1) &&
                             (row != model.rowBreaks[index]-1 && model.isLastFilled)) {
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  // color: Colors.green,
                                  height: 20,
                                  width: 20,
                                ),
                              );
                            }

                            seatCounter++;
                                return Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: Color(0xfffffff),
                                      border: Border.all(width: 0.5,color: Color(0xff707070))
                                    ),
                                    child: Center(child: Text('$col'),),
                                    height: 20,
                                    width: 20,
                                  ),
                                );
                              },),
                        );
                    },),
                  ],
                ),
              ),
            );
          },),),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            padding:MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(vertical: 12),
            ),
          ),
          onPressed: () {
          },
          child: Text('Select Seats',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),),
        ),
      ),
    );
  }
}
