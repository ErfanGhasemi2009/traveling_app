class HotelData {
  final int id;
  final String name;
  final String contaryName;
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
      required this.contaryName,
      required this.distance,
      required this.rating,
      required this.temp,
      required this.price,
      required this.isViewed});
}

class Category {
  final int id;
  final String title;

  Category({required this.id, required this.title});
}

class DestinationData {
  final int id;
  final String name;
  final String imageFileName;
  final String location;
  final String rating;

  DestinationData(
      {required this.id,
      required this.name,
      required this.imageFileName,
      required this.location,
      required this.rating});
}

class AppDataBase {
  static List<HotelData> get hotels {
    return [
      HotelData(
          id: 1001,
          name: 'La Silva',
          imageFileName: 'pic1.jpg',
          contaryName: 'Peru',
          location: 'Peru, South America',
          distance: '7KM',
          rating: '4.8',
          temp: '28° C',
          price: '1207',
          isViewed: true),
      HotelData(
          id: 1002,
          name: 'La Costa',
          contaryName: 'Peru',
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
          contaryName: 'Brazil',
          location: 'Brazil, South America',
          distance: '16KM',
          rating: '4.9',
          temp: '38° C',
          price: '918',
          isViewed: false),
      HotelData(
          id: 1004,
          name: 'Salvador',
          contaryName: 'Mexico',
          imageFileName: 'pic4.jpg',
          location: 'Mexico, South America',
          distance: '49KM',
          rating: '4.1',
          temp: '45° C',
          price: '752',
          isViewed: false),
    ];
  }

  static List<Category> get categories {
    return [
      Category(title: 'Jungle', id: 2001),
      Category(title: 'Beach', id: 2002),
      Category(title: 'Mountain', id: 2003),
      Category(title: 'Waterfalls', id: 2004),
      Category(title: 'Lakes', id: 2005),
    ];
  }

  static List<DestinationData> get destinations {
    return [
      DestinationData(
          id: 3001,
          name: 'La Costa',
          imageFileName: 'dstn1.jpg',
          location: 'Peru, South America',
          rating: '4.9'),
      DestinationData(
          id: 3002,
          name: 'Rio De Janero',
          imageFileName: 'dstn2.jpg',
          location: 'Brazil, South America',
          rating: '4.7'),
      DestinationData(
          id: 3003,
          name: 'La Silva',
          imageFileName: 'dstn3.jpg',
          location: 'Peru, South America',
          rating: '4.8'),
    ];
  }
}
