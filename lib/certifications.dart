import 'package:flutter/material.dart';

class Certifications extends StatefulWidget {
  @override
  _CertificationsState createState() => _CertificationsState();
}

class _CertificationsState extends State<Certifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Certifications',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
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
                        text: "Smart Women Ambassador",
                      ),
                      Tab(text: "Independent Distributor"),
                    ]),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    Container(
                      child: smartWomenAmbassador(),
                    ),
                    Container(
                      child: independentDistributor(),
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

  Widget smartWomenAmbassador() {
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
                  'Smart Women Ambassador',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              margin: const EdgeInsets.all(10),
              elevation: 5.0,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'A Smart Women Ambassador is responsible for positively representing a brand — and often in person — to help drive brand awareness and sales. Successful ambassadors embody the identity of the brand and are more in demand today than ever before.You get incentives and recognition from us for the work you do.'),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Influencer',
                  style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                ),
              ],
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
                        'Who can become a Smart Women Ambassador?',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          '=> Anyone who is passionate and is eager to learn sales & marketing'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/images/influencer.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Primarily areas of interest are possibly',
                    style: TextStyle(
                        fontSize: 22,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '1. Community HealthCare Workers',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              ' consultations, campaigns, events, health-runs',
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '2. Teachers',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              '-> Classroom teaching to students & value added workshops for parents ',
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            Text(
              '-> Awareness about health and Nutrition through competitions',
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget independentDistributor() {
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
                  'Independent Distributors',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              margin: const EdgeInsets.all(10),
              elevation: 5.0,
              child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        ' An independent distributor describes the distributor as a manager of the sales relationship between a buyer and a manufacturer. Independent distributors generally specialize in distributing products for an industry or a particular audience.')),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                Text(
                  'How to become an Independent Distributor?',
                  style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'To become an independent distributor of Nestle products, you have to complete our certification program. This program involves participating in our training workshops and learning about Nestle products and their nutritional value. You should also take capacity building courses available on this app to learn about social selling and other valuable tools that will help you succeed as an independent distributor.')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
