import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/routing/routes.dart';
import 'package:rick_and_morty/core/utils/colors.dart';
import 'package:rick_and_morty/features/detail/blocs/detail_bloc.dart';
import 'package:rick_and_morty/features/detail/blocs/detail_state.dart';
import '../widgets/detail_item.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailBloc, DetailState>(
      builder: (context, state) {
        return switch (state.status) {
          DetailStatus.error => const Center(child: Text("Xatolik bor")),
          DetailStatus.loading => const Center(
            child: CircularProgressIndicator(),
          ),
          DetailStatus.idle => () {
            final model = state.model!;
            return Scaffold(
              backgroundColor: AppColors.backgroundColor,
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    backgroundColor: AppColors.backgroundColor,
                    expandedHeight: 350,
                    pinned: true,
                    leading: InkWell(
                      onTap: () {
                        context.pop();
                      },
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text(
                        model.name,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      background: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.network(
                          model.image,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DetailItem(type: "Name", name: model.name),
                          DetailItem(type: "Status", name: model.status),
                          DetailItem(type: "Type", name: model.type),
                          DetailItem(type: "Gender", name: model.gender),
                          DetailItem(
                            type: "Location",
                            name: model.location.name,
                          ),
                          DetailItem(type: "Created", name: model.created),
                          SizedBox(height: 20),
                          Text(
                            "Episodes:",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final episode = model.episode[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 8,
                        ),
                        child: InkWell(
                          onTap: () {
                            final episodeUrl = model.episode[index];
                            final episodeId = int.parse(episodeUrl.split('/').last);
                            context.push(Routes.getEpisode(episodeId));                          },
                          child: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppColors.containerColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              episode,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      );
                    }, childCount: model.episode.length),
                  ),
                ],
              ),
            );
          }(),
        };
      },
    );
  }
}
