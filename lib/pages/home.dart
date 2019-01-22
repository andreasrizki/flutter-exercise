import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_kudo_clone/variables.dart' as variable;

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _keyDrawer = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _keyDrawer,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: variable.colorPrimaryBlue,
        leading: IconButton(
          onPressed: () => _keyDrawer.currentState.openDrawer(),
          icon: Icon(Icons.person),
        ),
        title: SvgPicture.asset(
          "images/kudo.svg",
          semanticsLabel: 'Kudo Logo',
          width: 80.0,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[

            Container(
              padding: EdgeInsets.all(16.0),
              color: variable.colorPrimaryBlue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Total Saldo Deposit", style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  Text("Rp99.999.999", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white))
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0, bottom: 16.0),
              color: variable.colorPrimaryBlue,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                shrinkWrap: true,
                children: <Widget>[
                  
                  BtnIcon(
                    icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 14.0,
                    bgRound: true,
                    onPressed: (){},
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    text: "Rekam Transaksi"
                  ),
                  BtnIcon(
                    icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 14.0,
                    bgRound: true,
                    onPressed: (){},
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    text: "Rekam Komisi"
                  ),
                  BtnIcon(
                    icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 14.0,
                    bgRound: true,
                    onPressed: (){},
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    text: "Tambah Saldo"
                  )

                ],
              )
            ),

            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Promo",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Penawaran terseru dari Kudo",
                      style: TextStyle(
                        fontSize: 16.0
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 300.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: FadeInImage.assetNetwork(
                      placeholder: "images/loading.gif",
                      image: "https://kudo.co.id/blog/wp-content/uploads/2018/12/CALM-CR-Nov-Bonus-Akhir-Tahun-Komisi-100rb-Inbox-Blog-533x300.png",
                    )
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: FadeInImage.assetNetwork(
                      placeholder: "images/loading.gif",
                      image: "https://kudo.co.id/blog/wp-content/uploads/2018/12/CALM-CR-Nov-Bonus-Akhir-Tahun-Komisi-100rb-Inbox-Blog-533x300.png",
                    )
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: FadeInImage.assetNetwork(
                      placeholder: "images/loading.gif",
                      image: "https://kudo.co.id/blog/wp-content/uploads/2018/12/CALM-CR-Nov-Bonus-Akhir-Tahun-Komisi-100rb-Inbox-Blog-533x300.png",
                    )
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: FadeInImage.assetNetwork(
                      placeholder: "images/loading.gif",
                      image: "https://kudo.co.id/blog/wp-content/uploads/2018/12/CALM-CR-Nov-Bonus-Akhir-Tahun-Komisi-100rb-Inbox-Blog-533x300.png",
                    )
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: FadeInImage.assetNetwork(
                      placeholder: "images/loading.gif",
                      image: "https://kudo.co.id/blog/wp-content/uploads/2018/12/CALM-CR-Nov-Bonus-Akhir-Tahun-Komisi-100rb-Inbox-Blog-533x300.png",
                    )
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: 
              BoxCard(
                title: "Bayar Tagihan",
                subtitle: "Tagihan apa aja, semua ada!",
                btnIcons: <Widget>[
                  BtnIcon(icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 13.0,
                    onPressed: (){},
                    fontWeight: FontWeight.normal,
                    text: "PLN Pascabayar"),
                  BtnIcon(icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 13.0,
                    onPressed: (){},
                    fontWeight: FontWeight.normal,
                    text: "PDAM"),
                  BtnIcon(icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 13.0,
                    onPressed: (){},
                    fontWeight: FontWeight.normal,
                    text: "Telepon Rumah"),
                  BtnIcon(icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 13.0,
                    onPressed: (){},
                    fontWeight: FontWeight.normal,
                    text: "Telkomsel Halo"),
                  BtnIcon(icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 13.0,
                    onPressed: (){},
                    fontWeight: FontWeight.normal,
                    text: "Asuransi"),
                  BtnIcon(icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 13.0,
                    onPressed: (){},
                    fontWeight: FontWeight.normal,
                    text: "BPJS"),
                  BtnIcon(icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 13.0,
                    onPressed: (){},
                    fontWeight: FontWeight.normal,
                    text: "Multifinance")
                ],
              )
            ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: BoxCard(
                title: "Isi Ulang",
                subtitle: "Harga murah, keuntungan melimpah!",
                btnIcons: <Widget>[
                  BtnIcon(icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 13.0,
                    onPressed: (){},
                    fontWeight: FontWeight.normal,
                    text: "Pulsa dan Paket Data"),
                  BtnIcon(icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 13.0,
                    onPressed: (){},
                    fontWeight: FontWeight.normal,
                    text: "Token PLN"),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: BoxCard(
                title: "Produk Online",
                subtitle: "Cari produk apa aja di Kudo",
                btnIcons: <Widget>[
                  BtnIcon(icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 13.0,
                    onPressed: (){},
                    fontWeight: FontWeight.normal,
                    text: "Barang Elektronik"),
                  BtnIcon(icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 13.0,
                    onPressed: (){},
                    fontWeight: FontWeight.normal,
                    text: "Kartu Perdana dan Kartu E.."),
                  BtnIcon(icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 13.0,
                    onPressed: (){},
                    fontWeight: FontWeight.normal,
                    text: "Supermarket"),
                  BtnIcon(icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 13.0,
                    onPressed: (){},
                    fontWeight: FontWeight.normal,
                    text: "Rumah Tangga"),
                  BtnIcon(icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 13.0,
                    onPressed: (){},
                    fontWeight: FontWeight.normal,
                    text: "Sehat Cantik"),
                  BtnIcon(icon: Icons.image,
                    fontSize: defaultTargetPlatform == TargetPlatform.android ? 16.0 : 13.0,
                    onPressed: (){},
                    fontWeight: FontWeight.normal,
                    text: "Voucher Game"),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

class BtnIcon extends StatelessWidget {
  IconData icon;
  String text;
  Color color;
  FontWeight fontWeight;
  bool bgRound = false;
  double fontSize;
  final VoidCallback onPressed; 

  BtnIcon({@required this.icon,@required this.text, this.color, this.fontWeight, this.onPressed, this.bgRound = false, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onPressed,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            bgRound ? Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: variable.colorPrimaryBlueDark
              ),
              child: Icon(this.icon, color: this.color),
            ) : Container(
              padding: EdgeInsets.all(10.0),
              child: Icon(this.icon, color: this.color),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                this.text, 
                style: TextStyle(
                  fontSize: this.fontSize,
                  color: this.color,
                  fontWeight: this.fontWeight
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            )

          ],
        ),
      )
    );
  }
}

class BoxCard extends StatelessWidget {
  String title;
  String subtitle;
  List<Widget> btnIcons = const <Widget>[];

  BoxCard({@required this.title,@required this.subtitle, this.btnIcons});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround, 
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 16.0, left: 16.0),
              child: Text(this.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0), textAlign: TextAlign.left),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 16.0),
              child: Text(this.subtitle, style: TextStyle(fontSize: 16.0), textAlign: TextAlign.left),
            ),
          ),
          Container(
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              shrinkWrap: true,
              mainAxisSpacing: 20.0,
              padding: EdgeInsets.all(10.0),
              children: this.btnIcons,
              childAspectRatio: 0.9,
            ),
          ),
          SizedBox(
            height: 0.0,
          )
        ],
      ),
    );
  }
}