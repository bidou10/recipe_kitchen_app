import 'package:countries_flag/countries_flag.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/first_page.dart';

class PreferancePage extends StatelessWidget {
  PreferancePage({super.key});
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2013/07/12/17/58/thailand-152711_1280.png'),
            ),
            title: Text('Thai Food'),
            subtitle: Text('best thai food recipe dishes'),
            trailing: Icon(Icons.more_vert),
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2013/07/13/14/15/japan-162328_1280.png'),
            ),
            title: Text('Japan Food'),
            subtitle: Text('best Japan food recipe dishes'),
            trailing: Icon(Icons.more_vert),
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2013/07/13/14/16/mexico-162359_1280.png'),
            ),
            title: Text('Mexican Food'),
            subtitle: Text('best mexican food recipe dishes'),
            trailing: Icon(Icons.more_vert),
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2013/07/13/14/15/france-162295_1280.png'),
            ),
            title: Text('French Food'),
            subtitle: Text('best french food recipe dishes'),
            trailing: Icon(Icons.more_vert),
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2012/04/11/15/35/flag-28543_1280.png'),
            ),
            title: Text('Italian Food'),
            subtitle: Text('best italian food recipe dishes'),
            trailing: Icon(Icons.more_vert),
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2013/07/13/14/17/spain-162428_1280.png'),
            ),
            title: Text('Spanish Food'),
            subtitle: Text('best spanish food recipe dishes'),
            trailing: Icon(Icons.more_vert),
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2012/04/10/16/22/united-26177_1280.png'),
            ),
            title: Text('United States Food'),
            subtitle: Text('best american food recipe dishes'),
            trailing: Icon(Icons.more_vert),
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/11/12/16/03/flag-1040555_1280.png'),
            ),
            title: Text('China Food'),
            subtitle: Text('best chinese food recipe dishes'),
            trailing: Icon(Icons.more_vert),
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2012/04/10/23/03/india-26828_1280.png'),
            ),
            title: Text('Inde Food'),
            subtitle: Text('best indian food recipe dishes'),
            trailing: Icon(Icons.more_vert),
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2012/04/10/23/09/greece-26871_1280.png'),
            ),
            title: Text('Greece Food'),
            subtitle: Text('best greque food recipe dishes'),
            trailing: Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
