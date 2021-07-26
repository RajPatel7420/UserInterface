
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';

class DiscoverySection extends StatefulWidget {
  const DiscoverySection({Key key}) : super(key: key);

  @override
  _DiscoverySectionState createState() => _DiscoverySectionState();
}

class _DiscoverySectionState extends State<DiscoverySection> {
  List<String> imageList = [
    'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg',
    'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
    'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
    'https://cdn.pixabay.com/photo/2019/11/05/00/53/cellular-4602489_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/02/06/20/01/university-library-4825366_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Padding(
                padding: const EdgeInsets.only(top: 76.0, left: 16),
                child: Text(
                  'Discover',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'What’s new today',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network('https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c='),
                    Padding(
                      padding: const EdgeInsets.only(top:16.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 28 / 2,
                            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=976&q=80'),
                          ),
                          SizedBox(width: 8,),
                          Column( crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Raj Patel',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '@rajpatel_17',
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 48,),
              Padding(
                padding: const EdgeInsets.only(left:16.0),
                child: Text('Browse all',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
              ),
              Flexible(
                child: Container(
                margin: EdgeInsets.all(16),
                child: StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    itemCount: imageList.length,
                    mainAxisSpacing: 12,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                          // borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: imageList[index],
                            fit: BoxFit.cover,
                          ));
                    },
                    staggeredTileBuilder: (index) {
                      return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
                    }),
              ),
                )
          ],
        ),
            )),
      ),
    );
  }
}
