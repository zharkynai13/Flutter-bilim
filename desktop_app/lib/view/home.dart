import 'package:desktop_app/components/icon_widget.dart';
import 'package:desktop_app/components/table_widget.dart';
import 'package:desktop_app/components/text_styles.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  final List<List<String>> schedule = [
    ['1-сабак', '8:00', '8:45', '8:50'],
    ['2-сабак', '9:00', '9:45', '9:50'],
    ['3-сабак', '10:00', '10:45', '10:50'],
    ['4-сабак', '11:00', '11:45', '11:50'],
    ['5-сабак', '12:00', '12:45', '12:50'],
    ['6-сабак', '12:00', '12:45', '12:50'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: 
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/Сүрөттөр.png"),
        fit: BoxFit.cover
        )),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100,right: 100, top: 80, bottom: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[
                    Text("LOGO",style: TextStyles.logoStyle,),
                    SizedBox(width: 20,),
                    Text("КОҢГУРОО",style: TextStyles.ringStyle,),
                    Text("А. Сулайманов атындагы орто мектеп",style: TextStyles.schoolNameStyle,)
                    ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 160, right: 170),
                child: Table(
                  border: TableBorder.all(color: const Color(0xff00B359),width: 1,borderRadius: BorderRadius.circular(10)),
                  columnWidths: const {0: FlexColumnWidth(1.8)},  
                  children: [
                    TableRow(
                      decoration: const BoxDecoration(color: Colors.white),
                      children: [
                        buildTableCell('Сабактардын ирээти',TextStyles.tableText,),
                        buildTableCell('Кирүү',TextStyles.tableText),
                        buildIconTableCell(Icons.notifications,Colors.yellow),
                        buildTableCell('Чыгуу',TextStyles.tableText),
                        buildIconTableCell(Icons.notifications,Colors.yellow),
                      ],
                    ),
                    for (var lesson in schedule)
                      TableRow(
                        decoration: const BoxDecoration(color: Colors.white),
                        children: [
                          buildTableCell(lesson[0],TextStyles.columnStyles),
                          buildTableCell(lesson[1],TextStyles.columnStyles),
                          buildIconTableCell(Icons.music_note,Colors.red,),
                          buildTableCell(lesson[3],TextStyles.columnStyles),
                          buildIconTableCell(Icons.music_note_outlined,Colors.red),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
 

