import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_demo/controller/posts_controller.dart';
import 'post_detail_screen.dart';

class PostListScreen extends StatelessWidget {
  final PostsController controller = Get.put(PostsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: controller.posts.length,
          itemBuilder: (context, index) {
            final post = controller.posts[index];
            return Container(
              color: post.isRead ? Colors.white : Colors.yellow[100],
              child: ListTile(
                title: Text(post.title),
                trailing: const Icon(Icons.timer),
                onTap: () {
                  controller.markAsRead(post.id);
                  Get.to(() => PostDetailScreen(postId: post.id));
                },
              ),
            );
          },
        );
      }),
    );
  }
}
