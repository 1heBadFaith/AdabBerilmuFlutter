import 'package:flutter/material.dart';



void main() => runApp(MyApp());



class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      theme: ThemeData(

          primarySwatch: Colors.purple,

          primaryColor: Colors.purple,

          canvasColor: Colors.purpleAccent,

          appBarTheme: AppBarTheme(color: Colors.purple, elevation: 0)),

      home: HomeUtama(),

    );

  }

}



class HomeUtama extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        centerTitle: true,

        title: Text('Panduan Tayamum'),

        actions: <Widget>[

          IconButton(icon: Icon(Icons.info_outline)

              , onPressed: () {



                AlertDialog(

                  title: Text('Tentang Saya'),

                  content: new Column(

                    mainAxisSize: MainAxisSize.min,

                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[

                      _buildAboutMe()

                    ],

                  ),

                  actions: <Widget>[

                    new FlatButton(

                        onPressed: (){

                          Navigator.of(context);

                        },

                        child: const Text('Close'))

                  ],

                );

              }),

          SizedBox(

            width: 20.0,

          ),

        ],

      ),



      body: PageView(

        children: <Widget>[

          kriteriaItem('Adab ke-1, fokus dalam mempelajari fan atau kitab tertentu',

              'https://storage.nu.or.id/storage/post/16_9/big/15455695215c1f84f1545a6.jpg',

              'Hendaknya saat masih pemula, tidak menyibukan diri dalam ilmu ikhtilaf di antara ulama, baik yang berkaitan dengan dalil aqli (logika) dan naqli (Al-Quran dan hadits). Sungguh hal demikian dapat mengganggu pikiran dan konsentrasi.'),



          kriteriaItem('Adab ke-2, membenarkan bacaannya sebelum dihafal',

              'https://www.lucalampariello.com/wp-content/uploads/2018/12/extensive-intensive-reading.jpg'

              , 'Sebelum pelajaran dihafalkan, terlebih dahulu bacaannya dibetulkan, ditashih di hadapan guru atau orang lain yang berkompeten. Jangan sampai menghafalkan sebelum dibenarkan bacaannya, sebab dapat mengakibatkan tahrif (perubahan).'),



          kriteriaItem('Adab ke-3, bergegas mendengarkan ilmu'

              , 'https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/249/249285/hearing-loss-man.jpg'

              , 'Hendaknya bergegas untuk mendengarkan pesan ilmu, utamanya ilmu hadits. Jangan sampai mengabaikan hadits dengan segala hal yang berkaitan dengannya, meliputi riwayat, sanad, mushtalah, sejarah, lughat hadits, hukum-hukum yang tertuang dalam hadits dan lain-lain.'),



          kriteriaItem('Adab ke-4, mengembangkan ilmu',

              'https://www.fluentin3months.com/wp-content/uploads/2016/11/older-and-wiser.jpg',

              'Masa-masa keemasan hendaknya dimanfaatkan dengan baik. Jangan menunggu tua dalam belajar. Saat masih muda, pelajar semangatnya masih meyala-nyala dan lebih bertenaga. Sebelum banyak rintangan, pelajar harus mengerahkan segala upaya dan potensinya untuk belajar.'),





        ],

      ),

    );

  }

}



Widget kriteriaItem(String judul, String gambar ,String detail) {

  return Container(

    child: ListView(

      children: <Widget>[

        Image(

          image: NetworkImage(gambar),

          height: 300.0,

          fit: BoxFit.cover,),



        SizedBox(

          height: 20.0,

        ),//SizedBox



        Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),

          child: Text(judul,

              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),



        ),//Padding







        Padding(

          padding: const EdgeInsets.symmetric(horizontal: 16.0),

          child: Text(detail,

            style: TextStyle(fontSize: 20.0),

            textAlign: TextAlign.justify,),

        )

      ],

    ),

  );

}



Widget _buildAboutMe() {

  return new RichText(

      text: new TextSpan(

          text: 'Hai Perkenalkan Nama Saya Muhammad Azhar najib dan saya tinggal di depok, saya lahir tanggal 18 Oktober 2005',

          style: const TextStyle(color: Colors.black),

          children: <TextSpan>[

            const TextSpan(text: 'dan juga azhar memiliki beberapa hobi yang agak aneh')

          ]

      ));

}



void openNewSreen(BuildContext context, Widget screen) {

  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));

}
