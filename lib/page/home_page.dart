import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Cars', style: TextStyle(
          color: Colors.red, fontSize: 25,
        ),),
        actions: const [
          Icon(Icons.notifications_outlined, color: Colors.red, size: 25,),
          SizedBox(width: 20,),
          Icon(Icons.shopping_cart, color: Colors.red, size: 25,),
          SizedBox(width: 10,),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, 'All'),
                    singleTab(false, 'Red'),
                    singleTab(false, 'Blue'),
                    singleTab(false, 'Green'),
                    singleTab(false, 'Yellow'),
                    singleTab(false, 'Black'),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              makeItem('assets/images/image_1.png'),
              makeItem('assets/images/image_2.png'),
              makeItem('assets/images/image_3.png'),
              makeItem('assets/images/image_4.png'),
            ],
          ),
        ),
      ),
    );
  }
  Widget singleTab( bool type, String text){
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(text, style: TextStyle(
            fontSize: type? 20 : 17,
          ),),
        ),
      ),
    );
  }

  Widget makeItem(String image){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 10,
              offset: const Offset(0,10),
            ),
          ]
      ),
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.2),
                ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const[
                      Text('PDP Car', style: TextStyle(
                          color: Colors.white, fontSize: 30,
                          fontWeight: FontWeight.w600
                      ),),
                      SizedBox(width: 10,),
                      Text('Electric', style: TextStyle(
                          color: Colors.red, fontSize: 22,
                          fontWeight: FontWeight.w600
                      ),),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  const Text('100\$', style:  TextStyle(
                      color: Colors.white, fontSize: 30,
                      fontWeight: FontWeight.w600
                  ),),
                ],
              ),


              Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: const Center(
                  child: Icon(Icons.favorite_border_outlined, color: Colors.white,),
                ),
              )
            ],
          )
      ),
    );
  }
}