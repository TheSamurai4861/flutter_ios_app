import 'package:flutter/material.dart';
import 'package:movi_ios/core/constants/medias_lists.dart';
import 'package:movi_ios/presentation/widgets/medias_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 150,
              ),
            ),
            SliverToBoxAdapter(
              child: MediasList(title: 'Action', medias: actionMovies),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: MediasList(title: 'Sci-Fi', medias: sciFiMovies),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: MediasList(title: 'Aventure', medias: aventureMovies),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
