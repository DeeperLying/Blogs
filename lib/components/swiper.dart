import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _SwiperViewState();
  }
}
class _SwiperViewState extends State<SwiperView> {
  List<Widget> imageList = [
    Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2726034926,4129010873&fm=26&gp=0.jpg', fit: BoxFit.cover,),
    Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2726034926,4129010873&fm=26&gp=0.jpg', fit: BoxFit.cover,),
    Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2726034926,4129010873&fm=26&gp=0.jpg', fit: BoxFit.cover,),
    Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2726034926,4129010873&fm=26&gp=0.jpg', fit: BoxFit.cover,),
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return firstSwiperView();
  }

  Widget firstSwiperView() {
    final size =MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    final swiperHeight = width / 16 * 9;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: swiperHeight,
      child: Swiper(
        itemCount: 4,
        itemBuilder: _swiperBuilder,
        pagination: new SwiperPagination(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.fromLTRB(0, 0, 20, 10),
            builder: DotSwiperPaginationBuilder(
                color: Colors.black54,
                activeColor: Colors.white
            )
        ),
        controller: SwiperController(),
        scrollDirection: Axis.horizontal,
        autoplay: true,
        onTap: (index) {
          print('点击了第$index');
        },
      ),
    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return (imageList[index]);
  }

}