import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';
// assuming that your file is called filename.dart. This will give an error at
// first, but it's needed for drift to know about the generated code
part 'database.g.dart';


// this will generate a table called "todos" for us. The rows of that table will
// be represented by a class called "Todo".
class Users extends Table {

  TextColumn get gender => text()();
  TextColumn get name => text()();
  TextColumn get location => text()();
  TextColumn get email => text()();
  TextColumn get login => text()();
  TextColumn get dob => text()();
  TextColumn get registered => text()();
  TextColumn get phone => text()();
  TextColumn get cell => text()();
  TextColumn get id => text()();
  TextColumn get picture => text()();
  TextColumn get nat => text()();

}



// this annotation tells drift to prepare a database class that uses both of the
// tables we just defined. We'll see how to use that database class in a moment.
@DriftDatabase(tables: [Users])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}