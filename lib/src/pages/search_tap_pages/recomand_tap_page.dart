import 'package:dinner_table/src/components/search_tap_component.dart';
import 'package:flutter/material.dart';

class RecomandTapPage extends StatelessWidget {
  const RecomandTapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SearchTapComponent(
            category: '밥 메뉴',
            description:
                '가장 기본적인 메뉴입니다. 아무래도 한국인은 밥심, 그 밥심은 반찬들이 잘 차려진 평범한 식사라고 할 수 있겠죠?',
            thumbnail:
                'https://us.123rf.com/450wm/rdesign0209/rdesign02091906/rdesign0209190600213/126402960-%EB%B3%B6%EC%9D%8C%EB%B0%A5.jpg?ver=6',
            examples: '#비빔밥 #볶음밥 #덮밥 #카레라이스..',
          ),
          SearchTapComponent(
            category: '국, 탕, 찌개 메뉴',
            description:
                '저렴한 가격에 밥 한 그릇을 해결할 수 있는 메뉴, 누구나 맛있고 건강하게 끼니를 해결할 수 있는 메뉴.',
            thumbnail:
                'https://www.urbanbrush.net/web/wp-content/uploads/edd/2018/07/urbanbrush-20180713114216353326.png',
            examples: '#순대국밥 #미역국 #김치찌개 #해물찜..',
          ),
          SearchTapComponent(
            category: '고기 메뉴',
            description:
                '가장 기본적인 메뉴입니다. 아무래도 한국인은 밥심, 그 밥심은 반찬들이 잘 차려진 평범한 식사라고 할 수 있겠죠?',
            thumbnail:
                'https://png.pngtree.com/png-vector/20200817/ourlarge/pngtree-bulgogi-korean-food-illustration-png-image_2327832.jpg',
            examples: '#소불고기 #수육 #스테이크 #닭갈비..',
          ),
          SearchTapComponent(
            category: '면요리',
            description:
                '라면은 좀 그렇고... 밥 해먹기는 귀찮고..그럴땐 중국집에서 무난하게 짜장면 혹은 짬뽕 둘 다 먹고 싶으면 짬짜면을 고르는 센스!!',
            thumbnail:
                'https://www.urbanbrush.net/web/wp-content/uploads/edd/2019/11/urbanbrush-20191129015222409762.jpg',
            examples: '#짜장면 # 마라탕 # 짬뽕 #잡채..',
          ),
          SearchTapComponent(
            category: '기본반찬',
            description: '밥도둑 밑반찬입니다. 입맛이 없어도 뚝딱 한그릇 든든하게!',
            thumbnail:
                'https://image.shutterstock.com/image-illustration/korean-egg-dish-rolled-omelet-260nw-1487978747.jpg',
            examples: '#계란말이 #김 #오징어젓갈 #소시지..',
          ),
        ],
      ),
    );
  }
}
