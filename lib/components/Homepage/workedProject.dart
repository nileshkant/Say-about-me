import 'package:flutter/material.dart';
import 'package:sayaboutme/components/Homepage/cardPrimary.dart';
import 'package:sayaboutme/utils/colorChanger.dart';

class WorkedProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: 'Worked ',
                  style: Theme.of(context).textTheme.display4,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Projects',
                      style: Theme.of(context).textTheme.headline,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        PrimaryCard(
            stops: [
              0.1,
              0.9
            ],
            gradientColor: [
              // Colors are easy thanks to Flutter's Colors class.
              FlutterColor("#D7816A"),
              FlutterColor("#BD4F6C"),
            ],
            cardContent: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Knowledge Podium",
                            style: Theme.of(context).textTheme.title,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Expanded(child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                  child: Text(
                    'About',
                    style: Theme.of(context)
                        .textTheme
                        .display2
                        .copyWith(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "It is a digital platform for seeking jobs acquiring new skills connecting to the industry and searching for right talent in your field. Teacher's training module helping thousands of School Staffs in Professional Development Skills",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                  child: Text(
                    'Technologies and libraries used',
                    style: Theme.of(context)
                        .textTheme
                        .display2
                        .copyWith(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Spring, Angular JS, Elastic Search, Logstash, Kibana, MySql, Mongodb & ReactJS",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
              child: PrimaryCard(
              stops: [
                0.1,
                0.9
              ],
              gradientColor: [
                // Colors are easy thanks to Flutter's Colors class.
                FlutterColor("#D7816A"),
                FlutterColor("#BD4F6C"),
              ],
              cardContent: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "O3 (Caret)",
                              style: Theme.of(context).textTheme.title,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Expanded(child:
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                    child: Text(
                      'About',
                      style: Theme.of(context)
                          .textTheme
                          .display2
                          .copyWith(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Product provides asset management solutions for the everyday investor. This includes onboarding, cash flow management, stock portfolio management, notification engine and reporting tools. The product is aimed at providing the client's in-house portfolio solutions, previously served to HNIs and Institutional Investors, to everyday retail clients. Customers will invest in a stock portfolio, that is managed by the client's team. Every change to the portfolio mandates approval from the customer, for which, we will build a notification engine. Onboarding includes PAN integration, eKYC and e-signing through Aadhaar integration, while cash flow management includes integration of payment gateways. stock portfolio management is heart of the product, and this is where O3 product stands unique.",
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                    child: Text(
                      'Technologies and libraries used',
                      style: Theme.of(context)
                          .textTheme
                          .display2
                          .copyWith(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Spring Framework, Hibernate, ReactJS, Highcharts and D3 charts, MySQL & MongoDB",
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              )),
            )
      ],
    );
  }
}
// Product provides asset management solutions for the everyday investor. This includes onboarding, cash flow management, stock portfolio management, notification engine and reporting tools. The product is aimed at providing the client's in-house portfolio solutions, previously served to HNIs and Institutional Investors, to everyday retail clients. Customers will invest in a stock portfolio, that is managed by the client's team. Every change to the portfolio mandates approval from the customer, for which, we will build a notification engine. Onboarding includes PAN integration, eKYC and e-signing through Aadhaar integration, while cash flow management includes integration of payment gateways. stock portfolio management is heart of the product, and this is where O3 product stands unique.