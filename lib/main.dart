import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// 홈 페이지

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'https://geojecci.korcham.net/images/no-image01.gif',
      'https://geojecci.korcham.net/images/no-image01.gif',
      'https://teamsparta.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fb9308949-ab1a-4a06-8258-f1b6f60cce90%2FEBE8BF9D-5BD7-4AD4-8FC4-84157068BC52.jpeg?id=26769fd9-5881-44f4-90fb-84c279204552&table=block&spaceId=83c75a39-3aba-4ba4-a792-7aefe4b07895&width=1310&userId=&cache=v2',
      'https://geojecci.korcham.net/images/no-image01.gif',
      'https://geojecci.korcham.net/images/no-image01.gif',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("E1I4(이하나와 아이들)"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.separated(
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Feed();
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      ),
    );
  }
}

class Feed extends StatelessWidget {
  const Feed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10), // 사진 테두리 둥글게
          child: Image.network(
            'https://geojecci.korcham.net/images/no-image01.gif', // 이미지 없는 경우
            width: 130,
            height: 130,
            fit: BoxFit.cover, // 위에 가로세로(Box)에 맞춤, 나머지 자르기
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '한동연',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                softWrap: false,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'INTP',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
                softWrap: false,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                '공부는 마라톤',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
                softWrap: false,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Spacer(),
                  Text(
                    '팀장',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
