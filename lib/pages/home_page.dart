import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      appBar: AppBar(
        surfaceTintColor: Colors.black,
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text(
          "facebook",
          style: TextStyle(
              color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          // #header part
          Container(
            color: Colors.black,
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            height: 120,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage("assets/images/user_1 (1).jpeg"),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      // #search part
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "What is your mind?",
                              hintStyle: TextStyle(
                                color: Colors.white54,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Live",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.white,
                        indent: 12,
                        endIndent: 12,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Photos",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.white,
                        indent: 12,
                        endIndent: 12,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Check In",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // #stories part
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            height: 240,
            color: Colors.black,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                makeStory(
                    storiesPhoto: "assets/images/story_1 (1).jpeg",
                    userName: "User One",
                    userImage: "assets/images/user_1 (1).jpeg"),
                makeStory(
                    storiesPhoto: "assets/images/story_2 (1).jpeg",
                    userName: "User Two",
                    userImage: "assets/images/user_1 (1).jpeg"),
                makeStory(
                    storiesPhoto: "assets/images/story_3 (1).jpeg",
                    userName: "User Three",
                    userImage: "assets/images/user_1 (1).jpeg"),
                makeStory(
                    storiesPhoto: "assets/images/story_4 (1).jpeg",
                    userName: "User Four",
                    userImage: "assets/images/user_1 (1).jpeg"),
                makeStory(
                    storiesPhoto: "assets/images/story_5 (2).jpeg",
                    userName: "User Five",
                    userImage: "assets/images/user_1 (1).jpeg"),
              ],
            ),
          ),
          // #post page
          makePost(
              userName: "Anna",
              userImage: "assets/images/user_1 (1).jpeg",
              postImage: "assets/images/feed_1 (2).jpeg",
              postImage2: "assets/images/feed_2 (1).jpeg",
              feedText: "1 hour ago",
              postText:
                  "All the Lorem Ipsum generators on the Internet tend to repeat predefined."),
          makePost(
              userName: "User Two",
              userImage: "assets/images/user_2 (1).jpeg",
              postImage: "assets/images/feed_3 (1).jpeg",
              postImage2: "assets/images/feed_4 (1).jpeg",
              feedText: "1 hour ago",
              postText:
              "All the Lorem Ipsum generators on the Internet tend to repeat predefined."),
          makePost(
              userName: "User Three",
              userImage: "assets/images/user_3 (1).jpeg",
              postImage: "assets/images/feed_4 (1).jpeg",
              postImage2: "assets/images/feed_5.jpeg",
              feedText: "1 hour ago",
              postText:
              "All the Lorem Ipsum generators on the Internet tend to repeat predefined."),
        ],
      ),
    );
  }

  Widget makeStory(
      {required String userName,
      required String userImage,
      required String storiesPhoto}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          image: DecorationImage(
              image: AssetImage(storiesPhoto), fit: BoxFit.cover),
        ),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ],
              begin: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  backgroundImage: AssetImage(userImage),
                ),
              ),
              Text(
                userName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makePost({
    required String userName,
    required String userImage,
    required String postImage,
    required String feedText,
    required String postText,
    required String postImage2,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(userImage),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              feedText,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  postText,
                  style: const TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 260,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(postImage), fit: BoxFit.cover),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(postImage2), fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                      offset: const Offset(-5, 0),
                      child: makeLove(),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "2,5K",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    )
                  ],
                ),
                const Text(
                  "400 Comments",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              likeButton(true),
              chatButton(),
              shareButton(),
            ],
          ),
         const SizedBox(height: 10,),
        ],
      ),
    );
  }

  Widget makeLike() {
    return const CircleAvatar(
      backgroundColor: Colors.white,
      radius: 14,
      child: CircleAvatar(
        radius: 12,
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.thumb_up,
          size: 18,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget makeLove() {
    return const CircleAvatar(
      backgroundColor: Colors.white,
      radius: 14,
      child: CircleAvatar(
        radius: 12,
        backgroundColor: Colors.red,
        child: Icon(
          Icons.favorite,
          size: 18,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget likeButton(bool isActive) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Icon(
            Icons.thumb_up,
            color: isActive ? Colors.grey : Colors.blue,
            size: 18,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            "Likes",
            style: TextStyle(
                color: isActive ? Colors.grey : Colors.blue, fontSize: 18),
          )
        ],
      ),
    );
  }
  Widget chatButton() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Icon(
            CupertinoIcons.chat_bubble_fill,
            color:Colors.grey,
            size: 18,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            "Comments",
            style: TextStyle(
                color: Colors.grey, fontSize: 18),
          )
        ],
      ),
    );
  }
  Widget shareButton() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Icon(
            Icons.share,
            color:Colors.grey,
            size: 18,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            "Share",
            style: TextStyle(
                color: Colors.grey, fontSize: 18),
          )
        ],
      ),
    );
  }
}
