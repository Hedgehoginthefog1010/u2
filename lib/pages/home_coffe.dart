import 'package:flutter/material.dart';
import 'package:u2/until/coffe_tp.dart';
import 'package:u2/until/coffi_titl.dart';
class HomeCoff extends StatefulWidget{
  const HomeCoff({super.key});
  @override 
  State<HomeCoff> createState()=> _HomeCoffState();
}
class _HomeCoffState extends State<HomeCoff> {
  final List coffeType=[
  ['Капучино', false],
  ['Американо', false],
  ['Латте', true],
  ['Мокко', false],
  ];
  void CoftypeSelected(int index)
  {
    setState(() {
      for (int i=0; i<coffeType.length; i++)
        {
          coffeType[i][1]=false;
        }
      coffeType[index][1]=true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        leading: const Icon(Icons.menu_book),
        actions:  const [
          Padding(padding: EdgeInsets.only(right: 25.5),
            child: Icon(Icons.person_2, 
                color: Colors.deepPurple),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home_filled, color: Colors.deepPurple,),label:''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite, color: Colors.pink), label:''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_active, color: Colors.blueAccent), label:''),
      ],),
      body: Column(children: [
        Padding(padding: const EdgeInsets.symmetric( horizontal: 25.0),
        child: Text('Кофе для хорошего настроения',
        style: TextStyle(
          color: Colors.white10,
          fontSize:24,),
        ),
        ),
        const SizedBox(
          height: 25,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search,color: Colors.red,size: 15,),
              hintText: 'Как насчет булочки с ореховым кремом?',
              focusColor: Colors.pink.withOpacity(0.65),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.redAccent.shade700),),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink.shade800),
                ),
              )
            ),
          ),
          const SizedBox(
            height: 10,
        ),
        Container(
          height: 50,
          child: ListView.builder(scrollDirection: Axis.horizontal,
          itemCount: coffeType.length,
          itemBuilder: (context, index)
            {
              return CoffeTpp(
                  coffeType: coffeType[index][0],
                  isSelect: coffeType[index][1],
                onTap: () {
                  CoftypeSelected(index);},
              );
            },
          ),
        ),
        Expanded(child: ListView(
            scrollDirection: Axis.horizontal,
          children: const [
            CofTitle(
                coffeImagesPath:'assets/latte.jpg',
                coffeName:'Латте',
                coFeprice:'125',
            ),
              CofTitle(
        coffeImagesPath:'assets/capp.jpg',
         coffeName:'Капучино',
         coFeprice:'100',
              ),
            CofTitle(
              coffeImagesPath:'assets/mokko.jpg',
              coffeName:'Мокко',
              coFeprice:'85',
            ),
            CofTitle(
              coffeImagesPath:'assets/americano.jpg',
              coffeName:'Американо',
              coFeprice:'111',
            ),
          ],
        ),
        )
      ],
      ),
    );
  }
}