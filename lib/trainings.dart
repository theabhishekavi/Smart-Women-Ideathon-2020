import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:smart_women/model/category_type.dart';
import 'package:smart_women/product_detail.dart';

class Trainings extends StatefulWidget {
  @override
  _TrainingsState createState() => _TrainingsState();
}

class _TrainingsState extends State<Trainings> {
  List<CategoryModel> categoriesList = [
    new CategoryModel(
      categoryType: 'Nestle',
      subCategoryList: [
        new SubCategoryModel(
            categoryName: 'Milo',
            categoryImage: 'assets/images/nestle_milo.jpeg'),
        new SubCategoryModel(
            categoryName: 'Naturnes',
            categoryImage: 'assets/images/neslte_naturnes.jpeg'),
        new SubCategoryModel(
            categoryName: 'Cerelac',
            categoryImage: 'assets/images/nestle_cerelac.jpeg'),
        new SubCategoryModel(
            categoryName: 'Nestle Carnation',
            categoryImage: 'assets/images/nestle_carnation.jpeg')
      ],
    ),
    new CategoryModel(
      categoryType: 'HealthCare Nutrition',
      subCategoryList: [
        new SubCategoryModel(
            categoryName: 'Boost',
            categoryImage: 'assets/images/hc_boost.jpeg'),
        new SubCategoryModel(
            categoryName: 'Nutren Junior',
            categoryImage: 'assets/images/nestle_nutren_junior.jpeg'),
        new SubCategoryModel(
            categoryName: 'Peptamen',
            categoryImage: 'assets/images/hc_peptamen.jpeg'),
        new SubCategoryModel(
            categoryName: 'Resource',
            categoryImage: 'assets/images/hc_resource.jpeg'),
      ],
    ),
  ];

  @override
  void initState() {
    super.initState();
    intializeValues();
  }

  void intializeValues() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Trainings',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(height: 50),
                child: TabBar(
                    unselectedLabelColor: Theme.of(context).primaryColor,
                    labelColor: Colors.white,
                    indicator: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.4),
                    ),
                    tabs: [
                      Tab(
                        text: "Financial Education",
                      ),
                      Tab(text: "Nutrition"),
                      Tab(text: "Capacity Building For Selling"),
                    ]),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    Container(
                      child: financialEducation(),
                    ),
                    Container(
                      child: nutrition(),
                    ),
                    Container(
                      child: capacityBuilding(),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget capacityBuilding() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Capacity building For Social Selling',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'What Is Social Selling?',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
                'If you’re engaging with your target audience on any level either personally or via social media, whether for business development or promoting your brand, that is social selling.'),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/images/member.jpg'),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Nestle Coffee',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text('Price:- 10\$'),
                    Text('Quantity:- 500gm'),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.share,
                  color: Theme.of(context).primaryColor,
                  size: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Share this product over Social Media handles',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40.0),
                          child: Image.asset(
                            'assets/images/fb.png',
                            width: 40,
                            height: 40,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40.0),
                          child: Image.asset(
                            'assets/images/whatsapp.png',
                            width: 40,
                            height: 40,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40.0),
                          child: Image.asset(
                            'assets/images/twitter.jpg',
                            width: 40,
                            height: 40,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Tips for Social Selling',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                '1. Know how to find your prospects \n2. Engage them in a thoughtful way, connecting with them and building relationships with them \n3. Strengthen their trust in you through a strong personal brand ')
          ],
        ),
      ),
    );
  }

  Widget financialEducation() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Financial Education',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'What Is Financial Literacy?',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            Card(
              margin: const EdgeInsets.all(10),
              elevation: 5.0,
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Financial literacy is the ability to understand and effectively apply various financial skills, including personal financial management, budgeting, and investing. Financial literacy helps individuals become self-sufficient so that they can achieve financial stability.'),
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Key Takeaways',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            Card(
              margin: const EdgeInsets.all(10),
              elevation: 5.0,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                          '1. Ability to understand and properly apply financial management skills'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          '2. Financial planning, managing debt and interest, knowing how to invest'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Text(
                    'The 5 Key Components of Financial Literacy:-',
                    style: TextStyle(
                        fontSize: 22,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Text(
              '(The sooner you master these financial concepts, the better.)',
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '1. The Basics of Budgeting \n2. Understanding Interest Rates \n3. Prioritizing Saving \n4. Credit-Debt Cycle Traps \n5. Identity Theft Issues & Safety',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget nutrition() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 170,
            child: Carousel(
              boxFit: BoxFit.cover,
              images: [
                AssetImage('assets/images/slider1.jpeg'),
                AssetImage('assets/images/slider2.jpeg'),
                AssetImage('assets/images/slider3.jpeg'),
                AssetImage('assets/images/slider4.jpeg'),
              ],
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotColor: Colors.pink[300],
              indicatorBgPadding: 2.0,
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 3000),
            ),
          ),
          categories(context),
        ],
      ),
    );
  }

  Widget categories(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: categoriesList.length,
      itemBuilder: (ctx, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 10, 8.0, 2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  categoriesList[index].categoryType,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              GridView.builder(
                itemCount: categoriesList[index].subCategoryList.length,
                physics: ScrollPhysics(),
                padding: EdgeInsets.only(top: 10),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, subIndex) {
                  return Card(
                    elevation: 5.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return ProductDetail(
                            productName: categoriesList[index]
                                .subCategoryList[subIndex]
                                .categoryName,
                            productImage: categoriesList[index]
                                .subCategoryList[subIndex]
                                .categoryImage,
                          );
                        }));
                      },
                      // onTap: () => passData(
                      //     context,
                      //     categoriesList[index].categoryType,
                      //     categoriesList[index]
                      //         .subCategoryList[subIndex]
                      //         .categoryName),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.width / 4,
                            child: Image.asset(
                              categoriesList[index]
                                  .subCategoryList[subIndex]
                                  .categoryImage,
                            ),
                          ),
                          Text(
                            categoriesList[index]
                                .subCategoryList[subIndex]
                                .categoryName,
                            style: TextStyle(fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
