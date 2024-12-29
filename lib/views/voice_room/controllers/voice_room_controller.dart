import 'dart:developer';

import 'package:chat_test_app/config/app_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';

class VoiceRoomController extends GetxController {
  final List<String> _participants = [];
  String? _activeSpeaker;
  bool _isMuted = false;
  RxBool screenRefresh = false.obs;

  List<String> get participants => _participants;
  String? get activeSpeaker => _activeSpeaker;
  bool get isMuted => _isMuted;

  late RtcEngine _engine;

  @override
  void onInit() {
    initialize(FirebaseAuth.instance.currentUser!.email!);
    super.onInit();
  }

  Future<void> initialize(String username) async {
    _engine = createAgoraRtcEngine();
    await _engine
        .initialize(const RtcEngineContext(appId: AppConfig.agoraAppId));

    _engine.registerEventHandler(RtcEngineEventHandler(
      onJoinChannelSuccess: (channel, uid) {
        log("onJoinChannelSuccess called========================>");
        screenRefresh.value = true;
        _participants.add(username);
        screenRefresh.value = false;
        // notifyListeners();
      },
      onUserJoined: (RtcConnection connection, int uid, int elapsed) {
        screenRefresh.value = true;
        log("User joind============================>");
        log("On user joined: $uid");
        // Update participant list with UID
        _participants.add("User $uid");
        screenRefresh.value = false;
      },
      onUserOffline: (RtcConnection rtc, uid, reason) {
        _participants.remove("User $uid");
        // notifyListeners();
      },
      onActiveSpeaker: (RtcConnection rtc, uid) {
        _activeSpeaker = "User $uid";
        // notifyListeners();
      },
    ));
    DocumentSnapshot<Map<String, dynamic>> userData = await FirebaseFirestore
        .instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    // Additional configuration (optional)
    await _engine.enableAudio();
    await _engine
        .joinChannel(
            token: '',
            channelId: "voice_room",
            uid: userData.data()!["voice_room_id"],
            options: const ChannelMediaOptions())
        .then((e) {});
  }

  void toggleMute() {
    _isMuted = !_isMuted;
    _engine.muteLocalAudioStream(_isMuted);
    // notifyListeners();
  }

  Future<void> leaveRoom() async {
    await _engine.leaveChannel();
    _participants.clear();
    _activeSpeaker = null;
    // notifyListeners();
  }
}
