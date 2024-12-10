# test_demo

This is a Flutter project that interfaces with the JSONPlaceholder API to display a list of posts. The app supports a list of posts, allows users to click on a post to view its details, and includes features like a timer, local storage, and background synchronization.

Project Overview

The application demonstrates the following features:

1.Post List Display: Fetches and displays posts from the API with a light yellow background.
2.Post Detail View: On tapping a post, the user is navigated to a detail screen that displays the full content of the post.
3.Timer Icon: Each post has a timer icon showing a random timer duration (10, 20, or 25 seconds).
4.Mark as Read: When a post is clicked, it is marked as read, and the background color changes to white.
5.Timer Functionality: Each post has a countdown timer displayed on the right side. The timer pauses when the post is out of view or when the user navigates away from the post and resumes when it comes back into view.
6.Local Storage Integration: Data is initially loaded from local storage (if available) and synchronized with the API in the background.


Features
- Post List: Displays posts with a light yellow background.
- Post Detail: Displays the full body of a selected post.
- Timer: Each post has a countdown timer.
- Mark as Read: Background color changes to white once a post is read.
- Local Storage: Displays cached posts (if available) and syncs data with the API in the background.

Prerequisites
Before running the app, ensure you have the following installed:

Flutter: The app is built with Flutter 3.0+.
Dart: The app uses Dart 3.0+.

Installation Steps
1.Clone the Repository:
Clone the repository using Git:
- git clone https://github.com/Surajvisalpara13/test_demo.git

2.Install Dependencies:
Run the following command to install the required dependencies:
- flutter pub get

3.Run the App:
To launch the app on an emulator or physical device, use:
- flutter run


Project Structure
The project is organized as follows:
lib/
├── controllers/
│   ├── posts_controller.dart
├── models/
│   ├── post_model.dart
├── screens/
│   ├── post_list_screen.dart
│   ├── post_detail_screen.dart
├── services/
│   ├── api_service.dart
├── main.dart


License
This project is licensed under the MIT License - see the LICENSE file for details.

Contact
For any issues or suggestions, feel free to open an issue or reach out to me via GitHub.


