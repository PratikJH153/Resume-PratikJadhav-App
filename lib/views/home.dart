import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resumeapp/theme/theme.dart';
import '../constants/social_media_tags.dart';

class HomePage extends StatelessWidget {
  static const routeID = "/homepage";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.chat_bubble_text),
            color: iconColor,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: iconColor,
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/profile1.png",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "< Pratik Jadhav />",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          fontSize: 20,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Software Developer",
                        style: TextStyle(
                          color: Colors.black87,
                          height: 1.2,
                          fontWeight: FontWeight.w400,
                          fontFamily: "NotoSans",
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.pin_drop_outlined,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Mumbai, India",
                            style: TextStyle(
                              color: Colors.black54,
                              height: 1.2,
                              fontWeight: FontWeight.w400,
                              fontFamily: "NotoSans",
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "A JavaScript ecosustem enthusiast. Over 9+ years in commercial projects in automotive, entertainment, games and e-commerce.",
                style: TextStyle(
                  color: Colors.black87,
                  height: 1.3,
                  fontSize: 14,
                  fontFamily: "NotoSans",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: GridView.builder(
                  itemCount: socialMediaPlatforms.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        print(socialMediaPlatforms[index].redirectURL);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: socialMediaPlatforms[index].color,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              offset: const Offset(0, 5),
                              blurRadius: 5,
                              spreadRadius: 0.1,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              socialMediaPlatforms[index].imgURL,
                              fit: BoxFit.cover,
                              height: 20,
                              width: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              socialMediaPlatforms[index].platform,
                              style: const TextStyle(
                                color: Colors.black,
                                fontFamily: "Exo2",
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 3 / 1,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Skills",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontSize: 15,
                  fontFamily: "Montserrat",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
