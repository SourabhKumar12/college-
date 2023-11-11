import 'package:flutter/material.dart';
import 'package:college/models/QnA_list.dart';
import 'package:college/College_discription.dart';

class HomePage extends StatelessWidget {
  List catNames = [
    "Ask a question",
    "College",
    "Exams",
    "Preadictors",
    "Comparison",
    "College Ranks",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 51, 104, 131),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search for college",
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 25,
                        )),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi Sourabh!',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Quick Links',
                    style: TextStyle(fontSize: 23, color: Colors.blueGrey),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromARGB(255, 165, 196, 111)
                              .withOpacity(0.5),
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/image${index + 1}.png',
                            height: 60,
                          ),
                          Text(
                            catNames[index],
                          )
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'QnA',
                      style: TextStyle(fontSize: 22, color: Colors.blueGrey),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Discription()));
                      },
                      child: Text(
                        'View all >',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 90, 144, 171)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: textList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        width: 300,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 193, 185, 185),
                              width: 2),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Discription(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(child: Text(textList[index].text)),
                          ),
                        ),
                      );
                    },
                  ),
                ),

             

                SizedBox(
                  height: 490,
                  width: 800,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,

                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, 

                      crossAxisSpacing: 10.0,

                      mainAxisSpacing: 10.0,
                    ),

                    itemCount: 6, 
                    shrinkWrap: true,

                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Discription()));
                        },
                        child: Container(
                      
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color.fromARGB(255, 165, 196, 111)
                                  .withOpacity(0.5),
                              width: 2,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'images/cgp${index + 1}.png', 
                      
                                  fit: BoxFit.cover,
                                  height: 160,
                                  width: 250,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(UniversitiesList[index].name),
                              ),
                              const Padding(
                                padding:  EdgeInsets.only(left: 8),
                                child: Text('Total Fees Range'),
                              ),
                              Padding(
                                padding:  const EdgeInsets.only(left: 8),
                                child: Text('\$${UniversitiesList[index].price}Lakhs'),
                              ),
                              
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
