import 'package:flutter/material.dart';
import 'package:romy_sharing_project/components/constants.dart';
import 'package:romy_sharing_project/components/widget/card_widget.dart';

class DashboardBody extends StatefulWidget {
  const DashboardBody({super.key});

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, kPathSalesOrderList);
                      },
                      child: CardWidget(
                        colorCard: Colors.blueAccent,
                        childCard: SizedBox(
                            height: MediaQuery.of(context).size.width/6,
                            width: MediaQuery.of(context).size.width/6,
                            child: Icon(Icons.access_alarm)),
                      ),
                    ),
                    Text("Sales"),
                  ],
                ),
                Column(
                  children: [
                    CardWidget(
                      colorCard: Colors.blueAccent,
                      childCard: SizedBox(
                          height: MediaQuery.of(context).size.width/6,
                          width: MediaQuery.of(context).size.width/6,
                          child: Icon(Icons.access_alarm)),
                    ),
                    Text("Sales"),
                  ],
                ),
                Column(
                  children: [
                    CardWidget(
                      colorCard: Colors.blueAccent,
                      childCard: SizedBox(
                          height: MediaQuery.of(context).size.width/6,
                          width: MediaQuery.of(context).size.width/6,
                          child: Icon(Icons.access_alarm)),
                    ),
                    Text("Sales"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CardWidget(
                      colorCard: Colors.blueAccent,
                      childCard: SizedBox(
                          height: MediaQuery.of(context).size.width/6,
                          width: MediaQuery.of(context).size.width/6,
                          child: Icon(Icons.access_alarm)),
                    ),
                    Text("Sales"),
                  ],
                ),
                Column(
                  children: [
                    CardWidget(
                      colorCard: Colors.blueAccent,
                      childCard: SizedBox(
                          height: MediaQuery.of(context).size.width/6,
                          width: MediaQuery.of(context).size.width/6,
                          child: Icon(Icons.access_alarm)),
                    ),
                    Text("Sales"),
                  ],
                ),
                Column(
                  children: [
                    CardWidget(
                      colorCard: Colors.blueAccent,
                      childCard: SizedBox(
                          height: MediaQuery.of(context).size.width/6,
                          width: MediaQuery.of(context).size.width/6,
                          child: Icon(Icons.access_alarm)),
                    ),
                    Text("Sales"),
                  ],
                ),
              ],
            ),
          ],
        )
    );
  }
}
