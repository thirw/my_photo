import 'package:flutter/material.dart';
import 'package:my_photo/data/models/photo/photo.dart';
import 'package:my_photo/modules/profile/controller/profile_controller.dart';
import 'package:my_photo/share/widget/image_card.dart';
import 'package:my_photo/utils/helper.dart';

class ProfileView extends StatefulWidget {
  static const String routeName = "/profile";

  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final ProfileController _profileController = ProfileController();
  bool _isLoading = false;
  List<PhotoById> _data = [];

  @override
  void initState() {
    setState(() {
      this._isLoading = true;
    });
    this._getPhotos();
    super.initState();
  }

  Future _getPhotos() async {
    final List<PhotoById> data = await _profileController.getPhotos();
    print(data.length);
    setState(() {
      _data = data;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => _profileController.onSignOut(context),
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              child: SingleChildScrollView(
                child: Center(
                  child: ListView.builder(
                    itemCount: _data.length,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) => ImageCard(
                      time: Helper().dateTimeConvert(_data[index].updatedAt!),
                      img: _data[index].path!,
                      desceiption: _data[index].name!,
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
