import 'package:flutter/material.dart';
import 'package:pertivoprj/features/items.dart';
import 'package:pertivoprj/features/pageSelector.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _options = ['Featured', 'Popular', 'Trending'];
  int _selectedIndex = 0;
  int _currentTab = 0;
  Widget _buildOption(int index) {
    return GestureDetector(
      onTap: () => {
        setState(() {
          _selectedIndex = index;
        }),
        PageSelector(index),
      },
      child: Container(
        height: 40.0,
        width: 100.0,
        decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Theme.of(context).accentColor
                : Colors.white,
            borderRadius: BorderRadius.circular(5.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(_options[index]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 80.0),
            child: Text(
              'Locations',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20.0),
              _buildOption(0),
              SizedBox(width: 20.0),
              _buildOption(1),
              SizedBox(width: 20.0),
              _buildOption(2),
              //SizedBox(width: 120.0),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              height: 1,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20.0),
          Container(
              color: Colors.blue,
              height: 800,
              child: ListView.builder(
                itemCount: destinations.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(destinations[index].name);
                },
              ))
        ],
      )),
    );
  }
}
