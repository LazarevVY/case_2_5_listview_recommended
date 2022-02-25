class User {
  String name = "";
  String phone = "";
  bool private = false; //признак того, что телефон не отображается в списке
  User (this.name , this.phone);
  User.private (this.name , this.phone) {private=true;}
  String get Name => name;
  String get Phone => phone;
}

List<User> list = <User>[
  User("Connor, John", "+7 (927) 100-10-10"),
  User("Connor, Sarah", "0000"),
  User.private( "Claus, Santa", "555-555"),
  User.private("Bunny, Bags", "0101-01"),
  User.private("Jack, Black", "+7(090)621-44-97"),
  User.private("Jack, Daniels","+7(090)123-45-67"),
  User.private("Verter, Robot","+7(090)123-45-67"),
  User.private("Laser, Major","+7(090)123-45-67"),
  User("Lennon, John","+7(090)123-45-67"),
  User("Hood, Robin","+7(090)123-45-67"),
  User("Scott, Riedley","+7(090)123-45-67"),
  User("Pretty, Woman","+7(090)123-45-67"),
  User("Gaga, Lady","+7(090)123-45-67"),
  User("Hub, Git","+7(090)123-45-67"),
  User.private("Smith, John","+7(090)123-45-67"),
  User("Smith, Jane","+7(090)123-45-67"),
];