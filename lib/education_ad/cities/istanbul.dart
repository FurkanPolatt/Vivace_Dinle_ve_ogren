import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Istanbul());
}

class Istanbul extends StatelessWidget {
  const Istanbul({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var titleList = [
    "Sağlık Müzik",
  ];

  var descList = [
    '''Verilen Kurslar: Gitar eğitimi,Piyano eğitimi 
    
       Eğitmen: Firdevs Birinci 
       
       Adres: Mehmet Akif Ersoy Mahallesi Kartal Sokak No: 7/2 İstanbul
       
       İletişim: 0555 555 555''',
  ];

  var imgList = [
    "assets/logo/sağlık_logo.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kurslar",
          style: TextStyle(color: Colors.black54),
        ),
        elevation: 2,
        backgroundColor: Colors.white54,
      ),
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialogFunc(
                  context, imgList[index], titleList[index], descList[index]);
            },
            child: FadeInRight(
              delay: Duration(microseconds: 200),
              child: Material(
                elevation: 10,
                child: Card(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(imgList[index]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              titleList[index],
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: width,
                              child: Text(
                                descList[index],
                                maxLines: 3,
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey[500]),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

showDialogFunc(context, img, title, desc) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white70,
            ),
            padding: EdgeInsets.all(15),
            height: 400,
            width: MediaQuery.of(context).size.width * 0.7,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      img,
                      width: 200,
                      height: 200,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      desc,
                      maxLines: 10,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
