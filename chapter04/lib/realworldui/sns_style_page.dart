import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class Banner {
  String text1;
  Color text1Color;
  String text2;
  Color text2Color;
  String text3;
  Color text3color;
  String imageUrl;
  Color color;

  Banner(
      {this.text1,
      this.text1Color = Colors.black,
      this.text2,
      this.text2Color = Colors.black,
      this.text3,
      this.text3color = Colors.black,
      this.imageUrl,
      this.color});
}

class SnsStylePage extends StatefulWidget {
  @override
  _SnsStylePageState createState() => _SnsStylePageState();
}

class _SnsStylePageState extends State<SnsStylePage> {
  final banners = [
    Banner(
        text1: '그러게 일찍 좀',
        text1Color: Colors.white,
        text2: '일어나지 그랬어',
        text2Color: Colors.white,
        text3: '기왕 늦은거 편하게 택시타고 가자',
        imageUrl:
            'http://mblogthumb4.phinf.naver.net/20160902_175/2hhhyung_1472798198328vmY7R_PNG/%B6%F3%C0%CC%BE%F0%BF%CF%BC%BA.png?type=w2',
        color: Colors.lightGreen),
    Banner(
        text1: '현대백화점에',
        text1Color: Colors.white,
        text2: '주차시 추석선물!',
        text2Color: Colors.white,
        text3: '카카오 T 주차 오픈기념, 풍성하게 드려요',
        text3color: Colors.yellow,
        imageUrl:
            'https://i.pinimg.com/originals/61/01/37/610137d11c814c791c54dc54401105e0.png',
        color: Colors.indigo),
    Banner(
        text1: '당신의 이동을',
        text2: '연구합니다',
        text3: '모빌리티 리포트가 궁금하다면?',
        imageUrl: 'http://luvdn.com/img/3.png',
        color: Colors.yellow),
    Banner(
        text1: '카카오 T 태그하고',
        text2: '자라섬가자!',
        text3: '#티켓이벤트 #놀때도_카카오T',
        imageUrl:
            'https://item.kakaocdn.net/do/0c5c40cbd5d25d9776294fbe3c618424617ea012db208c18f6e83b1a90a7baa7',
        color: Colors.yellow),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, // 뒤로가기 아이콘 색
        ),
        centerTitle: true,
        // 제목을 가운데로 위치
        backgroundColor: Colors.white,
        title: Text(
          'Sns 스타일',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/realworldui/sns_style_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  var _selectedTabIndex = 0;

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedTabIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: '이용서비스',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: '내 정보',
        ),
      ],
      onTap: (index) {
        setState(() {
          _selectedTabIndex = index;
        });
      },
    );
  }

  Widget _buildBody() {
    if (_selectedTabIndex == 1) {
      return SecondPage();
    } else if (_selectedTabIndex == 2) {
      return ThirdPage();
    }
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildItem(
                'https://img.icons8.com/cotton/64/000000/taxi.png', '택시'),
            _buildItem(
                'https://img.icons8.com/cotton/64/000000/taxi.png', '블랙'),
            _buildItem(
                'https://img.icons8.com/cotton/64/000000/taxi.png', '바이크'),
            _buildItem(
                'https://img.icons8.com/cotton/64/000000/taxi.png', '대리'),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildItem(
                'https://img.icons8.com/cotton/64/000000/taxi.png', '주차'),
            _buildItem(
                'https://img.icons8.com/cotton/64/000000/taxi.png', '카풀'),
            _buildItem(
                'https://img.icons8.com/cotton/64/000000/taxi.png', '내비'),
            Opacity(
              child: _buildItem(
                  'https://img.icons8.com/cotton/64/000000/taxi.png', '내비'),
              opacity: 0,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        _buildAds(),
        Divider(),
        ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          // ListView 안의 ListView의 스크롤 기능 중지
          children: List<int>.generate(10, (i) => i).map((i) {
            return ListTile(
              leading: Icon(Icons.notifications_none),
              title: Text('[이벤트] 추석에 KTX공항, 터미널 이용한다면?'),
            );
          }).toList(),
        ),
      ],
    );
  }

  int _current = 0;

  Widget _buildItem(String url, String title) {
    return Column(
      children: <Widget>[
        Image.network(
          url,
          width: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(title),
      ],
    );
  }

  Widget _buildAds() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 150,
              viewportFraction: 1.0,
              autoPlay: true,
              onPageChanged: (index, _) {
                setState(() {
                  _current = index;
                });
              },
            ),
            items: banners.map((banner) => CardBanner(banner: banner)).toList(),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<int>.generate(4, (i) => i).map((i) {
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == i
                          ? Colors.white
                          : Color.fromRGBO(0, 0, 0, 0.4)),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('이용서비스'),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('내 정보'),
    );
  }
}

class CardBanner extends StatelessWidget {
  final Banner banner;

  CardBanner({Key key, this.banner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildBanner(banner);
  }

  Widget _buildBanner(Banner banner) {
    return Card(
      color: banner.color,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    banner.text1,
                    style: TextStyle(fontSize: 22, color: banner.text1Color),
                  ),
                  Text(
                    banner.text2,
                    style: TextStyle(fontSize: 22, color: banner.text2Color),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    banner.text3,
                    style: TextStyle(fontSize: 12, color: banner.text3color),
                  ),
                ],
              ),
            ),
            Image.network(banner.imageUrl),
          ],
        ),
      ),
    );
  }
}
