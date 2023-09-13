import 'package:flutter/material.dart';
class CofTitle extends StatelessWidget {
      final String coffeImagesPath;
      final String coffeName;
      final String coFeprice;
      const CofTitle(
      {required this.coffeImagesPath,
        required this.coffeName,
        required this.coFeprice,
        super.key});
    @override
    Widget build (BuildContext context) {
      return Padding(padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        width: 200,
        decoration: BoxDecoration(
          borderRadius:  BorderRadius.circular(12),
          color: Colors.deepPurple,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 200,
                height: 150,
                child: FittedBox(
                  fit: BoxFit.fill, child: Image.asset(coffeImagesPath),
                ),

              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(coffeName,
                  style: const TextStyle(
                    fontSize: 20),
                  ) ],
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Добавить молока',
                  style: TextStyle(
                    color: Colors.orange.withOpacity(0.75)
                  ),
                )
              )
              )

          ],
        ),
      ),);
    }


}







