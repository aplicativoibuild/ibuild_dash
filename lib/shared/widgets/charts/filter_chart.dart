import 'package:flutter/material.dart';


class FilterChart extends StatelessWidget {
    String title;

   FilterChart({
    Key? key, required this.title
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
    //mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.end,
    children:  <Widget>[

      Padding(
                                      padding: EdgeInsets.only(top: 10, left: 10),
                                      child: GestureDetector(
                                         onTap: () async {
                                        },
                                        child: Container(
                                          width: 100,
                                          decoration: BoxDecoration(
                                      
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                          color:Colors.black.withOpacity(0.2),
                                                                          blurRadius: 1,
                                                                          offset: const Offset(0, 0))
                                                                    ],
                                                                    color: Colors.grey,
                                                                    borderRadius: BorderRadius.circular(15)),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                Padding(
                                                  padding: EdgeInsets.all(5),
                                                  child: Text("Dia", textAlign: TextAlign.center, style: TextStyle(
                                                    fontSize: 19,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w300,
                                                  )),
                                                )
                                      
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),


                                              Padding(
                                      padding: EdgeInsets.only(top: 10, left: 10),
                                      child: GestureDetector(
                                         onTap: () async {
                                        },
                                        child: Container(
                                           width: 100,
                                          decoration: BoxDecoration(
                                      
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                          color:Colors.black.withOpacity(0.2),
                                                                          blurRadius: 1,
                                                                          offset: const Offset(0, 0))
                                                                    ],
                                                                    color: Colors.grey,
                                                                    borderRadius: BorderRadius.circular(15)),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                Padding(
                                                  padding: EdgeInsets.all(5),
                                                  child: Text("Semana", textAlign: TextAlign.center, style: TextStyle(
                                                    fontSize: 19,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w300,
                                                  )),
                                                )
                                      
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),

                                              Padding(
                                      padding: EdgeInsets.only(top: 10, left: 10),
                                      child: GestureDetector(
                                         onTap: () async {
                                        },
                                        child: Container(
                                           width: 100,
                                          decoration: BoxDecoration(
                                      
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                          color:Colors.black.withOpacity(0.2),
                                                                          blurRadius: 1,
                                                                          offset: const Offset(0, 0))
                                                                    ],
                                                                    color: Colors.grey,
                                                                    borderRadius: BorderRadius.circular(15)),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                Padding(
                                                  padding: EdgeInsets.all(5),
                                                  child: Text("Semestre", textAlign: TextAlign.center, style: TextStyle(
                                                    fontSize: 19,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w300,
                                                  )),
                                                )
                                      
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),


                                              Padding(
                                      padding: EdgeInsets.only(top: 10, left: 10),
                                      child: GestureDetector(
                                         onTap: () async {
                                        },
                                        child: Container(
                                           width: 100,
                                          decoration: BoxDecoration(
                                      
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                          color:Colors.black.withOpacity(0.2),
                                                                          blurRadius: 1,
                                                                          offset: const Offset(0, 0))
                                                                    ],
                                                                    color: Colors.grey,
                                                                    borderRadius: BorderRadius.circular(15)),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                Padding(
                                                  padding: EdgeInsets.all(5),
                                                  child: Text("Trimestre", textAlign: TextAlign.center, style: TextStyle(
                                                    fontSize: 19,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w300,
                                                  )),
                                                )
                                      
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),



                                              Padding(
                                      padding: EdgeInsets.only(top: 10, left: 10),
                                      child: GestureDetector(
                                         onTap: () async {
                                        },
                                        child: Container(
                                           width: 100,
                                          decoration: BoxDecoration(
                                      
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                          color:Colors.black.withOpacity(0.2),
                                                                          blurRadius: 1,
                                                                          offset: const Offset(0, 0))
                                                                    ],
                                                                    color: Colors.grey,
                                                                    borderRadius: BorderRadius.circular(15)),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                Padding(
                                                  padding: EdgeInsets.all(5),
                                                  child: Text("Anual", textAlign: TextAlign.center, style: TextStyle(
                                                    fontSize: 19,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w300,
                                                  )),
                                                )
                                      
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
       
    ],
      );
  }
}