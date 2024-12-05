import 'package:cip_loreto/features/home/presentation/widgest/event_card.dart';
import 'package:flutter/material.dart';

class HomeCarrousel extends StatelessWidget {
  const HomeCarrousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const EventCard();
        },
      ),
    );
  }
}
