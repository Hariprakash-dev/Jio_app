import 'package:flutter/material.dart';

void main(List<String> args) {
  //carousel_slider: ^4.2.1

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      //Appbar

      appBar: AppBar(
        
        leading:  const IconButton(onPressed: null, icon: Icon(Icons.search,color: Colors.white,),),
        actions: const [
          Icon(Icons.mic, color: Colors.white),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.qr_code, color: Colors.white),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.notification_add, color: Colors.white),
          SizedBox(
            width: 20,
          )
        ],
        backgroundColor: Colors.indigoAccent[700],
      ),

      //bottom Appbar

      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.currency_rupee), label: 'Recharge'),
        BottomNavigationBarItem(
            icon: Icon(Icons.headset_mic), label: 'JioCare'),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
      ]),

      body: const Column(
        children: [
          AvatarGrid(),
          Recharge(),
        ],
      ),
    );
  }
}

class AvatarGrid extends StatefulWidget {
  const AvatarGrid({super.key});

  @override
  State<AvatarGrid> createState() => _AvatarGridState();
}

class _AvatarGridState extends State<AvatarGrid> {
  final List<Map<String, String>> items = [
    {
      'icon':
          'https://t4.ftcdn.net/jpg/05/36/24/13/360_F_536241340_GsrsNhcWC0hyTVaJLilNafyDw6fl0cC8.jpg',
      'label': 'Mobile'
    },
    {
      'icon':
          'https://cdn0.iconfinder.com/data/icons/technology-business-and-people/1000/file_light-50-512.png',
      'label': 'Fiber'
    },
    {
      'icon':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Apple_Music_icon.svg/2048px-Apple_Music_icon.svg.png',
      'label': 'Music'
    },
    {
      'icon':
          'https://icons.iconarchive.com/icons/flat-icons.com/flat/512/Flat-TV-icon.png',
      'label': 'Tv'
    },
    {
      'icon': 'https://thumbs.dreamstime.com/z/hot-apps-icon-259631906.jpg',
      'label': 'Games'
    },
    {
      'icon':
          'https://www.psuconnect.in/sdsdsd/NPCI_confirms_UPI_authorization_in_France.jpg',
      'label': 'UPI'
    },
    {
      'icon':
          'https://cdn3.vectorstock.com/i/1000x1000/13/47/shopping-cart-icon-image-vector-12751347.jpg',
      'label': 'Shopping'
    },
    {
      'icon':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPXMLe72PQiNR9JYmmfT1vmg9oe1RJSZtTBA&s',
      'label': 'Bank'
    },
    {
      'icon':
          'https://thumbs.dreamstime.com/b/three-aces-playing-cards-icon-white-isolated-green-background-vector-illustration-three-aces-playing-cards-icon-green-108298142.jpg',
      'label': 'Play&Win'
    },
    {
      'icon':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBlidWbgtTwoE3mdMhOdtEQlBLjhS3r3MYUA&s',
      'label': 'News'
    },
    {
      'icon':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC0nlZ1I5b1GsiuS_emFuNetU0s9HoA8qKfQ&s',
      'label': 'Offers'
    },
    {
      'icon':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzc2z4Qu_AH3fQtGxawZmbMwhrzjiSFfmo_w&s',
      'label': 'Health'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.all(20.0)),
        GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(items[index]['icon']!),
                      radius: 26,
                    ),
                    Text(items[index]['label']!)
                  ],
                ),
              );
            }),
      ],
    );
  }
}

class Recharge extends StatefulWidget {
  const Recharge({super.key});

  @override
  State<Recharge> createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 370,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: Icon(
                        Icons.phone_iphone,
                        color: Colors.indigoAccent[700],
                      ),
                      title: const Text(
                        'Mobile prepaid 6374034908',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: const Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 100.0)),
                      Text('Data'),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '1.18 GB',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17.0),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text('left of 1.50 GB'),
                      Text('Renews in 11 hours'),
                    ],
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  VerticalDivider(
                    width: 20,
                    color: Colors.black,
                    thickness: 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Plan expiring",
                        style: TextStyle(color: Colors.orange),
                      ),
                      Text(
                        'Rs 239',
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '9 days left',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                height: 30,
              ),
              const Row(
                children: [
                  Text(
                    'Recommended plan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsetsDirectional.all(12),
                    height: 100,
                    width: 330,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.lightBlue[50]),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Rs 349',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(Icons.recommend),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Data'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '2 GB/Day',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const SizedBox(width: 40),
                            const Column(
                              children: [
                                Text('Validity'),
                                Text(
                                  '28 Days',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Column(
                              children: [
                                TextButton(
                                  onPressed: null,
                                  style: TextButton.styleFrom(
                                      backgroundColor:
                                          Colors.indigoAccent[700]),
                                  child: const Text(
                                    'Buy',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: null,
                      child: Text(
                        'Recharge',
                        style: TextStyle(
                            color: Colors.indigoAccent[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
