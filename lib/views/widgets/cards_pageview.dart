import 'package:cloud_cash/views/widgets/atm_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardsPageView extends StatefulWidget {
  const CardsPageView({
    super.key,
  });

  @override
  State<CardsPageView> createState() => _CardsPageViewState();
}

class _CardsPageViewState extends State<CardsPageView> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xff197BBD),
          ),
        ),
        const Gap(10),
        Expanded(
          child: ExpandablePageView(
            controller: pageController,
            children: List.generate(3, (index) => const AtmCard()),
          ),
        ),
        const Gap(10),
        GestureDetector(
          onTap: () {
            pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear);
          },
          child: Transform.rotate(
              angle: 3.14,
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Color(0xff197BBD),
              )),
        ),
      ],
    );
  }
}
