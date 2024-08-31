import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traveling/data/data.dart';
import 'package:traveling/screens/pricePage.dart';

int selectedTab = 0;

class Discoverpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final CarouselSliderController controller = CarouselSliderController();
    final List<Category> categories = AppDataBase.categories;
    final List<DestinationData> destinations = AppDataBase.destinations;
    final List<HotelData> hotels = AppDataBase.hotels;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                    'Discover',
                    style: themeData.textTheme.displaySmall,
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/icons/search.png',
                        fit: BoxFit.fill,
                        width: 40,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/icons/aware.png',
                        fit: BoxFit.fill,
                        width: 40,
                      ))
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ListView.builder(
                    itemCount: categories.length,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CategoriesTitlesList(
                          category: categories[index],
                          index: index,
                          themeData: themeData);
                    }),
              ),
              CarouselSlider.builder(
                  carouselController: controller,
                  itemCount: destinations.length,
                  itemBuilder: (context, index, i) {
                    return GestureDetector(
                      onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PricePage()));
                            },
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(48),
                            child: Image.asset(
                              'assets/images/destination/${destinations[index].imageFileName}',
                              fit: BoxFit.cover,
                              width: 300,
                              height: 350,
                            ),
                          ),
                          Positioned(
                            bottom: 96,
                            left: 24,
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                              height: 60,
                              width: 250,
                              decoration: BoxDecoration(
                                  color: themeData.colorScheme.background,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        destinations[index].name,
                                        style: themeData.textTheme.bodyMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(destinations[index].location)
                                    ],
                                  ),
                                  Container(
                                    height: 120,
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.star_rounded,
                                          color: Color(0xffF4C534),
                                        ),
                                        Text(destinations[index].rating)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 400,
                    enlargeCenterPage: true,
                    disableCenter: true,
                    enableInfiniteScroll: true,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Destination',
                    style: themeData.textTheme.bodyLarge!
                        .copyWith(fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                  IconButton(
                      onPressed: () {
                        
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PricePage()));
                          
                      },
                      icon: Image.asset('assets/images/icons/more_icon.png'))
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotels.length,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PricePage()));
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: Colors.black12),
                              child: Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(24),
                                      child: Image.asset(
                                        width: 80,
                                        height: 80,
                                        'assets/images/hotel_pic/${hotels[index].imageFileName}',
                                        fit: BoxFit.cover,
                                      )),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        hotels[index].name,
                                        style: themeData.textTheme.labelSmall,
                                      ),
                                      Text(hotels[index].contaryName,
                                          style: themeData.textTheme.bodyMedium)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          )
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesTitlesList extends StatefulWidget {
  const CategoriesTitlesList({
    super.key,
    required this.category,
    required this.themeData,
    required this.index,
  });

  final Category category;
  final ThemeData themeData;
  final int index;

  @override
  State<CategoriesTitlesList> createState() => _CategoriesTitlesListState();
}

class _CategoriesTitlesListState extends State<CategoriesTitlesList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              selectedTab = widget.index;
            });
          },
          child: Text(
            widget.category.title,
            style: selectedTab == widget.index
                ? widget.themeData.textTheme.headlineSmall!.copyWith(
                    decoration: TextDecoration.overline, decorationThickness: 4)
                : widget.themeData.textTheme.headlineSmall!
                    .apply(color: Colors.black54),
          ),
        ),
        const SizedBox(
          width: 50,
        ),
      ],
    );
  }
}
