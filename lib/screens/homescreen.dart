import 'package:Tukay/widgets/colors.dart';
import 'package:Tukay/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solar_icons/solar_icons.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(
          value: "NGN",
          child: Text(
            "NGN",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          )),
      const DropdownMenuItem(
          value: "USD",
          child: Text(
            "USD",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          )),
      const DropdownMenuItem(
          value: "EUR",
          child: Text(
            "EUR",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          )),
      const DropdownMenuItem(
          value: "GBP",
          child: Text(
            "GBP",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          )),
      const DropdownMenuItem(
          value: "CAD",
          child: Text(
            "CAD",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          )),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    String selectedValue = "NGN";
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 244, 237, 1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      ClipOval(
                          child: Image.asset(
                        'images/head.jpg',
                        width: 50,
                        height: 50,
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome 🙌',
                            style: TextStyle(
                                height: 0.7,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                          Text(
                            'Katola Kehinde',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: AppColors.secondaryColor),
                          ),
                        ],
                      )
                    ],
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    SolarIconsOutline.bellBing,
                    color: AppColors.secondaryColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(color: AppColors.secondaryColor),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.search,
                      color: AppColors.secondaryColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search for beggers',
                            hintStyle: TextStyle(
                                color: Colors.greenAccent[900],
                                fontSize: 19,
                                fontWeight: FontWeight.w600)),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicatorWeight: double.minPositive,
                  labelColor: AppColors.secondaryColor,
                  unselectedLabelColor: Colors.grey,
                  indicator: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Tab(
                      child: MyText(
                        text: 'I wan Send',
                        color: AppColors.secondaryColor,
                        size: 20,
                      ),
                    ),
                    Tab(
                      child: MyText(
                        text: 'I wan Beg',
                        color: AppColors.secondaryColor,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('images/card.png'),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyText(
                            text: 'Your Money',
                            color: Colors.black54,
                            size: 18),
                        const Spacer(),
                        Container(
                          width: 60,
                          height: 30,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: DropdownButton(
                              underline: const SizedBox(),
                              alignment: Alignment.center,
                              value: selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                              items: dropdownItems),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'NGN 465,000',
                          style: GoogleFonts.darkerGrotesque(
                              fontSize: 40, fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          SolarIconsBold.eye,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      margin: const EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          border: const Border.fromBorderSide(
                              BorderSide(color: AppColors.secondaryColor)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text('#6 Cashback on every 2k you borrow',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.darkerGrotesque(
                              fontSize: 27,
                              height: 1,
                              fontWeight: FontWeight.w700,
                              color: AppColors.secondaryColor)),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            margin: const EdgeInsets.only(top: 20),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Do giveaway ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.darkerGrotesque(
                                        fontSize: 23,
                                        height: 1,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.secondaryColor)),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  SolarIconsBold.walletMoney,
                                  color: AppColors.secondaryColor,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 40,
                            margin: const EdgeInsets.only(top: 20),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Send Money',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.darkerGrotesque(
                                        fontSize: 23,
                                        height: 1,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.secondaryColor)),
                                const SizedBox(width: 5),
                                const Icon(
                                  SolarIconsBold.plain,
                                  color: AppColors.secondaryColor,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 175,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('images/tap.png'),
                        fit: BoxFit.fitHeight),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        'Recent Transactions',
                        style: GoogleFonts.darkerGrotesque(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87),
                      ),
                      const Spacer(),
                      Text(
                        'See all',
                        style: GoogleFonts.darkerGrotesque(
                            color: const Color.fromARGB(255, 84, 99, 0),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) => Container(
                      height: 75,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(bottom: 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(color: AppColors.secondaryColor),
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              clipBehavior: Clip.hardEdge,
                              child: Image.asset(
                                'images/head.jpg',
                                width: 50,
                                height: 50,
                              )),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Leye Kehinde',
                                  style: GoogleFonts.darkerGrotesque(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87),
                                ),
                                Text(
                                  'Amount: NGN 2,000',
                                  style: GoogleFonts.darkerGrotesque(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.resolveWith(
                                      (states) => const EdgeInsets.symmetric(
                                          horizontal: 20),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        AppColors.secondaryColor),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                                onPressed: () {},
                                child: const Text(
                                  'Repay',
                                  style: TextStyle(
                                      color: AppColors.primaryColor,
                                      fontSize: 18),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
