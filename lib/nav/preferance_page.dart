import 'package:countries_flag/countries_flag.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/china/china.dart';
import 'package:recipe_kitchen_app/france/france.dart';
import 'package:recipe_kitchen_app/german/german.dart';
import 'package:recipe_kitchen_app/greek/greek.dart';
import 'package:recipe_kitchen_app/india/india.dart';
import 'package:recipe_kitchen_app/italian/italian.dart';
import 'package:recipe_kitchen_app/japan/japan.dart';
import 'package:recipe_kitchen_app/korea/korea.dart';
import 'package:recipe_kitchen_app/lebanon/lebanon.dart';
import 'package:recipe_kitchen_app/mexican/mexican.dart';
import 'package:recipe_kitchen_app/morocco/morocco.dart';
import 'package:recipe_kitchen_app/nav/first_page.dart';
import 'package:recipe_kitchen_app/spain/spain.dart';
import 'package:recipe_kitchen_app/thai/thai.dart';
import 'package:recipe_kitchen_app/usa/usa.dart';
import 'package:recipe_kitchen_app/vietnam/vietnam.dart';

class PreferancePage extends StatelessWidget {
  PreferancePage({super.key});

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
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              child: SizedBox(
                height: 10,
              ),
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2013/07/12/17/58/thailand-152711_1280.png'),
            ),
            title: Text('Thai Food'),
            subtitle: Text('best thai food recipe dishes'),
            trailing: Icon(Icons.more_vert),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ThaiPage(),
                ),
              );
            },
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
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => JapanPage(),
                ),
              );
            },
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
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MexicanPage()),
              );
            },
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
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => FrancePage()),
              );
            },
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2013/07/13/14/17/south-korea-162427_1280.png'),
            ),
            title: Text('Korea Food'),
            subtitle: Text('best korean food recipe dishes'),
            trailing: Icon(Icons.more_vert),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => KoreaPage()));
            },
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
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SpainPage()),
              );
            },
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
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => UsaPage()),
              );
            },
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
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ChinaPage()),
              );
            },
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
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => IndiaPage(),
                ),
              );
            },
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2012/04/10/23/09/greece-26871_1280.png'),
            ),
            title: Text('Greek Food'),
            subtitle: Text('best greque food recipe dishes'),
            trailing: Icon(Icons.more_vert),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => GreekPage(),
                ),
              );
            },
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2012/04/10/23/03/lebanon-26832_1280.png'),
            ),
            title: Text('Lebanese Food'),
            subtitle: Text('best Lebanese food recipe dishes'),
            trailing: Icon(Icons.more_vert),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LebanonPage(),
                ),
              );
            },
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2013/07/13/14/18/vietnam-162460_1280.png'),
            ),
            title: Text('Vietnam Food'),
            subtitle: Text('best vietnam food recipe dishes'),
            trailing: Icon(Icons.more_vert),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => VietnamPage(),
                ),
              );
            },
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2012/04/12/23/52/germany-31017_1280.png'),
            ),
            title: Text('German Food'),
            subtitle: Text('best german food recipe dishes'),
            trailing: Icon(Icons.more_vert),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => GermanPage(),
                ),
              );
            },
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
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ItalianPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2013/07/13/14/16/morocco-162365_1280.png'),
            ),
            title: Text('Morocco Food'),
            subtitle: Text('best moroccan food recipe dishes'),
            trailing: Icon(Icons.more_vert),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MoroccoPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
