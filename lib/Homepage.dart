import 'package:flutter/material.dart';
import 'colors.dart' as color;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: const Text(
              "My account",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            //why is it giving me a error on divider when the other divider is the same
            Divider(
              height: 10.0,
              color: Colors.white,
            ),
            Text(
              "Bio: Hey its your boy Garfield!",
              style: TextStyle(
                height: 10,
                fontSize: 15,
                color: color.AppColor.homePageSubtitle,
                fontWeight: FontWeight.normal,
              ),
            ),
            //Icons will change just wanna know if format is good
            Expanded(
              child: Container(),
            ),
            Icon(Icons.arrow_back_ios,
                size: 20, color: color.AppColor.homePageIcons),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.calendar_today_outlined,
              color: color.AppColor.homePageIcons,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.arrow_forward_ios,
                size: 20, color: color.AppColor.homePageIcons),
          )
        ],
        //Wallpaper and avatar
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // giving me a error on child tried child but doesnt work
          Container(
            width: 700,
            height: 160,
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              border: Border.all(
                color: Colors.black45,
                width: 2.0,
              ),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: SizedBox(
                width: 90,
                height: 90,
                child: ClipOval(
                    child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI8DK8HCuvWNyHHg8enmbmmf1ue4AeeF3GDw&usqp=CAU',
                  fit: BoxFit.cover,
                )),
              ),
            ),
          ),
          Divider(
            height: 10.0,
            color: Colors.white,
          ),
        ],
      )),
    );
  }
}
