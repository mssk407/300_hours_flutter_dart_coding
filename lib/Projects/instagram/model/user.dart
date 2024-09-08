class User{
  late String name,username,imageUrl;
  late List  <String> posts=[];
  User({required this.name,required this.username,required this.imageUrl});
  addPost({required String postUrl}){
    posts.add(postUrl);
  }
}
