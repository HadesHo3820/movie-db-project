import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/presentation/logic_holders/providers/cast_detail_provider.dart';
import 'package:the_movie_app/presentation/screens/cast_detail_screen/widgets/cast_detail_body.dart';

class CastDetailScreen extends ConsumerWidget {
  const CastDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final castDetail = ref.watch(castDetailProvider);
    return Scaffold(
      body: castDetail.map(
        initial: (value) => const Center(
          child: CircularProgressIndicator(),
        ),
        loading: (value) => const Center(
          child: CircularProgressIndicator(),
        ),
        failed: (value) => Center(
          child: Text(value.message),
        ),
        successful: (value) => CastDetailBody(castEntity: value.castEntity),
      ),
    );
  }
}
