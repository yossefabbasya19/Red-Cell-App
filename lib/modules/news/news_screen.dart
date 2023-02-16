import 'package:flutter/material.dart';
import 'package:red_cell_app/modules/news/news_search.dart';
import 'package:red_cell_app/modules/news/tabs_news.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 37,
            ),
            Stack(
              children:  [
                Image(image: AssetImage("assets/images/Group 1106.png")),
                Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Row(
                    children: [
                      Text(
                        "News",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      IconButton(onPressed: (){
                        showSearch(context: context, delegate: NewsSearch());
                      }, icon: Icon(Icons.search,size: 30,color: Colors.white,))
                    ],
                  ),

                ),


              ],
            ),
            Expanded(child: TabsNews()),

          ],
        ),
      ),
    );
  }
}
