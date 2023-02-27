class AddDevice{
   String? name;
   String? id;
   AddDevice({
     this.name,
     this.id
   });
}
class User{
  String name, address;
  User({required this.name, required this.address});
}
class UserTime{
  String day, hour , min , sec, name,values;
  UserTime({required this.day, required this.hour,required this.min,required this.sec,required this.name,required this.values});
}
class LogPeriod{
  String name, address;
  LogPeriod({required this.name, required this.address});
}

class Staticals{
  String date, tempreture;
  Staticals({required this.date, required this.tempreture});
}
class tempreatureData{
  String? tempreture;
  tempreatureData({required this.tempreture});
}
