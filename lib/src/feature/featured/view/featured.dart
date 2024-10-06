import 'package:flutter/material.dart';
import 'package:udemy_clone/src/core/constants/context_extension.dart';
import 'package:udemy_clone/src/core/widgets/text_widget.dart';

class Featured extends StatefulWidget {
  const Featured({super.key});

  @override
  FeaturedState createState() => FeaturedState();
}

class FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget("Featured", textColor: context.appTheme.secondary, fontSize: 24,),
        backgroundColor: context.appTheme.primary,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Badge.count(
              count: 5,
              child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.shopping_cart, color: context.appTheme.secondary)),
            ),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: ()async{},
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 220.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(Colors.white, BlendMode.color),
                      image: AssetImage('assets/images/udemy-logo.png'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Container(
                  height: 70.0,
                  width: 400.0,
                  decoration: const BoxDecoration(
                    gradient:  LinearGradient(
                        colors: <Color>[
                          Colors.red,
                          Colors.blueGrey
                        ],
                        begin:  FractionalOffset(0.0, 0.0),
                        end:  FractionalOffset(1.0, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  child:  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Courses now on sale",
                          style: TextStyle(
                            color: context.appTheme.secondary,
                            fontSize: 17.0,
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          "1 Day Left",
                          style: TextStyle(
                            color: context.appTheme.secondary,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Featured",
                  style: TextStyle(
                    color: context.appTheme.secondary,
                    fontSize: 20.0,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Courses in Web Development",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}