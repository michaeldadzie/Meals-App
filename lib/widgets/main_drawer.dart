import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildListTile(String title, IconData icon, Function tapHandler) {
      return ListTile(
        trailing: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).hintColor,
          ),
          height: 40,
          width: 40,
          child: Icon(
            icon,
            size: 26,
            color: Theme.of(context).focusColor,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'RaleWay',
              fontWeight: FontWeight.bold,
              color: Theme.of(context).accentColor),
        ),
        onTap: tapHandler,
      );
    }

    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/fufu.jpg'),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black26, BlendMode.darken)),
            ),
            child: Text(
              'Meal Bible',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            'Meals',
            Icons.restaurant,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTile(
            'Filters',
            Icons.settings,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(FiltersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
