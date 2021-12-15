import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Cis extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CisState();
  }

  const Cis({Key? key}) : super(key: key);
}

class _CisState extends State<Cis> {
  int index = 0;
  List<Map<String, String>> data = [
    {
      'name': 'Waleed Farag',
      'major': "Neurologists",
      "reviews": "320",
      "image":
          "https://www.pinnaclecare.com/wp-content/uploads/2017/12/bigstock-African-young-doctor-portrait-28825394.jpg",
    },
    {
      'name': 'Hend Shehab',
      'major': "Dentest",
      "reviews": "150",
      "image": "https://aawafi.com/uploads/partners/profile/doctor.jpg"
    },
    {
      'name': 'Dr. Mohammed',
      'major': "Dermatologists",
      "reviews": "200",
      "image":
          "https://img.freepik.com/free-photo/portrait-smiling-handsome-male-doctor-man_171337-5055.jpg?size=626&ext=jpg"
    },
    {
      'name': 'Dr. Ahmed',
      'major': "Dentest",
      "reviews": "200",
      "image":
          'https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg'
    },
    {
      'name': 'Ali Ahmed',
      'major': "Dermatologists",
      "reviews": "214",
      "image":
          "https://biographymask.com/wp-content/uploads/2020/11/Dr-Mike-1200x1200.jpg",
    },
    {
      'name': 'Dr. Shahed',
      'major': "Dermatologists",
      "reviews": "150",
      "image":
          "https://image.shutterstock.com/image-photo/smiling-female-doctor-lab-coat-260nw-1473042992.jpg"
    },
    {
      'name': 'Dr. Ahmed',
      'major': "Dentest",
      "reviews": "200",
      "image":
          "https://img.freepik.com/free-photo/portrait-smiling-handsome-male-doctor-man_171337-5055.jpg?size=626&ext=jpg"
    },
    {
      'name': 'Dr. Ahmed',
      'major': "Dentest",
      "reviews": "200",
      "image":
          'https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg'
    },
  ];

  cardof(String name, String major, String reviews, String imageURL) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 1,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    imageURL,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              major,
              style: const TextStyle(color: Colors.grey),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.yellow[800],
                ),
                Text(
                  reviews,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  circularDoctor(String url) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CircleAvatar(
            radius: 30,
            foregroundImage: NetworkImage(url),
          ),
          Container(
            padding: const EdgeInsets.all(0.5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: const Icon(
              Icons.circle,
              size: 11,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }

  Widget searchTextField() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: Colors.grey[200],
        ),
        height: 40,
        margin: const EdgeInsets.only(left: 10),
        child: TextField(
            decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: const TextStyle(height: 0.5),
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none))),
      ),
    );
  }

  Widget bottomBarS() {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: index == 0 ? 2 : 1,
            child: InkWell(
              onTap: () {
                setState(() {
                  index = 0;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: index == 0 ? Colors.deepPurple[100] : Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: index == 0 ? Colors.deepPurple : Colors.black,
                    ),
                    index == 0
                        ? const Text(
                            "Home",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          )
                        : const Text("")
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: index == 1 ? 2 : 1,
            child: InkWell(
              onTap: () {
                setState(() {
                  index = 1;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: index == 1 ? Colors.deepPurple[100] : Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.medical_services,
                      color: index == 1 ? Colors.deepPurple : Colors.black,
                    ),
                    index == 1
                        ? const Text(
                            "Doctors",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          )
                        : const Text("")
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: index == 2 ? 2 : 1,
            child: InkWell(
              onTap: () {
                setState(() {
                  index = 2;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: index == 2 ? Colors.deepPurple[100] : Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.messenger,
                      color: index == 2 ? Colors.deepPurple : Colors.black,
                    ),
                    index == 2
                        ? const Text(
                            "Chat",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          )
                        : const Text("")
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: index == 3 ? 2 : 1,
            child: InkWell(
              onTap: () {
                setState(() {
                  index = 3;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: index == 3 ? Colors.deepPurple[100] : Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: index == 3 ? Colors.deepPurple : Colors.black,
                    ),
                    index == 3
                        ? const Text(
                            "Calender",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          )
                        : const Text("")
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: index == 4 ? 2 : 1,
            child: InkWell(
              onTap: () {
                setState(() {
                  index = 4;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: index == 4 ? Colors.deepPurple[100] : Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: index == 4 ? Colors.deepPurple : Colors.black,
                    ),
                    index == 4
                        ? const Text(
                            "Settings",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          )
                        : const Text("")
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: bottomBarS(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const Text(
                    "Doctors",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.info,
                        color: Colors.grey,
                      ))
                ],
              ),
            ),
            Row(
              children: [
                searchTextField(),
                const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.sort,
                    color: Colors.deepPurple,
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  circularDoctor(
                      "https://www.pinnaclecare.com/wp-content/uploads/2017/12/bigstock-African-young-doctor-portrait-28825394.jpg"),
                  circularDoctor(
                      "https://aawafi.com/uploads/partners/profile/doctor.jpg"),
                  circularDoctor(
                      "https://img.freepik.com/free-photo/portrait-smiling-handsome-male-doctor-man_171337-5055.jpg?size=626&ext=jpg"),
                  circularDoctor(
                      "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg"),
                  circularDoctor(
                      "https://biographymask.com/wp-content/uploads/2020/11/Dr-Mike-1200x1200.jpg"),
                  circularDoctor(
                      "https://image.shutterstock.com/image-photo/smiling-female-doctor-lab-coat-260nw-1473042992.jpg"),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: StaggeredGridView.countBuilder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                crossAxisCount: 4,
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) => cardof(
                    data[index]['name']!,
                    data[index]['major']!,
                    data[index]['reviews']!,
                    data[index]['image']!),
                staggeredTileBuilder: (int index) =>
                    StaggeredTile.count(2, index.isEven ? 2.7 : 2),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
