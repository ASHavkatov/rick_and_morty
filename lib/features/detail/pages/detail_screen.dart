import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/detail/blocs/detail_bloc.dart';
import 'package:rick_and_morty/features/detail/blocs/detail_state.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DetailBloc, DetailState>(builder: (context, state) {
        return switch(state.status) {
          DetailStatus.error => Center(child: Text("Xatolik bor"),),
          DetailStatus.loading => Center(child: CircularProgressIndicator()),
          DetailStatus.idle => ListView.builder(
            itemBuilder: (context, index) => Column(
              children: [
                Image.network(state.model!.results[index].image)
              ],
            ),
          )
        };
      }),
    );
  }
}
