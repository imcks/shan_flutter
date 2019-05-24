import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text('Header'.toUpperCase()),
          //   decoration: BoxDecoration(color: Colors.green[100]),
          // ),
          UserAccountsDrawerHeader(
            accountName:
                Text('SHAN', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('imchenks@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://image.coolapk.com/apk_logo/2017/0525/ico-for-138825-o_1bgven70r59n1cggt9f94v50pq-uid-760587.png'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[600],
              image: DecorationImage(
                image: NetworkImage(
                    'http://pic.90sjimg.com/design/01/37/70/13/5c48604c8221d.jpg!/fwfh/300x300/quality/90/unsharp/true/compress/true'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.yellow[400].withOpacity(0.6),
                  BlendMode.hardLight,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, color: Colors.black26, size: 22),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite, color: Colors.black26, size: 22),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, color: Colors.black26, size: 22),
          ),
        ],
      ),
    );
  }
}
