import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class MyDb
{
  //database object
  late Database db;

  //when i will call open
  Future open() async
  {
    var dbpath = await getDatabasesPath();//path get
    String path = join(dbpath,'flutterbatch.db');//database name
    print("ABCD: $path");

    db = await openDatabase
      (
        path,
        version: 1,
        onCreate:(Database db, int version) async
        {
          await db.execute('''

                    CREATE TABLE IF NOT EXISTS students( 
                          id primary key,
                          name varchar(255) not null,
                          email varchar(255) not null,
                          password varchar(255) not null
                      );

                      //create more table here
                  
                  ''');

          print('Table Created');
        });
  }
  Future<Map<dynamic, dynamic>?> getstudent(String email) async
  {
    List<Map> maps = await db.query('students', where: 'email = ?', whereArgs: [email]);

    if (maps.length > 0)
    {
      return maps.first;
    }

    return null;
  }
}