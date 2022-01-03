import 'package:envio/constants.dart';
import 'package:envio/screens/home/home_screen.dart';
import 'package:envio/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:envio/sz.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Sz().init(context);
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        width: Sz.width,
        height: Sz.height,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Sz.getWidth(20), vertical: Sz.getHeight(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text.rich(
                  TextSpan(
                    style: TextStyle(fontSize: 22, fontFamily: 'shabnam'),
                    children: [
                      TextSpan(text: 'به '),
                      TextSpan(
                        text: 'گرین',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      TextSpan(text: ' شاب خوش آمدین'),
                    ],
                  ),
                ),
                SizedBox(
                  height: Sz.height * 1 / 3,
                  width: Sz.width,
                  child: Image.asset(
                    'assets/images/bags.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: Sz.getHeight(20),
                ),
                Text(
                  'استایلتو آنلاین انتخاب کن',
                  style: TextStyle(
                    fontSize: Sz.getWidth(28),
                  ),
                ),
                SizedBox(
                  width: Sz.width,
                  height: Sz.height * .25,
                  child: const Text(
                    'جست و جوی نزدیک ترین فروشگاه اطراف شما لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد،\n در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، \nو شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.',
                    textAlign: TextAlign.start,
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: kCommentColor,
                    ),
                    softWrap: true,
                  ),
                ),
                DefaultButton(
                    height: Sz.getHeight(100),
                    width: Sz.width,
                    text: 'جست و جو بر اساس لوکیشن',
                    press: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                    icon: Icons.location_city)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
