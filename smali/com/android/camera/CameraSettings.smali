.class public Lcom/android/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraSettings$UiStyle;
    }
.end annotation


# static fields
.field public static final AI_LENS_PACKAGE:Ljava/lang/String; = "com.xiaomi.lens"

.field public static final APP_V10_SETTINGS_VERSION:I = 0x1

.field public static final APP_V20_SETTINGS_VERSION:I = 0x3

.field public static final APP_V30_SETTINGS_VERSION:I = 0x4

.field public static final ASPECT_RATIO_16_9:I = 0x1

.field public static final ASPECT_RATIO_18_9:I = 0x3

.field public static final ASPECT_RATIO_1_1:I = 0x2

.field public static final ASPECT_RATIO_4_3:I = 0x0

.field public static final AUDIO_CAMERA_LOOPBACK_SUPPORT:Ljava/lang/String; = "audio_camera_loopback_support"

.field public static final AUDIO_CAMERA_LOOPBACK_SUPPORT_TRUE:Ljava/lang/String; = "audio_camera_loopback_support=true"

.field public static final AUDIO_CAMERA_NS_SUPPORT:Ljava/lang/String; = "audio_camera_ns_support"

.field public static final AUDIO_CAMERA_NS_TRUE:Ljava/lang/String; = "audio_camera_ns_support=true"

.field public static final AUTO_FOCUS_POSITION:I = 0x3e8

.field public static BOTTOM_CONTROL_HEIGHT:I = 0x0

.field public static final CAMERA_WATER_MARK_FILE_PREFIX:Ljava/lang/String; = "/mnt/vendor/persist/camera/"

.field public static final CLOUD_APPMARKET_SERVER:Ljava/lang/String; = "http://file.market.xiaomi.com/download/"

.field public static final CURRENT_VERSION:I = 0x4

.field public static final DATA_CONFIG_RATIO_CINEMATIC:Ljava/lang/String; = "is_cinematic"

.field public static final DATA_CONFIG_RATIO_SQUARE:Ljava/lang/String; = "is_square"

.field public static final DEBUG_FAST_SHOT:Z

.field public static final DEFAULT_VIDEO_DURATION:I = 0x0

.field public static final DUAL_CAMERA_WATER_MARK_FILE:Ljava/lang/String; = "/vendor/etc/camera/dualcamera.png"

.field public static final DUAL_CAMERA_WATER_MARK_FILE_FROM_VENDOR_INDIA:Ljava/lang/String; = "/vendor/etc/camera/dualcamera_india.png"

.field public static final EXPOSURE_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final GAIN_VALUE_DEFAULT:F = 50.0f

.field public static final KEY_AE_AF_LOCK_SUPPORT:Ljava/lang/String; = "pref_camera_ae_af_lock_support_key"

.field public static final KEY_AI_AUDIO:Ljava/lang/String; = "pref_ai_audio"

.field public static final KEY_AI_AUDIO_3D:Ljava/lang/String; = "pref_ai_audio_3d"

.field public static final KEY_AI_AUDIO_3D_EFFECT_COMPARATION:Ljava/lang/String; = "pref_ai_audio_3d_effect_comparation"

.field public static final KEY_AI_AUDIO_NEW:Ljava/lang/String; = "pref_ai_audio_new"

.field public static final KEY_AI_AUDIO_SINGLE:Ljava/lang/String; = "pref_ai_audio_single"

.field public static final KEY_AI_ENHANCED_VIDEO:Ljava/lang/String; = "pref_camera_ai_enhanced_video"

.field public static final KEY_AI_SCENE_MODE:Ljava/lang/String; = "pref_camera_ai_scene_mode_key"

.field public static final KEY_AI_SHUTTER:Ljava/lang/String; = "pref_camera_ai_shutter_key"

.field public static final KEY_AI_TIP_DETECT_DOC:Ljava/lang/String; = "pref_camera_ai_detect_doc"

.field public static final KEY_AI_TIP_DETECT_ID_CARD:Ljava/lang/String; = "pref_camera_ai_detect_id_card"

.field public static final KEY_ALLOW_CTA:Ljava/lang/String; = "pref_camera_recordcta_key"

.field public static final KEY_ANTIBANDING:Ljava/lang/String; = "pref_camera_antibanding_key"

.field public static final KEY_AUTOEXPOSURE:Ljava/lang/String; = "pref_camera_autoexposure_key"

.field public static final KEY_AUTO_BOOT:Ljava/lang/String; = "pref_auto_boot"

.field public static final KEY_AUTO_CHROMA_FLASH:Ljava/lang/String; = "pref_auto_chroma_flash_key"

.field public static final KEY_AUTO_HIBERNATION:Ljava/lang/String; = "pref_camera_auto_hibernation_key"

.field public static final KEY_AUTO_ZOOM:Ljava/lang/String; = "pref_camera_auto_zoom"

.field public static final KEY_BAUTY_MODE:Ljava/lang/String; = "pref_camera_beauty_mode_key"

.field public static final KEY_BEAUTIFY_BLUSHER_RATIO:Ljava/lang/String; = "pref_beautify_blusher_ratio_key"

.field public static final KEY_BEAUTIFY_CHIN_RATIO:Ljava/lang/String; = "pref_beautify_chin_ratio_key"

.field public static final KEY_BEAUTIFY_COLOR_SKIN_RATIO:Ljava/lang/String; = "pref_beautify_color_skin_ratio_key"

.field public static final KEY_BEAUTIFY_ENLARGE_EYE_RATIO:Ljava/lang/String; = "pref_beautify_enlarge_eye_ratio_key"

.field public static final KEY_BEAUTIFY_EYEBROW_DYE_RATIO:Ljava/lang/String; = "pref_beautify_eyebrow_dye_ratio_key"

.field public static final KEY_BEAUTIFY_HAIRLINE_RATIO:Ljava/lang/String; = "pref_beautify_hairline_ratio_key"

.field public static final KEY_BEAUTIFY_JELLY_LIPS_RATIO:Ljava/lang/String; = "pref_beautify_jelly_lips_ratio_key"

.field public static final KEY_BEAUTIFY_LEVEL_CAPTURE:Ljava/lang/String; = "pref_old_beautify_level_key_capture"

.field public static final KEY_BEAUTIFY_LEVEL_VIDEO:Ljava/lang/String; = "pref_old_beautify_level_key_video"

.field public static final KEY_BEAUTIFY_LIPS_RATIO:Ljava/lang/String; = "pref_beautify_lips_ratio_key"

.field public static final KEY_BEAUTIFY_MAKEUPS_LEVEL:Ljava/lang/String; = "pref_beautify_makeups_level_key"

.field public static final KEY_BEAUTIFY_MAKEUPS_TYPE:Ljava/lang/String; = "pref_beautify_makeups_type_key"

.field public static final KEY_BEAUTIFY_MAKEUP_RATIO:Ljava/lang/String; = "pref_beautify_makeup_ratio_key"

.field public static final KEY_BEAUTIFY_NECK_RATIO:Ljava/lang/String; = "pref_beautify_neck_ratio_key"

.field public static final KEY_BEAUTIFY_NOSE_RATIO:Ljava/lang/String; = "pref_beautify_nose_ratio_key"

.field public static final KEY_BEAUTIFY_PUPIL_LINE_RATIO:Ljava/lang/String; = "pref_beautify_pupil_line_ratio_key"

.field public static final KEY_BEAUTIFY_RISORIUS_RATIO:Ljava/lang/String; = "pref_beautify_risorius_ratio_key"

.field public static final KEY_BEAUTIFY_SKIN_COLOR_RATIO:Ljava/lang/String; = "pref_beautify_skin_color_ratio_key"

.field public static final KEY_BEAUTIFY_SKIN_SMOOTH_RATIO:Ljava/lang/String; = "pref_beautify_skin_smooth_ratio_key"

.field public static final KEY_BEAUTIFY_SLIM_FACE_RATIO:Ljava/lang/String; = "pref_beautify_slim_face_ratio_key"

.field public static final KEY_BEAUTIFY_SLIM_NOSE_RATIO:Ljava/lang/String; = "pref_beautify_slim_nose_ratio_key"

.field public static final KEY_BEAUTIFY_SMILE_RATIO:Ljava/lang/String; = "pref_beautify_smile_ratio_key"

.field public static final KEY_BEAUTIFY_SOLID_RATIO:Ljava/lang/String; = "pref_beautify_solid_ratio_key"

.field public static final KEY_BEAUTIFY_WHITEN_RATIO:Ljava/lang/String; = "pref_beautify_whiten_ratio_key"

.field public static final KEY_BEAUTY_BODY_SLIM_RATIO:Ljava/lang/String; = "pref_beauty_body_slim_ratio"

.field public static final KEY_BEAUTY_BUTT_SLIM_RATIO:Ljava/lang/String; = "pref_beauty_butt_slim_ratio"

.field public static final KEY_BEAUTY_HEAD_SLIM_RATIO:Ljava/lang/String; = "pref_beauty_head_slim_ratio"

.field public static final KEY_BEAUTY_LEG_SLIM_RATIO:Ljava/lang/String; = "key_beauty_leg_slim_ratio"

.field public static final KEY_BEAUTY_LENS:Ljava/lang/String; = "pref_portrait_beauty_lens"

.field public static final KEY_BEAUTY_MAKEUP_CLICKED:Ljava/lang/String; = "pref_beauty_makeup_clicked_key"

.field public static final KEY_BEAUTY_SHOULDER_SLIM_RATIO:Ljava/lang/String; = "pref_beauty_shoulder_slim_ratio"

.field public static final KEY_BEAUTY_WHOLE_BODY_SLIM_RATIO:Ljava/lang/String; = "pref_beauty_whole_body_slim_ratio"

.field public static final KEY_BROADCAST_KILL_SERVICE_TIME:Ljava/lang/String; = "pref_broadcast_kill_service_key"

.field public static final KEY_CAMERA_ASD_NIGHT:Ljava/lang/String; = "pref_camera_asd_night_key"

.field public static final KEY_CAMERA_AUDIO_MAP:Ljava/lang/String; = "pref_audio_map_key"

.field public static final KEY_CAMERA_BOKEH:Ljava/lang/String; = "pref_camera_bokeh_key"

.field public static final KEY_CAMERA_CONFIRM_LOCATION_SHOWN:Ljava/lang/String; = "pref_camera_confirm_location_shown_key"

.field public static final KEY_CAMERA_DUAL_ENABLE:Ljava/lang/String; = "pref_camera_dual_enable_key"

.field public static final KEY_CAMERA_DUAL_SAT_ENABLE:Ljava/lang/String; = "pref_camera_dual_sat_enable_key"

.field public static final KEY_CAMERA_EFFECT_COMPARISON:Ljava/lang/String; = "pref_open_effect_comparison_type"

.field public static final KEY_CAMERA_EXPOSURE_FEEDBACK:Ljava/lang/String; = "pref_camera_exposure_feedback"

.field public static final KEY_CAMERA_FACE_DETECTION_AUTO_HIDDEN:Ljava/lang/String; = "pref_camera_facedetection_auto_hidden_key"

.field public static final KEY_CAMERA_FASTMOTION_QUALITY:Ljava/lang/String; = "pref_camera_fastmotion_quality"

.field public static final KEY_CAMERA_FIRST_AI_SCENE_USE_HINT_SHOWN:Ljava/lang/String; = "pref_camera_first_ai_scene_use_hint_shown_key"

.field public static final KEY_CAMERA_FIRST_BEAUTY_LENS_USE_HINT_SHOWN:Ljava/lang/String; = "pref_camera_first_beauty_lens_use_hint_shown_key"

.field public static final KEY_CAMERA_FIRST_ID_CARD_MODE_USE_HINT_SHOWN:Ljava/lang/String; = "pref_camera_first_id_card_mode_use_hint_shown_key"

.field public static final KEY_CAMERA_FIRST_MACRO_MODE_USE_HINT_SHOWN:Ljava/lang/String; = "pref_camera_first_macro_mode_use_hint_shown_key"

.field public static final KEY_CAMERA_FIRST_NOTIFICATION_SHOWN:Ljava/lang/String; = "pref_camera_first_notification_shown_key"

.field public static final KEY_CAMERA_FIRST_PORTRAIT_USE_HINT_SHOWN:Ljava/lang/String; = "pref_camera_first_portrait_use_hint_shown_key"

.field public static final KEY_CAMERA_FIRST_ULTRA_TELE_USE_HINT_SHOWN:Ljava/lang/String; = "pref_camera_first_ultra_tele_use_hint_shown_key"

.field public static final KEY_CAMERA_FIRST_ULTRA_WIDE_SAT_USE_HINT_SHOWN:Ljava/lang/String; = "pref_camera_first_ultra_wide_sat_use_hint_shown_key"

.field public static final KEY_CAMERA_FIRST_ULTRA_WIDE_USE_HINT_SHOWN:Ljava/lang/String; = "pref_camera_first_ultra_wide_use_hint_shown_key"

.field public static final KEY_CAMERA_FIRST_USE_HINT_SHOWN:Ljava/lang/String; = "pref_camera_first_use_hint_shown_key"

.field public static final KEY_CAMERA_FIRST_USE_PERMISSION_SHOWN:Ljava/lang/String; = "pref_camera_first_use_permission_shown_key"

.field public static final KEY_CAMERA_FIRST_VV_USE_HINT_SHOWN:Ljava/lang/String; = "pref_camera_first_vv_hint_shown_key"

.field public static final KEY_CAMERA_FOCUS_MODE:Ljava/lang/String; = "pref_camera_focus_mode_key"

.field public static final KEY_CAMERA_FROM_PRO_VIDEO_MODULE:Ljava/lang/String; = "pref_camera_from_pro_video_module"

.field public static final KEY_CAMERA_FROM_SUPER_NIGHT_VIDEO_MODULE:Ljava/lang/String; = "pref_camera_from_super_nigtht_video_module"

.field public static final KEY_CAMERA_FUN_VIDEO_QUALITY:Ljava/lang/String; = "pref_camera_fun_video_quality"

.field public static final KEY_CAMERA_GRADIENTER_KEY:Ljava/lang/String; = "pref_camera_gradienter_key"

.field public static final KEY_CAMERA_GROUPSHOT_MODE:Ljava/lang/String; = "pref_camera_groupshot_mode_key"

.field public static final KEY_CAMERA_GROUPSHOT_PRIMITIVE:Ljava/lang/String; = "pref_groupshot_with_primitive_picture_key"

.field public static final KEY_CAMERA_HAND_NIGHT:Ljava/lang/String; = "pref_camera_hand_night_key"

.field public static final KEY_CAMERA_HDR:Ljava/lang/String; = "pref_camera_hdr_key"

.field public static final KEY_CAMERA_HIGH_QUALITY_PREFERRED:Ljava/lang/String; = "pref_camera_high_quality_preferred_key"

.field public static final KEY_CAMERA_HSR_VALUE:Ljava/lang/String; = "pref_camera_hsr_value_key"

.field public static final KEY_CAMERA_ID:Ljava/lang/String; = "pref_camera_id_key"

.field public static final KEY_CAMERA_LAB_SUB_OPTIONS:Ljava/lang/String; = "pref_camera_lab_option_key"

.field public static final KEY_CAMERA_LYING_TIP_SWITCH:Ljava/lang/String; = "pref_camera_lying_tip_switch_key"

.field public static final KEY_CAMERA_MAGIC_MIRROR_KEY:Ljava/lang/String; = "pref_camera_magic_mirror_key"

.field public static final KEY_CAMERA_MANUALLY_DESCRIPTION_TIP:Ljava/lang/String; = "pref_camera_manual_description_tip"

.field public static final KEY_CAMERA_MANUALLY_LENS:Ljava/lang/String; = "pref_camera_manually_lens"

.field public static final KEY_CAMERA_MANUAL_MODE:Ljava/lang/String; = "pref_camera_manual_mode_key"

.field public static final KEY_CAMERA_MFNR_SAT_ENABLE:Ljava/lang/String; = "pref_camera_mfnr_sat_enable_key"

.field public static final KEY_CAMERA_MODE_SETTINGS:Ljava/lang/String; = "pref_camera_mode_settings_key"

.field public static final KEY_CAMERA_MORE_MODE_STYLE:Ljava/lang/String; = "pref_open_more_mode_type"

.field public static final KEY_CAMERA_NEAR_RANGE:Ljava/lang/String; = "pref_camera_near_range_key"

.field public static final KEY_CAMERA_OBJECT_TRACK_HINT_SHOWN:Ljava/lang/String; = "pref_camera_first_tap_screen_hint_shown_key"

.field public static final KEY_CAMERA_PARALLEL_PROCESS_ENABLE:Ljava/lang/String; = "pref_camera_parallel_process_enable_key"

.field public static final KEY_CAMERA_PEAKING_FOCUS:Ljava/lang/String; = "pref_camera_peak_key"

.field public static final KEY_CAMERA_PIXEL_LENS:Ljava/lang/String; = "pref_camera_pixel_lens"

.field public static final KEY_CAMERA_PORTRAIT_MODE:Ljava/lang/String; = "pref_camera_portrait_mode_key"

.field public static final KEY_CAMERA_PORTRAIT_WITH_FACEBEAUTY:Ljava/lang/String; = "pref_camera_portrait_with_facebeauty_key"

.field public static final KEY_CAMERA_PROXIMITY_LOCK:Ljava/lang/String; = "pref_camera_proximity_lock_key"

.field public static final KEY_CAMERA_PRO_HISTOGRAM:Ljava/lang/String; = "pref_camera_pro_video_histogram"

.field public static final KEY_CAMERA_PRO_PHOTO_AUXILIARY:Ljava/lang/String; = "pref_camera_pro_photo_auxiliary"

.field public static final KEY_CAMERA_PRO_VIDEO_AUXILIARY:Ljava/lang/String; = "pref_camera_pro_video_auxiliary"

.field public static final KEY_CAMERA_PRO_VIDEO_LENS:Ljava/lang/String; = "pref_camera_pro_video_lens"

.field public static final KEY_CAMERA_PRO_VIDEO_LOG_FROMAT:Ljava/lang/String; = "pref_camera_pro_video_log_format"

.field public static final KEY_CAMERA_PRO_VIDEO_QUALITY:Ljava/lang/String; = "pref_camera_pro_video_quality"

.field public static final KEY_CAMERA_QUICK_SHOT_ANIM_ENABLE:Ljava/lang/String; = "pref_camera_quick_shot_anim_enable_key"

.field public static final KEY_CAMERA_QUICK_SHOT_ENABLE:Ljava/lang/String; = "pref_camera_quick_shot_enable_key"

.field public static final KEY_CAMERA_SNAP:Ljava/lang/String; = "pref_camera_snap_key"

.field public static final KEY_CAMERA_SOUND:Ljava/lang/String; = "pref_camerasound_key"

.field public static final KEY_CAMERA_SQUARE_MODE:Ljava/lang/String; = "pref_camera_square_mode_key"

.field public static final KEY_CAMERA_SR_ENABLE:Ljava/lang/String; = "pref_camera_sr_enable_key"

.field public static final KEY_CAMERA_SUPER_NIGHT:Ljava/lang/String; = "pref_camera_super_night_mode"

.field public static final KEY_CAMERA_SUPER_RESOLUTION:Ljava/lang/String; = "pref_camera_super_resolution_key"

.field public static final KEY_CAMERA_TILT_SHIFT:Ljava/lang/String; = "pref_camera_tilt_shift_key"

.field public static final KEY_CAMERA_TILT_SHIFT_MODE:Ljava/lang/String; = "pref_camera_tilt_shift_mode"

.field public static final KEY_CAMERA_TIMER_BURST:Ljava/lang/String; = "pref_camera_timer_burst"

.field public static final KEY_CAMERA_TIMER_BURST_INTERVAL:Ljava/lang/String; = "pref_camera_timer_burst_interval"

.field public static final KEY_CAMERA_TIMER_BURST_TOTAL_COUNT:Ljava/lang/String; = "pref_camera_timer_burst_total_count"

.field public static final KEY_CAMERA_TIMER_BURST_TYPE:Ljava/lang/String; = "pref_camera_timer_burst_type"

.field public static final KEY_CAMERA_TOUCH_FOCUS_DELAY_ENABLE:Ljava/lang/String; = "pref_camera_touch_focus_delay_key"

.field public static final KEY_CAMERA_VIDEO_SAT_ENABLE:Ljava/lang/String; = "pref_camera_video_sat_enable_key"

.field public static final KEY_CAMERA_ZOOM_MODE:Ljava/lang/String; = "pref_camera_zoom_mode_key"

.field public static final KEY_CAPTURE_ULTRA_WIDE_MODE:Ljava/lang/String; = "pref_ultra_wide_status"

.field public static final KEY_CAPTURE_WHEN_STABLE:Ljava/lang/String; = "pref_capture_when_stable_key"

.field public static final KEY_CATEGORY_ADVANCE_SETTING:Ljava/lang/String; = "category_advance_setting"

.field public static final KEY_CATEGORY_AI_AUDIO_3D_EFFECT_COMPARATION:Ljava/lang/String; = "pref_category_ai_audio_3d_effect_comparation"

.field public static final KEY_CATEGORY_COMMON_SETTING:Ljava/lang/String; = "category_common_setting"

.field public static final KEY_CATEGORY_MODULE_SETTING:Ljava/lang/String; = "category_module_setting"

.field public static final KEY_CATEGORY_NOISE_REDUCTION_SETTING:Ljava/lang/String; = "category_noise_reduction_setting"

.field public static final KEY_CATEGORY_QUICK_SETTING:Ljava/lang/String; = "category_quick_setting"

.field public static final KEY_CENTER_MARK:Ljava/lang/String; = "pref_camera_center_mark_key"

.field public static final KEY_COLOR_EFFECT:Ljava/lang/String; = "pref_camera_coloreffect_key"

.field public static final KEY_COLOR_ENHANCE:Ljava/lang/String; = "pref_color_enhance"

.field public static final KEY_CUP_CAMERA_POSITION_HINT:Ljava/lang/String; = "pref_cup_camera_position_key"

.field public static final KEY_CUSTOMIZATION:Ljava/lang/String; = "pref_customization_key"

.field public static final KEY_CUSTOM_WATERMARK:Ljava/lang/String; = "pref_custom_watermark"

.field public static final KEY_DELAY_CAPTURE_MODE:Ljava/lang/String; = "pref_delay_capture_mode"

.field public static final KEY_DEVICE_WATERMARK:Ljava/lang/String; = "pref_dualcamera_watermark_key"

.field public static final KEY_DOCUMENT_MODE:Ljava/lang/String; = "pref_document_mode_key"

.field public static final KEY_DOCUMENT_MODE_VALUE:Ljava/lang/String; = "pref_document_mode_value_key"

.field public static final KEY_EAR_PHONE_RADIO:Ljava/lang/String; = "pref_earphone_key"

.field public static final KEY_EN_FIRST_CHOICE_LOCK_AE_AF_TOAST:Ljava/lang/String; = "pref_en_first_choice_lock_ae_af_toast_key"

.field public static final KEY_EXPOSURE:Ljava/lang/String; = "pref_camera_exposure_key"

.field public static final KEY_E_S_P_MODE:Ljava/lang/String; = "pref_camera_e_s_p_key"

.field public static final KEY_FACE_BEAUTY_ADVANCED:Ljava/lang/String; = "pref_camera_face_beauty_advanced_key"

.field public static final KEY_FACE_BEAUTY_SWITCH:Ljava/lang/String; = "pref_camera_old_face_beauty_switch_key"

.field public static final KEY_FACE_DETECTION:Ljava/lang/String; = "pref_camera_facedetection_key"

.field public static final KEY_FASTMOTION_PRO_AUTOEXPOSURE:Ljava/lang/String; = "pref_fastmotion_pro_autoexposure_key"

.field public static final KEY_FASTMOTION_PRO_WHITE_BALANCE:Ljava/lang/String; = "pref_camera_fastmotion_pro_whitebalance_key"

.field public static final KEY_FAST_MOTION:Ljava/lang/String; = "pref_fast_motion_key"

.field public static final KEY_FAST_MOTION_HDR:Ljava/lang/String; = "pref_fast_motion_hdr_key"

.field public static final KEY_FAST_MOTION_PRO:Ljava/lang/String; = "pref_fast_motion_pro_key"

.field public static final KEY_FEATURE_AUTO_DOWNLOAD:Ljava/lang/String; = "pref_feature_auto_download_key"

.field public static final KEY_FINGERPRINT_CAPTURE:Ljava/lang/String; = "pref_fingerprint_capture_key"

.field public static final KEY_FLASH_MODE:Ljava/lang/String; = "pref_camera_flashmode_key"

.field public static final KEY_FLASH_MODE_AI_WATERMARK:Ljava/lang/String; = "pref_camera_flashmode_ai_watermark_key"

.field public static final KEY_FLASH_MODE_MI_LIVE:Ljava/lang/String; = "pref_camera_flashmode_mi_live_key"

.field public static final KEY_FLASH_MODE_RECORD_VIDEO:Ljava/lang/String; = "pref_camera_flashmode_record_vdieo_key"

.field public static final KEY_FLASH_MODE_SUPERNIGHT:Ljava/lang/String; = "pref_camera_flashmode_supernight_key"

.field public static final KEY_FLASH_MODE_WIDE_SELFIE:Ljava/lang/String; = "pref_camera_flashmode_wide_selfie_key"

.field public static final KEY_FOCUS_SHOOT:Ljava/lang/String; = "pref_camera_focus_shoot_key"

.field public static final KEY_FRONT_CAMERA_FIRST_USE_HINT_SHOWN:Ljava/lang/String; = "pref_front_camera_first_use_hint_shown_key"

.field public static final KEY_FRONT_DENOISE:Ljava/lang/String; = "pref_front_denoise"

.field public static final KEY_FRONT_MIRROR:Ljava/lang/String; = "pref_front_mirror_boolean_key"

.field public static final KEY_F_NUMBER:Ljava/lang/String; = "pref_f_number"

.field public static final KEY_HAND_GESTURE:Ljava/lang/String; = "pref_hand_gesture"

.field public static final KEY_HAND_GESTURE_STATUS:Ljava/lang/String; = "pref_hand_gesture_status"

.field public static final KEY_HDR10PLUS_VIDEO_ENCODER:Ljava/lang/String; = "pref_hdr10plus_video_mode_key"

.field public static final KEY_HDR10PRO_VIDEO_ENCODER:Ljava/lang/String; = "pref_hlg_video_mode_key"

.field public static final KEY_HDR10_VIDEO_ENCODER:Ljava/lang/String; = "pref_hdr10_video_mode_key"

.field public static final KEY_HEIC_FORMAT:Ljava/lang/String; = "pref_camera_heic_image_format_key"

.field public static final KEY_INTELLIGENT_NOISE_REDUCTION:Ljava/lang/String; = "pref_intelligent_noise_reduction_key"

.field public static final KEY_JPEG_QUALITY:Ljava/lang/String; = "pref_camera_jpegquality_key"

.field public static final KEY_KALEIDOSCOPE:Ljava/lang/String; = "pref_kaleidoscope"

.field public static final KEY_KARAOKE_REDUCTION:Ljava/lang/String; = "pref_karaoke_key"

.field public static final KEY_LAST_SETTING_UPDATE_TIME:Ljava/lang/String; = "key_last_setting_update_time"

.field public static final KEY_LENS_DIRTY_DETECT_DATE:Ljava/lang/String; = "pref_lens_dirty_detect_date_key"

.field public static final KEY_LENS_DIRTY_DETECT_ENABLED:Ljava/lang/String; = "pref_lens_dirty_detect_enabled_key"

.field public static final KEY_LENS_DIRTY_DETECT_TIMES:Ljava/lang/String; = "pref_lens_dirty_detect_times_key"

.field public static final KEY_LENS_DIRTY_TIP:Ljava/lang/String; = "pref_lens_dirty_tip"

.field public static final KEY_LIVE_ALL_SWITCH_ADD_VALUE:Ljava/lang/String; = "pref_live_all_switch_add_value"

.field public static final KEY_LIVE_BEAUTY_STATUS:Ljava/lang/String; = "pref_live_beauty_status"

.field public static final KEY_LIVE_ENLARGE_EYE_RATIO:Ljava/lang/String; = "key_live_enlarge_eye_ratio"

.field public static final KEY_LIVE_FILTER:Ljava/lang/String; = "key_live_filter"

.field public static final KEY_LIVE_MODULE_CLICKED:Ljava/lang/String; = "pref_live_module_clicked"

.field public static final KEY_LIVE_MUSIC_FIRST_REQUEST_TIME:Ljava/lang/String; = "pref_key_live_music_first_request_time"

.field public static final KEY_LIVE_MUSIC_HINT:Ljava/lang/String; = "pref_live_music_hint_key"

.field public static final KEY_LIVE_MUSIC_PATH:Ljava/lang/String; = "pref_live_music_path_key"

.field public static final KEY_LIVE_SHOT:Ljava/lang/String; = "pref_live_shot_enabled"

.field public static final KEY_LIVE_SHRINK_FACE_RATIO:Ljava/lang/String; = "key_live_shrink_face_ratio"

.field public static final KEY_LIVE_SMOOTH_STRENGTH:Ljava/lang/String; = "key_live_smooth_strength"

.field public static final KEY_LIVE_SPEED:Ljava/lang/String; = "pref_live_speed_key"

.field public static final KEY_LIVE_STICKER:Ljava/lang/String; = "pref_live_sticker_key"

.field public static final KEY_LIVE_STICKER_HINT:Ljava/lang/String; = "pref_live_sticker_hint_key"

.field public static final KEY_LIVE_STICKER_INTERNAL:Ljava/lang/String; = "pref_camera_live_sticker_internal"

.field public static final KEY_LIVE_STICKER_LAST_CACHE_TIME:Ljava/lang/String; = "pref_live_sticker_last_cache_time"

.field public static final KEY_LIVE_STICKER_NAME:Ljava/lang/String; = "pref_live_sticker_name_key"

.field public static final KEY_LIVE_STICKER_NEED_RED_DOT:Ljava/lang/String; = "pref_live_sticker_need_red_dot"

.field public static final KEY_LIVE_STICKER_RED_DOT_TIME:Ljava/lang/String; = "pref_live_sticker_red_dot_time"

.field public static final KEY_LOCALWORDS_VERSION:Ljava/lang/String; = "pref_localwords_version"

.field public static final KEY_LONG_PRESS_SHUTTER:Ljava/lang/String; = "pref_camera_long_press_shutter_key"

.field public static final KEY_LONG_PRESS_SHUTTER_FEATURE:Ljava/lang/String; = "pref_camera_long_press_shutter_feature_key"

.field public static final KEY_MACRO_SCENE_MODE:Ljava/lang/String; = "pref_camera_macro_scene_mode_key"

.field public static final KEY_MAKEUPS_FEMALE_BLUE_RATIOS:Ljava/lang/String; = "pref_beautify_female_blue_makeups_ratio_key"

.field public static final KEY_MAKEUPS_FEMALE_PINK_RATIOS:Ljava/lang/String; = "pref_beautify_female_pink_makeups_ratio_key"

.field public static final KEY_MAKEUPS_GENTLEMAN_RATIOS:Ljava/lang/String; = "pref_beautify_gentleman_makeups_ratio_key"

.field public static final KEY_MAKEUPS_NONE:Ljava/lang/String; = "pref_beautify_makeups_none"

.field public static final KEY_MAKEUPS_NUDE_RATIOS:Ljava/lang/String; = "pref_beautify_nude_makeups_ratio_key"

.field public static final KEY_MAKEUPS_SOLID_RATIOS:Ljava/lang/String; = "pref_beautify_solid_makeups_ratio_key"

.field public static final KEY_MAKEUPS_TOUGHMAN_RATIOS:Ljava/lang/String; = "pref_beautify_toughman_makeups_ratio_key"

.field public static final KEY_MAKEUPS_TYPE:Ljava/lang/String; = "pref_makeups_type_key"

.field public static final KEY_MASTER_SHADER_COLOR_EFFECT:Ljava/lang/String; = "pref_camera_master_shader_coloreffect_key"

.field public static final KEY_MIMOJI_DOWNLOAD_TIME:Ljava/lang/String; = "pref_mimoji_download_time"

.field public static final KEY_MIMOJI_MODEL_VERSION:Ljava/lang/String; = "pref_mimoji_model_verion"

.field public static final KEY_MIMOJI_PHOTO_FLASH_MODE:Ljava/lang/String; = "pref_camera_fun_ar_photo_flashmode_key"

.field public static final KEY_MIMOJI_VIDEO_FLASH_MODE:Ljava/lang/String; = "pref_camera_fun_ar_video_flashmode_key"

.field public static final KEY_MIUICAMERA_VERSION_CODE:Ljava/lang/String; = "pref_app_version_code_key"

.field public static final KEY_MI_LIVE_DURATION:Ljava/lang/String; = "pref_mi_live_duration"

.field public static final KEY_MI_LIVE_QUALITY:Ljava/lang/String; = "pref_mi_live_quality"

.field public static final KEY_MODULE_ULTRA_PIXEL_TIP:Ljava/lang/String; = "pref_module_ultra_pixel_tip"

.field public static final KEY_MOON_MODE_VALUE:Ljava/lang/String; = "pref_moon_mode_value_key"

.field public static final KEY_MOVIE_SOLID:Ljava/lang/String; = "pref_camera_movie_solid_key"

.field public static final KEY_NEW_VIDEO_TIME_LAPSE_DURATION:Ljava/lang/String; = "pref_new_video_time_lapse_duration_key"

.field public static final KEY_NEW_VIDEO_TIME_LAPSE_FRAME_INTERVAL:Ljava/lang/String; = "pref_new_video_time_lapse_frame_interval_key"

.field public static final KEY_NONE_BEAUTY_STATUS:Ljava/lang/String; = "pref_none_beauty_status"

.field public static final KEY_NORMAL_WIDE_LDC:Ljava/lang/String; = "pref_camera_normal_wide_ldc_key"

.field public static final KEY_OPEN_CAMERA_FAIL:Ljava/lang/String; = "open_camera_fail_key"

.field public static final KEY_PANORAMA_MOVE_DIRECTION:Ljava/lang/String; = "pref_panorana_move_direction_key"

.field public static final KEY_PHOTO_ASSISTANCE_TIPS:Ljava/lang/String; = "pref_photo_assistance_tips"

.field public static final KEY_PICTURE_FLAW_TIP:Ljava/lang/String; = "pref_pic_flaw_tip"

.field public static final KEY_PICTURE_SIZE:Ljava/lang/String; = "pref_camera_picturesize_key"

.field public static final KEY_PICTURE_STYLE:Ljava/lang/String; = "pref_picture_style"

.field public static final KEY_PLAY_TONE_ON_CAPTURE_START:Ljava/lang/String; = "pref_play_tone_on_capture_start_key"

.field public static final KEY_POPUP_TIPS_COLLECTION:Ljava/lang/String; = "pref_tips_guide"

.field public static final KEY_POPUP_TIP_BEAUTY_INTRO_CLICKED:Ljava/lang/String; = "pref_popup_tip_beauty_intro_clicked_key"

.field public static final KEY_POPUP_ULTRA_WIDE_INTRO_SHOW_TIMES:Ljava/lang/String; = "pre_popup_ultra_wide_intro_show_times"

.field public static final KEY_PORTRAIT_FLASH_MODE:Ljava/lang/String; = "pref_camera_portrait_flashmode_key"

.field public static final KEY_PORTRAIT_HDR:Ljava/lang/String; = "pref_portrait_hdr_key"

.field public static final KEY_PORTRAIT_LIGHTING:Ljava/lang/String; = "pref_portrait_lighting"

.field public static final KEY_PRIORITY_STORAGE:Ljava/lang/String; = "pref_priority_storage"

.field public static final KEY_PROFESSION_DISPLAY:Ljava/lang/String; = "pref_professional_display_key"

.field public static final KEY_PRO_MODE_MOVIE_SOLID:Ljava/lang/String; = "pref_camera_pro_mode_movie_solid_key"

.field public static final KEY_PRO_VIDEO_AUTOEXPOSURE:Ljava/lang/String; = "pref_pro_video_autoexposure_key"

.field public static final KEY_PRO_VIDEO_GAIN_VALUE:Ljava/lang/String; = "pro_set_gain_value"

.field public static final KEY_PRO_VIDEO_HDR:Ljava/lang/String; = "pref_pro_video_hdr_key"

.field public static final KEY_PRO_VIDEO_RECORDING_SIMPLE:Ljava/lang/String; = "pref_pro_video_recording_simple"

.field public static final KEY_PRO_VIDEO_WHITE_BALANCE:Ljava/lang/String; = "pref_camera_video_whitebalance_key"

.field public static final KEY_QC_CONTRAST:Ljava/lang/String; = "pref_qc_camera_contrast_key"

.field public static final KEY_QC_EXPOSURETIME:Ljava/lang/String; = "pref_qc_camera_exposuretime_key"

.field public static final KEY_QC_FASTMOTION_PRO_EXPOSURETIME:Ljava/lang/String; = "pref_qc_camera_fastmotion_pro_exposuretime_key"

.field public static final KEY_QC_FASTMOTION_PRO_EXPOSURE_VALUE:Ljava/lang/String; = "pref_qc_camera_fastmotion_pro_exposure_value_key"

.field public static final KEY_QC_FASTMOTION_PRO_FOCUS_POSITION:Ljava/lang/String; = "pref_fastmotion_pro_focus_position_key"

.field public static final KEY_QC_FASTMOTION_PRO_ISO:Ljava/lang/String; = "pref_qc_fastmotion_pro_camera_iso_key"

.field public static final KEY_QC_FASTMOTION_PRO_MANUAL_WHITEBALANCE_VALUE:Ljava/lang/String; = "pref_qc_fastmotion_pro_manual_whitebalance_k_value_key"

.field public static final KEY_QC_FOCUS_MODE_SWITCHING:Ljava/lang/String; = "pref_qc_focus_mode_switching_key"

.field public static final KEY_QC_FOCUS_POSITION:Ljava/lang/String; = "pref_focus_position_key"

.field public static final KEY_QC_ISO:Ljava/lang/String; = "pref_qc_camera_iso_key"

.field public static final KEY_QC_MANUAL_EXPOSURE_VALUE:Ljava/lang/String; = "pref_qc_camera_manual_exposure_value_key"

.field public static final KEY_QC_MANUAL_WHITEBALANCE_VALUE:Ljava/lang/String; = "pref_qc_manual_whitebalance_k_value_key"

.field public static final KEY_QC_PRO_VIDEO_EXPOSURETIME:Ljava/lang/String; = "pref_qc_camera_pro_video_exposuretime_key"

.field public static final KEY_QC_PRO_VIDEO_EXPOSURE_VALUE:Ljava/lang/String; = "pref_qc_camera_pro_video_exposure_value_key"

.field public static final KEY_QC_PRO_VIDEO_FOCUS_POSITION:Ljava/lang/String; = "pref_pro_video_focus_position_key"

.field public static final KEY_QC_PRO_VIDEO_ISO:Ljava/lang/String; = "pref_qc_pro_video_camera_iso_key"

.field public static final KEY_QC_PRO_VIDEO_WHITEBALANCE_VALUE:Ljava/lang/String; = "pref_qc_pro_video_whitebalance_k_value_key"

.field public static final KEY_QC_SATURATION:Ljava/lang/String; = "pref_qc_camera_saturation_key"

.field public static final KEY_QC_SHARPNESS:Ljava/lang/String; = "pref_qc_camera_sharpness_key"

.field public static final KEY_RAW:Ljava/lang/String; = "pref_camera_raw_key"

.field public static final KEY_RECORD_LOCATION:Ljava/lang/String; = "pref_camera_recordlocation_key"

.field public static final KEY_REFERENCE_LINE:Ljava/lang/String; = "pref_camera_referenceline_key"

.field public static final KEY_REFERENCE_LINE_TYPE:Ljava/lang/String; = "pref_camera_referenceline_type_key"

.field public static final KEY_RETAIN_AI_SCENE:Ljava/lang/String; = "pref_retain_ai_scene_key"

.field public static final KEY_RETAIN_BEAUTY:Ljava/lang/String; = "pref_retain_beauty_key"

.field public static final KEY_RETAIN_CAMERA_MODE:Ljava/lang/String; = "pref_retain_camera_mode_key"

.field public static final KEY_RETAIN_CAMERA_STATUS:Ljava/lang/String; = "pref_retain_camera_status_key"

.field public static final KEY_RETAIN_LIVE_SHOT:Ljava/lang/String; = "pref_retain_live_shot"

.field public static final KEY_RETAIN_ZOOM:Ljava/lang/String; = "pref_camera_zoom_retain_key"

.field public static final KEY_SCAN_QRCODE:Ljava/lang/String; = "pref_scan_qrcode_key"

.field public static final KEY_SCENE_MODE:Ljava/lang/String; = "pref_camera_scenemode_key"

.field public static final KEY_SCENE_MODE_SETTINGS:Ljava/lang/String; = "pref_camera_scenemode_setting_key"

.field public static final KEY_SHADER_CLASSICS_COLOR_EFFECT:Ljava/lang/String; = "pref_camera_shader_classics_coloreffect_key"

.field public static final KEY_SHADER_COLOR_EFFECT:Ljava/lang/String; = "pref_camera_shader_coloreffect_key"

.field public static final KEY_SHOW_GENDER_AGE:Ljava/lang/String; = "pref_camera_show_gender_age_key"

.field public static final KEY_SKIN_COLOR_TYPE:Ljava/lang/String; = "pref_skin_color_type_key"

.field public static final KEY_SOUND_SETTING:Ljava/lang/String; = "pref_sound_setting_key"

.field public static final KEY_SPEECH_SHUTTER:Ljava/lang/String; = "pref_speech_shutter"

.field public static final KEY_SPEECH_SHUTTER_STATUS:Ljava/lang/String; = "pref_speech_shutter_status"

.field public static final KEY_STICKER_PATH:Ljava/lang/String; = "pref_sticker_path_key"

.field public static final KEY_SUPER_EIS:Ljava/lang/String; = "pref_camera_super_eis"

.field public static final KEY_TARGET_ZOOM:Ljava/lang/String; = "pref_camera_target_zoom_key"

.field public static final KEY_TIME_WATERMARK:Ljava/lang/String; = "pref_time_watermark_key"

.field public static final KEY_TRACK_EYE_FOCUS:Ljava/lang/String; = "pref_camera_track_eye_preferred_key"

.field public static final KEY_TRACK_FOCUS:Ljava/lang/String; = "pref_camera_track_focus_preferred_key"

.field public static final KEY_TT_LIVE_MUSIC_JSON_CACHE:Ljava/lang/String; = "pref_key_tt_live_music_json_cache"

.field public static final KEY_TT_LIVE_STICKER_JSON_CACHE:Ljava/lang/String; = "pref_key_tt_live_sticker_json_cache"

.field public static final KEY_UBIFOCUS_KEY:Ljava/lang/String; = "pref_camera_ubifocus_key"

.field public static final KEY_ULTRA_PIXEL:Ljava/lang/String; = "pref_ultra_pixel"

.field public static final KEY_ULTRA_PIXEL_PORTRAIT:Ljava/lang/String; = "pref_camera_ultra_pixel_portrait_mode_key"

.field public static final KEY_ULTRA_WIDE_BOKEH:Ljava/lang/String; = "pref_ultra_wide_bokeh_enabled"

.field public static final KEY_ULTRA_WIDE_LDC:Ljava/lang/String; = "pref_camera_ultra_wide_ldc_key"

.field public static final KEY_ULTRA_WIDE_VIDEO_LDC:Ljava/lang/String; = "pref_camera_ultra_wide_video_ldc_key"

.field public static final KEY_USERDEFINE_WATERMARK:Ljava/lang/String; = "user_define_watermark_key"

.field public static final KEY_VERSION:Ljava/lang/String; = "pref_version_key"

.field public static final KEY_VIDEOCAMERA_FLASH_MODE:Ljava/lang/String; = "pref_camera_video_flashmode_key"

.field public static final KEY_VIDEO_AUTOEXPOSURE:Ljava/lang/String; = "pref_video_autoexposure_key"

.field public static final KEY_VIDEO_BOKEH:Ljava/lang/String; = "pref_video_bokeh_key"

.field public static final KEY_VIDEO_BOKEH_ADJUST:Ljava/lang/String; = "pref_video_bokeh_adjust_key"

.field public static final KEY_VIDEO_BOKEH_BLUR_NULL:Ljava/lang/String; = "key_video_bokeh_blur_null"

.field public static final KEY_VIDEO_BOKEH_BLUR_RATIO:Ljava/lang/String; = "key_video_bokeh_blur_ratio"

.field public static final KEY_VIDEO_BOKEH_COLOR_POINT_RATIO:Ljava/lang/String; = "key_video_bokeh_color_point_ratio"

.field public static final KEY_VIDEO_BOKEH_COLOR_RETENTION:Ljava/lang/String; = "key_video_bokeh_color_point_retention"

.field public static final KEY_VIDEO_BOKEH_COLOR_RETENTION_MODE:Ljava/lang/String; = "pref_video_bokeh_color_retention_mode_key"

.field public static final KEY_VIDEO_BOKEH_SPIN_RATIO:Ljava/lang/String; = "key_video_bokeh_spin_ratio"

.field public static final KEY_VIDEO_BOKEH_ZOOM_RATIO:Ljava/lang/String; = "key_video_bokeh_zoom_ratio"

.field public static final KEY_VIDEO_CAPTURE_REPEATING:Ljava/lang/String; = "pref_video_capture_repeating"

.field public static final KEY_VIDEO_CAST:Ljava/lang/String; = "pref_video_cast"

.field public static final KEY_VIDEO_DENOISE:Ljava/lang/String; = "pref_video_denoise"

.field public static final KEY_VIDEO_DYNAMIC_FRAME_RATE:Ljava/lang/String; = "pref_camera_dynamic_frame_rate_key"

.field public static final KEY_VIDEO_ENCODER:Ljava/lang/String; = "pref_video_encoder_key"

.field public static final KEY_VIDEO_HDR:Ljava/lang/String; = "pref_video_hdr_key"

.field public static final KEY_VIDEO_HSR_120:I = 0x78

.field public static final KEY_VIDEO_HSR_24:I = 0x18

.field public static final KEY_VIDEO_HSR_30:I = 0x0

.field public static final KEY_VIDEO_HSR_60:I = 0x3c

.field public static final KEY_VIDEO_NEW_SLOW_MOTION:Ljava/lang/String; = "pref_video_new_slow_motion_key"

.field public static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "pref_video_quality_key"

.field public static final KEY_VIDEO_SHOW_FACE_VIEW:Ljava/lang/String; = "pref_camera_video_show_faceview"

.field public static final KEY_VIDEO_SKY:Ljava/lang/String; = "pref_video_sky"

.field public static final KEY_VIDEO_SKY_RESOURCE_VERSION:Ljava/lang/String; = "pref_video_sky_resource_version"

.field public static final KEY_VIDEO_SPEED:Ljava/lang/String; = "pref_video_speed_key"

.field public static final KEY_VIDEO_SPEED_FAST:Ljava/lang/String; = "pref_video_speed_fast_key"

.field public static final KEY_VIDEO_SUBTITLE:Ljava/lang/String; = "pref_video_subtitle_key"

.field public static final KEY_VIDEO_SUB_FPS:Ljava/lang/String; = "pref_video_sub_fps_key"

.field public static final KEY_VIDEO_SUB_QUALITY:Ljava/lang/String; = "pref_video_sub_quality_key"

.field public static final KEY_VIDEO_TAG:Ljava/lang/String; = "pref_camera_video_tag_key"

.field public static final KEY_VIDEO_TIME_LAPSE_FRAME_INTERVAL:Ljava/lang/String; = "pref_video_time_lapse_frame_interval_key"

.field public static final KEY_VOLUME_CAMERA_FUNCTION:Ljava/lang/String; = "pref_camera_volumekey_function_key"

.field public static final KEY_WATERMARK:Ljava/lang/String; = "pref_watermark_key"

.field public static final KEY_WHITE_BALANCE:Ljava/lang/String; = "pref_camera_whitebalance_key"

.field public static final KEY_WIND_DENOISE:Ljava/lang/String; = "pref_wind_denoise"

.field public static final KEY_ZOOM:Ljava/lang/String; = "pref_camera_zoom_key"

.field public static final LIVE_SPEED_DEFAULT:I = 0x2

.field public static final MORE_MODE_STYLE_DEFAULT:I = 0x0

.field public static final MORE_MODE_STYLE_POPUP:I = 0x1

.field public static final MORE_MODE_STYLE_TAB:I = 0x0

.field public static final QRCODE_RECEIVER_PACKAGE:Ljava/lang/String; = "com.xiaomi.scanner"

.field public static final REMIND_SUFFIX:Ljava/lang/String; = "_remind"

.field public static final TAG:Ljava/lang/String; = "CameraSettings"

.field public static final UI_STYLE_16_9:I = 0x1

.field public static final UI_STYLE_1_1:I = 0x4

.field public static final UI_STYLE_4_3:I = 0x0

.field public static final UI_STYLE_CINEMATIC:I = 0x5

.field public static final UI_STYLE_ERROR:I = -0x1

.field public static final UI_STYLE_FULL_SCREEN:I = 0x3

.field public static final VIDEO_MODE_120:Ljava/lang/String; = "fps120"

.field public static final VIDEO_MODE_240:Ljava/lang/String; = "fps240"

.field public static final VIDEO_MODE_480:Ljava/lang/String; = "fps480"

.field public static final VIDEO_MODE_960:Ljava/lang/String; = "fps960"

.field public static final VIDEO_MODE_FILM_EXPOSUREDELAY:Ljava/lang/String; = "film_exposuredelay"

.field public static final VIDEO_MODE_FUN:Ljava/lang/String; = "fun"

.field public static final VIDEO_MODE_LIVE:Ljava/lang/String; = "live"

.field public static final VIDEO_SPEED_FAST:Ljava/lang/String; = "fast"

.field public static final VIDEO_SPEED_NORMAL:Ljava/lang/String; = "normal"

.field public static final sCameraChangeManager:Lcom/android/camera/ChangeManager;

.field public static sCroppedIfNeeded:Z = false

.field public static sGoolgeLensAvilability:Z = false

.field public static final sLiveSpeedTextList:[I

.field public static sManualFlashTorchThreshold:J

.field public static sRemindMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sSceneToFlash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    const-wide/32 v0, 0x9efa3e0

    .line 3
    sput-wide v0, Lcom/android/camera/CameraSettings;->sManualFlashTorchThreshold:J

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/CameraSettings;->sLiveSpeedTextList:[I

    .line 5
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const/4 v1, 0x0

    const-string v2, "0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v3, "3"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v3, "4"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v3, "13"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "6"

    const-string v3, "1"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "backlight"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "flowers"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    const-string/jumbo v1, "pref_camera_mode_settings_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    const-string/jumbo v1, "pref_camera_magic_mirror_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v0, Lcom/android/camera/ChangeManager;

    invoke-direct {v0}, Lcom/android/camera/ChangeManager;-><init>()V

    sput-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    const-string v0, "debug.vendor.camera.app.quickshot.enable"

    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/CameraSettings;->DEBUG_FAST_SHOT:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x7f12048c
        0x7f120490
        0x7f12048f
        0x7f12048d
        0x7f12048b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLensDirtyDetectedTimes()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataNormalItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_lens_dirty_detect_enabled_key"

    .line 2
    invoke-interface {v0, v2, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataNormalItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v6

    const-string/jumbo v7, "pref_lens_dirty_detect_date_key"

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v6, 0x1

    .line 8
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const-string/jumbo v10, "pref_lens_dirty_detect_times_key"

    if-ne v8, v9, :cond_0

    const/4 v8, 0x2

    .line 9
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v9, v8, :cond_0

    const/4 v8, 0x5

    .line 10
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataNormalItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4, v10, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v6, v1

    .line 12
    :cond_0
    invoke-interface {v0, v10, v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 13
    invoke-interface {v0, v7, v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 14
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add lens dirty detected times: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettings"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static addPopupUltraWideIntroShowTimes()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pre_popup_ultra_wide_intro_show_times"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, v1, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static checkLensAvailability(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000ooO0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.xiaomi.lens"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/Util;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 4
    :cond_1
    sget-boolean p0, Lcom/android/camera/CameraSettings;->sGoolgeLensAvilability:Z

    return p0
.end method

.method public static dealVideoQuality(Ljava/lang/String;II)I
    .locals 3

    if-eqz p0, :cond_4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result p2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v1

    :goto_1
    const-string p2, ","

    .line 4
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v2, 0x0

    if-lez p2, :cond_3

    .line 5
    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr p2, v1

    .line 6
    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object p0, v0

    .line 7
    :cond_3
    invoke-static {p1, v2}, Lcom/android/camera/CameraSettings;->setHSRValue(ZLjava/lang/String;)V

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_4
    :goto_2
    const-string p0, "5"

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static deleteObsoletePreferences()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/shared_prefs"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v3, Lcom/android/camera/module/common/ModuleUtil;->CAMERA_MODES:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget v7, v3, v6

    if-eqz v7, :cond_1

    move v8, v5

    :goto_1
    if-ge v8, v1, :cond_1

    .line 5
    aget v9, v2, v8

    .line 6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "camera_settings_simple_mode_local_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v9, v7}, Lcom/android/camera/CameraSettings;->getPreferencesLocalId(II)I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 8
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".xml"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 10
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 11
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "camera_settings_simple_mode_global.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static get4kProfile()I
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const v0, 0x7f120877

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static get8kProfile()I
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->get8KProfile(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getAiNoiseReductionState()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05000d

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo v2, "pref_intelligent_noise_reduction_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getAiSceneOpen(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigAi()Lcom/android/camera/data/data/config/ComponentConfigAi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigAi;->isAiSceneOn(I)Z

    move-result p0

    return p0
.end method

.method public static getAiShutterSettingUiState(I)Lcom/android/camera/SettingUiState;
    .locals 6

    .line 1
    new-instance v0, Lcom/android/camera/SettingUiState;

    invoke-direct {v0}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isCurrentModeSupportAIS(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    .line 5
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getFlashMode(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    const-string v4, "101"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v5

    :goto_1
    if-nez v1, :cond_6

    if-eqz v3, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 9
    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getHdrUIStatus(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_4

    move v2, v5

    :cond_4
    if-eqz v2, :cond_5

    .line 10
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isCurrentModeSupportHdrAIS(I)Z

    move-result p0

    if-nez p0, :cond_5

    .line 11
    iput-boolean v5, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :cond_5
    return-object v0

    .line 12
    :cond_6
    :goto_2
    iput-boolean v5, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0
.end method

.method public static getAntiBanding()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_antibanding_key"

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getDefaultValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAspectRatio(II)I
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isNearRatio16_9(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isNearRatio18_9(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoModule()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSupportRealSquare()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p0, p1, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static getAutoHibernationUiState(IZ)Lcom/android/camera/SettingUiState;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/SettingUiState;

    invoke-direct {v0}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_7

    if-eqz p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    const/16 v1, 0xa9

    const/16 v3, 0xa7

    const/16 v4, 0xa3

    if-eq p0, v1, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa2

    if-eq p0, v1, :cond_1

    const/16 v1, 0xbb

    if-eq p0, v1, :cond_1

    .line 4
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0oo()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo0()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-eq p0, v4, :cond_3

    if-ne p0, v3, :cond_5

    .line 6
    :cond_3
    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oOO0()Z

    move-result p0

    if-nez p0, :cond_4

    .line 7
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    .line 8
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :cond_5
    return-object v0

    .line 9
    :cond_6
    :goto_0
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    .line 10
    :cond_7
    :goto_1
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0
.end method

.method public static getBeautyLens()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningBeautyLens()Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBeautyMakeupsTypeValue()I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_FRONT_MAKEUPS:[Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getMakeupsType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/constant/BeautyConstant;->getTypeIndexBySupportTypes([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getBeautyMode()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeautyMode()Lcom/android/camera/data/data/config/ComponentConfigBeautyMode;

    move-result-object v0

    const/16 v1, 0xa3

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBeautyShowLevel()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyLevel()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/android/camera/constant/BeautyConstant;->getLevelInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getBogusCameraId()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    return v0
.end method

.method public static getBool(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static getBroadcastKillServiceTime()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_broadcast_kill_service_key"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCameraAiAudio3DNeed(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0xa2

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static getCameraBluetoothHeadsetNeed(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/android/camera/SoundSetting;->isSupportHeadset(I)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static getCameraId()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getActualOpenCameraId(II)I

    move-result v0

    return v0
.end method

.method public static getCameraId(I)I
    .locals 2

    .line 5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    .line 7
    invoke-virtual {v0, v1, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getActualOpenCameraId(II)I

    move-result p0

    return p0
.end method

.method public static getCameraKaraokeFunctionNeed(Landroid/content/Context;I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "audio"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const-string v0, "audio_camera_loopback_support"

    .line 3
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "audio_camera_loopback_support=true"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/16 p0, 0xa2

    if-eq p1, p0, :cond_2

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_2

    const/16 p0, 0xcc

    if-eq p1, p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static getCameraLensType(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCameraNSNeed(Landroid/content/Context;I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "audio"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const-string v0, "audio_camera_ns_support"

    .line 3
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "audio_camera_ns_support=true"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/16 p0, 0xa2

    if-eq p1, p0, :cond_3

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_3

    const/16 p0, 0xcc

    if-ne p1, p0, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static getCameraOnlyVideoHistogramNeed(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportHistogram()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0oo0()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/16 v0, 0xb4

    if-eq p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static getCameraPhotoHistogramNeed(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportHistogram()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o00oo()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/16 v0, 0xa7

    if-eq p0, v0, :cond_3

    return v1

    .line 4
    :cond_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static getCameraProfessionalDisplayNeed(I)Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0oo0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getCameraSnapSettingNeed(IZ)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    const/16 p1, 0xa3

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-boolean p0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo000:Z

    if-nez p0, :cond_2

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static getCameraSoundSettingNeed(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0Ooo()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0xa2

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_2

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static getColorEffect()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const v1, 0x7f12065f

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_coloreffect_key"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContrast()Ljava/lang/String;
    .locals 4

    const v0, 0x7f120674

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string/jumbo v2, "pref_qc_camera_contrast_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f030029

    .line 4
    invoke-static {v1, v2}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset invalid contrast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraSettings"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetContrast()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getCountDownTimes()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getTimer()I

    move-result v0

    return v0
.end method

.method public static getCurrentLiveMusic()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    const-string v2, ""

    const-string/jumbo v3, "pref_live_music_path_key"

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    const-string/jumbo v3, "pref_live_music_hint_key"

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getCurrentLiveSpeed()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pref_live_speed_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentLiveSpeedText()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveSpeed()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/camera/CameraSettings;->sLiveSpeedTextList:[I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v1, v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentLiveSticker()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    const-string/jumbo v1, "pref_live_sticker_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentLiveStickerName()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    const-string/jumbo v1, "pref_live_sticker_name_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomWB()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    const/16 v2, 0xa9

    if-ne v1, v2, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    const-string/jumbo v2, "pref_qc_fastmotion_pro_manual_whitebalance_k_value_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    const-string/jumbo v2, "pref_qc_manual_whitebalance_k_value_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCustomWatermark()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pref_custom_watermark"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomWatermark(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_custom_watermark"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultFNumber()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultValueByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x34c80dc1    # -1.2055103E7f

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, -0x2057773

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "pref_camera_antibanding_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "pref_video_quality_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_6

    if-eq p0, v2, :cond_3

    const-string p0, ""

    return-object p0

    .line 2
    :cond_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoO0()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f12081a

    .line 3
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000oOoO()Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f12086b

    .line 5
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0o()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_6
    invoke-static {}, Lcom/android/camera/Util;->isAntibanding60()Z

    move-result p0

    if-eqz p0, :cond_7

    const p0, 0x7f120641

    .line 8
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_7
    invoke-static {}, Lcom/android/camera/Util;->isFlickSensorEnable()Z

    move-result p0

    if-eqz p0, :cond_8

    const p0, 0x7f120642

    .line 10
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_8
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0OO()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultWatermarkStr()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOOO:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.boot.hwc"

    .line 2
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "india"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/vendor/etc/camera/dualcamera_india.png"

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oo00()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/vendor/persist/camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Util;->getDefaultWatermarkFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "/vendor/etc/camera/dualcamera.png"

    return-object v0
.end method

.method public static getDualCameraWaterMarkState(Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00OO()Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000OO0()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    return-object v0
.end method

.method public static getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120721

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_jpegquality_key"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/android/camera/EncodingQuality;->enumOf(Ljava/lang/String;)Lcom/android/camera/EncodingQuality;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 5
    sget-object p0, Lcom/android/camera/EncodingQuality;->NORMAL:Lcom/android/camera/EncodingQuality;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera/EncodingQuality;->HIGH:Lcom/android/camera/EncodingQuality;

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static getExposureMeteringMode()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastMotionModule()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f12064d

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigMeter()Lcom/android/camera/data/data/config/ComponentConfigMeter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getExposureTime()J
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const v1, 0x7f120688

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProModule()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "pref_qc_camera_exposuretime_key"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFaceBeautifyLevel()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000OO()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pref_old_beautify_level_key_capture"

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "i:0"

    return-object v0
.end method

.method public static getFaceBeautyRatio(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/camera/constant/BeautyConstant;->getDefaultValueByKey(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/android/camera/constant/BeautyConstant;->isLiveBeautyModeKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-static {p0}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-static {p0}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getFingerprintCaptureSettingNeed(IZ)Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOO0()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isInAllRecordModeSet(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/16 p1, 0xb8

    if-eq p0, p1, :cond_3

    const/16 p1, 0xbc

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static getFlashMode(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getFocusMode()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProModule()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastMotionModule()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoModule()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFunModule()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isMiLiveModule()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f1206e3

    .line 3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const v0, 0x7f120867

    .line 4
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getMappingFocusMode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFocusPosition()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFocusShootSettingNeed(IZ)Z
    .locals 1

    const/16 p1, 0xab

    if-eq p0, p1, :cond_2

    const/16 p1, 0xa3

    if-eq p0, p1, :cond_2

    const/16 p1, 0xb8

    if-ne p0, p1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPhoto()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    const/16 p1, 0xad

    if-eq p0, p1, :cond_2

    const/16 p1, 0xaf

    if-eq p0, p1, :cond_2

    const/16 p1, 0xcd

    if-eq p0, p1, :cond_2

    const/16 p1, 0xbc

    if-eq p0, p1, :cond_2

    const/16 p1, 0xba

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getGainValueReset()F
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string/jumbo v1, "pro_set_gain_value"

    const/high16 v2, 0x42480000    # 50.0f

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getHDR10PlusUiState(IZ)Lcom/android/camera/SettingUiState;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/camera/SettingUiState;

    invoke-direct {p0}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    sget-boolean p1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0o0:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSATShow()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->getSupportVideoHdrMode()I

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p0

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->getAvailableVideoHdrMode()I

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isMutexEnable(I)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :cond_4
    return-object p0
.end method

.method public static getHDR10UiState(IZ)Lcom/android/camera/SettingUiState;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/camera/SettingUiState;

    invoke-direct {p0}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    sget-boolean p1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0o0:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupportedHdr10()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p0

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isMutexEnable(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :cond_2
    return-object p0
.end method

.method public static getHSRIntegerValue()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getHSRValue(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    :goto_1
    return v2
.end method

.method public static getHSRValue(Z)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string/jumbo p0, "pref_camera_hsr_value_key_u"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "pref_camera_hsr_value_key"

    .line 1
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHdr10ProUiNeedRemove(IZ)Lcom/android/camera/SettingUiState;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/camera/SettingUiState;

    invoke-direct {p0}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10PRO()Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->isSATShow()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10PRO()Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->isSupported()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p0

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10PRO()Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->isMutexEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :cond_2
    return-object p0
.end method

.method public static getHeadSetState()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05001a

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo v2, "pref_earphone_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getJpegQualityUiState(IZ)Lcom/android/camera/SettingUiState;
    .locals 2

    .line 1
    new-instance p1, Lcom/android/camera/SettingUiState;

    invoke-direct {p1}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isInAllRecordModeSet(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    :cond_1
    const/16 v0, 0xb9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd2

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd5

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    return-object p1

    .line 6
    :cond_3
    :goto_0
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1
.end method

.method public static getKaraokeState()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05001e

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo v2, "pref_karaoke_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getKeyCloudSenstiveWordsPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://file.market.xiaomi.com/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/sensi_words.txt"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLiveAllSwitchAllValue()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    const-string/jumbo v1, "pref_live_all_switch_add_value"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLiveStickerLastCacheTime()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_live_sticker_last_cache_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLiveStickerRedDotTime()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_live_sticker_red_dot_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLocalWordsVersion()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_localwords_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLongPressShutterFeature()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const v1, 0x7f120735

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_long_press_shutter_feature_key"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLongPressShutterSettingNeed(IZ)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa3

    if-ne p0, v1, :cond_4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isImageIntent()Z

    move-result p0

    if-nez p0, :cond_4

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSupportRealSquare()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoOo()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 4
    :cond_1
    sget-boolean p0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo000:Z

    if-eqz p0, :cond_2

    return v0

    .line 5
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0Oo0oo()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoOo()Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public static getMakeupsType()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMakeups()Lcom/android/camera/data/data/runing/ComponentRunningMakeups;

    move-result-object v0

    const/16 v1, 0xa0

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningMakeups;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getManualFocusName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const p1, 0x7f1206dd

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x4082c00000000000L    # 600.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    const p1, 0x7f1206df

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_2

    const p1, 0x7f1206e1

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f1206de

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMappingFocusMode(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_2

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProVideoModule()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastMotionModule()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "continuous-picture"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "continuous-video"

    goto :goto_1

    :cond_2
    const-string p0, "manual"

    :goto_1
    return-object p0
.end method

.method public static getMimojiDownloadTime()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    const-string/jumbo v1, "pref_mimoji_download_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMimojiModleVersion()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    const-string/jumbo v1, "pref_mimoji_model_verion"

    const-string/jumbo v2, "v0"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMirrorSettingUiNeed(IZ)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0xa1

    if-eq p0, p1, :cond_6

    const/16 p1, 0xa6

    if-eq p0, p1, :cond_6

    const/16 p1, 0xb7

    if-eq p0, p1, :cond_6

    const/16 p1, 0xd7

    if-eq p0, p1, :cond_6

    const/16 p1, 0xb0

    if-eq p0, p1, :cond_6

    const/16 p1, 0xb3

    if-eq p0, p1, :cond_6

    const/16 p1, 0xd1

    if-eq p0, p1, :cond_6

    const/16 p1, 0xac

    if-eq p0, p1, :cond_6

    const/16 p1, 0xb8

    if-eq p0, p1, :cond_6

    const/16 p1, 0xba

    if-eq p0, p1, :cond_6

    const/16 p1, 0xb6

    if-eq p0, p1, :cond_6

    const/16 p1, 0xb9

    if-eq p0, p1, :cond_6

    const/16 p1, 0xd5

    if-eq p0, p1, :cond_6

    const/16 p1, 0xcc

    if-eq p0, p1, :cond_6

    const/16 p1, 0xcd

    if-ne p0, p1, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOo0o()Z

    move-result p1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterByConfig: isSupportVideoFrontMirror = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraSettings"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa9

    const/16 v2, 0xa2

    if-eq p0, v2, :cond_2

    if-ne p0, v1, :cond_3

    :cond_2
    if-nez p1, :cond_3

    return v0

    .line 3
    :cond_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eq p0, v2, :cond_4

    if-ne p0, v1, :cond_5

    :cond_4
    return v0

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_0
    return v0
.end method

.method public static getMiuiSettingsKeyForStreetSnap(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f120798

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f120797

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "none"

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "Street-snap-picture"

    return-object p0
.end method

.method public static getMoreModeStyle()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_open_more_mode_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMovieSolidUiState(IZI)Lcom/android/camera/SettingUiState;
    .locals 9

    .line 1
    new-instance v0, Lcom/android/camera/SettingUiState;

    invoke-direct {v0}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->oo0o0Oo()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isInAllCaptureModeSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    :cond_1
    if-eqz p0, :cond_16

    const/16 v1, 0xb8

    if-eq p0, v1, :cond_16

    const/16 v1, 0xac

    if-eq p0, v1, :cond_16

    const/16 v1, 0xd1

    if-eq p0, v1, :cond_16

    const/16 v1, 0xd3

    if-eq p0, v1, :cond_16

    const/16 v1, 0xd2

    if-eq p0, v1, :cond_16

    const/16 v1, 0xb9

    if-eq p0, v1, :cond_16

    const/16 v1, 0xd5

    if-eq p0, v1, :cond_16

    const/16 v1, 0xd6

    if-eq p0, v1, :cond_16

    const/16 v1, 0xbc

    if-eq p0, v1, :cond_16

    const/16 v1, 0xa2

    if-eq p0, v1, :cond_16

    const/16 v3, 0xb7

    if-eq p0, v3, :cond_16

    const/16 v3, 0xcc

    if-ne p0, v3, :cond_2

    goto/16 :goto_6

    :cond_2
    if-nez p2, :cond_3

    .line 6
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    .line 7
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result p2

    .line 8
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHSRIntegerValue()I

    move-result v4

    const/16 v5, 0x3c

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    move v4, v6

    goto :goto_0

    :cond_4
    move v4, v2

    .line 10
    :goto_0
    invoke-static {p2, p0}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality(II)I

    move-result p2

    const/16 v7, 0x1e

    if-eqz p1, :cond_6

    if-eqz v4, :cond_5

    move p1, v5

    goto :goto_1

    :cond_5
    move p1, v7

    .line 11
    :goto_1
    invoke-static {p2, p1, v3}, Lcom/android/camera/CameraSettings;->isCurrentQualitySupportEis(IILcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 12
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    .line 13
    :cond_6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOo()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    .line 15
    :cond_7
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "3001"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v8, 0x18

    invoke-static {p1, v8, v3}, Lcom/android/camera/CameraSettings;->isCurrentQualitySupportEis(IILcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 16
    iput-boolean v6, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0

    .line 17
    :cond_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 18
    iput-boolean v6, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0

    .line 19
    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isVideoShineForceOn(I)Z

    move-result p1

    if-nez p1, :cond_15

    .line 20
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMasterFilterOn(I)Z

    move-result p1

    if-eqz p1, :cond_a

    goto/16 :goto_5

    .line 21
    :cond_a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 22
    iput-boolean v6, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0

    :cond_b
    if-eqz v4, :cond_e

    .line 23
    invoke-static {p2, v5, v3}, Lcom/android/camera/CameraSettings;->isCurrentQualitySupportEis(IILcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_e

    if-eqz v3, :cond_c

    .line 24
    invoke-virtual {v3}, Lcom/android/camera2/CameraCapabilities;->is4K60FpsEISSupported()Z

    move-result p0

    if-nez p0, :cond_d

    invoke-static {v3, p2}, Lcom/android/camera/CameraSettings;->is1080P60FpsEISSupported(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p0

    if-nez p0, :cond_d

    :cond_c
    move v2, v6

    :cond_d
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0

    :cond_e
    if-nez v4, :cond_11

    .line 25
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 26
    invoke-static {p2, v7, v3}, Lcom/android/camera/CameraSettings;->isCurrentQualitySupportEis(IILcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_11

    if-ne p0, v1, :cond_10

    .line 27
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 28
    :cond_f
    invoke-static {v3, p0}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 29
    iput-boolean v6, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    goto :goto_2

    .line 30
    :cond_10
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000oOO()Z

    move-result p0

    xor-int/2addr p0, v6

    iput-boolean p0, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :goto_2
    return-object v0

    .line 31
    :cond_11
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result p1

    .line 32
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result p2

    .line 33
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v4

    if-ne p0, v1, :cond_14

    if-nez p1, :cond_13

    if-nez v4, :cond_13

    .line 34
    invoke-static {v3, p0}, Lcom/android/camera/CameraSettings;->videoHdrMetuxEis(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p0

    if-nez p0, :cond_13

    if-eqz p2, :cond_12

    goto :goto_3

    .line 35
    :cond_12
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    goto :goto_4

    .line 36
    :cond_13
    :goto_3
    iput-boolean v6, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :cond_14
    :goto_4
    return-object v0

    .line 37
    :cond_15
    :goto_5
    iput-boolean v6, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0

    .line 38
    :cond_16
    :goto_6
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0
.end method

.method public static getNormalWideLDCUiState(IZ)Lcom/android/camera/SettingUiState;
    .locals 3

    .line 1
    new-instance p1, Lcom/android/camera/SettingUiState;

    invoke-direct {p1}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isInAllRecordModeSet(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    :cond_0
    const/16 v0, 0xba

    if-eq p0, v0, :cond_6

    const/16 v0, 0xcd

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->shouldNormalWideLDCBeVisibleInMode(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    .line 7
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportNormalWideLDC()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigUltraWide()Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->isUltraWideOnInMode(I)Z

    move-result v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   currentMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   isUltraWideConfigOpen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   isUltraPixelOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   isMacroModeEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingUiState"

    .line 15
    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    .line 16
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const/4 p0, 0x1

    .line 18
    iput-boolean p0, p1, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :cond_5
    return-object p1

    .line 19
    :cond_6
    :goto_0
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1
.end method

.method public static getPanoramaMoveDirection(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    .line 2
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_panorana_move_direction_key"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o00()Z

    move-result v1

    if-nez v1, :cond_1

    return p0

    :cond_1
    return v0
.end method

.method public static getPictureSizeRatioString(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPlayToneOnCaptureStart()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string/jumbo v1, "pref_play_tone_on_capture_start_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPortraitLightingPattern()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getPreferLiveVideoQuality(II)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveVideoQuality()Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0, p0, p1}, Lcom/android/camera/CameraSettings;->dealVideoQuality(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getPreferVideoQuality(II)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0, p0, p1}, Lcom/android/camera/CameraSettings;->dealVideoQuality(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getPreferVideoQuality(Ljava/lang/String;II)I
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/android/camera/CameraSettings;->dealVideoQuality(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getPreferencesLocalId(II)I
    .locals 0

    add-int/2addr p0, p1

    return p0
.end method

.method public static getPreviewAspectRatio(F)F
    .locals 10

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoModule()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSupportRealSquare()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-nez v1, :cond_1

    return v0

    :cond_1
    float-to-double v0, p0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v2, v0, v2

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v4, v0, v4

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double p0, v2, v6

    if-lez p0, :cond_7

    const-wide v2, 0x4001555555555555L    # 2.1666666666666665

    sub-double v2, v0, v2

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x4001c71c71c71c72L    # 2.2222222222222223

    sub-double v8, v0, v8

    .line 6
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double p0, v6, v8

    if-lez p0, :cond_2

    const p0, 0x400e38e4

    goto :goto_0

    :cond_2
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v6, v0, v6

    .line 7
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p0, v8, v2

    if-lez p0, :cond_3

    const p0, 0x400aaaab

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 10
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double p0, v2, v6

    if-lez p0, :cond_4

    const/high16 p0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_4
    const-wide v2, 0x4000aaaaaaaaaaabL    # 2.0833333333333335

    sub-double v2, v0, v2

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 12
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double p0, v2, v6

    if-gez p0, :cond_5

    const p0, 0x40055555

    goto :goto_0

    :cond_5
    const-wide v2, 0x3ff999999999999aL    # 1.6

    sub-double/2addr v0, v2

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v0, v2

    if-gez p0, :cond_6

    const p0, 0x3fcccccd    # 1.6f

    goto :goto_0

    :cond_6
    const p0, 0x3fe38e39

    goto :goto_0

    :cond_7
    const p0, 0x3faaaaab

    :goto_0
    return p0
.end method

.method public static getPreviewAspectRatio(II)F
    .locals 0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(F)F

    move-result p0

    return p0
.end method

.method public static getPriorityStoragePreference()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f050058

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string/jumbo v2, "pref_priority_storage"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getQualityPreferredUiState(IZ)Lcom/android/camera/SettingUiState;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/SettingUiState;

    invoke-direct {v0}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v1

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isSupportHighQualityPreferred()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    :cond_1
    const/16 p1, 0xa3

    if-eq p0, p1, :cond_2

    .line 7
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    :cond_2
    return-object v0
.end method

.method public static getRenderAspectRatio(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)I

    move-result p0

    return p0
.end method

.method public static getResourceFloat(IF)F
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/android/camera/CameraSettings;->getResourceFloat(Landroid/content/Context;IF)F

    move-result p0

    return p0
.end method

.method public static getResourceFloat(Landroid/content/Context;IF)F
    .locals 2

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 4
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 5
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing resource "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraSettings"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public static getRetainZoom(I)F
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningZoom()Lcom/android/camera/data/data/config/ComponentRunningZoom;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentRunningZoom;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p0, v0}, Lcom/android/camera/HybridZoomingSystem;->toFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getSaturation()Ljava/lang/String;
    .locals 4

    const v0, 0x7f120772

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string/jumbo v2, "pref_qc_camera_saturation_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f030031

    .line 4
    invoke-static {v1, v2}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset invalid saturation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraSettings"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetSaturation()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getScanQrcodeSettingNeed(IZ)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 1
    :cond_0
    sget-boolean p1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo000:Z

    if-nez p1, :cond_4

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000ooO()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xa3

    if-ne p0, p1, :cond_4

    if-nez p0, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public static getScreenLightBrightness()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getScreenLightBrightness()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_1

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooOoo()I

    move-result v0

    const-string v1, "camera_screen_light_brightness"

    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_1
    return v0
.end method

.method public static getShaderEffect()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoFilter()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 5
    :cond_0
    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    .line 6
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0, v2}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSharpness()Ljava/lang/String;
    .locals 4

    const v0, 0x7f120785

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string/jumbo v2, "pref_qc_camera_sharpness_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f030033

    .line 4
    invoke-static {v1, v2}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset invalid sharpness "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraSettings"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetSharpness()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getSkinColorType()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string/jumbo v1, "pref_skin_color_type_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSkipFrameNumber()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getStrictAspectRatio(II)I
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio123(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio1_1(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSuperEISProValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningEisPro()Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedHfrSettings(Lcom/android/camera2/CameraCapabilities;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    const-string p0, "CameraSettings"

    const-string v1, "getSupportedHfrSettings: CameraCapabilities is null!!!"

    .line 2
    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedHighSpeedVideoSize()[Landroid/util/Size;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 5
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    const/16 v7, 0x780

    if-eq v6, v7, :cond_1

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    const/16 v7, 0x500

    if-eq v6, v7, :cond_1

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    const/16 v7, 0xf00

    if-eq v6, v7, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/camera2/CameraCapabilities;->getSupportedHighSpeedVideoFPSRange(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v6

    .line 7
    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 8
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x2

    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    aput-object v9, v11, v12

    const-string v9, "%dx%d:%d"

    .line 10
    invoke-static {v10, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 12
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static getTTLiveMusicJsonCache()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    const-string/jumbo v1, "pref_key_tt_live_music_json_cache"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTTLiveStickerJsonCache()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    const-string/jumbo v1, "pref_key_tt_live_sticker_json_cache"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTTLiveStickerNeedRedDot()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    const-string/jumbo v1, "pref_live_sticker_need_red_dot"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getTimeWaterMarkState(I)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isInAllRecordModeSet(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xba

    if-eq p0, v0, :cond_4

    const/16 v0, 0xa6

    if-eq p0, v0, :cond_4

    const/16 v0, 0xb6

    if-eq p0, v0, :cond_4

    const/16 v0, 0xb0

    if-eq p0, v0, :cond_4

    const/16 v0, 0xcd

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xd2

    if-eq p0, v0, :cond_4

    const/16 v0, 0xb9

    if-eq p0, v0, :cond_4

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_4

    const/16 v0, 0xd5

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000Ooo()Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public static getTimerBurstInterval()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_timer_burst_interval"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTimerBurstTotalCount()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_timer_burst_total_count"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static getTimerBurstViewX(Ljava/lang/String;)F
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pref_camera_timer_burst_type_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getTrackEyeUiState(I)Lcom/android/camera/SettingUiState;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/SettingUiState;

    invoke-direct {v0}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackEye()Lcom/android/camera/trackfocus/ComponentConfigTrackEye;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/trackfocus/ComponentConfigTrackEye;->isSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 3
    iput-boolean p0, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isUltraAndULSupportAF(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 5
    iput-boolean p0, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :cond_1
    return-object v0
.end method

.method public static getTrackFocusUiState(IZ)Lcom/android/camera/SettingUiState;
    .locals 2

    .line 1
    new-instance p1, Lcom/android/camera/SettingUiState;

    invoke-direct {p1}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackFocus()Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 3
    iput-boolean p0, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackFocus()Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->isMutexEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object p1

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isUltraAndULSupportAF(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :cond_2
    return-object p1
.end method

.method public static getUIStyleByPreview(II)I
    .locals 12

    .line 1
    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    int-to-double v2, p0

    int-to-double p0, p1

    div-double/2addr v2, p0

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p0

    int-to-double p0, p0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr p0, v4

    sub-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v4

    const/4 p1, 0x3

    const/4 v0, 0x0

    if-gez p0, :cond_3

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v0

    goto :goto_2

    :cond_2
    :goto_0
    move v1, p1

    goto :goto_2

    :cond_3
    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v6, v2, v6

    .line 4
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpl-double p0, v6, v10

    if-gtz p0, :cond_6

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    sub-double v6, v2, v6

    .line 5
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double p0, v6, v4

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v2, p0

    if-nez p0, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    :cond_5
    const-wide p0, 0x40031eb851eb851fL    # 2.39

    sub-double/2addr v2, p0

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v4

    if-gez p0, :cond_1

    const/4 v1, 0x5

    goto :goto_2

    .line 7
    :cond_6
    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p0, v4, v2

    if-lez p0, :cond_7

    goto :goto_0

    :cond_7
    :goto_2
    return v1
.end method

.method public static getUltraWideLDCUiState(IZ)Lcom/android/camera/SettingUiState;
    .locals 2

    .line 1
    new-instance p1, Lcom/android/camera/SettingUiState;

    invoke-direct {p1}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isImageIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isInAllRecordModeSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    :cond_1
    const/16 v0, 0xba

    if-eq p0, v0, :cond_7

    const/16 v0, 0xcd

    if-ne p0, v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->shouldUltraWideLDCBeVisibleInMode(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_2_SAT:Z

    if-eqz v0, :cond_3

    .line 7
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_4

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_6

    :cond_4
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v0, :cond_5

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    return-object p1

    .line 10
    :cond_6
    :goto_0
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    .line 11
    :cond_7
    :goto_1
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1
.end method

.method public static getVideoBokehColorRetentionMode()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_video_bokeh_color_retention_mode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVideoBokehRatio()F
    .locals 3

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_video_bokeh_adjust_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getVideoBokehRatio(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/camera/constant/VideoBokehConstant;->getDefaultValueByKey(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-static {p0}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getVideoDenoiseUiState(IZ)Lcom/android/camera/SettingUiState;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/SettingUiState;

    invoke-direct {v0}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0oO()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    :cond_0
    const/16 v1, 0xa2

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_1

    .line 4
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    :cond_1
    if-nez p1, :cond_2

    .line 5
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/Util;->isWiredHeadsetOn()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    .line 7
    iput-boolean p0, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :cond_3
    return-object v0
.end method

.method public static getVideoDynamicFpsSettingUiState(IZ)Lcom/android/camera/SettingUiState;
    .locals 1

    const/4 v0, -0x1

    .line 35
    invoke-static {p0, p1, v0}, Lcom/android/camera/CameraSettings;->getVideoDynamicFpsSettingUiState(IZI)Lcom/android/camera/SettingUiState;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoDynamicFpsSettingUiState(IZI)Lcom/android/camera/SettingUiState;
    .locals 7

    .line 1
    new-instance v0, Lcom/android/camera/SettingUiState;

    invoke-direct {v0}, Lcom/android/camera/SettingUiState;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Oo()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iput-boolean v1, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    :cond_0
    const/16 p1, 0xb4

    if-ne p0, p1, :cond_1

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/16 p1, 0xa2

    if-eq p0, p1, :cond_2

    .line 5
    iput-boolean v1, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    :cond_2
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result p2

    .line 7
    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->is30fpsDynamicSupported()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->is60fpsDynamicSupported()Z

    move-result v2

    if-nez v2, :cond_4

    .line 9
    iput-boolean v1, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isdynamicFpsSupported()Z

    move-result v2

    const/16 v3, 0x3c

    const/4 v4, 0x1

    if-eqz v2, :cond_c

    .line 11
    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraCapabilities;->isdynamicFpsSupportedByCameraIds(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 12
    iput-boolean v4, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0

    .line 13
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHSRIntegerValue()I

    move-result v2

    if-nez v2, :cond_6

    move v2, v4

    goto :goto_0

    :cond_6
    move v2, v1

    .line 14
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHSRIntegerValue()I

    move-result v5

    if-ne v5, v3, :cond_7

    move v5, v4

    goto :goto_1

    :cond_7
    move v5, v1

    .line 15
    :goto_1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 16
    iput-boolean v4, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0

    :cond_8
    const/16 p0, 0x1e

    .line 17
    invoke-virtual {p1, p2, p0}, Lcom/android/camera2/CameraCapabilities;->isdynamicFpsSupportedByCameraIdsAndFps(II)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p1, p2, v3}, Lcom/android/camera2/CameraCapabilities;->isdynamicFpsSupportedByCameraIdsAndFps(II)Z

    move-result v6

    if-nez v6, :cond_9

    xor-int/lit8 p0, v2, 0x1

    .line 18
    iput-boolean p0, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0

    .line 19
    :cond_9
    invoke-virtual {p1, p2, v3}, Lcom/android/camera2/CameraCapabilities;->isdynamicFpsSupportedByCameraIdsAndFps(II)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p1, p2, p0}, Lcom/android/camera2/CameraCapabilities;->isdynamicFpsSupportedByCameraIdsAndFps(II)Z

    move-result v6

    if-nez v6, :cond_a

    xor-int/lit8 p0, v5, 0x1

    .line 20
    iput-boolean p0, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0

    .line 21
    :cond_a
    invoke-virtual {p1, p2, p0}, Lcom/android/camera2/CameraCapabilities;->isdynamicFpsSupportedByCameraIdsAndFps(II)Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {p1, p2, v3}, Lcom/android/camera2/CameraCapabilities;->isdynamicFpsSupportedByCameraIdsAndFps(II)Z

    move-result p0

    if-eqz p0, :cond_13

    if-nez v2, :cond_b

    if-nez v5, :cond_b

    move v1, v4

    .line 22
    :cond_b
    iput-boolean v1, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0

    .line 23
    :cond_c
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result p0

    if-eq p2, p0, :cond_d

    .line 24
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p0

    if-eq p2, p0, :cond_d

    .line 25
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result p0

    if-eq p2, p0, :cond_d

    .line 26
    iput-boolean v4, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0

    .line 27
    :cond_d
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHSRIntegerValue()I

    move-result p0

    if-nez p0, :cond_e

    move p0, v4

    goto :goto_2

    :cond_e
    move p0, v1

    .line 28
    :goto_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHSRIntegerValue()I

    move-result p2

    if-ne p2, v3, :cond_f

    move p2, v4

    goto :goto_3

    :cond_f
    move p2, v1

    .line 29
    :goto_3
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->is30fpsDynamicSupported()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->is60fpsDynamicSupported()Z

    move-result v2

    if-nez v2, :cond_10

    xor-int/2addr p0, v4

    .line 30
    iput-boolean p0, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0

    .line 31
    :cond_10
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->is60fpsDynamicSupported()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->is30fpsDynamicSupported()Z

    move-result v2

    if-nez v2, :cond_11

    xor-int/lit8 p0, p2, 0x1

    .line 32
    iput-boolean p0, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0

    .line 33
    :cond_11
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->is30fpsDynamicSupported()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->is60fpsDynamicSupported()Z

    move-result p1

    if-eqz p1, :cond_13

    if-nez p0, :cond_12

    if-nez p2, :cond_12

    move v1, v4

    .line 34
    :cond_12
    iput-boolean v1, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :cond_13
    return-object v0
.end method

.method public static getVideoEncoder()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f12085f

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pref_video_encoder_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v1

    const-string v2, "h265"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x5

    return v0
.end method

.method public static getVideoMasterFilter()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMasterFilter()Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVideoSkyResourceVersion()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_video_sky_resource_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoTagSettingUiState(IZ)Lcom/android/camera/SettingUiState;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/camera/SettingUiState;

    invoke-direct {v0}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FucName videoTag  mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isFront:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SettingUiState"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    iput-boolean v1, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    .line 6
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isInAllCaptureModeSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iput-boolean v1, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    :cond_1
    const/16 v2, 0xb4

    if-eq p0, v2, :cond_2

    const/16 v2, 0xa2

    if-eq p0, v2, :cond_2

    const/16 v2, 0xd6

    if-eq p0, v2, :cond_2

    .line 8
    iput-boolean v1, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    .line 9
    :cond_2
    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oO00o()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iput-boolean v1, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    .line 11
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result p1

    if-nez p1, :cond_8

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    iput-boolean v1, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0

    .line 15
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "3001"

    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "3001,24"

    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 19
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->is4K120FpsOn(I)Z

    move-result p0

    if-nez v2, :cond_6

    if-nez p1, :cond_6

    if-eqz p0, :cond_7

    .line 20
    :cond_6
    iput-boolean v1, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :cond_7
    return-object v0

    .line 21
    :cond_8
    :goto_0
    iput-boolean v1, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0
.end method

.method public static getVideoTimeLapseNeed(IZ)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0xa9

    if-ne p0, p1, :cond_3

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo0()Z

    move-result p1

    if-nez p1, :cond_3

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static getVolumeCameraFunction(I)Ljava/lang/String;
    .locals 5

    const v0, 0x7f1207c6

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1207c8

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1207c7

    .line 3
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa3

    if-eqz p0, :cond_4

    if-eq p0, v3, :cond_4

    const/16 v4, 0xa7

    if-eq p0, v4, :cond_4

    const/16 v4, 0xab

    if-eq p0, v4, :cond_3

    const/16 v4, 0xad

    if-eq p0, v4, :cond_3

    const/16 v4, 0xaf

    if-eq p0, v4, :cond_4

    const/16 v4, 0xb3

    if-eq p0, v4, :cond_2

    const/16 v4, 0xcd

    if-eq p0, v4, :cond_3

    const/16 v4, 0xb7

    if-eq p0, v4, :cond_2

    const/16 v4, 0xb8

    if-eq p0, v4, :cond_1

    const/16 v4, 0xd4

    if-eq p0, v4, :cond_0

    const/16 v4, 0xd5

    if-eq p0, v4, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :cond_0
    :pswitch_0
    const/16 p0, 0xd3

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v2

    const-class v3, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2, v3}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPhoto()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    :pswitch_1
    move-object v0, v1

    goto :goto_0

    :cond_3
    :pswitch_2
    move-object v0, v2

    goto :goto_0

    :cond_4
    :pswitch_3
    move-object v0, v2

    move p0, v3

    .line 5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pref_camera_volumekey_function_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xbb
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xcf
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getVolumeCameraSettingNeed(I)Z
    .locals 3

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooO0O:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0xb9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd7

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd2

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd1

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb3

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd5

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb8

    if-ne p0, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPhoto()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static getWaterMarkSettingUiState(IZ)Lcom/android/camera/SettingUiState;
    .locals 1

    .line 1
    new-instance p1, Lcom/android/camera/SettingUiState;

    invoke-direct {p1}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isInAllRecordModeSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 3
    iput-boolean p0, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    :cond_0
    const/16 v0, 0xbc

    if-ne p0, v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperMoonTextWatermarkOn()Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object p1

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAIWatermarkOn(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 6
    iput-boolean p0, p1, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :cond_2
    return-object p1
.end method

.method public static getWhiteBalance()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const v1, 0x7f1207cc

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_whitebalance_key"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWindDenoiseUiState(IZ)Lcom/android/camera/SettingUiState;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/SettingUiState;

    invoke-direct {v0}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0oO()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    :cond_0
    const/16 v1, 0xa2

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_1

    .line 4
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    iput-boolean v2, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object v0

    .line 6
    :cond_2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMacroLensOn(I)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 7
    iput-boolean v1, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0

    .line 8
    :cond_3
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 9
    iput-boolean v1, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object v0

    .line 10
    :cond_4
    invoke-static {}, Lcom/android/camera/Util;->isWiredHeadsetOn()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 11
    iput-boolean v1, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :cond_5
    return-object v0
.end method

.method public static ifReplaceSRWithMFNR(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa3

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa5

    if-eq p0, v1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result p0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getAiShutterSupport()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static initBeautyComponentBody(Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 1

    const-string/jumbo v0, "pref_beauty_head_slim_ratio"

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHeadSlim:I

    const-string/jumbo v0, "pref_beauty_body_slim_ratio"

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyBodySlim:I

    const-string/jumbo v0, "pref_beauty_shoulder_slim_ratio"

    .line 3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyShoulderSlim:I

    const-string v0, "key_beauty_leg_slim_ratio"

    .line 4
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLegSlim:I

    const-string/jumbo v0, "pref_beauty_whole_body_slim_ratio"

    .line 5
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWholeBodySlim:I

    const-string/jumbo v0, "pref_beauty_butt_slim_ratio"

    .line 6
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyButtSlim:I

    return-void
.end method

.method public static initBeautyComponentFrontSuperNight(Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 1

    const-string/jumbo v0, "pref_beautify_slim_face_ratio_key"

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    const-string/jumbo v0, "pref_beautify_enlarge_eye_ratio_key"

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    const-string/jumbo v0, "pref_beautify_skin_smooth_ratio_key"

    .line 3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    return-void
.end method

.method public static initBeautyComponentLegacy(Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 1

    const-string/jumbo v0, "pref_beautify_slim_face_ratio_key"

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    const-string/jumbo v0, "pref_beautify_enlarge_eye_ratio_key"

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    const-string/jumbo v0, "pref_beautify_skin_color_ratio_key"

    .line 3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    const-string/jumbo v0, "pref_beautify_skin_smooth_ratio_key"

    .line 4
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    return-void
.end method

.method public static initBeautyComponentMiLive(Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 1

    const-string/jumbo v0, "pref_beautify_slim_face_ratio_key"

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    const-string/jumbo v0, "pref_beautify_enlarge_eye_ratio_key"

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    return-void
.end method

.method public static initBeautyComponentModel(Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 1

    const-string/jumbo v0, "pref_beautify_slim_face_ratio_key"

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    const-string/jumbo v0, "pref_beautify_enlarge_eye_ratio_key"

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    const-string/jumbo v0, "pref_beautify_nose_ratio_key"

    .line 3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNose:I

    const-string/jumbo v0, "pref_beautify_risorius_ratio_key"

    .line 4
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyRisorius:I

    const-string/jumbo v0, "pref_beautify_lips_ratio_key"

    .line 5
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLips:I

    const-string/jumbo v0, "pref_beautify_chin_ratio_key"

    .line 6
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyChin:I

    const-string/jumbo v0, "pref_beautify_neck_ratio_key"

    .line 7
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyNeck:I

    const-string/jumbo v0, "pref_beautify_smile_ratio_key"

    .line 8
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySmile:I

    const-string/jumbo v0, "pref_beautify_slim_nose_ratio_key"

    .line 9
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimNose:I

    const-string/jumbo v0, "pref_beautify_hairline_ratio_key"

    .line 10
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyHairLine:I

    return-void
.end method

.method public static initBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;I)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetAll()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getBeautyVersion()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x3

    const-string/jumbo v3, "pref_beautify_makeup_ratio_key"

    const-string/jumbo v4, "pref_beautify_skin_smooth_ratio_key"

    if-eq p1, v2, :cond_6

    const/4 v2, 0x4

    if-eq p1, v2, :cond_6

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportSmoothLevel()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    :cond_3
    const-string p1, "female"

    .line 8
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isUseNewBeautyMode(Ljava/lang/String;)Z

    move-result p1

    const-string/jumbo v2, "pref_beautify_solid_ratio_key"

    if-nez p1, :cond_4

    .line 9
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportNonBeautyModeTsBeauty()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const-string/jumbo p1, "pref_beautify_whiten_ratio_key"

    .line 10
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyWhiten:I

    .line 11
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    .line 12
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    :cond_5
    const-string p1, "male"

    .line 14
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isUseNewBeautyMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 15
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySolid:I

    .line 16
    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyModeType:I

    goto :goto_0

    .line 17
    :cond_6
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportSmoothLevel()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    .line 19
    :cond_7
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyMakeUp()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 20
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeup:I

    goto :goto_0

    .line 21
    :cond_8
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyLevel()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 22
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyLevel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    .line 23
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isBeautyLevelOn()Z

    move-result p1

    if-nez p1, :cond_a

    return-void

    .line 24
    :cond_a
    :goto_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isLegacyBeautyVersion()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 25
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyModel()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 26
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->initBeautyComponentLegacy(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    :cond_b
    return-void

    .line 27
    :cond_c
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyModel()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 28
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->initBeautyComponentModel(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    .line 29
    :cond_d
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportFrontMakeups()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 30
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyMakeupsTypeValue()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupType:I

    const-string/jumbo p1, "pref_beautify_makeups_level_key"

    .line 31
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyMakeupLevel:I

    .line 32
    :cond_e
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyBody()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 33
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->initBeautyComponentBody(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    .line 34
    :cond_f
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyMiLive()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 35
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->initBeautyComponentMiLive(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    .line 36
    :cond_10
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportFrontNightBeauty()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 37
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->initBeautyComponentFrontSuperNight(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    :cond_11
    :goto_1
    return-void
.end method

.method public static is1080P60FpsEISSupported(Lcom/android/camera2/CameraCapabilities;I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->is1080P60FpsEISSupported()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static is1080P60FpsOn(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "6,60"

    .line 2
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static is3DAudioOn()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05000b

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo v2, "pref_ai_audio_3d"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is4K120FpsOn(I)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "8,120"

    .line 3
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static is4K120FpsOn(Lcom/android/camera2/CameraCapabilities;I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->is4K120FpsOn(I)Z

    move-result p0

    return p0
.end method

.method public static is4KHDR10OrProP(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static is4KHigherVideoQuality(I)Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, p0, :cond_1

    if-ne p0, v2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public static is8KCamcorderSupported(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0
.end method

.method public static is8KCamcorderSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3
    :cond_0
    const-class v1, Landroid/media/MediaRecorder;

    const v2, 0x8004

    invoke-virtual {p0, v1, v2}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithTargetMode(Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->get8kProfile()I

    move-result v2

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/android/camera/CameraSize;

    const/16 v4, 0x1e00

    const/16 v5, 0x10e0

    invoke-direct {v3, v4, v5}, Lcom/android/camera/CameraSize;-><init>(II)V

    .line 6
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result p0

    invoke-static {p0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static is8KHigherVideoQuality(I)Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->get8kProfile()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, p0, :cond_1

    if-ne p0, v2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public static isAEAFLockSupport()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperNightScene()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string/jumbo v2, "pref_camera_ae_af_lock_support_key"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isAIWatermarkOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable()Z

    move-result v0

    return v0
.end method

.method public static isAIWatermarkOn(I)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable(I)Z

    move-result p0

    return p0
.end method

.method public static isAgeGenderAndMagicMirrorWaterOpen()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0Oo0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAiAudioNewEnabled(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudioNew()Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->isSwitchOn(I)Z

    move-result p0

    return p0
.end method

.method public static isAiAudioOn(I)Z
    .locals 5

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0oO()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xa2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMacroLensOn(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 3
    :cond_2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 4
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "CameraSettings"

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudioNew()Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;

    move-result-object p0

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudioSingle()Lcom/android/camera/data/data/runing/ComponentRunningAiAudioSingle;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v4

    .line 8
    invoke-virtual {p0, v4}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->isSwitchOn(I)Z

    move-result p0

    .line 9
    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioSingle;->isSwitchOn(I)Z

    move-result v0

    if-nez p0, :cond_5

    if-nez v0, :cond_5

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiNoiseReductionState()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->is3DAudioOn()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "SupportAiAudioNew.isAiAudioOn = false"

    .line 11
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 12
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentRecType(I)I

    move-result p0

    if-ne p0, v3, :cond_5

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isWindDenoiseOn()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontDenoiseOn()Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const-string p0, "isAiAudioOn = true"

    .line 15
    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static isAiAudioSingleEnabled(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudioSingle()Lcom/android/camera/data/data/runing/ComponentRunningAiAudioSingle;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioSingle;->isSwitchOn(I)Z

    move-result p0

    return p0
.end method

.method public static isAiEnhancedVideoEnabled(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiEnhancedVideo()Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;->isSwitchOn(I)Z

    move-result p0

    return p0
.end method

.method public static isAiShutterOn(I)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isCurrentModeSupportAIS(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 6
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isCurrentModeSupportHdrAIS(I)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    .line 7
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    .line 8
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOooo()Z

    move-result v0

    const-string/jumbo v1, "pref_camera_ai_shutter_key"

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isAiTipNeed(IZ)Z
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0xa3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAlgoFPS(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xac

    if-ne p0, v1, :cond_1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0O00()S

    move-result p0

    const/16 v1, 0x1e0

    if-lt p0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->isSlowMotionFps480()Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->isSlowMotionFps960()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->isSlowMotionFps1920()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isAllowCTA()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_recordcta_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAsdNightNeed(IZ)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_4

    const/16 p1, 0xa3

    if-eq p0, p1, :cond_0

    const/16 p1, 0xab

    if-ne p0, p1, :cond_4

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isMiviBokehSuperNightSupported()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportHighQualityPreferred()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isMiviNightSeSupported()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public static isAsdNightOn()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000f

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_asd_night_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAspectRatio123(II)Z
    .locals 3

    if-ge p0, p1, :cond_0

    move v2, p1

    move p1, p0

    move p0, v2

    :cond_0
    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide p0, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isAspectRatio16_9(II)Z
    .locals 3

    if-ge p0, p1, :cond_0

    move v2, p1

    move p1, p0

    move p0, v2

    :cond_0
    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide p0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isAspectRatio18_9(II)Z
    .locals 3

    if-ge p0, p1, :cond_0

    move v2, p1

    move p1, p0

    move p0, v2

    :cond_0
    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isAspectRatio1_1(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAspectRatio456(II)Z
    .locals 3

    if-ge p0, p1, :cond_0

    move v2, p1

    move p1, p0

    move p0, v2

    :cond_0
    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x4008000000000000L    # 3.0

    sub-double/2addr v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isAspectRatio789(II)Z
    .locals 2

    if-ge p0, p1, :cond_0

    xor-int/2addr p0, p1

    xor-int/2addr p1, p0

    xor-int/2addr p0, p1

    :cond_0
    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide p0, 0x3ff999999999999aL    # 1.6

    sub-double/2addr v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isAutoHibernationOn()Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0oo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v2, "pref_camera_auto_hibernation_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isAutoZoomEnabled(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBogusCameraId()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAutoZoom()Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->isSwitchOn(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isBackCamera()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBeautyLensOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedBeautyLens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningBeautyLens()Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->isSwitchOn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isBeautyMakeupClicked()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_beauty_makeup_clicked_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isBurstShootingEnable()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0Oo0oo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getLongPressShutterFeature()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120733

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCameraFaceDetectionAutoHidden()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050016

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string/jumbo v2, "pref_camera_facedetection_auto_hidden_key"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCameraLyingHintOn()Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0O0o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v2, "pref_camera_lying_tip_switch_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isCameraParallelProcessEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002a

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0000O()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_parallel_process_enable_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCameraQuickShotAnimateEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportQuickShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050031

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string/jumbo v2, "pref_camera_quick_shot_anim_enable_key"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isCameraQuickShotEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportQuickShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050032

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string/jumbo v2, "pref_camera_quick_shot_enable_key"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isCameraSoundOpen()Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0O0O00()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v2, "pref_camerasound_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isCameraSpecific(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "pref_camera_jpegquality_key"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_video_quality_key"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_sticker_path_key"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_flashmode_key"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_video_flashmode_key"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_hdr_key"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_video_hdr_key"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_whitebalance_key"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_qc_manual_whitebalance_k_value_key"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_focus_position_key"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_qc_camera_exposuretime_key"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_qc_camera_iso_key"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_zoom_mode_key"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_manually_lens"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_old_beautify_level_key_capture"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_old_face_beauty_switch_key"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_beautify_slim_face_ratio_key"

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_beautify_skin_smooth_ratio_key"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_beautify_skin_color_ratio_key"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_beautify_enlarge_eye_ratio_key"

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_qc_camera_manual_exposure_value_key"

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_video_whitebalance_key"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_pro_video_focus_position_key"

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_qc_camera_pro_video_exposuretime_key"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_qc_camera_pro_video_exposure_value_key"

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_qc_pro_video_camera_iso_key"

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_qc_fastmotion_pro_camera_iso_key"

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_qc_camera_fastmotion_pro_exposure_value_key"

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_qc_camera_fastmotion_pro_exposuretime_key"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_fastmotion_pro_focus_position_key"

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_fastmotion_pro_whitebalance_key"

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_long_press_shutter_feature_key"

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_qc_fastmotion_pro_manual_whitebalance_k_value_key"

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isCameraTouchFocusDelayEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_touch_focus_delay_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCenterMarkOn()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigCenterMark()Lcom/android/camera/data/data/config/ComponentConfigCenterMark;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigCenterMark;->isSwitchOn(I)Z

    move-result v0

    return v0
.end method

.method public static isCinematicAspectRatioEnabled(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getCinematicAspectRatio()Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;->isSwitchOn(I)Z

    move-result p0

    return p0
.end method

.method public static isCupCameraPositionHintOn()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_cup_camera_position_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCurrentModeSupportAIS(I)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getAiShutterSupport()I

    move-result v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCurrentModeSupportAIS: capability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraSettings"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/16 v2, 0xa3

    if-eq p0, v2, :cond_1

    const/16 v2, 0xa5

    if-ne p0, v2, :cond_2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    const/16 v0, 0xab

    if-ne p0, v0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    move p0, v1

    :goto_1
    if-nez v2, :cond_4

    if-eqz p0, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    return v1
.end method

.method public static isCurrentModeSupportAISDenoise(I)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getAiShutterSupport()I

    move-result v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCurrentModeSupportAISDenoise: capability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraSettings"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    const/16 v2, 0xa3

    if-eq p0, v2, :cond_1

    const/16 v2, 0xa5

    if-ne p0, v2, :cond_2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_3

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    const/16 v0, 0xab

    if-ne p0, v0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    move p0, v1

    :goto_1
    if-nez v2, :cond_4

    if-eqz p0, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    return v1
.end method

.method public static isCurrentModeSupportHdrAIS(I)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getAiShutterSupport()I

    move-result v0

    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    const/16 v2, 0xa3

    if-eq p0, v2, :cond_1

    const/16 v2, 0xa5

    if-ne p0, v2, :cond_2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_3

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    const/16 v0, 0xab

    if-ne p0, v0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    move p0, v1

    :goto_1
    if-nez v2, :cond_4

    if-eqz p0, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    return v1
.end method

.method public static isCurrentQualitySupportEis(IILcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/android/camera2/CameraCapabilities;->isCurrentQualitySupportEis(II)Z

    move-result p0

    return p0
.end method

.method public static isCustomWatermarkOpen()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pref_custom_watermark"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isDebugInfoAsWatermarkEnabled()Z
    .locals 2

    const-string/jumbo v0, "show_debug_info_as_watermark"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDocumentMode2On(I)Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooO()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDocument()Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->isSwitchOn(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDocumentModeOn(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDocument()Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->isSwitchOn(I)Z

    move-result p0

    return p0
.end method

.method public static isDualCameraEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050013

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string/jumbo v2, "pref_camera_dual_enable_key"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDualCameraSatEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050014

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string/jumbo v2, "pref_camera_dual_sat_enable_key"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDualCameraWaterMarkOpen()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isDocumentMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isIDCardMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedDualCameraWaterMark()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0Oo()Z

    move-result v1

    invoke-static {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o(Z)Z

    move-result v1

    const-string/jumbo v2, "pref_dualcamera_watermark_key"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isDualVideoModuleWithFrontCamera(I)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xcc

    if-ne p0, v1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getLocalCameraId()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static isDualVideoRecording()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1ad

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;->getRecorderManager(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v0

    return v0
.end method

.method public static isESPDisplayOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSwitchOn()Z

    move-result v0

    return v0
.end method

.method public static isEvAdjustable()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperNightScene()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProModule()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastmotionModulePro()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Oo0o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isMimojiModule()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public static isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {p1}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    .line 2
    :cond_0
    invoke-static {p1, p0}, Lcom/android/camera/CameraSettings;->initBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;I)V

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa9

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/BeautyValues;->isFaceBeautyOn()Z

    move-result p0

    return p0

    .line 4
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isVideoShineForceOn(I)Z

    move-result p0

    return p0
.end method

.method public static isFakePartSAT()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoO:Z

    return v0
.end method

.method public static isFeatureAutoDownloadEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportFeatureAutoDownload()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v2, "pref_feature_auto_download_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFeatureAutoDownloadUseHintShow()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportFeatureAutoDownload()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v2, "pref_feature_auto_download_key"

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "pref_feature_auto_download_use_hint_shown"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFingerprintCaptureEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_fingerprint_capture_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFlashSupportedInManualMode()Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const v1, 0x7f120688

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pref_qc_camera_exposuretime_key"

    .line 3
    invoke-virtual {v0, v3, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000O0O0()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 5
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-wide v2, Lcom/android/camera/CameraSettings;->sManualFlashTorchThreshold:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return v4

    :cond_0
    return v5

    :cond_1
    const v3, 0x7f1206fb

    .line 6
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "pref_qc_camera_iso_key"

    .line 7
    invoke-virtual {v0, v7, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    return v4
.end method

.method public static isFocusModeSwitching()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string/jumbo v1, "pref_qc_focus_mode_switching_key"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFromProVideoMudule()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_from_pro_video_module"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFromSuperNightVideoMudule()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_from_super_nigtht_video_module"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFrontCamera()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isFrontCameraWaterMarkOpen()Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00OO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0Oo()Z

    move-result v1

    invoke-static {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o(Z)Z

    move-result v1

    const-string/jumbo v2, "pref_dualcamera_watermark_key"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isFrontDenoiseOn()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f050045

    .line 3
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo v2, "pref_front_denoise"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFrontMirror()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f050047

    goto :goto_0

    :cond_0
    const v1, 0x7f050046

    :goto_0
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo v2, "pref_front_mirror_boolean_key"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isGradienterOn()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigGradienter()Lcom/android/camera/data/data/config/ComponentConfigGradienter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->isSwitchOn(I)Z

    move-result v0

    return v0
.end method

.method public static isH265EncoderUiState(IZ)Lcom/android/camera/SettingUiState;
    .locals 6

    .line 1
    new-instance p1, Lcom/android/camera/SettingUiState;

    invoke-direct {p1}, Lcom/android/camera/SettingUiState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    .line 3
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    .line 4
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hevc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iput-boolean v3, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-nez v1, :cond_2

    return-object p1

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isInAllCaptureModeSet(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iput-boolean v0, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    :cond_3
    const/16 v1, 0xb7

    if-eq p0, v1, :cond_a

    const/16 v1, 0xa1

    if-eq p0, v1, :cond_a

    const/16 v1, 0xd7

    if-ne p0, v1, :cond_4

    goto :goto_4

    :cond_4
    const/16 v1, 0xb9

    if-eq p0, v1, :cond_9

    const/16 v1, 0xd2

    if-eq p0, v1, :cond_9

    const/16 v1, 0xd1

    if-eq p0, v1, :cond_9

    const/16 v1, 0xbc

    if-ne p0, v1, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isHdr10On()Z

    move-result v0

    if-nez v0, :cond_8

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isHdr10PlusOn()Z

    move-result v0

    if-nez v0, :cond_8

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10PRO()Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->isFeatureOn()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 13
    :cond_6
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 14
    iput-boolean v3, p1, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :cond_7
    return-object p1

    .line 15
    :cond_8
    :goto_2
    iput-boolean v3, p1, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object p1

    .line 16
    :cond_9
    :goto_3
    iput-boolean v0, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    .line 17
    :cond_a
    :goto_4
    iput-boolean v0, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1
.end method

.method public static isHandGestureOpen()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v2, "pref_hand_gesture"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHdr10PlusVideoModeOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isHdr10PlusOn()Z

    move-result v0

    return v0
.end method

.method public static isHdr10ProVideoModeOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10PRO()Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->isFeatureOn()Z

    move-result v0

    return v0
.end method

.method public static isHdr10VideoModeOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isHdr10On()Z

    move-result v0

    return v0
.end method

.method public static isHeicImageFormatSelectable(IZ)Lcom/android/camera/SettingUiState;
    .locals 2

    .line 1
    new-instance p1, Lcom/android/camera/SettingUiState;

    invoke-direct {p1}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isInAllRecordModeSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraParallelProcessEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    :cond_3
    const/16 v0, 0xa3

    if-eq p0, v0, :cond_5

    .line 10
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0O00()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xaf

    if-ne p0, v0, :cond_4

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    :cond_4
    iput-boolean v1, p1, Lcom/android/camera/SettingUiState;->isNeed:Z

    return-object p1

    .line 12
    :cond_5
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    .line 13
    iput-boolean v0, p1, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-object p1

    .line 14
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 15
    iput-boolean v0, p1, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    :cond_7
    return-object p1
.end method

.method public static isHeicImageFormatSelected()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string/jumbo v2, "pref_camera_heic_image_format_key"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHighQualityPreferred()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportHighQualityPreferred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05001c

    .line 4
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string/jumbo v2, "pref_camera_high_quality_preferred_key"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 6
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000o00o()Z

    move-result v0

    return v0
.end method

.method public static isInAllCaptureModeSet(I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xa3

    if-eq p0, v1, :cond_4

    const/16 v1, 0xb8

    if-ne p0, v1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1, v2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPhoto()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    const/16 v1, 0xa6

    if-eq p0, v1, :cond_4

    const/16 v1, 0xb0

    if-eq p0, v1, :cond_4

    const/16 v1, 0xa7

    if-eq p0, v1, :cond_4

    const/16 v1, 0xad

    if-eq p0, v1, :cond_4

    const/16 v1, 0xaf

    if-eq p0, v1, :cond_4

    const/16 v1, 0xab

    if-eq p0, v1, :cond_4

    const/16 v1, 0xba

    if-eq p0, v1, :cond_4

    const/16 v1, 0xb6

    if-eq p0, v1, :cond_4

    const/16 v1, 0xbb

    if-eq p0, v1, :cond_4

    const/16 v1, 0xcd

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xb9

    const/4 v2, 0x0

    if-ne p0, v1, :cond_3

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0x1a2

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz p0, :cond_2

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->getMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method public static isInAllRecordModeSet(I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xa1

    if-eq p0, v1, :cond_4

    const/16 v1, 0xb8

    if-ne p0, v1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1, v2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPhoto()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/16 v1, 0xb7

    if-eq p0, v1, :cond_4

    const/16 v1, 0xd7

    if-eq p0, v1, :cond_4

    const/16 v1, 0xb3

    if-eq p0, v1, :cond_4

    const/16 v1, 0xd1

    if-eq p0, v1, :cond_4

    const/16 v1, 0xd2

    if-eq p0, v1, :cond_4

    const/16 v1, 0xd3

    if-eq p0, v1, :cond_4

    const/16 v1, 0xa2

    if-eq p0, v1, :cond_4

    const/16 v1, 0xcc

    if-eq p0, v1, :cond_4

    const/16 v1, 0xa9

    if-eq p0, v1, :cond_4

    const/16 v1, 0xac

    if-eq p0, v1, :cond_4

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_4

    const/16 v1, 0xd6

    if-eq p0, v1, :cond_4

    const/16 v1, 0xbd

    if-eq p0, v1, :cond_4

    const/16 v1, 0xd0

    if-eq p0, v1, :cond_4

    const/16 v1, 0xd4

    if-eq p0, v1, :cond_4

    const/16 v1, 0xcf

    if-eq p0, v1, :cond_4

    const/16 v1, 0xd5

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xb9

    const/4 v2, 0x0

    if-ne p0, v1, :cond_3

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0x1a2

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz p0, :cond_2

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->getMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-eq p0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method public static isLensDirtyDetectEnabled()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportLensDirtyDetect()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataNormalItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "pref_lens_dirty_detect_enabled_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLensDirtyTipOn()Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoO0o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0o0()Z

    move-result v1

    const-string/jumbo v2, "pref_lens_dirty_tip"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLiveModuleClicked()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_live_module_clicked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLiveShotOn()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigLiveShot()Lcom/android/camera/data/data/config/ComponentConfigLiveShot;

    move-result-object v0

    const/16 v1, 0xa0

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigLiveShot;->isSwitchOn(I)Z

    move-result v0

    return v0
.end method

.method public static isLiveStickerInternalChannel()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f050020

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo v2, "pref_camera_live_sticker_internal"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLongPressRecordEnable()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoOo()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120735

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getLongPressShutterFeature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLplSelectorUseHintShow()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050022

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string/jumbo v2, "pref_lpl_selector_use_hint_shown"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMacroLensOn(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "macro"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isMacroModeEnabled(I)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xbc

    if-ne p0, v1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getBogusCameraId()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode(II)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isMagicMirrorOn()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_magic_mirror_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMasterFilterOn(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMasterFilter()Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;->isSwitchOn(I)Z

    move-result p0

    return p0
.end method

.method public static isMfnrSatEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050024

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string/jumbo v2, "pref_camera_mfnr_sat_enable_key"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMovieSolidOn()Z
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->oo0o0Oo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const-string/jumbo v1, "pref_camera_movie_solid_key"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "pref_camera_pro_mode_movie_solid_key"

    .line 3
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    const v3, 0x7f120740

    .line 4
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 5
    invoke-virtual {v2, v1, v3}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0xa2

    if-eq v0, v2, :cond_2

    const/16 v2, 0xb7

    if-eq v0, v2, :cond_2

    const/16 v2, 0xcc

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static isNearAspectRatio(IIII)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)I

    move-result p0

    invoke-static {p2, p3}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNearRangeUiNeed(IZ)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->supportNearRangeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    return v1

    :cond_1
    const/16 p1, 0xa3

    if-eq p0, p1, :cond_2

    const/16 p1, 0xba

    if-eq p0, p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isNearRatio16_9(II)Z
    .locals 9

    if-ge p0, p1, :cond_0

    move v8, p1

    move p1, p0

    move p0, v8

    :cond_0
    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide p0, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double p0, v0, p0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v2, v0, v2

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double p0, p0, v4

    const/4 p1, 0x0

    if-gtz p0, :cond_2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    sub-double v4, v0, v4

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, v4, v6

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    .line 4
    :cond_2
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v4

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double p0, v2, v0

    if-lez p0, :cond_3

    return p1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isNearRatio18_9(II)Z
    .locals 9

    if-ge p0, p1, :cond_0

    move v8, p1

    move p1, p0

    move p0, v8

    :cond_0
    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide p0, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double p0, v0, p0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v2, v0, v2

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double p0, p0, v4

    const/4 p1, 0x0

    if-gtz p0, :cond_2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    sub-double v4, v0, v4

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, v4, v6

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    .line 4
    :cond_2
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v4

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double p0, v2, v0

    if-lez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return p1
.end method

.method public static isNeedRemind(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_remind"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNonBeautyModeTsBeauty()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportNonBeautyModeTsBeauty()Z

    move-result v0

    return v0
.end method

.method public static isNormalWideLDCEnabled()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportNormalWideLDC()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f050027

    .line 5
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo v2, "pref_camera_normal_wide_ldc_key"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPanoramaVertical(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getPanoramaMoveDirection(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isParameterDescriptionEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_manual_description_tip"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPictureFlawCheckOn()Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o00Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string/jumbo v2, "pref_pic_flaw_tip"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPopupMoreStyle()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_open_more_mode_type"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isPortraitModeBackOn()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_portrait_mode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isProAmbilightOpen()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isProPhotoHistogramOpen(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooooo()Z

    move-result v1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportHistogram()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa7

    if-ne p0, v0, :cond_0

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o00oo()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const-string/jumbo v0, "pref_camera_pro_video_histogram"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isProVideoAudioMapOpen(I)Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0()Z

    move-result v0

    const/16 v1, 0xb4

    if-ne p0, v1, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0oo0()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const-string/jumbo v1, "pref_audio_map_key"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isProVideoHistogramOpen(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooooo()Z

    move-result v1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportHistogram()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const-string/jumbo v0, "pref_camera_pro_video_histogram"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isProVideoLogOpen(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xb4

    if-ne p0, v1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const-string/jumbo v1, "pref_camera_pro_video_log_format"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isProximityLockOpen()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_proximity_lock_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isQRCodeReceiverAvailable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.xiaomi.scanner"

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/Util;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isReal8K()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isReal8K()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isRecordLocation()Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0OOO0o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v2, "pref_camera_recordlocation_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSRAndMfnrPixelOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0O0O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSREnable()Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00oO0o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050039

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string/jumbo v2, "pref_camera_sr_enable_key"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSRTo108mModeOn()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooooo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAi108Running()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSaveGroushotPrimitiveOn()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_groupshot_with_primitive_picture_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isScanQRCode(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isQRCodeReceiverAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOO()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const v0, 0x7f120840

    .line 4
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v1, "pref_scan_qrcode_key"

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSettingAiTipOfCardEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050036

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_ai_detect_id_card"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSettingAiTipOfDocEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050036

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_ai_detect_doc"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooO()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSettingNearRangeEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050026

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_near_range_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSettingsVideoSATEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050040

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_video_sat_enable_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShowFirstLocationUseHint()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_confirm_location_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShowFirstUseHint()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShowUltraWideIntro()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "pre_popup_ultra_wide_intro_show_times"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSkinColorOpen()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSkinColorType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSpeechShutterOpen()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportSpeechShutter()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v2, "pref_speech_shutter"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSubtitleEnabled(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSubtitle()Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->isSwitchOn(I)Z

    move-result p0

    return p0
.end method

.method public static isSuperEISEnabled(I)Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0oO0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getSuperEISProValue(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "off"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSuperEIS()Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public static isSuperMoonTextWatermarkOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getSuperMoonTextEnable()Z

    move-result v0

    return v0
.end method

.method public static isSuperNightOn()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_super_night_mode"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSuperNightUWOpen(I)Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOo0O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xad

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportAFSaliencyCheckOn(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xa7

    if-eq p0, v2, :cond_0

    const/16 v2, 0xb4

    if-ne p0, v2, :cond_1

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wide"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    const/16 v2, 0xa3

    if-eq p0, v2, :cond_2

    const/16 v2, 0xa2

    if-ne p0, v2, :cond_3

    .line 2
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v1

    .line 3
    :goto_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0o0O()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 5
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    return v0
.end method

.method public static isSupportBeautyBody()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyBody()Z

    move-result v0

    return v0
.end method

.method public static isSupportDelayRecord(I)Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xac

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportFeatureAutoDownload()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOO0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0OoOoOO()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAllowCTA()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportFpsRange(IIILcom/android/camera2/CameraCapabilities;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const-string p2, "CameraSettings"

    if-nez p3, :cond_1

    const-string p0, "isSupportFpsRange: capabilities is null"

    .line 1
    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2
    :cond_1
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getSupportedCustomFpsRange()Ljava/util/List;

    move-result-object v1

    const-string v2, "getSupportedCustomFpsRange id = "

    if-eqz v1, :cond_5

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera2/MiCustomFpsRange;

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " r = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v3}, Lcom/android/camera2/MiCustomFpsRange;->getWidth()I

    move-result v4

    if-ne v4, p0, :cond_3

    invoke-virtual {v3}, Lcom/android/camera2/MiCustomFpsRange;->getHeight()I

    move-result v3

    if-ne v3, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_4
    return v0

    .line 7
    :cond_5
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " r = null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupportMasterFilter()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMasterFilter()Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSupportQuickShot()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000OO0o()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/CameraSettings;->DEBUG_FAST_SHOT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Ooooooo:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportRecordingZoom(I)Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0o0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->needLoadRecordingZoom(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0xa1

    if-eq p0, v0, :cond_4

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_4

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_4

    const/16 v0, 0xd6

    if-eq p0, v0, :cond_4

    return v1

    .line 3
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 5
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 6
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p0

    return p0
.end method

.method public static isSupportReplaceSession()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0O0O()Z

    move-result v0

    return v0
.end method

.method public static isSupportSatZoomSpline()Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->SUPPORT_PROGRESS_ZOOM_EFFECT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const-string v1, "CameraSettings"

    if-nez v0, :cond_1

    const-string v0, "isSupportSatZoomSpline: cc is null"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportSatZoomSplineData()Z

    move-result v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportSatZoomSpline: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupportSlowMotionVideoEditor()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0Oo()Z

    move-result v0

    return v0
.end method

.method public static isSupportedBeautyLens()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningBeautyLens()Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSupportedDualCameraWaterMark()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000OO0()Z

    move-result v0

    return v0
.end method

.method public static isSupportedMetadata()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00oO0O()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedNonSatUWPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportedNonSatUWPortrait()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->hasPortraitCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->hasUWPortraitCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportedOpticalZoom()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->hasSATCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportedPortrait()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->hasPortraitCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportedZslShutter()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oOoo()Z

    move-result v0

    return v0
.end method

.method public static isSwitchOn(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isTransient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isCameraSpecific(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "off"

    const-string/jumbo v2, "on"

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTiltShiftOn()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTimeWaterMarkOpen()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isDocumentMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isIDCardMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v2, "pref_time_watermark_key"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelFront32MPOn()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public static isTimerBurstEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_timer_burst"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTrackEyeOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackEye()Lcom/android/camera/trackfocus/ComponentConfigTrackEye;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/trackfocus/ComponentConfigTrackEye;->isTrackEyeOn()Z

    move-result v0

    return v0
.end method

.method public static isTrackFocusOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackFocus()Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->isTrackFocusOn()Z

    move-result v0

    return v0
.end method

.method public static isTransient(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "pref_delay_capture_mode"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_shader_coloreffect_key"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_scenemode_key"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_scenemode_setting_key"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_ubifocus_key"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_magic_mirror_key"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_groupshot_mode_key"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_super_resolution_key"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_tilt_shift_key"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_tilt_shift_mode"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_hand_night_key"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_video_speed_fast_key"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_portrait_mode_key"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_manual_mode_key"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_square_mode_key"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_show_gender_age_key"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_peak_key"

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_camera_exposure_feedback"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isUltraAndULSupportAF(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isAFRegionSupported()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUltraPixelFront32MPOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isFront32MPSwitchOn()Z

    move-result v0

    return v0
.end method

.method public static isUltraPixelOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isSwitchOn()Z

    move-result v0

    return v0
.end method

.method public static isUltraPixelPortraitFrontOn()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixelPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_ultra_pixel_portrait_mode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUltraPixelRawOn()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUltraPixelRearOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRearSwitchOn()Z

    move-result v0

    return v0
.end method

.method public static isUltraPixelSelfEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_ultral_pixel_self"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUltraWideConfigOpen(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigUltraWide()Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->isSupportUltraWide()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->isUltraWideOnInMode(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUltraWideLDCEnabled()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05003e

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo v2, "pref_camera_ultra_wide_ldc_key"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUltraWideVideoLDCEnabled()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05003e

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo v2, "pref_camera_ultra_wide_video_ldc_key"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUseNewBeautyMode(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO00o()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportTrueSightBeauty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVhdrOn(I)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xa2

    if-eq p0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVhdrOn: componentConfigHdr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraSettings"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "normal"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const-string p0, "isVhdrOn: hdr component not init or empty"

    .line 8
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoHdr()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isVhdrOn(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVideoBokehOn()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oOOO()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string/jumbo v1, "pref_video_bokeh_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/DataItemConfig;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVideoCaptureRepeatingOpen()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f050054

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo v2, "pref_video_capture_repeating"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVideoCaptureVisible()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo0O:Z

    if-nez v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo0:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoDynamicFpsOn(II)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/android/camera/CameraSettings;->getVideoDynamicFpsSettingUiState(IZI)Lcom/android/camera/SettingUiState;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const v0, 0x7f050015

    .line 4
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v0

    const-string/jumbo v1, "pref_camera_dynamic_frame_rate_key"

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoEisBeautyMeanwhileEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isVideoBeautyForceEis()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0xb7

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd7

    if-eq v0, v2, :cond_2

    .line 4
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMasterFilterOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isVideoFaceViewShownEnable()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_video_show_faceview"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVideoQuality8KOpen(I)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "3001"

    .line 3
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "3001,24"

    .line 4
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isVideoQuality8KOpen(Lcom/android/camera2/CameraCapabilities;I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result p0

    return p0
.end method

.method public static isVideoTagOn()Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oO00o()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v2, "pref_camera_video_tag_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isWindDenoiseOn()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f050056

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo v2, "pref_wind_denoise"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isZoomByCameraSwitchingSupported()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPanoramaModule()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProModule()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isWideSelfieModule()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isUltraPixel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o00o0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRTo108mModeOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraTele()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraWide()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public static listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static needLoadRecordingZoom(I)Z
    .locals 1

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static readExposure()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_exposure_key"

    const-string v2, "0"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static readFNumber()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyLens()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :pswitch_2
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :pswitch_3
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :pswitch_4
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultFNumber()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pref_f_number"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "1.4"

    return-object v0

    :cond_2
    const-string v0, "1.2"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readPreferredCameraId()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    return v0
.end method

.method public static readTargetZoom()F
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_target_zoom_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static recordFirstUse(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_first_use_hint_shown_key"

    .line 3
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static recordLocationFirstUse(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_confirm_location_shown_key"

    .line 3
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static resetContrast()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_qc_camera_contrast_key"

    invoke-interface {v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static resetExposure()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_exposure_key"

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static resetRetainZoom()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_zoom_retain_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/DataItemBase;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static resetSaturation()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_qc_camera_saturation_key"

    invoke-interface {v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static resetSharpness()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_qc_camera_sharpness_key"

    invoke-interface {v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static resetSkinColor()V
    .locals 1

    const-string v0, "0"

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setSkinColor(Ljava/lang/String;)V

    return-void
.end method

.method public static retainAiScene()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_retain_ai_scene_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static retainBeauty()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_retain_beauty_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static retainCameraMode()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_retain_camera_mode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static retainLiveShot()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_retain_live_shot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static set4K120FpsOff(I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->is4K120FpsOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    :cond_0
    return-void
.end method

.method public static setAiAudioNewEnabled(IZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudioNew()Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->setEnabled(IZ)V

    return-void
.end method

.method public static setAiAudioSingleEnabled(IZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudioSingle()Lcom/android/camera/data/data/runing/ComponentRunningAiAudioSingle;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioSingle;->setEnabled(IZ)V

    return-void
.end method

.method public static setAiEnhancedVideoEnabled(IZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiEnhancedVideo()Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;->setEnabled(IZ)V

    return-void
.end method

.method public static setAiSceneOpen(IZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigAi()Lcom/android/camera/data/data/config/ComponentConfigAi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigAi;->setAiScene(IZ)V

    return-void
.end method

.method public static setAudioMapParameter(Landroid/content/Context;IZ)V
    .locals 1

    const-string v0, "audio"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0oo0()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string/jumbo p1, "pro_video_preview=on"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "pro_video_preview=off"

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setAutoZoomEnabled(IZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAutoZoom()Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->setEnabled(IZ)V

    return-void
.end method

.method public static setBeautyLens(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningBeautyLens()Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public static setBeautyMakeupClicked()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_beauty_makeup_clicked_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setBeautyMakeupsType(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMakeups()Lcom/android/camera/data/data/runing/ComponentRunningMakeups;

    move-result-object v0

    const/16 v1, 0xa0

    .line 2
    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public static setBroadcastKillServiceTime(J)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_broadcast_kill_service_key"

    invoke-interface {v0, v1, p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setCenterMarkOn(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigCenterMark()Lcom/android/camera/data/data/config/ComponentConfigCenterMark;

    move-result-object v1

    if-eqz p0, :cond_1

    const-string/jumbo p0, "on"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "off"

    :goto_0
    invoke-virtual {v1, v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigCenterMark;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public static setCinematicAspectRatioEnabled(IZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getCinematicAspectRatio()Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;->setEnabled(IZ)V

    return-void
.end method

.method public static setCurrentLiveMusic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_live_music_path_key"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string/jumbo v0, "pref_live_music_hint_key"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setCurrentLiveSpeed(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_live_speed_key"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setCurrentLiveSticker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_live_sticker_key"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string/jumbo v0, "pref_live_sticker_name_key"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string/jumbo p1, "pref_live_sticker_hint_key"

    invoke-interface {p0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setCustomWatermark(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "pref_custom_watermark"

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    .line 4
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 5
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    .line 7
    invoke-interface {p0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 8
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :goto_0
    return-void
.end method

.method public static setDocumentModeOn(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDocument()Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->setEnabled(Z)V

    return-void
.end method

.method public static setDualCameraWaterMarkOpen(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedDualCameraWaterMark()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_dualcamera_watermark_key"

    .line 3
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :cond_0
    return-void
.end method

.method public static setESPSDisplaywitch(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->setEnabled(Z)V

    return-void
.end method

.method public static setFaceBeautyLevel(I)V
    .locals 1

    const-string/jumbo v0, "pref_old_beautify_level_key_capture"

    .line 1
    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->setFaceBeautyRatio(Ljava/lang/String;I)V

    return-void
.end method

.method public static setFaceBeautyRatio(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/constant/BeautyConstant;->isLiveBeautyModeKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-static {p0}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-static {p0}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :goto_0
    return-void
.end method

.method public static setFaceBeautySmoothLevel(I)V
    .locals 1

    const-string/jumbo v0, "pref_beautify_skin_smooth_ratio_key"

    .line 1
    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->setFaceBeautyRatio(Ljava/lang/String;I)V

    return-void
.end method

.method public static setFaceBeautySwitch(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_old_face_beauty_switch_key"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setFlashMode(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public static setFocusMode(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_focus_mode_key"

    .line 2
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setFocusModeSwitching(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_qc_focus_mode_switching_key"

    .line 2
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setFromSuperNightVideoMudule(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_from_super_nigtht_video_module"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static setGainValueReset(F)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string/jumbo v1, "pro_set_gain_value"

    .line 2
    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putFloat(Ljava/lang/String;F)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setGoogleLensAvailability(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/android/camera/CameraSettings;->sGoolgeLensAvilability:Z

    return-void
.end method

.method public static setGradienterOn(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0OoOo0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigGradienter()Lcom/android/camera/data/data/config/ComponentConfigGradienter;

    move-result-object v1

    if-eqz p0, :cond_1

    const-string/jumbo p0, "on"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "off"

    :goto_0
    invoke-virtual {v1, v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->setComponentValue(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static setHSRValue(ZLjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo p0, "pref_camera_hsr_value_key_u"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "pref_camera_hsr_value_key"

    .line 1
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setHandGestureStatus(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_hand_gesture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_0
    return-void
.end method

.method public static setIsFromProVideoMudule(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_from_pro_video_module"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static setLensDirtyDetectEnable(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataNormalItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_lens_dirty_detect_enabled_key"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setLiveAllSwitchAddValue(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_live_all_switch_add_value"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setLiveBeautyStatus(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    const-string/jumbo v1, "pref_live_beauty_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_0
    return-void
.end method

.method public static setLiveModuleClicked(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_live_module_clicked"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setLiveShotOn(Z)V
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoOO0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigLiveShot()Lcom/android/camera/data/data/config/ComponentConfigLiveShot;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigLiveShot;->setLiveShotOn(Z)V

    return-void
.end method

.method public static setLiveStickerLastCacheTime(J)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_live_sticker_last_cache_time"

    .line 2
    invoke-interface {v0, v1, p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setLiveStickerRedDotTime(J)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_live_sticker_red_dot_time"

    .line 2
    invoke-interface {v0, v1, p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setLocalWordsVersion(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_localwords_version"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setLongPressShutterFeature(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_long_press_shutter_feature_key"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static setMimojiDownloadTime(J)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_mimoji_download_time"

    invoke-interface {v0, v1, p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setMimojiModleVersion(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_mimoji_model_verion"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setMoreModeStyle(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMoreModeStyle()I

    move-result v0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_open_more_mode_type"

    .line 3
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->applyMoreModeStyle()V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit(Z)V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const/16 v0, 0xa3

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    :cond_0
    return-void
.end method

.method public static setPanoramaMoveDirection(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_panorana_move_direction_key"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static setPlayToneOnCaptureStart(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_play_tone_on_capture_start_key"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setPopupTipBeautyIntroClicked()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_popup_tip_beauty_intro_clicked_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setPriorityStoragePreference(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_priority_storage"

    .line 2
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setProVideoHistogramOpen(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_pro_video_histogram"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static setProVideoLog(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_pro_video_log_format"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static setRetainZoom(FI)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningZoom()Lcom/android/camera/data/data/config/ComponentRunningZoom;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/data/data/config/ComponentRunningZoom;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public static setShaderEffect(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v2

    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->setComponentValue(ILjava/lang/String;)V

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa9

    if-ne v0, v3, :cond_2

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo0()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setVideoShineForceOn(IZ)V

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setShaderEffect: getValue = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraSettings"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setSkinColor(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_skin_color_type_key"

    .line 2
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setSpeechShutterStatus(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_speech_shutter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_0
    return-void
.end method

.method public static setSubtitleEnabled(IZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSubtitle()Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->setEnabled(IZ)V

    return-void
.end method

.method public static setSuperEISEnabled(IZ)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningEisPro()Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->setComponentValue(ILjava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSuperEIS()Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;->setEnabled(IZ)V

    return-void
.end method

.method public static setSuperNightOn(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_super_night_mode"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static setTTLiveMusicJsonCache(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_key_tt_live_music_json_cache"

    .line 2
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setTTLiveStickerJsonCache(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_key_tt_live_sticker_json_cache"

    .line 2
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setTTLiveStickerNeedRedDot(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_live_sticker_need_red_dot"

    .line 2
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setTimerBurstEnable(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_timer_burst"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static setTimerBurstInterval(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_timer_burst_interval"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static setTimerBurstTotalCount(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_timer_burst_total_count"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static setTimerBurstViewX(Ljava/lang/String;F)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pref_camera_timer_burst_type_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/DataItemBase;->putFloat(Ljava/lang/String;F)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static setTrackFocusOn(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackFocus()Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->setTrackFocusOn(Z)V

    return-void
.end method

.method public static setUltraPixelSelf(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_ultral_pixel_self"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static setUltraWideConfig(IZ)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "ON"

    goto :goto_0

    :cond_0
    const-string p1, "OFF"

    .line 1
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigUltraWide()Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public static setVideoBokehColorRetentionMode(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_video_bokeh_color_retention_mode_key"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static setVideoBokehRatio(F)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_video_bokeh_adjust_key"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putFloat(Ljava/lang/String;F)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static setVideoBokehRatio(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-static {p0}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/DataItemBase;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static setVideoMasterFilter(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMasterFilter()Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVideoMasterFilter: mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraSettings"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setVideoQuality8KOff(I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    :cond_0
    return-void
.end method

.method public static setVideoSkyResourceVersion(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_video_sky_resource_version"

    .line 2
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static setVolumeCameraFunction(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0xa3

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/16 v1, 0xa7

    if-eq p0, v1, :cond_1

    const/16 v1, 0xaf

    if-eq p0, v1, :cond_1

    const/16 v1, 0xbc

    if-eq p0, v1, :cond_1

    const/16 v0, 0xbd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xcf

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd0

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd4

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd5

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0xd3

    goto :goto_0

    :cond_1
    move p0, v0

    .line 1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pref_camera_volumekey_function_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/DataItemBase;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static shouldEnableSpeechShutter(I)Z
    .locals 1

    const/16 v0, 0xd2

    if-eq p0, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSpeechShutterOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldNormalWideLDCBeVisibleInMode(I)Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Ooooo()Z

    move-result v0

    const/16 v1, 0xa3

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa7

    if-eq p0, v1, :cond_0

    const/16 v1, 0xba

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static shouldShowLensDirtyDetectHint()Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataNormalItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    const-string/jumbo v5, "pref_lens_dirty_detect_date_key"

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v1, v4, :cond_1

    const/4 v1, 0x2

    .line 7
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v4, v1, :cond_1

    const/4 v1, 0x5

    .line 8
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataNormalItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "pref_lens_dirty_detect_times_key"

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0
.end method

.method public static shouldShowUltraWideStickyTip(I)Z
    .locals 1

    const/16 v0, 0xa3

    if-eq v0, p0, :cond_0

    const/16 v0, 0xcc

    if-eq v0, p0, :cond_0

    const/16 v0, 0xa2

    if-ne v0, p0, :cond_1

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldUltraWideLDCBeVisibleInMode(I)Z
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oO000()Z

    move-result v0

    const/16 v1, 0xa3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p0, v1, :cond_4

    const/16 v1, 0xa7

    if-eq p0, v1, :cond_4

    const/16 v1, 0xad

    if-eq p0, v1, :cond_2

    const/16 v1, 0xaf

    if-eq p0, v1, :cond_0

    const/16 v1, 0xba

    if-eq p0, v1, :cond_4

    return v3

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraWide()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    .line 3
    :cond_2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isSuperNightUWOpen(I)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2

    :cond_4
    if-eqz v0, :cond_5

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    return v2
.end method

.method public static shouldUltraWideVideoLDCBeVisibleInMode(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static showGenderAge()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_show_gender_age_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supportGoogleLens()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    return v0
.end method

.method public static supportVideoSATForVideoQuality(I)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oOo0()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSettingsVideoSATEnable()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    const/16 v2, 0xa2

    if-eq p0, v2, :cond_4

    return v1

    .line 5
    :cond_4
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 6
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isActualOn()Z

    move-result v2

    if-nez v2, :cond_b

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10PRO()Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->isActualOn()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    .line 8
    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    .line 10
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->supportVideoSatQualityTag()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 11
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getVideoSatSupportedQualities()I

    move-result v4

    .line 12
    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p0

    .line 13
    invoke-static {v2, p0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getMappedVideoQualityFlag(Ljava/lang/String;Z)I

    move-result p0

    and-int/2addr p0, v4

    if-eqz p0, :cond_7

    move v1, v3

    :cond_7
    return v1

    :cond_8
    const-string p0, "5"

    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    const-string p0, "6"

    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_0

    :cond_9
    return v1

    :cond_a
    :goto_0
    return v3

    :cond_b
    :goto_1
    return v1
.end method

.method public static switchOffUltraPixel()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->switchOff()V

    return-void
.end method

.method public static switchOnUltraPixel(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->switchOn(Ljava/lang/String;)V

    return-void
.end method

.method public static updateAutoDownloadFeaturePreference(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_feature_auto_download_key"

    .line 3
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static updateCTAPreference(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_recordcta_key"

    .line 2
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static updateFocusMode()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProModule()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastMotionModule()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    const-string v1, "manual"

    goto :goto_0

    :cond_1
    const-string v1, "continuous-picture"

    .line 4
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 6
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFocusMode(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static updateOpenCameraFailTimes()J
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string/jumbo v2, "open_camera_fail_key"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 3
    invoke-interface {v0, v2, v3, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-wide v3
.end method

.method public static updateRecordLocationPreference(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_recordlocation_key"

    .line 2
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static upgradeGlobalPreferences()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_version_key"

    const/4 v2, 0x4

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v4

    .line 4
    invoke-interface {v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v4, :cond_0

    .line 6
    aget v9, v5, v7

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v10

    .line 8
    invoke-interface {v10, v6, v9}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(II)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v11

    .line 9
    invoke-interface {v11}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 10
    invoke-interface {v10, v8, v9}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(II)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v8

    .line 11
    invoke-interface {v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    if-ne v3, v8, :cond_1

    .line 13
    invoke-static {}, Lcom/android/camera/CameraSettings;->deleteObsoletePreferences()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static videoHdrMetuxEis(Lcom/android/camera2/CameraCapabilities;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

.method public static writeExposure(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static writeFNumber(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_f_number"

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/DataItemBase;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public static writeTargetZoom(F)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_target_zoom_key"

    .line 2
    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putFloat(Ljava/lang/String;F)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method
