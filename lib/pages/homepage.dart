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
            //Tab for navigation between screen
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20.0),
                _buildOption(0),
                SizedBox(width: 20.0),
                _buildOption(1),
                SizedBox(width: 20.0),
                _buildOption(2),
              ],
            ),
            //below margin line
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                height: 1,
                color: Colors.black26,
              ),
            ),
            SizedBox(height: 20.0),
            //cards of location and details
            Container(
              color: Colors.white,
              height: 800,
              child: ListView.builder(
                itemCount: destinations.length,
                itemBuilder: (BuildContext context, int index) {
                  //each card setup
                  var checkbox = false;
                  return Container(
                    height: 270,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          children: <Widget>[
                            Center(
                              child: Container(
                                height: 180.0,
                                width: 400.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'lib/assets/images/$index.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            Container(
                              width: 380,
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Checkbox(
                                    splashRadius: 10.0,
                                    activeColor: Colors.red,
                                    hoverColor: Colors.white,
                                    value: checkbox,
                                    onChanged: (value) {
                                      setState(() {
                                        checkbox = true;
                                      });
                                    }),
                              ),
                            ),
                          ],
                        ),
                        //Each card image file
                        //Description of the card location
                        Container(
                          height: 70,
                          width: 380,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 280,
                                    child: Text(
                                      destinations[index].name,
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 280,
                                    child: Text(
                                      destinations[index].description,
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w300),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                              OutlineButton(
                                onPressed: () {},
                                child: SizedBox(
                                  height: 43,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        destinations[index].date,
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        destinations[index].month,
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/5.jpg'),
              fit: BoxFit.fill,
            ),
            shape: BoxShape.circle,
          ),
        ),
        // child: Icon(
        //   Icons.person,
        //   color: Colors.white,
        //   size: 29,
        // ),
        backgroundColor: Colors.white60,
        tooltip: 'Profile',
        elevation: 5,
        splashColor: Colors.grey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
