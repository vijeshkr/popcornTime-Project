import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:popcorn_time/widgets/seat_layout_model.dart';
import '../controllers/seat_selection_controller.dart';

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
          SizedBox(height: 10.h,),
          Center(child: Container(
            height: 5.h,
            width: 250.w,
            color: Colors.red.shade200,

          ),),
          SizedBox(height: 10.h,),
          Expanded(child: ListView.builder(
            itemCount: model.seatTypes.length,
            itemBuilder: (_,index){
            return Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(10).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("\u20B9 ${model.seatTypes[index]['price']} ${model.seatTypes[index]['title']}"),
                    SizedBox(
                      height: 10.h,
                    ),
                    ...List.generate(model.rowBreaks[index], (row) {
                      alphabets++;
                      seatCounter = 0;
                      String rowNo = String.fromCharCode(64 + alphabets);
                        return Wrap(
                          children: List.generate(model.cols, (col){
                            if(col == 0){
                              return Padding(
                                padding: const EdgeInsets.all(5.0).r,
                                child: Container(
                                 child: Text(String.fromCharCode(64 + alphabets),),
                                  height: 20.h,
                                  width: 20.w,
                                ),
                              );
                            }

                            //for the gap in the center
                            if((col == model.gapColIndex || col == model.gapColIndex + 1) &&
                             (row != model.rowBreaks[index]-1 && model.isLastFilled)) {
                              return Padding(
                                padding: const EdgeInsets.all(5.0).r,
                                child: Container(
                                  // color: Colors.green,
                                  height: 20.h,
                                  width: 20.w,
                                ),
                              );
                            }

                            seatCounter++;
                            String seatNo = "$seatCounter";
                            // Color seatColor = SeatSelectionController.instance.selectedSeats.value.contains('$rowNo$seatNo')?Colors.green: Color(0xfffffff);
                                return Padding(
                                  padding: const EdgeInsets.all(5.0).r,
                                  child: GestureDetector(
                                    onTap: (){
                                      RxList seats = SeatSelectionController.instance.selectedSeats;
                                      int noOfSeats = 2;
                                      var price = 0.0;
                                      if(rowNo == 'A' || rowNo == 'B' || rowNo == 'C' ){
                                        price = 120.0;
                                      }else if (rowNo == 'I' ){
                                        price = 250.0;
                                      }else{
                                        price = 150.0;
                                      }
                                      print(price);

                                      if(seats.contains('$rowNo$seatNo')){
                                        seats.remove('$rowNo$seatNo');
                                      }else{
                                        if(seats.length >= noOfSeats){
                                          seats.removeAt(0);
                                          seats.add('$rowNo$seatNo');
                                        }
                                        seats.add('$rowNo$seatNo');
                                      }
                                    },
                                    child: Obx(() =>
                                        AnimatedContainer(
                                          duration: Duration(microseconds: 300),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(2.r),
                                          color: SeatSelectionController.instance.selectedSeats.value.contains('$rowNo$seatNo')?Colors.green: Color(0xfffffff),
                                          border: Border.all(width: 0.5.w,color: Color(0xff707070))
                                        ),
                                        child: Center(child: Text('$seatNo'),),
                                        height: 20.h,
                                        width: 20.w,
                                      ),
                                    ),
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
        padding: EdgeInsets.all(10).r,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            padding:MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(vertical: 12).r,
            ),
          ),
          onPressed: () {
          },
          child: Text('Select Seats',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),),
        ),
      ),
    );
  }
}
