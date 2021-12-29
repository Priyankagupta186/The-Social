// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class FilterChipDisplay extends StatefulWidget {
  //const FilterChipDisplay({ Key? key }) : super(key: key);

  @override
  _FilterChipDisplayState createState() => _FilterChipDisplayState();
}

class _FilterChipDisplayState extends State<FilterChipDisplay> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // leading: IconButton(
        // icon: Icon(),
        title: Text('The Social', style: TextStyle(color: Colors.white)),
        //actions: <Widget>[
        //IconButton(onPressed: onPressed, icon: icon)
        // ],
      ),
        
      body: SingleChildScrollView(
        child: Column(
          //<Widget>
          children: <Widget>[
            //languagues category
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _titleContainer("Languages"),
               // child: _titleContainer("Languages"),
      
              ),
              
      
               
            ),
            //
            //languages list
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 3.0,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                       
                        filterChipWidget(chipName: 'Python',),
                         filterChipWidget(chipName: 'C',),
                          filterChipWidget(chipName: 'C++',),
                           filterChipWidget(chipName: 'Java',),
                            filterChipWidget(chipName: 'C#',),
                             filterChipWidget(chipName: 'Dart',),
                              filterChipWidget(chipName: 'HTML',),
                              filterChipWidget(chipName: 'Kotlin',),
                              filterChipWidget(chipName: 'PHP',),
                               const filterChipWidget(chipName: 'R',),
                                filterChipWidget(chipName: 'Assembly Languages',),
                              //   filterChipWidget(chipName: 'python',),
                               //   filterChipWidget(chipName: 'python',),
      
      
                      ],
                    ),
                  )),
            ),
             Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _titleContainer("Development"),
               // child: _titleContainer("Languages"),
      
              ),
              
      
               
            ),
            //
            
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 3.0,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                       
                        filterChipWidget(chipName: 'Android(Java)',),
                         filterChipWidget(chipName: 'Web',),
                          filterChipWidget(chipName: 'Unity',),
                           filterChipWidget(chipName: 'Flutter',),
                            filterChipWidget(chipName: 'Android(Kotlin)',),
                             filterChipWidget(chipName: 'React',),
                              filterChipWidget(chipName: 'Cross Platform',),
                               const filterChipWidget(chipName: 'AR',),
                                filterChipWidget(chipName: 'VR',),
                                filterChipWidget(chipName: 'IOT',),
                                  filterChipWidget(chipName: 'Full Stack',),
                                   filterChipWidget(chipName: 'Cloud',),
                                    filterChipWidget(chipName: 'Databases',),
                                     filterChipWidget(chipName: 'Graphic Design',),
                           filterChipWidget(chipName: 'UI Design',),
                            filterChipWidget(chipName: 'Animations',),
      
      
                      ],
                    ),
                  )),
            ),
             Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _titleContainer("Sports"),
               // child: _titleContainer("Languages"),
      
              ),
              
      
               
            ),
            //
            
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 3.0,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                       
                        filterChipWidget(chipName: 'Football',),
                         filterChipWidget(chipName: 'Basketball',),
                          filterChipWidget(chipName: 'Table Tennis',),
                           filterChipWidget(chipName: 'Cricket',),
                            filterChipWidget(chipName: 'VolleyBall',),
                             filterChipWidget(chipName: 'Badminton',),
                              filterChipWidget(chipName: 'Chess',),
                               const filterChipWidget(chipName: 'Lawn Tennis',),
                              //  filterChipWidget(chipName: 'python',),
                              //   filterChipWidget(chipName: 'python',),
                               //   filterChipWidget(chipName: 'python',),
      
      
                      ],
                    ),
                  )),
            ),
            //
             Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _titleContainer("Hacking"),
               // child: _titleContainer("Languages"),
      
              ),
              
      
               
            ),
            //
            
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 3.0,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                       
                        filterChipWidget(chipName: 'Linux',),
                         filterChipWidget(chipName: 'Ubuntu',),
                          filterChipWidget(chipName: 'Kali',),
                          // filterChipWidget(chipName: 'Cricket',),
                           // filterChipWidget(chipName: 'VolleyBall',),
                           //  filterChipWidget(chipName: 'Badminton',),
                           //   filterChipWidget(chipName: 'Chess',),
                            //   const filterChipWidget(chipName: 'Lawn Tennis',),
                              //  filterChipWidget(chipName: 'python',),
                              //   filterChipWidget(chipName: 'python',),
                               //   filterChipWidget(chipName: 'python',),
      
      
                      ],
                    ),
                  )),
            ),
      
      
          ],
        ),
      ),
    );

    // ),

    // );
  }
}

Widget _titleContainer(String myTitle) {
  return Text(
    myTitle,
    style: TextStyle(
        color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
    //),
  );
}

class filterChipWidget extends StatefulWidget {
  final String chipName;
  const filterChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return FilterChip(
        label: Text(widget.chipName),
        labelStyle: TextStyle(
            color: Colors.blue, fontSize: 20.0, fontWeight: FontWeight.bold),
        selected: _isSelected,
        backgroundColor: Colors.blueGrey[50],
        onSelected: (isSelected) {
          setState(() {
            _isSelected = isSelected;
          });
        },
     //   selectedColor: Colors.red[50],
        );
  }
}
