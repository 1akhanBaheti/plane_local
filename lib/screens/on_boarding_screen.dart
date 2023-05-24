import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import 'package:plane_startup/utils/constants.dart';
import 'package:plane_startup/utils/text_styles.dart';

import '../provider/provider_list.dart';
import '../utils/button.dart';
import '../utils/custom_text.dart';
import '../widgets/status_widgt.dart';
import '../widgets/three_dots_widget.dart';
import 'sign_in.dart';

class OnBoardingScreen extends ConsumerStatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  ConsumerState<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends ConsumerState<OnBoardingScreen> {
  int currentIndex = 0;

  List data = [
    {
      'title': 'Plan with Issues',
      'description':
          'The issue is the building block of the Plane. Most concepts in Plane are either associated with issues and their properties.'
    },
    {
      'title': 'Move with cycles',
      'description':
          'Cycles help you and your team to progress faster, similar to the sprints commonly used in agile development.'
    },
    {
      'title': 'Break into modules',
      'description':
          'Modules break your big think into Projects or Features,  to help you organize better.'
    }
  ];

  List cards = [
    Container(
      constraints: const BoxConstraints(maxWidth: 500),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadowColor: primaryColor.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'FC-7',
                style: TextStylingWidget.description.copyWith(color: greyColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Issue details activities and comments API endpoints and documnetaion',
                style: TextStylingWidget.description
                    .copyWith(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.orange.withOpacity(0.2)),
                    child: SvgPicture.asset(
                      'assets/svg_images/graph_icon.svg',
                      height: 10,
                      width: 10,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const StautsWidget(),
                  const SizedBox(
                    width: 10,
                  ),
                  const ThreeDotsWidget()
                ],
              )
            ],
          ),
        ),
      ),
    ),
    Container(
      constraints: const BoxConstraints(maxWidth: 500),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadowColor: primaryColor.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Plane Launch Cycle',
                    style: TextStylingWidget.subHeading,
                  ),
                  Icon(
                    Icons.star_outline,
                    color: greyColor,
                    size: 20,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: SvgPicture.asset(
                            'assets/svg_images/calendar_icon.svg',
                            height: 15,
                            width: 15,
                          ),
                        ),
                        TextSpan(
                          text: '  Start : ',
                          style: TextStylingWidget.smallText.copyWith(
                            color: greyColor,
                          ),
                        ),
                        const TextSpan(
                            text: 'Jan 16, 2022',
                            style: TextStylingWidget.smallText),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: SvgPicture.asset(
                            'assets/svg_images/calendar_icon.svg',
                            height: 15,
                            width: 15,
                          ),
                        ),
                        TextSpan(
                          text: '  End : ',
                          style: TextStylingWidget.smallText.copyWith(
                            color: greyColor,
                          ),
                        ),
                        const TextSpan(
                            text: 'Apr 16, 2023',
                            style: TextStylingWidget.smallText),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.orange,
                        child: Text(
                          'V',
                          style: TextStylingWidget.smallText
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Vamsi kurama',
                        style: TextStylingWidget.smallText,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg_images/edit_icon.svg',
                        height: 15,
                        width: 15,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      SvgPicture.asset(
                        'assets/svg_images/options_icon.svg',
                        width: 15,
                      ),
                    ],
                  )
                ],
              ),
              const Divider(
                color: greyColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Progress',
                    style: TextStylingWidget.smallText.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            height: 5,
                            constraints: const BoxConstraints(maxWidth: 60),
                            margin: const EdgeInsets.only(right: 2),
                            color: Colors.grey[300],
                          ),
                        ),
                        Container(
                          height: 5,
                          constraints: const BoxConstraints(maxWidth: 30),
                          margin: const EdgeInsets.only(right: 2),
                          color: Colors.blue,
                        ),
                        Container(
                          height: 5,
                          constraints: const BoxConstraints(maxWidth: 50),
                          margin: const EdgeInsets.only(right: 2),
                          color: Colors.orange,
                        ),
                        Container(
                          height: 5,
                          constraints: const BoxConstraints(maxWidth: 40),
                          margin: const EdgeInsets.only(right: 2),
                          color: Colors.purple,
                        ),
                        Container(
                          height: 5,
                          constraints: const BoxConstraints(maxWidth: 60),
                          margin: const EdgeInsets.only(right: 2),
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.expand_more,
                    size: 18,
                    color: greyColor,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
    Container(
      constraints: const BoxConstraints(maxWidth: 500),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadowColor: primaryColor.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Github Integrations',
                    style: TextStylingWidget.subHeading,
                  ),
                  Icon(
                    Icons.star_outline,
                    color: greyColor,
                    size: 20,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: SvgPicture.asset(
                            'assets/svg_images/calendar_icon.svg',
                            height: 15,
                            width: 15,
                          ),
                        ),
                        TextSpan(
                          text: '  Start : ',
                          style: TextStylingWidget.smallText.copyWith(
                            color: greyColor,
                          ),
                        ),
                        const TextSpan(
                            text: 'Jan 16, 2022',
                            style: TextStylingWidget.smallText),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: SvgPicture.asset(
                            'assets/svg_images/calendar_icon.svg',
                            height: 15,
                            width: 15,
                          ),
                        ),
                        TextSpan(
                          text: '  End : ',
                          style: TextStylingWidget.smallText.copyWith(
                            color: greyColor,
                          ),
                        ),
                        const TextSpan(
                            text: 'Apr 16, 2023',
                            style: TextStylingWidget.smallText),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.person_outline,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Lead:',
                        style: TextStylingWidget.smallText
                            .copyWith(color: greyColor),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.orange,
                        child: Text(
                          'V',
                          style: TextStylingWidget.smallText
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'Vamsi kurama',
                        style: TextStylingWidget.smallText,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.people,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Members:',
                        style: TextStylingWidget.smallText
                            .copyWith(color: greyColor),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      // const ThreeDotsWidget()
                    ],
                  )
                ],
              ),
              const Divider(
                color: greyColor,
              ),
              Row(
                children: [
                  Text(
                    'Progress',
                    style: TextStylingWidget.smallText.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Row(
                    children: [
                      Container(
                        height: 5,
                        constraints: const BoxConstraints(maxWidth: 190),
                        color: Colors.green,
                      ),
                      Container(
                        height: 5,
                        constraints: const BoxConstraints(maxWidth: 60),
                        color: Colors.grey[300],
                      ),
                    ],
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    var themeProvider = ref.watch(ProviderList.themeProvider);
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: themeProvider.isDarkThemeEnabled ? null : gradient,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: 3,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        cards[index],
                        const SizedBox(
                          height: 20,
                        ),
                        // Text(
                        //   data[index]['title'],
                        //   style: TextStylingWidget.mainHeading.copyWith(
                        //     // color: themeProvider.primaryTextCol
                        //   ),
                        // ),
                        CustomText(
                          data[index]['title'],
                          type: FontStyle.heading,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          // child: Text(
                          //   data[index]['description'],
                          //   textAlign: TextAlign.center,
                          //   style: TextStylingWidget.description.copyWith(
                          //       // color: themeProvider.secondaryTextCol
                          //       ),
                          // ),
                          child: CustomText(
                            data[index]['description'],
                            type: FontStyle.description,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: CircleAvatar(
                            backgroundColor: currentIndex == 0
                                ? Colors.black
                                : const Color.fromRGBO(206, 212, 218, 1),
                            radius: 3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: CircleAvatar(
                            backgroundColor: currentIndex == 1
                                ? Colors.black
                                : const Color.fromRGBO(206, 212, 218, 1),
                            radius: 3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: CircleAvatar(
                            backgroundColor: currentIndex == 2
                                ? Colors.black
                                : const Color.fromRGBO(206, 212, 218, 1),
                            radius: 3,
                          ),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Hero(
                tag: 'button',
                child: Button(
                  text: 'Get Started',
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
