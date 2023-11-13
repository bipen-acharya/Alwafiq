import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_app/utils/colors.dart';
import 'package:user_app/views/add_reading_screen.dart';

class ObjectDetailScreen extends StatelessWidget {
  const ObjectDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: theme.colorScheme.tertiary,
        elevation: 5,
        shadowColor: AppColors.shadowColor,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () async {
              Get.to(AddReadingScreen());
            },
            child: Text(
              "Add Reading",
              style: textTheme.titleSmall!.copyWith(
                  // color: AppColors.accepted,
                  ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.extraWhiteLight,
            boxShadow: [
              BoxShadow(
                offset: const Offset(4, 4),
                blurRadius: 9,
                color: const Color(0xFF494949).withOpacity(0.1),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "asdasd",
                style: textTheme.bodyMedium!.copyWith(
                    // color: theme.colorScheme.secondary,
                    ),
              ),
              const SizedBox(
                height: 4,
              ),
              ObjectListRow(
                textTheme: textTheme,
                theme: theme,
                calculation: "sdasd",
                title: 'Total Time',
              ),
              ObjectListRow(
                textTheme: textTheme,
                theme: theme,
                calculation: "dasdasd",
                title: 'Cost per hour',
              ),
              ObjectListRow(
                textTheme: textTheme,
                theme: theme,
                calculation: "asdasd",
                title: 'Calucation amount',
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: List.generate(
                  150 ~/ 2,
                  (index) => Expanded(
                    child: Container(
                      color: index % 2 == 0 ? Colors.transparent : Colors.grey,
                      height: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       "Total",
              //       style: textTheme.bodyLarge!.copyWith(
              //           // color: AppColors.primaryColor
              //           // color: theme.colorScheme.secondary,
              //           ),
              //     ),
              //     Row(
              //       children: [
              //         Text(
              //           'Rs ',
              //           style: textTheme.bodyLarge!.copyWith(
              //               // color: AppColors.primaryColor
              //               // color: theme.colorScheme.secondary,
              //               ),
              //         ),
              //         Text(
              //           "asdasd",
              //           style: textTheme.bodyLarge!.copyWith(
              //               // color: AppColors.primaryColor
              //               // color: theme.colorScheme.secondary,
              //               ),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class ObjectListRow extends StatelessWidget {
  const ObjectListRow({
    super.key,
    required this.textTheme,
    required this.theme,
    required this.title,
    required this.calculation,
  });

  final TextTheme textTheme;
  final ThemeData theme;

  final String title;
  final String calculation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: textTheme.bodyMedium!.copyWith(),
          ),
          Text(calculation, style: textTheme.bodyMedium!.copyWith()),
        ],
      ),
    );
  }
}
