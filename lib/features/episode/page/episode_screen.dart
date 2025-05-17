import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/utils/colors.dart';
import 'package:rick_and_morty/features/detail/widgets/detail_item.dart';
import 'package:rick_and_morty/features/episode/blocs/episode_bloc.dart';
import 'package:rick_and_morty/features/episode/blocs/episode_state.dart';

import '../../../core/routing/routes.dart';

class EpisodeScreen extends StatelessWidget {
  const EpisodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EpisodeBloc, EpisodeState>(
      builder: (context, state) {
        return switch (state.status) {
          EpisodeStatus.error => Center(child: Text("Xatolik bor")),
          EpisodeStatus.loading => Center(child: CircularProgressIndicator()),
          EpisodeStatus.idle => Scaffold(
            backgroundColor: AppColors.backgroundColor,
            appBar: AppBar(
              centerTitle: true,
              title: Text("Episode", style: TextStyle(color: Colors.white)),
              backgroundColor: AppColors.backgroundColor,
              leading: InkWell(onTap: (){context.pop();},child: Icon(Icons.arrow_back, color: Colors.white, size: 30,),),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DetailItem(
                          type: "Episode Name:",
                          name: state.model!.name,
                        ),
                        DetailItem(type: "Date:", name: state.model!.airDate),
                        DetailItem(
                          type: "Episode Number:",
                          name: state.model!.episode,
                        ),
                        DetailItem(
                          type: "Created:",
                          name: state.model!.created,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Characters:",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final episodeCharacter = state.model!.characters[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        child: InkWell(
                          onTap: () {
                            final characterUrl = state.model!.characters[index];
                            final characterId = int.parse(
                              characterUrl.split('/').last,
                            );
                            context.push(Routes.getDetail(characterId));
                          },
                          child: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppColors.containerColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              episodeCharacter,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      );
                    }, childCount: state.model!.characters.length),
                  ),
                ],
              ),
            ),
          ),
        };
      },
    );
  }
}
