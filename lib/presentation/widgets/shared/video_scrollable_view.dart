import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video/full_screen_player.dart';
import 'package:toktik/presentation/widgets/shared/video_bottons.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final video = videos[index];
        return Container(
          color: Colors.black,
          child: Stack(
            children: [
              SizedBox.expand(
                child: FullScreenPlayer(
                  caption: video.caption,
                  videoUrl: video.videoUrl,
                ),
              ),
              Positioned(
                bottom: 40,
                right: 20,
                child: VideoBottons(video: video),
              ),
            ],
          ),
        );
      },
    );
  }
}
