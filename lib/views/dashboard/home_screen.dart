import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_app/controller/dashboard/home_screen_controller.dart';
import 'package:user_app/utils/colors.dart';
import 'package:user_app/utils/custom_text_style.dart';
import 'package:user_app/views/object_details_screen.dart';
import 'package:user_app/views/reading_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/home-screen";
  HomeScreen({super.key});

  final c = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.extraWhite,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Alwafiq",
          style: CustomTextStyles.f16W600(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  // color: AppColors.primaryColor,
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Center(child: Text("Alwafiq"))],
              ),

              // child: Text('Drawer Header'),
            ),
            ProfileTile(
              onTap: () {
                Get.to(() => const ReadingScreen());
              },
              leadingIcon: Icons.list_rounded,
              title: "Readings",
              showTrailing: false,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) {
            return ObjectList(
              content: "asdasd",
              color: index % 2 == 0 ? AppColors.primaryColor : Colors.amber,
            );
          }),
        ),
      ),
    );
  }
}

class ObjectList extends StatelessWidget {
  const ObjectList({
    Key? key,
    required this.content,
    required this.color,
  }) : super(key: key);

  final String content;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 19,
        right: 19,
        top: 19,
      ),
      child: InkWell(
        onTap: () {
          Get.to(() => const ObjectDetailScreen());
        },
        child: IntrinsicHeight(
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.extraWhiteLight,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(4, 4),
                    blurRadius: 9,
                    color: AppColors.shadowColor,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      color: color,
                    ),
                    width: 8,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, bottom: 13, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "asd",
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            content,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  final Color? color;
  final bool showTrailing;
  final String title;
  final IconData leadingIcon;
  final VoidCallback onTap;
  const ProfileTile({
    super.key,
    required this.title,
    required this.leadingIcon,
    required this.onTap,
    this.color,
    this.showTrailing = true,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListTile(
      onTap: onTap,
      leading: Icon(
        leadingIcon,
        color: color ?? theme.colorScheme.onBackground,
      ),
      trailing: showTrailing
          ? Icon(
              Icons.chevron_right,
              color: color ?? theme.colorScheme.onBackground,
            )
          : null,
      title: Text(
        title,
        style: CustomTextStyles.f16W400(
            color: color ?? theme.colorScheme.onBackground),
      ),
    );
  }
}
