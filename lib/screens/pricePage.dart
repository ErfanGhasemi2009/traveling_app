import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traveling/data/data.dart';

class PricePage extends StatefulWidget {
  PricePage({super.key});
  int hotelIndex = 0;

  @override
  State<PricePage> createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  @override
  Widget build(BuildContext context) {
    final List<HotelData> hotelDataList = AppDataBase.hotels;
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(80)),
                child: Image.asset(
                  'assets/images/hotel_pic/${hotelDataList[widget.hotelIndex].imageFileName}',
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/icons/back_icon.png')),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/icons/heart_icon.png')),
                ],
              ),
              Positioned(
                right: 12,
                top: 60,
                child: SizedBox(
                  height: 400,
                  width: 90,
                  child: ListView.builder(
                      itemCount: hotelDataList.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return itemHotels(
                          hotelDataList: hotelDataList,
                          themeData: themeData,
                          index: index,
                          isActive: widget.hotelIndex == index,
                          onTap: () {
                            setState(() {
                              widget.hotelIndex = index;
                            });
                          },
                        );
                      }),
                ),
              ),
              Positioned(
                  left: 48,
                  bottom: 32,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                    decoration: BoxDecoration(
                        color: themeData.colorScheme.onBackground
                            .withOpacity(0.6),
                            borderRadius: BorderRadius.circular(24)),
                            
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          hotelDataList[widget.hotelIndex].name,
                          style: themeData.textTheme.titleLarge,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Icon(
                              size: 18,
                              CupertinoIcons.location_solid,
                              color: themeData.colorScheme.background,
                            ),
                            Text(
                              hotelDataList[widget.hotelIndex].location,
                              style: themeData.textTheme.bodyMedium!.apply(
                                  color: themeData.colorScheme.background),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                width: 12,
              ),
              attributeContainer(
                themeData: themeData,
                title: 'Distance',
                hotelData: hotelDataList[widget.hotelIndex],
                isDistance: true,
                isTemp: false,
                isRating: false,
              ),
              attributeContainer(
                themeData: themeData,
                title: 'Temp',
                hotelData: hotelDataList[widget.hotelIndex],
                isDistance: false,
                isTemp: true,
                isRating: false,
              ),
              attributeContainer(
                themeData: themeData,
                title: 'Rating',
                hotelData: hotelDataList[widget.hotelIndex],
                isDistance: false,
                isTemp: false,
                isRating: true,
              ),
              const SizedBox(
                width: 12,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description',
                  style: themeData.textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'This Is The Shortest Of The Three Routes, But Certainly Not Any Less Interesting. The North Wales Way Leads You In 120 Km From Abergwyngregyn To The Beautiful Island Of Anglesey...',
                  style: themeData.textTheme.bodySmall,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Read more',
                      style: TextStyle(color: themeData.colorScheme.primary),
                    )),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Price',
                      style: themeData.textTheme.bodyLarge!
                          .copyWith(fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      '${hotelDataList[widget.hotelIndex].price} Dollers',
                      style:
                          themeData.textTheme.bodyLarge!.copyWith(fontSize: 30),
                    )
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/icons/next_icon.png'))
            ],
          )
        ],
      )),
    );
  }
}

class itemHotels extends StatelessWidget {
  const itemHotels({
    super.key,
    required this.hotelDataList,
    required this.themeData,
    required this.index,
    required this.onTap,
    required this.isActive,
  });

  final List<HotelData> hotelDataList;
  final ThemeData themeData;
  final int index;
  final bool isActive;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 90,
          height: 90,
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: isActive
                ? themeData.colorScheme.onBackground.withOpacity(0.5)
                : themeData.colorScheme.background,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26.withOpacity(0.4),
                  blurRadius: 10,
                  offset: Offset.zero),
            ],
          ),
          child: SizedBox(
            height: 70,
            width: 70,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  'assets/images/hotel_pic/${hotelDataList[index].imageFileName}',
                  fit: BoxFit.fill,
                  width: 70,
                  height: 70,
                )),
          )),
    );
  }
}

class attributeContainer extends StatelessWidget {
  const attributeContainer(
      {super.key,
      required this.themeData,
      required this.hotelData,
      required this.title,
      required this.isDistance,
      required this.isTemp,
      required this.isRating});

  final ThemeData themeData;
  final HotelData hotelData;
  final String title;
  final bool isDistance;
  final bool isTemp;
  final bool isRating;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: themeData.colorScheme.background,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
              color: Colors.black26.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 3,
              offset: Offset.zero),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: themeData.textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            providerTextAttribute(hotelData, isDistance, isTemp, isRating),
            style: themeData.textTheme.titleSmall,
          )
        ],
      ),
    );
  }

  String providerTextAttribute(
      HotelData hotelData, bool isDistance, bool isTemp, bool isRating) {
    if (isDistance) {
      return hotelData.distance;
    } else if (isTemp) {
      return hotelData.temp;
    } else if (isRating) {
      return hotelData.rating;
    } else {
      return '0.0';
    }
  }
}
