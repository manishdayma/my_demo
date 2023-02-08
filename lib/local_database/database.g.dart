// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
      'gender', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _locationMeta =
      const VerificationMeta('location');
  @override
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
      'location', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _loginMeta = const VerificationMeta('login');
  @override
  late final GeneratedColumn<String> login = GeneratedColumn<String>(
      'login', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dobMeta = const VerificationMeta('dob');
  @override
  late final GeneratedColumn<String> dob = GeneratedColumn<String>(
      'dob', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _registeredMeta =
      const VerificationMeta('registered');
  @override
  late final GeneratedColumn<String> registered = GeneratedColumn<String>(
      'registered', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cellMeta = const VerificationMeta('cell');
  @override
  late final GeneratedColumn<String> cell = GeneratedColumn<String>(
      'cell', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pictureMeta =
      const VerificationMeta('picture');
  @override
  late final GeneratedColumn<String> picture = GeneratedColumn<String>(
      'picture', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _natMeta = const VerificationMeta('nat');
  @override
  late final GeneratedColumn<String> nat = GeneratedColumn<String>(
      'nat', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        gender,
        name,
        location,
        email,
        login,
        dob,
        registered,
        phone,
        cell,
        id,
        picture,
        nat
      ];
  @override
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    } else if (isInserting) {
      context.missing(_genderMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('location')) {
      context.handle(_locationMeta,
          location.isAcceptableOrUnknown(data['location']!, _locationMeta));
    } else if (isInserting) {
      context.missing(_locationMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('login')) {
      context.handle(
          _loginMeta, login.isAcceptableOrUnknown(data['login']!, _loginMeta));
    } else if (isInserting) {
      context.missing(_loginMeta);
    }
    if (data.containsKey('dob')) {
      context.handle(
          _dobMeta, dob.isAcceptableOrUnknown(data['dob']!, _dobMeta));
    } else if (isInserting) {
      context.missing(_dobMeta);
    }
    if (data.containsKey('registered')) {
      context.handle(
          _registeredMeta,
          registered.isAcceptableOrUnknown(
              data['registered']!, _registeredMeta));
    } else if (isInserting) {
      context.missing(_registeredMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('cell')) {
      context.handle(
          _cellMeta, cell.isAcceptableOrUnknown(data['cell']!, _cellMeta));
    } else if (isInserting) {
      context.missing(_cellMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('picture')) {
      context.handle(_pictureMeta,
          picture.isAcceptableOrUnknown(data['picture']!, _pictureMeta));
    } else if (isInserting) {
      context.missing(_pictureMeta);
    }
    if (data.containsKey('nat')) {
      context.handle(
          _natMeta, nat.isAcceptableOrUnknown(data['nat']!, _natMeta));
    } else if (isInserting) {
      context.missing(_natMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      gender: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gender'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      location: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      login: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}login'])!,
      dob: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}dob'])!,
      registered: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}registered'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone'])!,
      cell: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cell'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      picture: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}picture'])!,
      nat: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nat'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final String gender;
  final String name;
  final String location;
  final String email;
  final String login;
  final String dob;
  final String registered;
  final String phone;
  final String cell;
  final String id;
  final String picture;
  final String nat;
  const User(
      {required this.gender,
      required this.name,
      required this.location,
      required this.email,
      required this.login,
      required this.dob,
      required this.registered,
      required this.phone,
      required this.cell,
      required this.id,
      required this.picture,
      required this.nat});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['gender'] = Variable<String>(gender);
    map['name'] = Variable<String>(name);
    map['location'] = Variable<String>(location);
    map['email'] = Variable<String>(email);
    map['login'] = Variable<String>(login);
    map['dob'] = Variable<String>(dob);
    map['registered'] = Variable<String>(registered);
    map['phone'] = Variable<String>(phone);
    map['cell'] = Variable<String>(cell);
    map['id'] = Variable<String>(id);
    map['picture'] = Variable<String>(picture);
    map['nat'] = Variable<String>(nat);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      gender: Value(gender),
      name: Value(name),
      location: Value(location),
      email: Value(email),
      login: Value(login),
      dob: Value(dob),
      registered: Value(registered),
      phone: Value(phone),
      cell: Value(cell),
      id: Value(id),
      picture: Value(picture),
      nat: Value(nat),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      gender: serializer.fromJson<String>(json['gender']),
      name: serializer.fromJson<String>(json['name']),
      location: serializer.fromJson<String>(json['location']),
      email: serializer.fromJson<String>(json['email']),
      login: serializer.fromJson<String>(json['login']),
      dob: serializer.fromJson<String>(json['dob']),
      registered: serializer.fromJson<String>(json['registered']),
      phone: serializer.fromJson<String>(json['phone']),
      cell: serializer.fromJson<String>(json['cell']),
      id: serializer.fromJson<String>(json['id']),
      picture: serializer.fromJson<String>(json['picture']),
      nat: serializer.fromJson<String>(json['nat']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'gender': serializer.toJson<String>(gender),
      'name': serializer.toJson<String>(name),
      'location': serializer.toJson<String>(location),
      'email': serializer.toJson<String>(email),
      'login': serializer.toJson<String>(login),
      'dob': serializer.toJson<String>(dob),
      'registered': serializer.toJson<String>(registered),
      'phone': serializer.toJson<String>(phone),
      'cell': serializer.toJson<String>(cell),
      'id': serializer.toJson<String>(id),
      'picture': serializer.toJson<String>(picture),
      'nat': serializer.toJson<String>(nat),
    };
  }

  User copyWith(
          {String? gender,
          String? name,
          String? location,
          String? email,
          String? login,
          String? dob,
          String? registered,
          String? phone,
          String? cell,
          String? id,
          String? picture,
          String? nat}) =>
      User(
        gender: gender ?? this.gender,
        name: name ?? this.name,
        location: location ?? this.location,
        email: email ?? this.email,
        login: login ?? this.login,
        dob: dob ?? this.dob,
        registered: registered ?? this.registered,
        phone: phone ?? this.phone,
        cell: cell ?? this.cell,
        id: id ?? this.id,
        picture: picture ?? this.picture,
        nat: nat ?? this.nat,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('gender: $gender, ')
          ..write('name: $name, ')
          ..write('location: $location, ')
          ..write('email: $email, ')
          ..write('login: $login, ')
          ..write('dob: $dob, ')
          ..write('registered: $registered, ')
          ..write('phone: $phone, ')
          ..write('cell: $cell, ')
          ..write('id: $id, ')
          ..write('picture: $picture, ')
          ..write('nat: $nat')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(gender, name, location, email, login, dob,
      registered, phone, cell, id, picture, nat);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.gender == this.gender &&
          other.name == this.name &&
          other.location == this.location &&
          other.email == this.email &&
          other.login == this.login &&
          other.dob == this.dob &&
          other.registered == this.registered &&
          other.phone == this.phone &&
          other.cell == this.cell &&
          other.id == this.id &&
          other.picture == this.picture &&
          other.nat == this.nat);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> gender;
  final Value<String> name;
  final Value<String> location;
  final Value<String> email;
  final Value<String> login;
  final Value<String> dob;
  final Value<String> registered;
  final Value<String> phone;
  final Value<String> cell;
  final Value<String> id;
  final Value<String> picture;
  final Value<String> nat;
  const UsersCompanion({
    this.gender = const Value.absent(),
    this.name = const Value.absent(),
    this.location = const Value.absent(),
    this.email = const Value.absent(),
    this.login = const Value.absent(),
    this.dob = const Value.absent(),
    this.registered = const Value.absent(),
    this.phone = const Value.absent(),
    this.cell = const Value.absent(),
    this.id = const Value.absent(),
    this.picture = const Value.absent(),
    this.nat = const Value.absent(),
  });
  UsersCompanion.insert({
    required String gender,
    required String name,
    required String location,
    required String email,
    required String login,
    required String dob,
    required String registered,
    required String phone,
    required String cell,
    required String id,
    required String picture,
    required String nat,
  })  : gender = Value(gender),
        name = Value(name),
        location = Value(location),
        email = Value(email),
        login = Value(login),
        dob = Value(dob),
        registered = Value(registered),
        phone = Value(phone),
        cell = Value(cell),
        id = Value(id),
        picture = Value(picture),
        nat = Value(nat);
  static Insertable<User> custom({
    Expression<String>? gender,
    Expression<String>? name,
    Expression<String>? location,
    Expression<String>? email,
    Expression<String>? login,
    Expression<String>? dob,
    Expression<String>? registered,
    Expression<String>? phone,
    Expression<String>? cell,
    Expression<String>? id,
    Expression<String>? picture,
    Expression<String>? nat,
  }) {
    return RawValuesInsertable({
      if (gender != null) 'gender': gender,
      if (name != null) 'name': name,
      if (location != null) 'location': location,
      if (email != null) 'email': email,
      if (login != null) 'login': login,
      if (dob != null) 'dob': dob,
      if (registered != null) 'registered': registered,
      if (phone != null) 'phone': phone,
      if (cell != null) 'cell': cell,
      if (id != null) 'id': id,
      if (picture != null) 'picture': picture,
      if (nat != null) 'nat': nat,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? gender,
      Value<String>? name,
      Value<String>? location,
      Value<String>? email,
      Value<String>? login,
      Value<String>? dob,
      Value<String>? registered,
      Value<String>? phone,
      Value<String>? cell,
      Value<String>? id,
      Value<String>? picture,
      Value<String>? nat}) {
    return UsersCompanion(
      gender: gender ?? this.gender,
      name: name ?? this.name,
      location: location ?? this.location,
      email: email ?? this.email,
      login: login ?? this.login,
      dob: dob ?? this.dob,
      registered: registered ?? this.registered,
      phone: phone ?? this.phone,
      cell: cell ?? this.cell,
      id: id ?? this.id,
      picture: picture ?? this.picture,
      nat: nat ?? this.nat,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (login.present) {
      map['login'] = Variable<String>(login.value);
    }
    if (dob.present) {
      map['dob'] = Variable<String>(dob.value);
    }
    if (registered.present) {
      map['registered'] = Variable<String>(registered.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (cell.present) {
      map['cell'] = Variable<String>(cell.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (picture.present) {
      map['picture'] = Variable<String>(picture.value);
    }
    if (nat.present) {
      map['nat'] = Variable<String>(nat.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('gender: $gender, ')
          ..write('name: $name, ')
          ..write('location: $location, ')
          ..write('email: $email, ')
          ..write('login: $login, ')
          ..write('dob: $dob, ')
          ..write('registered: $registered, ')
          ..write('phone: $phone, ')
          ..write('cell: $cell, ')
          ..write('id: $id, ')
          ..write('picture: $picture, ')
          ..write('nat: $nat')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $UsersTable users = $UsersTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users];
}
