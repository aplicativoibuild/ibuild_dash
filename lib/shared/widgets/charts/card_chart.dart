import 'package:flutter/material.dart';
import 'package:ibuild_dash/src/ui/home/presentation/widgets/line_chart.dart';
import 'package:ibuild_dash/src/ui/home/presentation/widgets/line_chart_mini.dart';

class CardChart extends StatelessWidget {
  String title;
  String value;
  Color colorText;
  Color colorBackgroud;
  CardChart({Key? key, required this.title, required this.value, required this.colorText, required this.colorBackgroud }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {

      },
      child: Container(
        height: 120,
        width: 240,
        decoration: BoxDecoration(
        // boxShadow: [
        //   BoxShadow(
        //       color: Colors.black.withOpacity(0.2),
        //       blurRadius: 1,
        //       offset: const Offset(0, 0))
        // ], 
        color: colorBackgroud, borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 2),
              child: Text(title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 12,
                    color: colorText,
                    fontWeight: FontWeight.w300,
                  )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Text(value,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    color: colorText,
                    fontWeight: FontWeight.w300,
                  )),
            ),
             LineChartMiniWidget(color: Colors.blue)
          ],
        ),
      ),
    );
  }
}
