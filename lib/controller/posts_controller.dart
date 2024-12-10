import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../services/api_service.dart';
import '../model/post_model.dart';


class PostsController extends GetxController {
  final ApiService apiService = ApiService();
  final box = GetStorage();

  var posts = <Post>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadPosts();
  }

  Future<void> loadPosts() async {
    isLoading(true);

    try {
      final localPosts = box.read<List>('posts') ?? [];
      if (localPosts.isNotEmpty) {
        posts.value = localPosts.map((e) => Post.fromJson(e)).toList();
      }

      // Fetch new data from API
      final data = await apiService.fetchPosts();
      final fetchedPosts = data.map<Post>((e) => Post.fromJson(e)).toList();

      // Update data and save to local storage
      posts.value = fetchedPosts;
      box.write('posts', fetchedPosts.map((e) => e.toJson()).toList());
    } catch (e) {
      Get.snackbar('Error', 'Failed to load posts: $e');
    } finally {
      isLoading(false);
    }
  }

  void markAsRead(int id) {
    posts.firstWhere((post) => post.id == id).isRead = true;
    posts.refresh();
    box.write('posts', posts.map((e) => e.toJson()).toList());
  }
}
