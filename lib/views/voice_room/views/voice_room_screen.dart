import 'package:chat_test_app/constants/constants.dart';
import 'package:chat_test_app/extensions/context_extension.dart';
import 'package:chat_test_app/views/voice_room/controllers/voice_room_controller.dart';
import 'package:chat_test_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VoiceRoomScreen extends GetView<VoiceRoomController> {
  static const String routeName = '/voice_room_screen';
  const VoiceRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Voice Room"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.screenRefresh.value = true;
          controller.screenRefresh.value = false;
        },
        child: Icon(Icons.refresh),
      ),
      body: Obx(() => controller.screenRefresh.value
          ? SizedBox()
          : Column(
              children: [
                SizedBox(
                  height: Sizes.HEIGHT_100,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.participants.length,
                    itemBuilder: (context, index) {
                      final participant = controller.participants[index];
                      return ListTile(
                        title: Text(participant),
                        trailing: controller.activeSpeaker == participant
                            ? Icon(Icons.volume_up, color: Colors.green)
                            : null,
                      );
                    },
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: Sizes.WIDTH_10,
                  children: [
                    SizedBox(
                      height: Sizes.HEIGHT_50,
                      width: Sizes.WIDTH_100,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.toggleMute();
                        },
                        child: Text(
                          controller.isMuted ? "Unmute" : "Mute",
                          style: context.bodySmall,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Sizes.HEIGHT_50,
                      width: Sizes.WIDTH_100,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.leaveRoom();
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Leave Room",
                          style: context.bodySmall,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
    );
  }
}
