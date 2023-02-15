import 'package:flutter/material.dart';
import 'package:ibuild_dash/shared/widgets/app_bar.dart';
import 'package:ibuild_dash/shared/widgets/app_drawer.dart';
import 'package:ibuild_dash/shared/widgets/charts/card_chart.dart';
import 'package:ibuild_dash/shared/widgets/charts/filter_chart.dart';
import 'package:ibuild_dash/shared/widgets/charts/title_chart.dart';
import 'package:ibuild_dash/src/ui/home/presentation/stores/home_store.dart';
import 'package:ibuild_dash/src/ui/home/presentation/widgets/line_chart.dart';

class HomeScreen extends StatefulWidget {
  
  const HomeScreen({
    Key? key,
    //required this.store,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    final store = HomeStore();

  @override
  void initState() {
    store.getAllPartners();
    super.initState();
  }

  bool graphicVisible = false;
  String graphicName = '';
  IconData icon = Icons.phone_iphone_outlined;

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarDefault(),
        drawer: DrawerDefault(),
        body: _buildBody(context)
       );
  }
    _buildBody(context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Center(
        child: SizedBox(
        width: width * 0.85,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                text: 'Seja bem-vindo, ',
                style: TextStyle(
              fontSize: 19,
              color: Colors.blue,
              fontWeight: FontWeight.w300,
            ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                  'Você está em: Analitics',
                  style: TextStyle(
              fontSize: 14,
              color: Colors.blue,
              fontWeight: FontWeight.w300,
            )),
            ),
           const Divider(
              color: Colors.blue,
              height: 15,
            ),
             Center(
                   child: SizedBox(
                      height: 600,
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: 
                        IgnorePointer(child: CardChart(title: "Parceiros",value: "1093", colorText: Colors.black, colorBackgroud: Colors.white)),
                        onTap: (){
                          setState(() {
                            graphicVisible = true;
                            graphicName = 'Parceiros';
                            icon = Icons.people_outline;
                          });
                        },
                        ),
                        GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: 
                        IgnorePointer(child: CardChart(title: "Usuários",value: "1093", colorText: Colors.black, colorBackgroud: Colors.white)),
                        onTap: (){
                          setState(() {
                            graphicVisible = true;
                            graphicName = 'Usuários';
                            icon = Icons.people_outline;
                          });
                        },
                        ),
                        GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: 
                        IgnorePointer(child: CardChart(title: "Pagantes",value: "1093", colorText: Colors.black, colorBackgroud: Colors.white)),
                        onTap: (){
                          setState(() {
                            graphicVisible = true;
                            graphicName = 'Pagantes';
                            icon = Icons.monetization_on_rounded;
                          });
                        },
                        ),
                       GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: 
                        IgnorePointer(child: CardChart(title: "Não Pagantes",value: "1093", colorText: Colors.black, colorBackgroud: Colors.white)),
                        onTap: (){
                          setState(() {
                            graphicVisible = true;
                            graphicName = 'Não Pagantes';
                            icon = Icons.money_off;
                          });
                        },
                        ),
                      ],
                      ),
    
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: 
                        IgnorePointer(child: CardChart(title: "Comentários",value: "1093", colorText: Colors.black, colorBackgroud: Colors.white)),
                        onTap: (){
                          setState(() {
                            graphicVisible = true;
                            graphicName = 'Comentários';
                            icon = Icons.comment_outlined;
                          });
                        },
                        ),
                        GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: 
                        IgnorePointer(child: CardChart(title: "Pedidos de orçamentos recebidos",value: "1093", colorText: Colors.black, colorBackgroud: Colors.white)),
                        onTap: (){
                          setState(() {
                            graphicVisible = true;
                            graphicName = 'Pedidos de orçamentos recebidos';
                            icon = Icons.assignment;
                          });
                        },
                        ),

                        GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: 
                        IgnorePointer(child: CardChart(title: "Orçamentos totais",value: "1093", colorText: Colors.black, colorBackgroud: Colors.white)),
                        onTap: (){
                          setState(() {
                            graphicVisible = true;
                            graphicName = 'Orçamentos totais';
                            icon = Icons.assignment;
                          });
                        },
                        ),

                        GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: 
                        IgnorePointer(child: CardChart(title: "Parceiros ativos",value: "1093", colorText: Colors.black, colorBackgroud: Colors.white)),
                        onTap: (){
                          setState(() {
                            graphicVisible = true;
                            graphicName = 'Parceiros ativos';
                            icon = Icons.people_outline;
                          });
                        },
                        ),
                      ],
                      ),
    
                   Expanded(
                     child: Visibility(
                        visible: graphicVisible,
                        child: Column(
                          children: [
                          TitleChart(title: graphicName, icon: icon,),
                          FilterChart(title: "Filtros..."),
                          const SizedBox(height: 10,),
                          const LineChartWidget(color: Colors.blue)
                          ],
                   
                      )),
                   ),
    
                    
                    
                    ],


                    ),
                    ),
                   
                  ),
          ],
        ),
      )
      ),
    );
  }
}

