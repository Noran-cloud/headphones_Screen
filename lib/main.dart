import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ),
  );
}
//color: const Color.fromARGB(255, 230, 167, 188)
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int selectedImageIndex = 0;
int selectedColorIndex = 0;

List<Color> colorOptions = [Colors.black, Colors.white, const Color.fromARGB(255, 225, 190, 231)];

   List<String> SelectedColor = black_headphones;

  const List<String> black_headphones = [
    'images/black_headphone1.png',
    'images/black_headphone2.png',
    'images/black_headphone3.png',
    'images/black_headphone4.png',
  ]; 
 const  List<String> white_headphones = [
    'images/white_headphone2.png',
    'images/white_headphone1.png',
    'images/white_headphone3.png',
    'images/white_headphone4.png',
  ]; 
  const List<String> lavender_headphones = [
    'images/lavender_headphone1.png',
    'images/lavender_headphone2.png',
    'images/lavender_headphone3.png',
    'images/lavender_headphone4.png',
  ]; 

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
   // var onPressed;
    return Scaffold(
          backgroundColor: Colors.pink,
          body: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              ),
              child: Column( 
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Column(  mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(SelectedColor.length, (index) =>
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedImageIndex = index;
                                });
                              },
                              child: options(SelectedColor[index], index == selectedImageIndex),
                            ),),
                            ),
                             Expanded(
                                 child: Container( 
                                  height: 500.0,
                                  color: const Color.fromARGB(255, 241, 196, 211), 
                                  child: 
                                 Image.asset(SelectedColor[selectedImageIndex],fit: BoxFit.contain,),
                             ),),
                          ],
                        ),
                        Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              child: IconButton(
                                icon: const Icon(Icons.arrow_back),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            Positioned(
                              right: 0,
                              child: IconButton(
                                icon: const Icon(Icons.favorite_border),
                                onPressed: () {},
                                color: Colors.grey.shade800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Sony WH-1000XM4',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                        color: Colors.black,
                      ),
                      ),
                      SizedBox(width: 60.0,),
                      Container(
                        decoration: BoxDecoration(
                        border: Border.all(
                          color:  Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.star_outlined,color: Colors.yellowAccent,),
                              Text('4.9',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text('Wireless Over-ear Industry Leading Noise Canceling\nHeadphones with Microphone',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w700
                  ),
                  ),
                  SizedBox(height: 40.0,),
                  ListTile(
                    leading: Icon(Icons.list_alt_outlined,color: Colors.pinkAccent,size: 30.0,),
                    title: Text('Product Specifications',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21.0),),
                    trailing: Icon(Icons.chevron_right_sharp,color: Colors.black,size: 30.0,),
                  ),
                  ListTile(
                    leading: Icon(Icons.color_lens_outlined,color:  Colors.pinkAccent,size: 30.0,),
                    title: Text('Colors',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21.0),),
                    trailing: Wrap( 
                     // spacing: 20.0,
                      children:  List.generate(colorOptions.length, (index) =>
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedColorIndex = index;
                              selectedImageIndex = 0;
                              Color selected = colorOptions[index];
                              if (selected == Colors.white) {
                                SelectedColor = white_headphones;
                              } else if (selected == Colors.black) {
                                  SelectedColor = black_headphones;
                              } else if (selected == const Color.fromARGB(255, 225, 190, 231)) {
                                SelectedColor = lavender_headphones;
                              }
                            });},
                            child:  Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: AvailableColors(
                               colorOptions[index],
                               index == selectedColorIndex,
                            ),),),)
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center, height: 55.0, width: 110.0,
                        decoration: BoxDecoration(
                        color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(12),
                      ),
                        child: RichText(text: TextSpan(
                         children: [
                            TextSpan(
                              text: '\$349.',
                              style: TextStyle(
                                fontSize: 23.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: '99',
                              style: TextStyle(
                                fontSize: 23.0,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 95, 94, 94),
                              ),
                            ),
                          ],
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        padding:
                            const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                                            ),
                         child: 
                                Row(
                                  children: [
                                    Text('Add To Cart ', style: TextStyle(color: const Color.fromARGB(255, 252, 241, 241), fontWeight: FontWeight.bold,fontSize: 22.0),),
                                    Icon(Icons.chevron_right,color: const Color.fromARGB(255, 252, 241, 241),size: 30.0,)
                                  ],
                                )
                        
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
    );
  }
}

Widget options (String img,bool selected){
return Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
            color: Colors.white,
          border: Border.all(
            color: selected ? Colors.pinkAccent : Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(12),
          ),
            child:ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          //SelectedColor[index],
          img,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),),),
);
}

Widget AvailableColors(Color color,bool selected){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
            width: 25.0,
            height: 25.0,
            decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: selected ? Border.all(color: Colors.pinkAccent, width: 2) : Border.all(color: Colors.grey, width: 2),    
        ),
        
    ),
  );
}
