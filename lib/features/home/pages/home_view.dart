import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/utils/colors.dart';
import 'package:rick_and_morty/features/home/blocs/home_bloc.dart';
import 'package:rick_and_morty/features/home/blocs/home_state.dart';

import '../widgets/home_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text(
          "The Rick and Morty",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return switch (state.status) {
            HomeStatus.error => Center(child: Text("Xatolik bor")),
            HomeStatus.loading => Center(child: CircularProgressIndicator()),
            HomeStatus.idle => ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
              itemCount: state.model!.results.length,
              itemBuilder: (context, index) {
                final model = state.model!.results[index];
                return Padding(
                  padding: EdgeInsets.only(bottom: 25),
                  child: HomeItem(
                    onTap: (){},
                    image: model.image,
                    name: model.name,
                    status: model.status,
                    species: model.species,
                    location: model.location.name,
                    seen: model.origin.name,
                  ),
                );
              },
            ),
          };
        },
      ),
    );
  }
}
