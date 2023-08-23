import 'package:hotel_booking/db/dbStrings.dart';

class Db {
  int? id;
  String? img;
  String? name;

  Db({this.id, this.img, this.name});
}

List<Db> mListing = [
  Db(
    id: 1,
    img: "image/japan.jpg",
    name: dbJapan,
  ),
  Db(
    id: 2,
    img: "image/london.jpg",
    name: dbLondon,
  ),
  Db(
    id: 3,
    img: "image/malawi.jpg",
    name: dbMalawi,
  ),
  Db(
    id: 4,
    img: "image/sanfran.jpg",
    name: dbSanFran,
  ),
  Db(
    id: 3,
    img: "image/malawi.jpg",
    name: dbMalawi,
  ),
  Db(
    id: 4,
    img: "image/sanfran.jpg",
    name: dbSanFran,
  ),
];

class DbCategories {
  int? id;
  String? img;
  String? name;

  DbCategories({this.id, this.img, this.name});
}

List<DbCategories> mListing1 = [
  DbCategories(id: 1, img: "icon/eventicon.png", name: dbEvents),
  DbCategories(id: 2, img: "icon/flighticon.png", name: dbFlights),
  DbCategories(id: 2, img: "icon/foodicon.png", name: dbFoods),
  DbCategories(id: 2, img: "icon/iconhotel.png", name: dbHotels),
];
