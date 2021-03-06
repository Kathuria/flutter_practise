import 'package:flutter/material.dart';
import 'package:flutter_practise/widget_of_week/constants.dart';
import 'package:flutter_practise/widget_of_week/routes.dart';

class WidgetOfWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      initialRoute: Constants.Initial_Route,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      routes: getRoutes(),
    );
  }
}

class MyWidgetsPage extends StatefulWidget {
  @override
  _MyWidgetsPageState createState() => _MyWidgetsPageState();
}

class _MyWidgetsPageState extends State<MyWidgetsPage> {
  var _searchEdit = new TextEditingController();

  bool _isSearch = true;
  String _searchText = "";

  List<String> _searchListItems;
  List<String> _searchListRoutes;

  @override
  void initState() {
    super.initState();
  }

  _MyWidgetsPageState() {
    _searchEdit.addListener(() {
      if (_searchEdit.text.isEmpty) {
        setState(() {
          _isSearch = true;
          _searchText = "";
        });
      } else {
        setState(() {
          _isSearch = false;
          _searchText = _searchEdit.text;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Widgets of Week'),
        ),
        body: new Container(
          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          child: new Column(
            children: <Widget>[
              _searchBox(),
              _isSearch ? _listView() : _searchListView()
            ],
          ),
        ));
  }

  Widget _searchBox() {
    return new Container(
      decoration: BoxDecoration(border: Border.all(width: 1.0, color: Colors.grey), borderRadius: BorderRadius.circular(15)),
      child: new TextField(
        controller: _searchEdit,
        decoration: InputDecoration(
          hintText: "Search Widgets",
          hintStyle: new TextStyle(color: Colors.grey[300]),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _listView() {
    return new Flexible(
      child: new ListView.builder(
          itemCount: Constants.WIDGETS.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              //color: Colors.cyan[50],
              elevation: 5.0,
              child: new Container(
                margin: EdgeInsets.all(5.0),
                child: _navigateRoute(context, Constants.WIDGETS[index],
                    Constants.WIDGET_ROUTES[index]),
              ),
            );
          }),
    );
  }

  Widget _searchListView() {
    _searchListItems = [];
    _searchListRoutes = [];
    for (int i = 0; i < Constants.WIDGETS.length; i++) {
      var item = Constants.WIDGETS[i];

      if (item.toLowerCase().contains(_searchText.toLowerCase())) {
        _searchListItems.add(item);
        _searchListRoutes.add(Constants.WIDGET_ROUTES[i]);
      }
    }
    return _searchAddList();
  }

  Widget _searchAddList() {
    return new Flexible(
      child: new ListView.builder(
          itemCount: _searchListItems.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              color: Colors.cyan[50],
              elevation: 5.0,
              child: new Container(
                margin: EdgeInsets.all(5.0),
                child: _navigateRoute(context, _searchListItems[index], _searchListRoutes[index]),
              ),
            );
          }),
    );
  }

  Widget _navigateRoute(BuildContext context, String title, String routeName) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      trailing: Icon(Icons.chevron_right),
    );
  }
}
