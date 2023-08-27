import 'package:covid_app/View/world_states.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String image ;
  String name;
  int totalCases, totalDeaths, totalRecovered, active, critical, todayRecovered, test;

 DetailScreen({
    required this.image,
   required this.name,
   required this.totalCases,
   required this.totalDeaths,
   required this.todayRecovered,
   required this.active,
   required this.critical,
   required this.totalRecovered,
   required this.test,

 });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(alignment: Alignment.topCenter,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.sizeOf(context).height*0.067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.sizeOf(context).height*0.067,),
                      ReusableRow(title: 'Cases', value: widget.totalCases.toString()),
                      ReusableRow(title: 'Recovered', value: widget.totalRecovered.toString()),
                      ReusableRow(title: 'Deaths', value: widget.totalDeaths.toString()),
                      ReusableRow(title: 'Critical', value: widget.critical.toString()),
                      ReusableRow(title: 'Today Recovered', value: widget.todayRecovered.toString()),
                      // ReusableRow(title: 'Cases', value: widget.totalCases.toString()),



                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                  backgroundImage: NetworkImage(widget.image),
              )
            ],
          )

        ],
      ),
    );
  }
}
