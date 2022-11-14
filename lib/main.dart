import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Midterm'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
                                    label: 'Home',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm),
                                    label: 'Alarm',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.business),
                                    label: 'Business',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
                                    label: 'School',
                                    ),
          ],
          onTap: (index) { setState(() {
                                       _currentindex=index;
                                       if (index!=0) {
                                         player.stop();
                                       }
                         });
        },
      ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='我是陳柏翰，我來自台南'
                  '從小我生長在一個民主開放的家'
                  '庭，爸媽都是從事製鋁罐的工作'
                  '因為在成長的環境中並不富裕，'
                  '爸爸常常修理家裡壞掉的家電，'
                  '我因為好奇常常細心觀察對於修'
                  '理家電任何細節，培養了我看到'
                  '壞掉的家電會去研究它的原理去'
                  '修好他，期望能成家中的翹楚。';



  @override
  Widget build(BuildContext context) {

    player.play(AssetSource("Free_Test_Data_1MB_MP3.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Who am I",
                style: TextStyle(fontSize:30,
                  fontWeight:FontWeight.bold,)),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.blue,
                  offset: Offset(5, 5)),
              ],),
            child:Text(s1,
              style: TextStyle(fontSize: 20),),
          ),

          //放一張照片
          Container(

            color: Colors.white,
            child: Image.asset('images/f1.jpg'),
            height: 600,
            width: 600,
          ),
          SizedBox(height: 30,),

          //一列放兩個圖
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Container(
          //       width: 150,
          //       height: 150,
          //       decoration: BoxDecoration(
          //         border: Border.all(
          //           width: 2,
          //           color: Colors.purple,
          //           style: BorderStyle.solid,
          //         ),
          //         borderRadius: BorderRadius.circular(30),
          //         image: DecorationImage(
          //           image: AssetImage('images/f1.jpg'),
          //           fit: BoxFit.cover ,
          //         ),
          //         color: Colors.white,
          //       ),
          //     ),
          //     Container(
          //       width: 150,
          //       height: 150,
          //       decoration: BoxDecoration(
          //         border: Border.all(
          //           width: 2,
          //           color: Colors.purple,
          //           style: BorderStyle.solid,
          //         ),
          //         borderRadius: BorderRadius.circular(30),
          //         image: DecorationImage(
          //           image: AssetImage('images/f1.jpg'),
          //           fit: BoxFit.cover ,
          //         ),
          //         color: Colors.white,
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  final String s2='新營高工->高科';

  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("m1.mp3"));

    return Container(
      child: Column(
          children:<Widget>[
      //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
             child: Text("學習歷程",
              style: TextStyle(fontSize:30,
                fontWeight:FontWeight.bold,)),
          ),
    //文字自傳部份
          Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
              decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.blue,
              offset: Offset(5, 5)),
              ],),
              child:Text(s2,
              style: TextStyle(fontSize: 30),),
          ),
            //一列放兩個圖
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.purple,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('images/f2.jpg'),
                      fit: BoxFit.cover ,
                    ),
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.purple,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('images/f3.jpg'),
                      fit: BoxFit.cover ,
                    ),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
       ),
    );
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("m2.mp3"));
    return SingleChildScrollView(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大一時期",style: TextStyle(fontSize: 25),),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 200,
                    width: 200,
                  child: ListView(
                    children: [
                      //條列式參考
                      Text('1. 學好英文',style: TextStyle(fontSize: 25),),
                      Text('2. 精進寫程式能力',style: TextStyle(fontSize: 25),),
                      Text('3. 認識更多朋友',style: TextStyle(fontSize: 25),),
                      Text('4. 學習獨立',style: TextStyle(fontSize: 25),),
                    ],
                  ),
                ),
              ],),
          Row( mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大二時期",style: TextStyle(fontSize: 25),),],),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 聽一些冷知識演講',style: TextStyle(fontSize: 25),),
                    Text('2. 學習linux',style: TextStyle(fontSize: 25),),
                    Text('3. 考取證照',style: TextStyle(fontSize: 25),),
                    Text('4. 學習java',style: TextStyle(fontSize: 25),),
                  ],
                ),
              ),
            ],),
          Row( mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大三時期",style: TextStyle(fontSize: 25),),],),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 擴充自己的國際觀',style: TextStyle(fontSize: 25),),
                    Text('2. 專業技能更求精進',style: TextStyle(fontSize: 25),),
                    Text('3. 參加一些學藝性社團，拓展人際關係',style: TextStyle(fontSize: 25),),
                    Text('4. 專題製作',style: TextStyle(fontSize: 25),),
                  ],
                ),
              ),
            ],),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大四時期",style: TextStyle(fontSize: 25),),],),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 訂出未來的發展方向',style: TextStyle(fontSize: 25),),
                    Text('2. 考取證照讓出社會能夠更好找工作',style: TextStyle(fontSize: 25),),
                    Text('3. 實習',style: TextStyle(fontSize: 25),),
                    Text('4. 可以畢業',style: TextStyle(fontSize: 25),),
                  ],
                ),
              ),
            ],),
        ],
      ),);
  }
}

class screen4 extends StatelessWidget {
  String s3="油價查詢系統";
  String s4="透過這個程式，可以即時查詢油價資訊，透過圖表讓使用者更簡單明瞭。";
  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("m3.mp3"));
    return SingleChildScrollView(
        child: Column(
        children:<Widget>[
    //先放個標題
        Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
    child: Text("專題方向",
    style: TextStyle(fontSize:30,
    fontWeight:FontWeight.bold,)),
    ),

    Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
        decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [ BoxShadow(color: Colors.blue,
        offset: Offset(5, 5)),
        ],),
        child:Text(s3,
        style: TextStyle(fontSize: 30),),
    ),
    Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [ BoxShadow(color: Colors.blue,
            offset: Offset(5, 5)),
        ],),
      child:Text(s4,
        style: TextStyle(fontSize: 30),),
    ),
    Container(

      color: Colors.white,
      child: Image.asset('images/f4.jpg'),
      height: 600,
      width: 600,
    ),
    ],
    ),
    );
  }
}
