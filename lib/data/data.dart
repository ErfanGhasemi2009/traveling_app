class HotelData {
  final int id;
  final String name;
  final String imageFileName;
  final String location;
  final String distance;
  final String temp;
  final String rating;
  final String price;
  final bool isViewed;

  HotelData(
      {required this.id,
      required this.name,
      required this.imageFileName,
      required this.location,
      required this.distance,
      required this.rating,
      required this.temp,
      required this.price,
      required this.isViewed});
}

class AppDataBase {
  static List<HotelData> get hotels {
    return [
      HotelData(
          id: 1001,
          name: 'La Silva',
          imageFileName: 'pic1.jpg',
          location: 'Peru, South America',
          distance: '7KM',
          rating: '4.8',
          temp: '28° C',
          price: '1207',
          isViewed: true),
      HotelData(
          id: 1002,
          name: 'La Costa',
          imageFileName: 'pic2.jpg',
          location: 'Peru, South America',
          distance: '11KM',
          rating: '4.2',
          temp: '32° C',
          price: '1403',
          isViewed: false),
      HotelData(
          id: 1003,
          name: 'Rio De Janero',
          imageFileName: 'pic3.jpg',
          location: 'Brazil, South America',
          distance: '16KM',
          rating: '4.9',
          temp: '38° C',
          price: '918',
          isViewed: false),
      HotelData(
          id: 1004,
          name: 'Salvador',
          imageFileName: 'pic4.jpg',
          location: 'Maxsico, South America',
          distance: '49KM',
          rating: '4.1',
          temp: '45° C',
          price: '752',
          isViewed: false),
    ];
  }
}
