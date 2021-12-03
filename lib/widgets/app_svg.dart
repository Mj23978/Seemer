import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Icon set of stream chat
class AppSvgIcon extends StatelessWidget {
  /// Constructor for creating a [AppSvgIcon]
  const AppSvgIcon({
    Key? key,
    this.assetName,
    this.color,
    this.width = 24,
    this.height = 24,
  }) : super(key: key);

  /// [AppSvgIcon] type
  factory AppSvgIcon.settings({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'settings.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.down({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_down.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.up({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_up.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.attach({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_attach.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.loveReaction({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_love_reaction.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.thumbsUpReaction({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_thumbs_up_reaction.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.thumbsDownReaction({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_thumbs_down_reaction.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.lolReaction({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_LOL_reaction.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.wutReaction({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_wut_reaction.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.smile({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_smile.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.mentions({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'mentions.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.record({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_record.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.camera({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_camera.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.files({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'files.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.pictures({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'pictures.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.left({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_left.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.user({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_user.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.userAdd({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_User_add.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.check({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_check.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.checkAll({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_check_all.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.checkSend({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_check_send.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.penWrite({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_pen-write.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.contacts({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_contacts.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.close({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_close.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.search({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_search.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.right({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_right.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.mute({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_mute.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.userRemove({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_User_deselect.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.lightning({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_lightning-command runner.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.emptyCircleLeft({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_empty_circle_left.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.message({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_message.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.thread({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_Thread_Reply.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.reply({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_curve_line_left_up_big.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.edit({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_edit.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.download({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_download.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.cloudDownload({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_cloud_download.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.copy({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_copy.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.delete({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_delete.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.eye({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_eye-off.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.arrowRight({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_arrow_right.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.closeSmall({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_close_sml.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.iconCurveLineLeftUp({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_curve_line_left_up.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.iconMoon({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'icon_moon.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.iconShare({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'icon_SHARE.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.iconGrid({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_grid.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.iconSendMessage({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_send_message.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.iconMenuPoint({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_menu_point_v.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.iconSave({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_save.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.shareArrow({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'share_arrow.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetype7z({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_7z.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypeCsv({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_CSV.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypeDoc({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_DOC.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypeDocx({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_DOCX.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypeGeneric({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_Generic.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypeHtml({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_html.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypeMd({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_MD.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypeOdt({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_ODT.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypePdf({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_PDF.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypePpt({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_PPT.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypePptx({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_PPTX.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypeRar({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_RAR.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypeRtf({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_RTF.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypeTar({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_TAR.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypeTxt({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_TXT.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypeXls({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_XLS.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypeXlsx({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_XLSX.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.filetypeZip({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'filetype_ZIP.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.iconGroup({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_group.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.iconNotification({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_notification.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.iconUserDelete({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_user_delete.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.error({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_error.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.circleUp({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_circle_up.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.iconUserSettings({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'Icon_user_settings.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.giphyIcon({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'giphy_icon.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.imgur({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'imgur.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.volumeUp({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'volume-up.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.flag({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'flag.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.iconFlag({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'icon_flag.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.retry({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'icon_retry.svg',
        color: color,
        width: size,
        height: size,
      );

  /// [AppSvgIcon] type
  factory AppSvgIcon.pin({
    double? size,
    Color? color,
  }) =>
      AppSvgIcon(
        assetName: 'icon_pin.svg',
        color: color,
        width: size,
        height: size,
      );

  /// Name of icon asset
  final String? assetName;

  /// Width of icon
  final double? width;

  /// Height of icon
  final double? height;

  /// Color of icon
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final key = Key('AppSvgIcon-$assetName');
    return SvgPicture.asset(
      'assets/svgs/$assetName',
      package: 'stream_chat_flutter',
      key: key,
      width: width,
      height: height,
      color: color,
    );
  }
}
