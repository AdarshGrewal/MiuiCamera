.class public final Lcom/android/camera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Util$ImageFileNamer;
    }
.end annotation


# static fields
.field public static final ACTION_BIND_GALLERY_SERVICE:Ljava/lang/String; = "com.miui.gallery.action.BIND_SERVICE"

.field public static final ACTION_DISMISS_KEY_GUARD:Ljava/lang/String; = "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

.field public static final ACTION_KILL_CAMERA_SERVICE:Ljava/lang/String; = "com.android.camera.action.KILL_CAMERA_SERVICE"

.field public static final ACTION_RESET_CAMERA_PREF:Ljava/lang/String; = "miui.intent.action.RESET_CAMERA_PREF"

.field public static final ALGORITHM_NAME_AMBILIGHT:Ljava/lang/String; = "ambilight"

.field public static final ALGORITHM_NAME_DUAL_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final ALGORITHM_NAME_MEGVII_DUAL_PORTRAIT:Ljava/lang/String; = "megvii_portrait"

.field public static final ALGORITHM_NAME_MEGVII_DUAL_PORTRAIT_GOOGLE:Ljava/lang/String; = "megvii_portrait_google"

.field public static final ALGORITHM_NAME_MIMOJI_CAPTURE:Ljava/lang/String; = "mimoji"

.field public static final ALGORITHM_NAME_MI_DUAL_PORTRAIT:Ljava/lang/String; = "mi_portrait"

.field public static final ALGORITHM_NAME_MI_SOFT_PORTRAIT:Ljava/lang/String; = "soft-portrait"

.field public static final ALGORITHM_NAME_MI_SOFT_PORTRAIT_ENCRYPTED:Ljava/lang/String; = "soft-portrait-enc"

.field public static final ANDROID_ONE_EXTRA_IS_SECURE_MODE:Ljava/lang/String; = "com.google.android.apps.photos.api.secure_mode"

.field public static final ANDROID_ONE_EXTRA_SECURE_MODE_MEDIA_STORE_IDS:Ljava/lang/String; = "com.google.android.apps.photos.api.secure_mode_ids"

.field public static final ANDROID_ONE_REVIEW_ACTIVITY_PACKAGE:Ljava/lang/String; = "com.google.android.apps.photos"

.field public static ANTIBANDING_60_COUNTRY:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASPECT_TOLERANCE:D = 0.02

.field public static final BACK_LIGHT_SENSOR_TYPE:I = 0x1fa266f

.field public static final BLUR_DURATION:I = 0x64

.field public static final BYTES_COPY_BUFFER_LENGTH:I = 0x400

.field public static final CAMERA_CHANNEL_ID:Ljava/lang/String; = "MiuiCamera"

.field public static final COLOR_TEMPERATURE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_TEMPERATURE_MAP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUSTOM_DEFAULT_WATERMARK_PREFIX:Ljava/lang/String; = "1"

.field public static final DEBUG:Z

.field public static final DEBUG_FPS:Z

.field public static DUMP_BUG_REPORT_THRHOLD:I = 0x0

.field public static final ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR:C = ':'

.field public static final EXTRAS_SKIP_LOCK:Ljava/lang/String; = "skip_interception"

.field public static final EXTRAS_START_WITH_EFFECT_RENDER:Ljava/lang/String; = "android.intent.extras.START_WITH_EFFECT_RENDER"

.field public static final EXTRA_HEIGHT_FROM_CAMERA:Ljava/lang/String; = "photo_height"

.field public static final EXTRA_MIME_TYPE_FROM_CAMERA:Ljava/lang/String; = "photo_mime_type"

.field public static final EXTRA_PHOTO_ENTER_TRANSIT_HEIGHT:Ljava/lang/String; = "anchor_height"

.field public static final EXTRA_PHOTO_ENTER_TRANSIT_POS_X:Ljava/lang/String; = "anchor_pivot_x"

.field public static final EXTRA_PHOTO_ENTER_TRANSIT_POS_Y:Ljava/lang/String; = "anchor_pivot_y"

.field public static final EXTRA_PHOTO_ENTER_TRANSIT_WIDTH:Ljava/lang/String; = "anchor_width"

.field public static final EXTRA_WIDTH_FROM_CAMERA:Ljava/lang/String; = "photo_width"

.field public static final FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS:I = -0x80000000

.field public static final FLING_DOWN:I = -0x1

.field public static final FLING_ERROR:I = 0x0

.field public static final FLING_UP:I = 0x1

.field public static final FONT_MIPRO_MEDIUM_NAME:Ljava/lang/String; = "mipro-medium"

.field public static final FONT_MIPRO_REGULAR_NAME:Ljava/lang/String; = "mipro-regular"

.field public static final FORCE_CAMERA_0_FILE:Ljava/lang/String; = "force_camera_0"

.field public static final FORCE_NAME_SUFFIX_FILE:Ljava/lang/String; = "force_name_suffix"

.field public static final GOING_TO_CROP:I = 0x5

.field public static final GOING_TO_CUSTOMIZATION:I = 0x9

.field public static final GOING_TO_DETAIL:I = 0x3

.field public static final GOING_TO_GALLERY:I = 0x1

.field public static final GOING_TO_MIUI_EXTRA_PHOTO:I = 0x6

.field public static final GOING_TO_MODE_EDIT:I = 0x7

.field public static final GOING_TO_MUSIC:I = 0x8

.field public static final GOING_TO_PLAYBACK:I = 0x4

.field public static final GOING_TO_SETTING:I = 0x2

.field public static final GOINT_TO_WORKSPACE:I = 0x9

.field public static final GYROSCOPE_MAX_X:F = 0.7f

.field public static final GYROSCOPE_MAX_Y:F = 5.0f

.field public static final GYROSCOPE_MAX_Z:F = 0.7f

.field public static final INTENT_MIUI_GALLERY_REVIEW:Ljava/lang/String; = "com.miui.camera.action.REVIEW"

.field public static final INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

.field public static final KEYCODE_SLIDE_OFF:I = 0x2bd

.field public static final KEYCODE_SLIDE_ON:I = 0x2bc

.field public static final KEY_CAMERA_BRIGHTNESS:Ljava/lang/String; = "camera-brightness"

.field public static final KEY_CAMERA_BRIGHTNESS_AUTO:Ljava/lang/String; = "camera-brightness-auto"

.field public static final KEY_CAMERA_BRIGHTNESS_MANUAL:Ljava/lang/String; = "camera-brightness-manual"

.field public static final KEY_INVISIBLE_MODE_ACTION:Ljava/lang/String; = "com.miui.securitycenter.action.INVISIBLE_SETTING"

.field public static final KEY_INVISIBLE_MODE_PROP:Ljava/lang/String; = "persist.sys.invisible_mode"

.field public static final KEY_INVISIBLE_MODE_STATE:Ljava/lang/String; = "key_invisible_mode_state"

.field public static final KEY_KILLED_MODULE_INDEX:Ljava/lang/String; = "killed-moduleIndex"

.field public static final KEY_MEMORY_CACHED:Ljava/lang/String; = "cached"

.field public static final KEY_MEMORY_FREE:Ljava/lang/String; = "memfree"

.field public static final KEY_REVIEW_FROM_MIUICAMERA:Ljava/lang/String; = "from_MiuiCamera"

.field public static final KEY_SECURE_ITEMS:Ljava/lang/String; = "SecureUri"

.field public static final LAB_OPTIONS_VISIBLE_PROP:Ljava/lang/String; = "camera.lab.options"

.field public static final LAST_FRAME_GAUSSIAN_FILE_NAME:Ljava/lang/String; = "blur.jpg"

.field public static final LIMIT_SURFACE_WIDTH:I = 0x2d0

.field public static final LOW_MEMORY_THRESHOLD_MB:I

.field public static final MARKET_NAME:Ljava/lang/String;

.field public static final MAX_SECURE_SIZE:I = 0x64

.field public static final NONUI_MODE_PROPERTY:Ljava/lang/String; = "sys.power.nonui"

.field public static final ORIENTATION_HYSTERESIS:I = 0x5

.field public static final QRCODE_MODULE_CODE_RECEIVER_ACTION:Ljava/lang/String; = "com.xiaomi.scanner.module.code.app.BarCodeScannerReceiver"

.field public static final QRCODE_RECEIVER_ACTION:Ljava/lang/String; = "com.xiaomi.scanner.receiver.senderbarcodescanner"

.field public static final RATIO_16_10:F = 1.6f

.field public static final RATIO_16_9:F = 1.7777777f

.field public static final RATIO_18_7_5_9:F = 2.0833333f

.field public static final RATIO_18_9:F = 2.0f

.field public static final RATIO_19P5_9:F = 2.1666667f

.field public static final RATIO_19_9:F = 2.1111112f

.field public static final RATIO_1_1:F = 1.0f

.field public static final RATIO_20_9:F = 2.2222223f

.field public static final RATIO_4_3:F = 1.3333333f

.field public static final REQUEST_CODE_OPEN_MIUI_EXTRA_PHOTO:I = 0x8c35

.field public static final REVIEW_ACTION:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field public static final REVIEW_ACTION_IN_MULTI_WINDOW:Ljava/lang/String; = "com.android.camera.action.SPILIT_SCREEN_REVIEW"

.field public static final REVIEW_ACTIVITY_PACKAGE:Ljava/lang/String; = "com.miui.gallery"

.field public static final REVIEW_SCAN_RESULT_PACKAGE:Ljava/lang/String; = "com.xiaomi.scanner"

.field public static final ROTATION_ANIMATION_SCALE_DOWN:I = 0x5

.field public static final ROTATION_ANIMATION_SCALE_UP:I = 0x4

.field public static final SCHEME_PHOTO:Ljava/lang/String; = "photo"

.field public static final SCREEN_EFFECT_CAMERA_STATE:I = 0xe

.field public static final SCREEN_SLIDE_STATUS_SETTING_URI:Landroid/net/Uri;

.field public static SCREEN_VENDOR:Ljava/lang/String; = null

.field public static final SHADOW_COLOR:I = -0x80000000

.field public static final SHADOW_RADIUS:F = 1.0f

.field public static final STANDARD_WIDTH:F = 3000.0f

.field public static final SUPER_RESOLUTION_TAG_NULL:F = 0.0f

.field public static final TAG:Ljava/lang/String; = "CameraUtil"

.field public static final TEMP_SUFFIX:Ljava/lang/String; = ".tmp"

.field public static final TOLERANCE:F = 0.02f

.field public static final TOTAL_MEMORY_GB:J

.field public static final VOICEACCESS_A11y_SERVICE:Ljava/lang/String; = "com.miui.accessibility/com.miui.accessibility.voiceaccess.VoiceAccessAccessibilityService"

.field public static final WATERMARK_CINEMATIC_RATIO_FILE_NAME:Ljava/lang/String;

.field public static final WATERMARK_DEFAULT_FILE_NAME:Ljava/lang/String; = "dualcamera.png"

.field public static final WATERMARK_FRONT_FILE_NAME:Ljava/lang/String;

.field public static WATERMARK_SPACE:Ljava/lang/String; = null

.field public static final WATERMARK_STORAGE_DIRECTORY:Ljava/lang/String; = "/mnt/vendor/persist/camera/"

.field public static final WATER_MARK_DUMP:Z

.field public static final ZOOM_ANIMATION_PROPERTY:Ljava/lang/String; = "camera_zoom_animation"

.field public static isFlickSensorEnable:Z = false

.field public static isHasBackLightSensor:Z = false

.field public static mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager; = null

.field public static mCountryIso:Ljava/lang/String; = null

.field public static mDepthBokeBufferSizeScale:I = 0x0

.field public static mInvisibleModeDialog:Lmiuix/appcompat/app/AlertDialog; = null

.field public static mLockedOrientation:I = 0x0

.field public static mTouchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener; = null

.field public static sAAID:Ljava/lang/String; = null

.field public static final sCinematicAspectRatio:D = 2.39

.field public static final sCinematicAspectWaterMarkRatio:F = 0.86f

.field public static sClearMemoryLimit:Z

.field public static sDumpCropFrontZoomRatio:Ljava/lang/Float;

.field public static sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

.field public static sIsAccessibilityEnable:Z

.field public static sIsDepthImageWithoutAlgoEnable:Z

.field public static sIsDumpBugReport:Z

.field public static sIsDumpImageEnabled:Ljava/lang/Boolean;

.field public static sIsDumpLog:Z

.field public static sIsDumpOrigJpg:Z

.field public static sIsForceNameSuffix:Ljava/lang/Boolean;

.field public static sIsKillCameraService:Z

.field public static sIsLabOptionsVisible:Ljava/lang/Boolean;

.field public static sIsVoiceAccessibilityEnable:Z

.field public static sLastDumpBugReportTime:J

.field public static sRegion:Ljava/lang/String;

.field public static sSuperNightDefaultModeEnable:Z

.field public static sTypefaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string/jumbo v0, "sys.panel.display"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Util;->SCREEN_VENDOR:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_MAP:Ljava/util/List;

    const-string/jumbo v0, "other_space"

    .line 4
    sput-object v0, Lcom/android/camera/Util;->WATERMARK_SPACE:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.marketname"

    const-string v1, ""

    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Util;->MARKET_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "dump_water_mark"

    .line 6
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/Util;->WATER_MARK_DUMP:Z

    const-string v1, "cam.app.debug.fps"

    .line 7
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Util;->DEBUG_FPS:Z

    .line 8
    invoke-static {}, Lcom/xiaomi/compat/common/UserHandleCompat;->isUserOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "main_space"

    .line 9
    sput-object v0, Lcom/android/camera/Util;->WATERMARK_SPACE:Ljava/lang/String;

    .line 10
    :cond_0
    sget-object v0, Lcom/android/camera/Util;->SCREEN_VENDOR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "vendor.panel.display"

    .line 11
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Util;->SCREEN_VENDOR:Ljava/lang/String;

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_front_watermark.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Util;->WATERMARK_FRONT_FILE_NAME:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/camera/Util;->WATERMARK_SPACE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_cinematic_ratio_custom_watermark.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Util;->WATERMARK_CINEMATIC_RATIO_FILE_NAME:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/Util;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    const-string/jumbo v0, "sc_status"

    .line 15
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Util;->SCREEN_SLIDE_STATUS_SETTING_URI:Landroid/net/Uri;

    .line 16
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0oO:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/camera/Util;->DEBUG:Z

    .line 17
    new-instance v0, Ljava/util/HashSet;

    const-string v2, "TW"

    const-string v3, "KR"

    const-string v4, "SA"

    const-string v5, "US"

    const-string v6, "CA"

    const-string v7, "BR"

    const-string v8, "CO"

    const-string v9, "MX"

    const-string v10, "PH"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/camera/Util;->ANTIBANDING_60_COUNTRY:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/android/camera/Util;->mCountryIso:Ljava/lang/String;

    const/4 v0, -0x1

    .line 20
    sput v0, Lcom/android/camera/Util;->mLockedOrientation:I

    const/16 v0, 0x3a98

    .line 21
    sput v0, Lcom/android/camera/Util;->DUMP_BUG_REPORT_THRHOLD:I

    .line 22
    sput v1, Lcom/android/camera/Util;->mDepthBokeBufferSizeScale:I

    .line 23
    invoke-static {}, Lcom/android/camera/Util;->getPhoneMemorySize()J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    .line 24
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oO0O()I

    move-result v0

    sput v0, Lcom/android/camera/Util;->LOW_MEMORY_THRESHOLD_MB:I

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Assert(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;->onPackageInstalled(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(Z)V
    .locals 0

    .line 2
    sput-boolean p0, Lcom/android/camera/Util;->sIsAccessibilityEnable:Z

    return-void
.end method

.method public static RGBA2RGB([BII)[B
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    mul-int/2addr p1, p2

    mul-int/lit8 p2, p1, 0x3

    .line 1
    new-array p2, p2, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    add-int/lit8 v2, v1, 0x1

    mul-int/lit8 v3, v0, 0x4

    .line 2
    aget-byte v4, p0, v3

    aput-byte v4, p2, v1

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget-byte v4, p0, v4

    aput-byte v4, p2, v2

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v3, 0x2

    .line 4
    aget-byte v3, p0, v3

    aput-byte v3, p2, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static synthetic access$002(Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    sput-object p0, Lcom/android/camera/Util;->mInvisibleModeDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static addDebugInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static addProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static adjBoost()V
    .locals 10

    const-string v0, "CameraUtil"

    :try_start_0
    const-string v1, "boostParallelServiceAdj"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "miui.process.ProcessManager"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "adjBoost"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "android.os.UserHandle"

    .line 4
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "myUserId"

    new-array v5, v6, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "com.android.camera"

    aput-object v4, v3, v6

    .line 7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const-wide/32 v6, 0xea60

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v9

    .line 8
    invoke-virtual {v1, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    .line 9
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 4
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 5
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_1
    return-object p1
.end method

.method public static alignPopupBottom(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "CameraUtil"

    const-string v0, "alignPopupBottom: view is null"

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getCenterDisplayWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v0, 0x51

    .line 5
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public static alignPopupBottom(Landroid/view/View;I)V
    .locals 0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 8
    invoke-static {}, Lcom/android/camera/display/Display;->getCenterDisplayWidth()I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 p1, 0x51

    .line 9
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public static appendInApi26(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {p0, p2, v0, p1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public static binarySearchRightMost(Ljava/util/List;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    .line 2
    div-int/lit8 v2, v2, 0x2

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static bitMapCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    sub-int v3, v0, v1

    .line 3
    div-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-le v0, v1, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    sub-int/2addr v1, v0

    .line 4
    div-int/lit8 v1, v1, 0x2

    move v4, v1

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v5, v6

    .line 5
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public static boostCameraByThreshold(J)V
    .locals 7

    const-string v0, "TAG"

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boostCameraByThreshold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "miui.process.ProcessManager"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "boostCameraByThreshold"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static broadcastKillService(Landroid/content/Context;Z)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setBroadcastKillServiceTime(J)V

    .line 3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.KILL_CAMERA_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x7d0

    add-long/2addr v0, v3

    const-string/jumbo v3, "time"

    .line 4
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "dump_backtrace"

    .line 5
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "android.hardware.camera.provider@2.4-service"

    const-string v0, "android.hardware.camera.provider@2.4-service_64"

    .line 6
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "process_name"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 8
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackBroadcastKillService()V

    return-void
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "android.hardware.action.NEW_PICTURE"

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static calcDualCameraWatermarkLocation(IIII)[I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/Util;->getWatermarkRatio(II)F

    move-result p0

    int-to-float p1, p2

    mul-float/2addr p1, p0

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    and-int/lit8 p1, p1, -0x2

    int-to-float p2, p3

    mul-float/2addr p2, p0

    .line 3
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    and-int/lit8 p2, p2, -0x2

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->getWaterMarkPaddingX()F

    move-result p3

    mul-float/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    and-int/lit8 p3, p3, -0x2

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->getWaterMarkPaddingY()F

    move-result v0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    and-int/lit8 p0, p0, -0x2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    aput p0, v0, p1

    return-object v0
.end method

.method public static calcDualCameraWatermarkLocationByCinema(IIIII)[I
    .locals 5

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/Util;->getWatermarkRatio(II)F

    move-result v0

    int-to-float p2, p2

    mul-float/2addr p2, v0

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectWaterMarkRatio()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    and-int/lit8 p2, p2, -0x2

    int-to-float p3, p3

    mul-float/2addr p3, v0

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectWaterMarkRatio()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    and-int/lit8 p3, p3, -0x2

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->getWaterMarkPaddingX()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectWaterMarkRatio()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->getWaterMarkPaddingY()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectWaterMarkRatio()F

    move-result v0

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    .line 6
    invoke-static {p0, p1}, Lcom/android/camera/Util;->getWatermarkCinematicAspectMargin(II)I

    move-result v2

    const/16 v3, 0x5a

    if-eq p4, v3, :cond_0

    const/16 v3, 0x10e

    if-ne p4, v3, :cond_1

    :cond_0
    if-le p0, p1, :cond_1

    move v4, p1

    move p1, p0

    move p0, v4

    :cond_1
    if-ge p0, p1, :cond_2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    add-int/2addr v0, v2

    :goto_0
    const/4 p0, 0x4

    new-array p0, p0, [I

    const/4 p1, 0x0

    aput p2, p0, p1

    const/4 p1, 0x1

    aput p3, p0, p1

    const/4 p1, 0x2

    aput v1, p0, p1

    const/4 p1, 0x3

    aput v0, p0, p1

    return-object p0
.end method

.method public static final calculateDefaultPreviewEdgeSlop(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    .line 3
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v2, v0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v0, v1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const v0, 0x7f070697

    goto :goto_0

    :cond_0
    const v0, 0x7f070696

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static checkHasBackLightSensot(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "sensor"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const v0, 0x1fa266f

    .line 2
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    .line 4
    sput-boolean p0, Lcom/android/camera/Util;->isHasBackLightSensor:Z

    :cond_0
    return-void
.end method

.method public static checkLockedOrientation(Landroid/app/Activity;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_rotation"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/camera/Util;->mLockedOrientation:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 3
    sput p0, Lcom/android/camera/Util;->mLockedOrientation:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CameraUtil"

    const-string/jumbo v0, "user rotation cannot found"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 1
    throw p0
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static clamp(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static clamp(JJJ)J
    .locals 1

    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    return-wide p4

    :cond_0
    cmp-long p4, p0, p2

    if-gez p4, :cond_1

    return-wide p2

    :cond_1
    return-wide p0
.end method

.method public static clearMemoryLimit()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/camera/Util;->sClearMemoryLimit:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-static {}, Lcom/xiaomi/compat/common/VMRuntimeCompat;->clearGrowthLimit()V

    const/4 v2, 0x1

    .line 4
    sput-boolean v2, Lcom/android/camera/Util;->sClearMemoryLimit:Z

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearMemoryLimit() consume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static clearSeamlessRotation(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const-string v1, "CameraUtil"

    const-string v2, "clearRotationAnimation"

    .line 4
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static closeSafely(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static composeDepthMapPicture([B[B[B[B[IIZZZILjava/lang/String;IIZZILcom/android/camera/effect/renders/DeviceWatermarkParam;Lcom/xiaomi/camera/core/PictureInfo;IJI)[B
    .locals 12

    move-object v0, p2

    const-string v1, "CameraUtil"

    const-string v2, "composeDepthMapPicture: process in portrait depth map picture"

    .line 1
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    new-instance v4, Lcom/android/camera2/PortraitDepthMap;

    move-object v5, p1

    invoke-direct {v4, p1}, Lcom/android/camera2/PortraitDepthMap;-><init>([B)V

    const/4 v5, 0x4

    new-array v6, v5, [I

    new-array v5, v5, [I

    .line 4
    invoke-virtual/range {p16 .. p16}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getDeviceWaterMark()Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v7

    invoke-virtual/range {p16 .. p16}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getWatermarkScale()F

    move-result v8

    invoke-static {v7, v6, v8}, Lcom/android/camera/Util;->getWatermarkData(Lcom/android/camera/effect/renders/WaterMark;[IF)[B

    move-result-object v7

    .line 5
    invoke-virtual/range {p16 .. p16}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getTimeWaterMark()Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v8

    invoke-virtual/range {p16 .. p16}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getWatermarkScale()F

    move-result v9

    invoke-static {v8, v5, v9}, Lcom/android/camera/Util;->getWatermarkData(Lcom/android/camera/effect/renders/WaterMark;[IF)[B

    move-result-object v8

    .line 6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "composeDepthMapPicture: deviceWaterMarkLocation="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", timeWaterMarkLocation="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-static {v1, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v4}, Lcom/android/camera2/PortraitDepthMap;->getDepthMapData()[B

    move-result-object v9

    .line 10
    new-instance v10, Lcom/android/camera2/PortraitDepthMapExif$Builder;

    invoke-direct {v10}, Lcom/android/camera2/PortraitDepthMapExif$Builder;-><init>()V

    move-object v11, p0

    .line 11
    invoke-virtual {v10, p0}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->jpeg([B)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v10

    .line 12
    invoke-virtual {v10, v7}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->dulWaterMark([B)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v7

    .line 13
    invoke-virtual {v7, v6}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->dulCameraWaterMarkLocation([I)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v6

    .line 14
    invoke-virtual {v6, v8}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->timeWaterMark([B)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v6

    .line 15
    invoke-virtual {v6, v5}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->timeWaterMarkLocation([I)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v5

    move-object v6, p3

    .line 16
    invoke-virtual {v5, p3}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->jpegDataOfTheRegionUnderWatermarks([B)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v5

    move-object/from16 v6, p4

    .line 17
    invoke-virtual {v5, v6}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->coordinatesOfOfTheRegionUnderWatermarks([I)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v5

    move/from16 v6, p5

    .line 18
    invoke-virtual {v5, v6}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->rotation(I)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v5

    move/from16 v6, p9

    .line 19
    invoke-virtual {v5, v6}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->lightingPattern(I)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v5

    move/from16 v6, p13

    .line 20
    invoke-virtual {v5, v6}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->isFrontMirror(Z)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v5

    move/from16 v6, p14

    .line 21
    invoke-virtual {v5, v6}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->isBokehFrontCamera(Z)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v5

    .line 22
    invoke-virtual/range {p16 .. p16}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->isCinematicAspectRatio(Z)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v5

    move-object/from16 v6, p17

    .line 23
    invoke-virtual {v5, v6}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->pictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v5

    array-length v6, v0

    .line 24
    invoke-virtual {v5, v6}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->rawLength(I)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v5

    array-length v6, v9

    .line 25
    invoke-virtual {v5, v6}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->depthLength(I)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v5

    move/from16 v6, p18

    .line 26
    invoke-virtual {v5, v6}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->portraitLightingVersioin(I)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v5

    move-wide/from16 v6, p19

    .line 27
    invoke-virtual {v5, v6, v7}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->timeStamp(J)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v5

    move/from16 v6, p6

    .line 28
    invoke-virtual {v5, v6}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->isSupportZeroDegreeOrientationImage(Z)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v5

    move/from16 v6, p21

    .line 29
    invoke-virtual {v5, v6}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->cameraPreferredMode(I)Lcom/android/camera2/PortraitDepthMapExif$Builder;

    move-result-object v5

    .line 30
    invoke-virtual {v5}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->build()Lcom/android/camera2/PortraitDepthMapExif;

    move-result-object v5

    .line 31
    invoke-virtual {v4, v5}, Lcom/android/camera2/PortraitDepthMap;->writePortraitExif(Lcom/android/camera2/PortraitDepthMapExif;)[B

    move-result-object v4

    .line 32
    array-length v5, v4

    array-length v6, v0

    add-int/2addr v5, v6

    array-length v6, v9

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 33
    array-length v6, v4

    const/4 v7, 0x0

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    array-length v6, v4

    array-length v8, v0

    invoke-static {p2, v7, v5, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    array-length v4, v4

    array-length v0, v0

    add-int/2addr v4, v0

    array-length v0, v9

    invoke-static {v9, v7, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "composeDepthMapPicture: compose portrait picture cost: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public static composeLiveShotPicture([BIILjava/lang/String;JZZLjava/lang/String;ILcom/android/camera/effect/renders/DeviceWatermarkParam;[B[II)[B
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    const-string/jumbo v4, "subimage"

    const-string v5, "lenswatermark"

    const-string/jumbo v6, "timewatermark"

    const-string v7, "http://ns.google.com/photos/1.0/camera/"

    const-string v8, "CameraUtil"

    const-string v9, "composeLiveShotPicture(): E"

    .line 1
    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_11

    .line 2
    array-length v10, v1

    if-nez v10, :cond_0

    goto/16 :goto_12

    :cond_0
    if-eqz v0, :cond_10

    const-string v10, "empty"

    .line 3
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto/16 :goto_11

    .line 4
    :cond_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "composeLiveShotPicture(): not found LiveShot movie file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 7
    :cond_2
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    long-to-int v11, v11

    if-nez v11, :cond_3

    const-string v0, "composeLiveShotPicture(): The corresponding movie of LiveShot length is 0"

    .line 8
    invoke-static {v8, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    const/4 v12, 0x1

    .line 9
    :try_start_0
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 12
    invoke-virtual {v0, v12}, Lcom/android/gallery3d/exif/ExifInterface;->addFileTypeLiveShot(Z)Z

    .line 13
    invoke-virtual {v0, v1, v14}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 14
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v15, v0

    .line 16
    :try_start_3
    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v0

    .line 17
    :try_start_4
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v14, v0

    :try_start_5
    invoke-virtual {v15, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v16
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    const-string v14, "composeLiveShotPicture(): Failed to insert xiaomi specific metadata"

    .line 18
    invoke-static {v8, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v14, v0

    if-nez v14, :cond_4

    const-string v0, "composeLiveShotPicture(): #1: return original jpeg"

    .line 19
    invoke-static {v8, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    const/4 v0, 0x4

    new-array v15, v0, [I

    new-array v9, v0, [I

    .line 20
    invoke-virtual/range {p10 .. p10}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getDeviceWaterMark()Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v0

    invoke-virtual/range {p10 .. p10}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getWatermarkScale()F

    move-result v13

    invoke-static {v0, v15, v13}, Lcom/android/camera/Util;->getWatermarkData(Lcom/android/camera/effect/renders/WaterMark;[IF)[B

    move-result-object v0

    .line 21
    invoke-virtual/range {p10 .. p10}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getTimeWaterMark()Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v13

    invoke-virtual/range {p10 .. p10}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getWatermarkScale()F

    move-result v12

    invoke-static {v13, v9, v12}, Lcom/android/camera/Util;->getWatermarkData(Lcom/android/camera/effect/renders/WaterMark;[IF)[B

    move-result-object v12

    .line 22
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p7, v10

    const-string v10, "composeLiveShotPicture: deviceWaterMarkLocation="

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", timeWaterMarkLocation="

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 24
    invoke-static {v8, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v10

    .line 26
    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 27
    invoke-interface {v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    move-object/from16 p8, v7

    :try_start_7
    const-string v7, "UTF-8"
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    move-object/from16 p9, v14

    const/16 v16, 0x1

    .line 28
    :try_start_8
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v10, v7, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    const-string/jumbo v7, "paddingy"

    const-string/jumbo v14, "paddingx"

    const-string v1, "height"

    move-object/from16 v17, v8

    const-string/jumbo v8, "width"

    move-object/from16 v18, v13

    const-string v13, "length"

    move-object/from16 v19, v4

    const-string/jumbo v4, "offset"

    if-eqz v12, :cond_5

    .line 29
    :try_start_9
    array-length v3, v12

    if-lez v3, :cond_5

    .line 30
    array-length v3, v12
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    add-int/2addr v3, v11

    move/from16 v20, v11

    const/4 v11, 0x0

    .line 31
    :try_start_a
    invoke-interface {v10, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v11, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    array-length v2, v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v11, v13, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    .line 34
    aget v21, v9, v2

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v11, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x1

    .line 35
    aget v21, v9, v2

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v11, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x2

    .line 36
    aget v21, v9, v2

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v11, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x3

    .line 37
    aget v9, v9, v2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v11, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 38
    invoke-interface {v10, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    :catch_2
    move-object/from16 v2, p11

    move-object/from16 v5, p12

    goto/16 :goto_7

    :catch_3
    move/from16 v20, v11

    :catch_4
    move-object/from16 v2, p11

    :catch_5
    move-object/from16 v5, p12

    goto/16 :goto_6

    :cond_5
    move/from16 v20, v11

    move/from16 v3, v20

    :goto_2
    if-eqz v0, :cond_6

    .line 39
    :try_start_b
    array-length v2, v0

    if-lez v2, :cond_6

    .line 40
    array-length v2, v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    add-int/2addr v3, v2

    const/4 v2, 0x0

    .line 41
    :try_start_c
    invoke-interface {v10, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 42
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 43
    array-length v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v2, v13, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    .line 44
    aget v9, v15, v6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v2, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x1

    .line 45
    aget v9, v15, v6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v2, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x2

    .line 46
    aget v9, v15, v6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v2, v14, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x3

    .line 47
    aget v9, v15, v6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v2, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    invoke-interface {v10, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_3

    :catch_6
    move-object/from16 v5, p12

    move-object v11, v2

    move-object/from16 v2, p11

    goto/16 :goto_7

    :cond_6
    :goto_3
    move-object/from16 v2, p11

    if-eqz v2, :cond_7

    .line 49
    :try_start_d
    array-length v5, v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    if-lez v5, :cond_7

    move-object/from16 v5, p12

    if-eqz v5, :cond_8

    :try_start_e
    array-length v6, v5

    const/4 v9, 0x4

    if-lt v6, v9, :cond_8

    .line 50
    array-length v6, v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    add-int/2addr v3, v6

    move-object/from16 v6, v19

    const/4 v11, 0x0

    .line 51
    :try_start_f
    invoke-interface {v10, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v11, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    array-length v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v11, v13, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    .line 54
    aget v4, v5, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v11, v14, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x1

    .line 55
    aget v4, v5, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v11, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x2

    .line 56
    aget v3, v5, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v11, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x3

    .line 57
    aget v3, v5, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v11, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "rotation"

    .line 58
    invoke-static/range {p13 .. p13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v11, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    invoke-interface {v10, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    :cond_7
    move-object/from16 v5, p12

    :cond_8
    const/4 v11, 0x0

    .line 60
    :goto_4
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 61
    invoke-virtual/range {v18 .. v18}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    move-object/from16 v3, v17

    goto :goto_8

    :catch_7
    move-object v5, v3

    move-object/from16 v17, v8

    move/from16 v20, v11

    goto :goto_6

    :catch_8
    move-object v5, v3

    goto :goto_5

    :catch_9
    move-object v5, v3

    move-object/from16 p8, v7

    :goto_5
    move-object/from16 v17, v8

    move/from16 v20, v11

    move-object/from16 p9, v14

    :catch_a
    :goto_6
    const/4 v11, 0x0

    :catch_b
    :goto_7
    const-string v1, "composeLiveShotPicture(): Failed to generate xiaomi xmp metadata"

    move-object/from16 v3, v17

    .line 62
    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v11

    :goto_8
    if-nez v1, :cond_9

    const-string v0, "composeLiveShotPicture(): #2: return original jpeg"

    .line 63
    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 64
    :cond_9
    :try_start_10
    new-instance v4, Ljava/io/ByteArrayInputStream;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    move-object/from16 v6, p9

    :try_start_11
    invoke-direct {v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    .line 65
    :try_start_12
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 66
    :try_start_13
    invoke-static {}, Lcom/android/camera/XmpHelper;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v8

    const-string v9, "MicroVideoVersion"

    move-object/from16 v10, p8

    const/4 v13, 0x1

    .line 67
    invoke-interface {v8, v10, v9, v13}, Lcom/adobe/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v9, "MicroVideo"

    .line 68
    invoke-interface {v8, v10, v9, v13}, Lcom/adobe/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v9, "MicroVideoOffset"
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    move/from16 v13, v20

    .line 69
    :try_start_14
    invoke-interface {v8, v10, v9, v13}, Lcom/adobe/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v9, "MicroVideoPresentationTimestampUs"

    move-wide/from16 v14, p4

    .line 70
    invoke-interface {v8, v10, v9, v14, v15}, Lcom/adobe/xmp/XMPMeta;->setPropertyLong(Ljava/lang/String;Ljava/lang/String;J)V

    if-eqz v1, :cond_a

    const-string v9, "http://ns.xiaomi.com/photos/1.0/camera/"

    const-string v10, "XMPMeta"

    .line 71
    invoke-interface {v8, v9, v10, v1}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    :cond_a
    invoke-static {v4, v7, v8}, Lcom/android/camera/XmpHelper;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z

    if-eqz v2, :cond_b

    .line 73
    array-length v1, v2

    if-lez v1, :cond_b

    if-eqz v5, :cond_b

    array-length v1, v5

    const/4 v5, 0x4

    if-lt v1, v5, :cond_b

    .line 74
    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_b
    if-eqz v0, :cond_c

    .line 75
    array-length v1, v0

    if-lez v1, :cond_c

    .line 76
    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_c
    if-eqz v12, :cond_d

    .line 77
    array-length v0, v12

    if-lez v0, :cond_d

    .line 78
    invoke-virtual {v7, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 79
    :cond_d
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 80
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 81
    :try_start_15
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :try_start_16
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c

    goto :goto_e

    :catch_c
    move-object v11, v1

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v11, v1

    goto :goto_b

    :catchall_4
    move-exception v0

    goto :goto_9

    :catchall_5
    move-exception v0

    move/from16 v13, v20

    :goto_9
    move-object v1, v0

    .line 82
    :try_start_17
    throw v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 83
    :try_start_18
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object v5, v0

    :try_start_19
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_b

    :catchall_9
    move-exception v0

    move/from16 v13, v20

    :goto_b
    move-object v1, v0

    .line 84
    :try_start_1a
    throw v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    :catchall_a
    move-exception v0

    move-object v2, v0

    .line 85
    :try_start_1b
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    goto :goto_c

    :catchall_b
    move-exception v0

    move-object v4, v0

    :try_start_1c
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f

    :catch_d
    move-object/from16 v6, p9

    :catch_e
    move/from16 v13, v20

    :catch_f
    :goto_d
    const-string v0, "composeLiveShotPicture(): failed to insert xmp metadata"

    .line 86
    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v11

    :goto_e
    if-eqz v1, :cond_f

    .line 87
    array-length v0, v1

    array-length v2, v6

    if-gt v0, v2, :cond_e

    goto :goto_10

    .line 88
    :cond_e
    array-length v0, v1

    add-int/2addr v0, v13

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "composeLiveShotPicture(): fileSize = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " videoLength = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-array v0, v0, [B

    .line 91
    array-length v2, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    :try_start_1d
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v5, p7

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_10

    .line 93
    :try_start_1e
    array-length v1, v1

    invoke-virtual {v2, v0, v1, v13}, Ljava/io/InputStream;->read([BII)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    .line 94
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_10

    const-string v1, "composeLiveShotPicture(): X"

    .line 95
    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_c
    move-exception v0

    move-object v1, v0

    .line 96
    :try_start_20
    throw v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    :catchall_d
    move-exception v0

    move-object v4, v0

    .line 97
    :try_start_21
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_e

    goto :goto_f

    :catchall_e
    move-exception v0

    move-object v2, v0

    :try_start_22
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v4
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_10

    :catch_10
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "composeLiveShotPicture(): failed to load the mp4 file content into memory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_f
    :goto_10
    const-string v0, "composeLiveShotPicture(): #3: return original jpeg"

    .line 99
    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_10
    :goto_11
    move-object v3, v8

    const-string v0, "composeLiveShotPicture(): The corresponding movie of LiveShot is empty"

    .line 100
    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_11
    :goto_12
    move-object v3, v8

    const-string v0, "composeLiveShotPicture(): The primary photo of LiveShot is empty"

    .line 101
    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-array v0, v1, [B

    return-object v0
.end method

.method public static composeMainSubPicture([B[B[IIIZZLjava/lang/String;ILcom/android/camera/effect/renders/DeviceWatermarkParam;Lcom/xiaomi/camera/core/ParallelTaskData;I)[B
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "sub"

    const-string v4, "main"

    const-string v5, "fusion"

    const-string/jumbo v6, "x"

    const-string/jumbo v7, "subimage"

    const-string v8, ", length = "

    const-string/jumbo v9, "paddingy"

    const-string/jumbo v10, "paddingx"

    const-string v11, "CameraUtil"

    .line 1
    invoke-virtual/range {p10 .. p10}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v12

    .line 2
    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v8

    const-string/jumbo v8, "sdcard/DCIM/Camera/fusionMainImage"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ".yuv"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v15, Ljava/io/File;

    move-object/from16 p4, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p5, v10

    const-string/jumbo v10, "sdcard/DCIM/Camera/fusionSubImage"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v15, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x4

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 4
    array-length v12, v2

    if-ne v12, v9, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 5
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v13

    invoke-virtual {v13}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0OoOoOo()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 7
    invoke-virtual/range {p10 .. p10}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSatFusionType()I

    move-result v13

    if-eqz v13, :cond_1

    .line 8
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    if-nez v12, :cond_2

    if-nez v13, :cond_2

    return-object v1

    .line 9
    :cond_2
    :try_start_0
    new-instance v10, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v10}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 10
    invoke-virtual {v10, v1}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 11
    invoke-virtual {v10}, Lcom/android/gallery3d/exif/ExifInterface;->getMimeType()I

    move-result v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f

    if-eq v10, v9, :cond_3

    const-string v0, "composeMainSubPicture(): HEIC does not support watermark removal"

    .line 12
    invoke-static {v11, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    new-array v10, v9, [I

    new-array v8, v9, [I

    .line 13
    invoke-virtual/range {p9 .. p9}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getDeviceWaterMark()Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v9

    invoke-virtual/range {p9 .. p9}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getWatermarkScale()F

    move-result v1

    invoke-static {v9, v10, v1}, Lcom/android/camera/Util;->getWatermarkData(Lcom/android/camera/effect/renders/WaterMark;[IF)[B

    move-result-object v1

    .line 14
    invoke-virtual/range {p9 .. p9}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getTimeWaterMark()Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v9

    move-object/from16 p10, v1

    invoke-virtual/range {p9 .. p9}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getWatermarkScale()F

    move-result v1

    invoke-static {v9, v8, v1}, Lcom/android/camera/Util;->getWatermarkData(Lcom/android/camera/effect/renders/WaterMark;[IF)[B

    move-result-object v1

    .line 15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p9, v1

    const-string v1, "composeMainSubPicture: deviceWaterMarkLocation="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeWaterMarkLocation="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v11, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v9

    .line 19
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 20
    invoke-interface {v9, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    move-object/from16 v17, v1

    const-string v1, "UTF-8"

    move-object/from16 v19, v8

    const/16 v18, 0x1

    .line 21
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v9, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    const-string v1, "height"

    const-string/jumbo v8, "width"

    move-object/from16 v18, v10

    const-string v10, "length"

    const-string/jumbo v2, "offset"

    if-eqz v13, :cond_5

    move-object/from16 v21, v7

    move/from16 v20, v13

    const/4 v13, 0x0

    .line 22
    :try_start_2
    invoke-static {v14, v13}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v7

    move-object/from16 p8, v3

    const/4 v13, 0x4

    .line 23
    invoke-static {v14, v13}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v3

    .line 24
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v22
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const-wide/16 v24, 0x8

    sub-long v22, v22, v24

    move-object/from16 v27, v14

    const/4 v13, 0x0

    .line 25
    :try_start_3
    invoke-static {v15, v13}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v14

    const/4 v13, 0x4

    .line 26
    invoke-static {v15, v13}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v13

    .line 27
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v28
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    sub-long v28, v28, v24

    move-object/from16 v24, v15

    .line 28
    :try_start_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v1

    const-string v1, "fusion main image size: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fusion sub image size: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v12, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    .line 29
    :cond_4
    array-length v1, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    const/4 v6, 0x0

    .line 30
    :try_start_5
    invoke-interface {v9, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    invoke-interface {v9, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move v15, v7

    int-to-long v6, v1

    add-long v6, v6, v28

    add-long v30, v6, v22

    .line 32
    :try_start_6
    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v26, v11

    const/4 v11, 0x0

    :try_start_7
    invoke-interface {v9, v11, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v11, v10, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v11, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v25

    invoke-interface {v9, v11, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 36
    invoke-interface {v9, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v1, p8

    .line 37
    invoke-interface {v9, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 38
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v11, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 39
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v11, v10, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 40
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v11, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 41
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v11, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 42
    invoke-interface {v9, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 43
    invoke-interface {v9, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    :catch_0
    move-object/from16 v13, p9

    move-object/from16 v4, p10

    move-object v6, v11

    goto/16 :goto_6

    :catch_1
    move-object/from16 v13, p9

    move-object/from16 v4, p10

    goto/16 :goto_9

    :catch_2
    move-object/from16 v27, v14

    :catch_3
    move-object/from16 v24, v15

    :catch_4
    move-object/from16 v13, p9

    move-object/from16 v4, p10

    move-object v14, v11

    :catch_5
    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_a

    :cond_5
    move-object v3, v1

    move-object/from16 v21, v7

    move-object/from16 v26, v11

    move/from16 v20, v13

    move-object/from16 v27, v14

    move-object/from16 v24, v15

    :goto_4
    if-eqz v12, :cond_8

    .line 44
    :try_start_8
    array-length v1, v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    move-object/from16 v4, v21

    const/4 v5, 0x0

    .line 45
    :try_start_9
    invoke-interface {v9, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v5, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    array-length v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v5, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    .line 48
    aget v7, p2, v6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p5

    invoke-interface {v9, v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x1

    .line 49
    aget v11, p2, v6

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v11, p4

    invoke-interface {v9, v5, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x2

    .line 50
    aget v13, p2, v6

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v5, v8, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x3

    .line 51
    aget v14, p2, v13

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v5, v3, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "rotation"

    .line 52
    invoke-static/range {p11 .. p11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v5, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    invoke-interface {v9, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 54
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "composeMainSubPicture: 1 offset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v14, v0

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    move-object/from16 v14, v26

    :try_start_b
    invoke-static {v14, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    if-eqz p10, :cond_6

    move-object/from16 v4, p10

    .line 55
    :try_start_c
    array-length v15, v4

    add-int/2addr v1, v15

    const-string v15, "lenswatermark"
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    const/4 v13, 0x0

    .line 56
    :try_start_d
    invoke-interface {v9, v13, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v2, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    array-length v15, v4

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v10, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    .line 59
    aget v16, v18, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v8, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x1

    .line 60
    aget v16, v18, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v3, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    aget v15, v18, v6

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x3

    .line 62
    aget v16, v18, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v11, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v15, "lenswatermark"

    .line 63
    invoke-interface {v9, v13, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 64
    :try_start_e
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "composeMainSubPicture: 2 offset = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v4

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_5

    :catch_6
    move-object v6, v13

    move-object/from16 v13, p9

    goto/16 :goto_a

    :catch_7
    move-object/from16 v13, p9

    goto/16 :goto_3

    :cond_6
    move-object/from16 v4, p10

    :goto_5
    if-eqz p9, :cond_7

    move-object/from16 v13, p9

    .line 65
    :try_start_f
    array-length v15, v13

    add-int/2addr v1, v15

    const-string/jumbo v15, "timewatermark"
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    const/4 v6, 0x0

    .line 66
    :try_start_10
    invoke-interface {v9, v6, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v6, v2, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    array-length v2, v13

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v6, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    .line 69
    aget v2, v19, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v6, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x1

    .line 70
    aget v2, v19, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x2

    .line 71
    aget v2, v19, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v6, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x3

    .line 72
    aget v2, v19, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v6, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "timewatermark"

    .line 73
    invoke-interface {v9, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "composeMainSubPicture: 3 offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v13

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_7
    move-object/from16 v13, p9

    goto :goto_7

    :catch_8
    move-object/from16 v13, p9

    move-object/from16 v4, p10

    goto/16 :goto_3

    :catch_9
    move-object/from16 v13, p9

    move-object/from16 v4, p10

    move-object v6, v5

    :goto_6
    move-object/from16 v14, v26

    goto :goto_a

    :catch_a
    move-object/from16 v13, p9

    move-object/from16 v4, p10

    move-object/from16 v14, v26

    goto/16 :goto_3

    :cond_8
    move-object/from16 v13, p9

    move-object/from16 v4, p10

    move-object/from16 v14, v26

    :goto_7
    const/4 v6, 0x0

    .line 75
    :goto_8
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 76
    invoke-virtual/range {v17 .. v17}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    goto :goto_b

    :catch_b
    move-object/from16 v4, p10

    move/from16 v20, v13

    move-object/from16 v27, v14

    move-object/from16 v24, v15

    const/4 v6, 0x0

    move-object/from16 v13, p9

    :goto_9
    move-object v14, v11

    :catch_c
    :goto_a
    const-string v1, "composeMainSubPicture(): Failed to generate xiaomi specific xmp metadata"

    .line 77
    invoke-static {v14, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    :goto_b
    if-nez v1, :cond_9

    move-object/from16 v2, p0

    return-object v2

    :cond_9
    move-object/from16 v2, p0

    .line 78
    :try_start_11
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Lcom/adobe/xmp/XMPException; {:try_start_11 .. :try_end_11} :catch_d

    .line 79
    :try_start_12
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 80
    :try_start_13
    invoke-static {}, Lcom/android/camera/XmpHelper;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v7

    const-string v8, "http://ns.xiaomi.com/photos/1.0/camera/"

    const-string v9, "XMPMeta"

    .line 81
    invoke-interface {v7, v8, v9, v1}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    invoke-static {v3, v5, v7}, Lcom/android/camera/XmpHelper;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z

    if-eqz v20, :cond_a

    const/16 v1, 0x8

    move-object/from16 v7, v27

    .line 83
    invoke-static {v7, v5, v1}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    .line 84
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-object/from16 v7, v24

    .line 85
    invoke-static {v7, v5, v1}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    .line 86
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_a
    if-eqz v12, :cond_d

    if-eqz v13, :cond_b

    .line 87
    array-length v1, v13

    if-lez v1, :cond_b

    .line 88
    invoke-virtual {v5, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_b
    if-eqz v4, :cond_c

    .line 89
    array-length v1, v4

    if-lez v1, :cond_c

    .line 90
    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 91
    :cond_c
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 92
    :cond_d
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 93
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 94
    :try_start_14
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e
    .catch Lcom/adobe/xmp/XMPException; {:try_start_15 .. :try_end_15} :catch_e

    goto :goto_f

    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 95
    :try_start_16
    throw v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :catchall_2
    move-exception v0

    move-object v4, v0

    .line 96
    :try_start_17
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object v5, v0

    :try_start_18
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :catchall_4
    move-exception v0

    move-object v4, v0

    move-object v1, v6

    .line 97
    :goto_d
    :try_start_19
    throw v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :catchall_5
    move-exception v0

    move-object v5, v0

    .line 98
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object v3, v0

    :try_start_1b
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v5
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_e
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1b .. :try_end_1b} :catch_e

    :catch_d
    move-object v1, v6

    :catch_e
    const-string v0, "composeMainSubPicture(): Failed to insert xiaomi specific xmp metadata"

    .line 99
    invoke-static {v14, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    if-eqz v1, :cond_f

    .line 100
    array-length v0, v1

    array-length v3, v2

    if-ge v0, v3, :cond_e

    goto :goto_10

    :cond_e
    return-object v1

    :cond_f
    :goto_10
    const-string v0, "composeMainSubPicture(): Failed to append sub image, return original jpeg"

    .line 101
    invoke-static {v14, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_f
    move-object v2, v1

    move-object v14, v11

    const-string v0, "composeMainSubPicture(): Failed to check file type"

    .line 102
    invoke-static {v14, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    .line 2
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, p0

    const/4 p0, 0x1

    if-gez p2, :cond_0

    move v4, p0

    goto :goto_0

    :cond_0
    mul-double v4, v0, v2

    int-to-double v6, p2

    div-double/2addr v4, v6

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    :goto_0
    if-gez p1, :cond_1

    const/16 v0, 0x80

    goto :goto_1

    :cond_1
    int-to-double v5, p1

    div-double/2addr v0, v5

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v2, v5

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 6
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_1
    if-ge v0, v4, :cond_2

    return v4

    :cond_2
    if-gez p2, :cond_3

    if-gez p1, :cond_3

    return p0

    :cond_3
    if-gez p1, :cond_4

    return v4

    :cond_4
    return v0
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/camera/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    if-ge p1, p0, :cond_1

    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x7

    .line 2
    div-int/2addr p0, p1

    mul-int/2addr p1, p0

    :cond_1
    return p1
.end method

.method public static computeScale(IIF)F
    .locals 4

    int-to-double v0, p0

    int-to-double v2, p1

    div-double/2addr v0, v2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 3
    invoke-static {p2}, Lcom/android/camera/Util;->normalizeDegree(F)F

    move-result p1

    float-to-double p1, p1

    add-double/2addr p1, v2

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    int-to-float p0, p0

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr v0, p0

    float-to-double v0, v0

    add-double/2addr p1, v0

    double-to-float p0, p1

    return p0
.end method

.method public static controlAEStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string/jumbo p0, "precapture"

    return-object p0

    :cond_2
    const-string p0, "flash_required"

    return-object p0

    :cond_3
    const-string p0, "locked"

    return-object p0

    :cond_4
    const-string p0, "converged"

    return-object p0

    :cond_5
    const-string/jumbo p0, "searching"

    return-object p0

    :cond_6
    const-string p0, "inactive"

    return-object p0
.end method

.method public static controlAFStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "passive_unfocused"

    return-object p0

    :pswitch_1
    const-string p0, "not_focus_locked"

    return-object p0

    :pswitch_2
    const-string p0, "focused_locked"

    return-object p0

    :pswitch_3
    const-string p0, "active_scan"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "passive_focused"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "passive_scan"

    return-object p0

    :pswitch_6
    const-string p0, "inactive"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static controlAWBStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_1
    const-string p0, "locked"

    return-object p0

    :cond_2
    const-string p0, "converged"

    return-object p0

    :cond_3
    const-string/jumbo p0, "searching"

    return-object p0

    :cond_4
    const-string p0, "inactive"

    return-object p0
.end method

.method public static convertModeToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->isCommonMode(I)Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p0, v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->geItemStringName(IZ)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "CameraUtil"

    const-string v0, "convertModeToString exception"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Unknow"

    :goto_1
    return-object p0
.end method

.method public static convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, ".mp4"

    return-object p0

    :cond_0
    const-string p0, ".3gp"

    return-object p0
.end method

.method public static final convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string/jumbo p0, "video/mp4"

    return-object p0

    :cond_0
    const-string/jumbo p0, "video/3gpp"

    return-object p0
.end method

.method public static convertResToBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static convertSizeToQuality(Lcom/android/camera/CameraSize;)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/CameraSize;->width:I

    .line 2
    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    if-ge v0, p0, :cond_0

    move v2, v0

    move v0, p0

    move p0, v2

    :cond_0
    const/16 v1, 0x780

    if-ne v0, v1, :cond_1

    const/16 v1, 0x438

    if-ne p0, v1, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const/16 v1, 0xf00

    if-ne v0, v1, :cond_2

    const/16 v1, 0x870

    if-ne p0, v1, :cond_2

    const/16 p0, 0x8

    return p0

    :cond_2
    const/16 v1, 0x500

    if-ne v0, v1, :cond_3

    const/16 v1, 0x2d0

    if-ne p0, v1, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/16 v1, 0x280

    if-lt v0, v1, :cond_4

    const/16 v0, 0x1e0

    if-ne p0, v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public static correctionSelectView(Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    return-void
.end method

.method public static coverSubYuvImage([BIIII[B[I)V
    .locals 8

    const/4 v0, 0x1

    .line 1
    aget v1, p6, v0

    mul-int/2addr v1, p3

    const/4 v2, 0x0

    aget v3, p6, v2

    add-int/2addr v1, v3

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x3

    .line 2
    aget v6, p6, v5

    const/4 v7, 0x2

    if-ge v3, v6, :cond_0

    .line 3
    aget v5, p6, v7

    invoke-static {p5, v4, p0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    aget v5, p6, v7

    add-int/2addr v4, v5

    add-int/2addr v1, p3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p2, v0

    mul-int/2addr p3, p2

    add-int/2addr p3, p1

    .line 5
    aget p1, p6, v0

    div-int/2addr p1, v7

    mul-int/2addr p1, p4

    add-int/2addr p3, p1

    aget p1, p6, v2

    add-int/2addr p3, p1

    .line 6
    :goto_1
    aget p1, p6, v5

    div-int/2addr p1, v7

    if-ge v2, p1, :cond_1

    .line 7
    aget p1, p6, v7

    invoke-static {p5, v4, p0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, p4

    .line 8
    aget p1, p6, v7

    add-int/2addr v4, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static createFile(Ljava/io/File;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1ff

    const/4 v2, -0x1

    invoke-static {v1, v0, v2, v2}, Lcom/android/camera/Util;->mkdirs(Ljava/io/File;III)Z

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method public static createJpegName(J)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    invoke-virtual {v1, p0, p1}, Lcom/android/camera/Util$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static createMeteringRectangleFrom(IIIII)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 13

    .line 3
    :try_start_0
    new-instance v6, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const-string v0, "mX"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    .line 4
    :try_start_1
    invoke-static {v6, v0, p0}, Lcom/android/camera/Util;->modify(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "mY"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, p1

    .line 5
    :try_start_2
    invoke-static {v6, v0, p1}, Lcom/android/camera/Util;->modify(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "mWidth"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v3, p2

    .line 6
    :try_start_3
    invoke-static {v6, v0, p2}, Lcom/android/camera/Util;->modify(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "mHeight"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 v4, p3

    .line 7
    :try_start_4
    invoke-static {v6, v0, v4}, Lcom/android/camera/Util;->modify(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "mWeight"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move/from16 v5, p4

    .line 8
    :try_start_5
    invoke-static {v6, v0, v5}, Lcom/android/camera/Util;->modify(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    return-object v6

    :catch_0
    move v1, p0

    :catch_1
    move v2, p1

    :catch_2
    move v3, p2

    :catch_3
    move/from16 v4, p3

    :catch_4
    move/from16 v5, p4

    .line 9
    :catch_5
    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    move-object v7, v0

    move v8, p0

    move v9, p1

    move v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v7 .. v12}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    return-object v0
.end method

.method public static createMeteringRectangleFrom(Landroid/graphics/Rect;I)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 4

    .line 1
    :try_start_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/camera/Util;->createMeteringRectangleFrom(IIIII)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v0, p0, p1}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    return-object v0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;FZFZZ)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 41
    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->cropBitmap(Landroid/graphics/Bitmap;FZFZZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;FZFZZZ)Landroid/graphics/Bitmap;
    .locals 8

    const-string p1, "CameraUtil"

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    const-string p2, "cropBitmap: no effect!"

    .line 1
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    if-eqz p0, :cond_8

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 3
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    if-eqz p2, :cond_4

    const/high16 p2, 0x42b40000    # 90.0f

    cmpl-float p2, p3, p2

    if-eqz p2, :cond_3

    const/high16 p2, 0x43870000    # 270.0f

    cmpl-float p2, p3, p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    move p2, v5

    :goto_1
    mul-int/lit8 p3, p2, -0x1

    int-to-float p2, p2

    mul-float/2addr p2, v3

    int-to-float p3, p3

    mul-float/2addr p3, v3

    int-to-float v3, v1

    div-float/2addr v3, v4

    int-to-float v6, v2

    div-float/2addr v6, v4

    .line 6
    invoke-virtual {v0, p2, p3, v3, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_4
    if-eqz p4, :cond_5

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p3, p2, v1

    int-to-float p3, p3

    div-float/2addr p3, v4

    sub-int p4, p2, v2

    int-to-float p4, p4

    div-float/2addr p4, v4

    .line 8
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move p3, p2

    goto :goto_2

    :cond_5
    move p2, v1

    move p3, v2

    :goto_2
    const/high16 p4, -0x1000000

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz p5, :cond_6

    if-eqz p6, :cond_6

    int-to-double p5, v1

    .line 9
    :try_start_0
    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatio()D

    move-result-wide v6

    div-double/2addr p5, v6

    double-to-int p3, p5

    .line 10
    sget-object p5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, p5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p5

    .line 11
    new-instance p6, Landroid/graphics/Canvas;

    invoke-direct {p6, p5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 12
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v1, v4, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p6, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 13
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 14
    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sub-int p4, v2, p3

    .line 17
    div-int/lit8 p4, p4, 0x2

    add-int/2addr v2, p3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p6, v4, p4, p2, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 18
    invoke-virtual {p6, p0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p5

    :cond_6
    if-eqz p5, :cond_7

    int-to-double p5, p3

    .line 20
    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatio()D

    move-result-wide v6

    div-double/2addr p5, v6

    double-to-int p2, p5

    .line 21
    sget-object p5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, p5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p5

    .line 22
    new-instance p6, Landroid/graphics/Canvas;

    invoke-direct {p6, p5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 23
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v2, v4, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p6, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 24
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 25
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sub-int p4, v1, p2

    .line 28
    div-int/lit8 p4, p4, 0x2

    add-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p6, p4, v4, v1, p3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 29
    invoke-virtual {p6, p0, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 30
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p5

    .line 31
    :cond_7
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 32
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    new-instance p4, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {p4, v4, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p3, p4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 34
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    .line 35
    invoke-virtual {p4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    invoke-virtual {p4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 37
    invoke-virtual {p3, p0, v0, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 38
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    :goto_3
    const-string p3, "Failed to adjust bitmap"

    .line 39
    invoke-static {p1, p3, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0

    :cond_8
    :goto_4
    const-string p0, "cropBitmap: bitmap is invalid!"

    .line 40
    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static debugResourceInfo(Landroid/app/Activity;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 2
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 4
    iget p0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 5
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    aput-object p0, v3, v0

    const-string/jumbo p0, "smallestScreenWidthDp=%d, wDP=%d, hDP=%d"

    .line 7
    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraUtil"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/android/camera/FileCompat;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraUtil"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static dismissSystemChoiceDialog()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/Util;->mInvisibleModeDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/android/camera/Util;->mInvisibleModeDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public static distance(FFFF)F
    .locals 0

    sub-float/2addr p0, p2

    sub-float/2addr p1, p3

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static dpToPixel(F)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getPixelDensity()F

    move-result v0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static drawMiMovieBlackBridge(Landroid/media/Image;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    int-to-double v2, v0

    int-to-double v0, v1

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatio()D

    move-result-wide v4

    div-double/2addr v0, v4

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v0

    double-to-int v0, v2

    .line 4
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 v1, 0x0

    .line 5
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x2

    .line 6
    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 7
    aget-object v5, p0, v1

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    aget-object v5, p0, v3

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    .line 8
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    .line 9
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    move v7, v1

    .line 10
    :goto_0
    aget-object v8, p0, v1

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    mul-int/2addr v8, v0

    if-ge v7, v8, :cond_0

    .line 11
    invoke-virtual {v2, v7, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 12
    :cond_0
    aget-object v7, p0, v1

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    mul-int/2addr v7, v0

    sub-int v7, v5, v7

    :goto_1
    if-ge v7, v5, :cond_1

    .line 13
    invoke-virtual {v2, v7, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 v2, 0x1

    .line 14
    aget-object v5, p0, v2

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    mul-int/2addr v5, v0

    div-int/2addr v5, v3

    const/16 v7, -0x80

    if-ge v1, v5, :cond_2

    .line 15
    invoke-virtual {v4, v1, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16
    :cond_2
    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p0

    mul-int/2addr v0, p0

    div-int/2addr v0, v3

    sub-int p0, v6, v0

    :goto_3
    if-ge p0, v6, :cond_3

    .line 17
    invoke-virtual {v4, p0, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static drawMiMovieBlackBridgeEGL(Lcom/android/gallery3d/ui/BaseGLCanvas;II)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    if-ge p1, p2, :cond_0

    int-to-double v2, p1

    int-to-double v4, p2

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatio()D

    move-result-wide v6

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    div-double/2addr v2, v0

    double-to-int v0, v2

    .line 3
    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v9, -0x1000000

    move-object v4, v1

    move v7, v0

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;-><init>(IIIII)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 4
    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    sub-int v5, p1, v0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;-><init>(IIIII)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    goto :goto_0

    :cond_0
    int-to-double v2, p2

    int-to-double v4, p1

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatio()D

    move-result-wide v6

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    div-double/2addr v2, v0

    double-to-int v0, v2

    .line 6
    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v9, -0x1000000

    move-object v4, v1

    move v7, p1

    move v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;-><init>(IIIII)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 7
    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    sub-int v6, p2, v0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;-><init>(IIIII)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method public static dumpBackTrace(Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "CameraUtil"

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "**********print backtrace start *************"

    .line 3
    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    aget-object v6, v0, v5

    .line 5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]:backtrace: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "**********print backtrace end *************"

    .line 8
    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dumpBugReportLog()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpBugReport:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    sget-wide v2, Lcom/android/camera/Util;->sLastDumpBugReportTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/android/camera/Util;->DUMP_BUG_REPORT_THRHOLD:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    const-string v3, "CameraUtil"

    if-gez v2, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpBugReportLog duration is smaller than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/camera/Util;->DUMP_BUG_REPORT_THRHOLD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    sput-wide v0, Lcom/android/camera/Util;->sLastDumpBugReportTime:J

    const-string v0, "dumpBugReportLog: start"

    .line 6
    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.bugreport"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.bugreport.service.action.DUMPLOG"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static dumpImageInfo(Ljava/lang/String;Landroid/media/Image;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 4
    aget-object v2, p1, v1

    const-string/jumbo v3, "plane_"

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dumpMatrix([F)Ljava/lang/String;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 3
    aget v5, p0, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, -0x1

    if-eq v3, v4, :cond_0

    const-string v4, " "

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraUtil"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dumpToBitmap(IIIILjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 8

    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v7, v0

    .line 2
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const-string p0, ".jpg"

    .line 3
    invoke-static {p4, p0}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, p3, p1, p0}, Lcom/android/camera/Util;->saveBitmap(Ljava/nio/Buffer;IILandroid/graphics/Bitmap$Config;Ljava/lang/String;)Z

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dump to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraUtil"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static enableSeamlessRotation(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 2
    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRotationAnimation: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraUtil"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static enterLightsOutMode(Landroid/view/Window;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public static execCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const-string v0, "CameraUtil"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "sh"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-c"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string p0, ""

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit value = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 5
    :cond_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_1

    .line 8
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execCommand value="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cost="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "execCommand IOException"

    .line 15
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    const-string v1, "execCommand InterruptedException"

    .line 17
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    return-object p0
.end method

.method public static expandViewTouchDelegate(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 4
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    .line 5
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 6
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 7
    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 8
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 9
    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 10
    const-class v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    .line 12
    :cond_0
    const-class v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x190

    .line 7
    invoke-static {p0, v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;I)V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;I)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v1, p1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x190

    .line 7
    invoke-static {p0, v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;I)V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;I)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v1, p1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 p1, 0x8

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static flipBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flipBitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraUtil"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    .line 5
    div-int/lit8 p1, v1, 0x2

    int-to-float p1, p1

    div-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, p1, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 6
    :cond_1
    div-int/lit8 p1, v1, 0x2

    int-to-float p1, p1

    div-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    invoke-virtual {v3, v5, v4, p1, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 7
    :goto_0
    :try_start_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 8
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    if-nez v0, :cond_2

    return-object p0

    .line 9
    :cond_2
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 11
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 12
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 14
    invoke-virtual {p1, p0, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 15
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public static fromByteArray([B)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static genContentValues(ILjava/lang/String;)Landroid/content/ContentValues;
    .locals 5

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genContentValues: path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 18
    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {p0}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "title"

    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    .line 22
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "_data"

    .line 23
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 25
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    cmpl-double p1, v1, v3

    if-eqz p1, :cond_1

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "latitude"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 27
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "longitude"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_1
    return-object v0
.end method

.method public static genContentValues(ILjava/lang/String;II)Landroid/content/ContentValues;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/camera/Util;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genContentValues: path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraUtil"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v2, Landroid/content/ContentValues;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v3, "title"

    .line 6
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_display_name"

    .line 7
    invoke-virtual {v2, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mime_type"

    .line 8
    invoke-virtual {v2, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "_data"

    .line 9
    invoke-virtual {v2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resolution"

    invoke-virtual {v2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double p1, p1, v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    cmpl-double p1, p1, v0

    if-eqz p1, :cond_1

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "latitude"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 14
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "longitude"

    invoke-virtual {v2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_1
    const/4 p0, 0x1

    .line 15
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string/jumbo p1, "save_cover"

    invoke-virtual {v2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v2
.end method

.method public static genVideoPath(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/camera/Util;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateCinematicRatioWatermark2File()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 4
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0oo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getBackIconNameGen2()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getBackIconName()Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/android/camera/Util;->loadWatermarkIcon(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getCustomWatermark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1}, Lcom/android/camera/effect/renders/CustomTextWaterMark;->drawBackWaterMark(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/android/camera/Util;->WATERMARK_CINEMATIC_RATIO_FILE_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->saveCustomWatermark2File(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-object v0
.end method

.method public static generateFrontWatermark2File()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->loadFrontCameraWatermark()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/camera/Util;->WATERMARK_FRONT_FILE_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->saveCustomWatermark2File(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-object v0
.end method

.method public static generateMainWatermark2File()Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    .line 3
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v4, 0x1

    .line 4
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 5
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0Oo0()Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oo00()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 8
    :cond_1
    :goto_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0oo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getBackIconNameGen2()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getBackIconName()Ljava/lang/String;

    move-result-object v4

    .line 10
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v2}, Lcom/android/camera/Util;->loadWatermarkIcon(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 11
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getCustomWatermark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v2, v4, v5, v3}, Lcom/android/camera/effect/renders/CustomTextWaterMark;->drawBackWaterMark(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 13
    invoke-static {}, Lcom/android/camera/Util;->getDefaultWatermarkFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Util;->saveCustomWatermark2File(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->updateCustomWatermarkVersion()V

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateWatermark2File cost time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static generateWatermark2File()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->generateMainWatermark2File()Landroid/graphics/Bitmap;

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->generateCinematicRatioWatermark2File()Landroid/graphics/Bitmap;

    return-void
.end method

.method public static get24HourMode(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static getAIWatermarkRange(ZI[I[FLandroid/graphics/Rect;IILandroid/graphics/Bitmap;)[I
    .locals 15

    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    const/4 v4, 0x4

    new-array v5, v4, [I

    const/4 v6, 0x0

    .line 1
    aget v7, p3, v6

    const/4 v8, 0x1

    aget v9, p3, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/16 v9, 0xb4

    const/16 v10, 0x10e

    const/16 v11, 0x5a

    if-eq v0, v11, :cond_0

    if-ne v0, v10, :cond_1

    :cond_0
    if-eqz p0, :cond_1

    move v12, v9

    goto :goto_0

    :cond_1
    move v12, v6

    :goto_0
    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eq v12, v9, :cond_2

    .line 2
    aget v9, p2, v8

    int-to-float v9, v9

    aget v12, p3, v6

    mul-float/2addr v9, v12

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    aput v9, v5, v6

    .line 3
    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    aget v10, p2, v14

    sub-int/2addr v9, v10

    int-to-float v9, v9

    aget v10, p3, v8

    mul-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    aput v9, v5, v8

    .line 4
    aget v9, p2, v13

    aget v10, p2, v8

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    aput v9, v5, v14

    .line 5
    aget v9, p2, v14

    aget v10, p2, v6

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    aput v7, v5, v13

    goto :goto_1

    .line 6
    :cond_2
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    aget v10, p2, v13

    sub-int/2addr v9, v10

    int-to-float v9, v9

    aget v10, p3, v6

    mul-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    aput v9, v5, v6

    .line 7
    aget v9, p2, v6

    int-to-float v9, v9

    aget v10, p3, v8

    mul-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    aput v9, v5, v8

    .line 8
    aget v9, p2, v13

    aget v10, p2, v8

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    aput v9, v5, v14

    .line 9
    aget v9, p2, v14

    aget v10, p2, v6

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    aput v7, v5, v13

    .line 10
    :goto_1
    aget v7, p3, v6

    aget v9, p3, v8

    sub-float/2addr v7, v9

    const v9, 0x3ca3d70a    # 0.02f

    cmpl-float v7, v7, v9

    if-lez v7, :cond_3

    .line 11
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    aget v10, p3, v8

    mul-float/2addr v9, v10

    sub-float/2addr v7, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    .line 12
    aget v9, p2, v8

    aget v10, p2, v13

    add-int/2addr v9, v10

    div-int/2addr v9, v14

    iget v10, v1, Landroid/graphics/Rect;->top:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    div-int/2addr v10, v14

    sub-int/2addr v9, v10

    .line 13
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, v14

    int-to-float v9, v9

    int-to-float v1, v1

    div-float/2addr v9, v1

    .line 14
    aget v1, v5, v6

    mul-float/2addr v7, v9

    float-to-int v7, v7

    sub-int/2addr v1, v7

    aput v1, v5, v6

    .line 15
    :cond_3
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 16
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v1, v1

    int-to-float v7, v7

    div-float/2addr v1, v7

    .line 17
    aget v7, v5, v14

    aget v9, v5, v13

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 18
    aget v9, v5, v14

    aget v10, v5, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v7, v7

    int-to-float v9, v9

    div-float/2addr v7, v9

    sub-float/2addr v1, v7

    .line 19
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v7, 0x3e4ccccd    # 0.2f

    cmpl-float v7, v1, v7

    if-lez v7, :cond_5

    .line 20
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[AIWatermark] bitmap and range are not match gap is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "CameraUtil"

    invoke-static {v4, v7, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_4

    .line 21
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    aget v1, p3, v6

    aget v7, p3, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    aput v0, v5, v14

    .line 22
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    aget v1, p3, v6

    aget v7, p3, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    aput v0, v5, v13

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    aget v1, p3, v6

    aget v7, p3, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    aput v0, v5, v14

    .line 24
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    aget v1, p3, v6

    aget v7, p3, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    aput v0, v5, v13

    .line 25
    :cond_5
    :goto_2
    aget v0, v5, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v5, v6

    .line 26
    aget v0, v5, v8

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v5, v8

    .line 27
    aget v0, v5, v6

    aget v1, v5, v14

    add-int/2addr v0, v1

    if-le v0, v3, :cond_6

    .line 28
    aget v0, v5, v14

    sub-int v0, v3, v0

    aput v0, v5, v6

    .line 29
    :cond_6
    aget v0, v5, v8

    aget v1, v5, v13

    add-int/2addr v0, v1

    if-le v0, v2, :cond_7

    .line 30
    aget v0, v5, v13

    sub-int v0, v2, v0

    aput v0, v5, v8

    .line 31
    :cond_7
    aget v0, v5, v6

    div-int/2addr v0, v14

    mul-int/2addr v0, v14

    aput v0, v5, v6

    .line 32
    aget v0, v5, v8

    div-int/2addr v0, v14

    mul-int/2addr v0, v14

    aput v0, v5, v8

    .line 33
    aget v0, v5, v14

    div-int/2addr v0, v4

    mul-int/2addr v0, v4

    aput v0, v5, v14

    .line 34
    aget v0, v5, v13

    div-int/2addr v0, v4

    mul-int/2addr v0, v4

    aput v0, v5, v13

    return-object v5
.end method

.method public static getAlgorithmPreviewSize(Ljava/util/List;DLcom/android/camera/CameraSize;)Lcom/android/camera/CameraSize;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;D",
            "Lcom/android/camera/CameraSize;",
            ")",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    if-eqz p3, :cond_5

    const-string v0, "CameraUtil"

    if-eqz p0, :cond_4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v1, p3, Lcom/android/camera/CameraSize;->height:I

    const-string v2, "algorithm_limit_height"

    invoke-static {v2, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraSize;

    .line 4
    iget v3, v2, Lcom/android/camera/CameraSize;->width:I

    int-to-double v3, v3

    iget v5, v2, Lcom/android/camera/CameraSize;->height:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    sub-double/2addr v3, p1

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget v3, v2, Lcom/android/camera/CameraSize;->height:I

    if-ge v3, v1, :cond_1

    move-object p3, v2

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getAlgorithmPreviewSize: algorithmSize = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    :cond_4
    :goto_1
    const-string p0, "null preview size list"

    .line 8
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    .line 9
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "limitSize can not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getArrayIndex([II)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 4
    aget v2, p0, v1

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p0, v2

    .line 2
    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static getAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraUtil"

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p2
.end method

.method public static getBitmapData(Landroid/graphics/Bitmap;I)[B
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static getBitmapSize(Landroid/content/Context;I)Landroid/util/Size;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Landroid/util/Size;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public static getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .locals 1

    add-int/lit8 p1, p1, 0x4

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    const-string p0, "<bottom of call stack>"

    return-object p0

    .line 2
    :cond_0
    aget-object p0, p0, p1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCallers(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 3
    invoke-static {v0, v2}, Lcom/android/camera/Util;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCameraPreviewRect()Landroid/graphics/Rect;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getCameraPreviewStyle()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->isNotchDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oooOo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oooo()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_1
    return-object v1
.end method

.method public static getCenterFocusDepthIndex([BII)I
    .locals 11

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    .line 1
    array-length v1, p0

    const/16 v2, 0x19

    if-ge v1, v2, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    array-length v1, p0

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    .line 3
    aget-byte v1, p0, v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v2, 0x1

    .line 4
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 5
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 6
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702d4

    .line 7
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0702d3

    .line 8
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v4, v1

    .line 9
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v5

    div-int/2addr v4, v5

    mul-int/2addr v3, v2

    int-to-float v3, v3

    .line 10
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float p2, p2

    mul-float/2addr v5, p2

    int-to-float p1, p1

    div-float/2addr v5, p1

    div-float/2addr v3, v5

    float-to-int p1, v3

    sub-int/2addr v2, p1

    .line 11
    div-int/lit8 v2, v2, 0x2

    const/4 p2, 0x5

    new-array v3, p2, [I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, p1, :cond_3

    add-int/lit8 v7, v2, 0x1

    mul-int/2addr v2, v1

    sub-int v8, v1, v4

    .line 12
    div-int/lit8 v8, v8, 0x2

    add-int/2addr v2, v8

    move v8, v5

    :goto_1
    if-ge v8, v4, :cond_2

    add-int/lit8 v9, v2, 0x1

    .line 13
    aget-byte v2, p0, v2

    aget v10, v3, v2

    add-int/2addr v10, v0

    aput v10, v3, v2

    add-int/lit8 v8, v8, 0x1

    move v2, v9

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    move v2, v7

    goto :goto_0

    :cond_3
    :goto_2
    if-ge v0, p2, :cond_5

    .line 14
    aget p0, v3, v5

    aget p1, v3, v0

    if-ge p0, p1, :cond_4

    move v5, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return v5

    :cond_6
    :goto_3
    return v0
.end method

.method public static getChildMeasureWidth(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 5
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public static getCinematicAspectRatio()D
    .locals 2

    const-wide v0, 0x40031eb851eb851fL    # 2.39

    return-wide v0
.end method

.method public static getCinematicAspectRatioMargin()I
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    div-int/lit8 v2, v2, 0x9

    int-to-double v2, v2

    const-wide v4, 0x40031eb851eb851fL    # 2.39

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static getCinematicAspectWaterMarkRatio()F
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0oo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3f5c28f6    # 0.86f

    :goto_0
    return v0
.end method

.method public static getCinematicMargin(I)I
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 3
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double v0, v0

    int-to-double v2, p0

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatio()D

    move-result-wide v4

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getColorMapXmlMapFile()Ljava/io/File;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "CameraUtil"

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 2
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo00o:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.boot.hwc"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "India"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/io/File;

    const-string v2, "/vendor/etc/screen_light_ind.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/vendor/etc/screen_light.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    const-string/jumbo v0, "screen_light.xml do not found under /vendor/etc, roll back to /system/etc"

    .line 7
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/screen_light.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    const-string/jumbo v0, "screen_light.xml do not found under /system/etc"

    .line 10
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getContentFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_6

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    .line 7
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 8
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_3
    move-exception p0

    .line 9
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_2

    .line 10
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 12
    :cond_2
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_4
    if-eqz v0, :cond_3

    .line 13
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 15
    :cond_3
    :goto_5
    throw p0

    :cond_4
    :goto_6
    return-object v0
.end method

.method public static getDebugInfo()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.camera.debug.show_af"

    .line 2
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "persist.camera.debug.enable"

    .line 3
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "persist.camera.debug.param0"

    .line 4
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param1"

    .line 5
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param2"

    .line 6
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param3"

    .line 7
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param4"

    .line 8
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param5"

    .line 9
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param6"

    .line 10
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param7"

    .line 11
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param8"

    .line 12
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param9"

    .line 13
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "persist.camera.debug.show_awb"

    .line 14
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "persist.camera.debug.param10"

    .line 15
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param11"

    .line 16
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param12"

    .line 17
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param13"

    .line 18
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param14"

    .line 19
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param15"

    .line 20
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param16"

    .line 21
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param17"

    .line 22
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param18"

    .line 23
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param19"

    .line 24
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "persist.camera.debug.show_aec"

    .line 25
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "persist.camera.debug.param20"

    .line 26
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param21"

    .line 27
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param22"

    .line 28
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param23"

    .line 29
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param24"

    .line 30
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param25"

    .line 31
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param26"

    .line 32
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param27"

    .line 33
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param28"

    .line 34
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.param29"

    .line 35
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v1, "persist.camera.debug.checkerf"

    .line 36
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.fc"

    .line 37
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "persist.camera.debug.hht"

    .line 38
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "camera.debug.hht.luma"

    .line 39
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v1, "persist.camera.debug.autoscene"

    .line 40
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "camera.debug.hht.iso"

    .line 41
    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDebugInformation(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/android/camera2/CaptureResultParser;->getAECFrameControl(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/AECFrameControl;

    move-result-object v1

    .line 3
    invoke-static {p0}, Lcom/android/camera2/CaptureResultParser;->getAFFrameControl(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/AFFrameControl;

    move-result-object v2

    const-string v3, "camera.preview.debug.show_shortGain"

    .line 4
    invoke-static {v3}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->getAecExposureDatas()[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "short gain : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->getAecExposureDatas()[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->getLinearGain()F

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "camera.preview.debug.show_adrcGain"

    .line 7
    invoke-static {v3}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x2

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->getAecExposureDatas()[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->getCompenADRCGain()F

    move-result v3

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    const-string v7, "adrc gain : "

    if-eqz v3, :cond_1

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->getCompenADRCGain()F

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->getAecExposureDatas()[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->getSensitivity()F

    move-result v7

    .line 12
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->getAecExposureDatas()[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-virtual {v8}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->getSensitivity()F

    move-result v8

    div-float/2addr v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {v3}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    const-string v3, "camera.preview.debug.show_afRegion"

    .line 14
    invoke-static {v3}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v3, :cond_3

    .line 16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "af region : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v3, "camera.preview.debug.show_exposureTime"

    .line 17
    invoke-static {v3}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->getAecExposureDatas()[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 19
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->getAecExposureDatas()[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->getExposureTime()J

    move-result-wide v7

    long-to-float v1, v7

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v3

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exposure time : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "camera.preview.debug.show_afMode"

    .line 21
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "af mode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "camera.preview.debug.show_afStatus"

    .line 23
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "af state : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, "camera.preview.debug.show_afLensPosition"

    .line 25
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 26
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/AFFrameControl;->getUseDACValue()I

    move-result v1

    const-string v3, ""

    if-nez v1, :cond_7

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/AFFrameControl;->getTargetLensPosition()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 28
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "af lens position : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "camera.preview.debug.show_distance"

    .line 29
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 30
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 31
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "distance : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "distance(m) : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "camera.preview.debug.show_gyro"

    .line 34
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    move v1, v5

    .line 35
    :goto_1
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/AFFrameControl;->getAFGyroData()Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->getSampleCount()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gyro : x: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/AFFrameControl;->getAFGyroData()Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->getpAngularVelocityX()[F

    move-result-object v7

    aget v7, v7, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", y: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/AFFrameControl;->getAFGyroData()Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->getpAngularVelocityY()[F

    move-result-object v7

    aget v7, v7, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", z: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/AFFrameControl;->getAFGyroData()Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;->getpAngularVelocityZ()[F

    move-result-object v7

    aget v7, v7, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-static {v3}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    const-string v1, "camera.preview.debug.sat_info"

    .line 41
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 42
    invoke-static {p0}, Lcom/android/camera2/CaptureResultParser;->getSatDbgInfo(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v1

    if-eqz v1, :cond_b

    .line 43
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "camera.preview.debug.xp_content"

    .line 44
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 45
    invoke-static {p0}, Lcom/android/camera2/CaptureResultParser;->getExifValues(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v1

    const-string v2, "exifInfoString"

    if-eqz v1, :cond_c

    .line 46
    array-length v3, v1

    if-lez v3, :cond_c

    .line 47
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exifString:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz p1, :cond_d

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exifInfoString:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string p1, "camera.preview.debug.motionVelocity"

    .line 52
    invoke-static {p1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 53
    invoke-static {p0}, Lcom/android/camera2/CaptureResultParser;->getMiMotionVelocity(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/MiMotionVelocity;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 54
    invoke-virtual {p1}, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraUtil"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "velocity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exp: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string p1, "camera.preview.debug.awb_cct"

    .line 57
    invoke-static {p1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 58
    invoke-static {p0}, Lcom/android/camera2/CaptureResultParser;->getAwbCct(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "awb_cct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "awb_cct"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "awb cct : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string p1, "camera.preview.debug.aec_lux"

    .line 61
    invoke-static {p1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 62
    invoke-static {p0}, Lcom/android/camera2/CaptureResultParser;->getAecLux(Landroid/hardware/camera2/CaptureResult;)F

    move-result p1

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aec lux:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aec lux"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aec lux : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string p1, "camera.preview.debug.laser_dist"

    .line 65
    invoke-static {p1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 66
    invoke-static {p0}, Lcom/android/camera2/CaptureResultParser;->getLaserDist(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object p1

    if-eqz p1, :cond_11

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "laser dist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "laser dist"

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string p1, "camera.preview.debug.show_miAiTof"

    .line 69
    invoke-static {p1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 70
    invoke-static {p0}, Lcom/android/camera2/CaptureResultParser;->getMiAiTof(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "miAiTof :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "miAiTof "

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const-string p1, "camera.preview.debug.show_timestamp"

    .line 73
    invoke-static {p1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 74
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {p1, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeStamp :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "timeStamp "

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string p1, "camera.preview.debug.show_hdrTrigger"

    .line 77
    invoke-static {p1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 78
    invoke-static {p0}, Lcom/android/camera2/CaptureResultParser;->getHdrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    .line 79
    invoke-static {p0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerValues(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v1

    .line 80
    new-instance v2, Lcom/android/camera2/vendortag/struct/HdrEvValue;

    invoke-direct {v2, v1}, Lcom/android/camera2/vendortag/struct/HdrEvValue;-><init>([B)V

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HDR:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", EV:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string p1, "camera.preview.debug.show_nightTrigger"

    .line 82
    invoke-static {p1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 83
    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->NON_SEMANTIC_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    .line 84
    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    const-string/jumbo v1, "off"

    if-eqz p1, :cond_17

    .line 85
    array-length v2, p1

    if-lez v2, :cond_17

    .line 86
    array-length v2, p1

    :goto_2
    if-ge v5, v2, :cond_17

    aget-object v3, p1, v5

    .line 87
    iget v4, v3, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->type:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_16

    .line 88
    iget p1, v3, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->value:I

    shr-int/lit8 p1, p1, 0x8

    const/4 v2, 0x1

    if-ne p1, v2, :cond_15

    const-string p1, "SE"

    goto :goto_3

    :cond_15
    if-ne p1, v6, :cond_17

    const-string p1, "ELL"

    goto :goto_3

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_17
    move-object p1, v1

    .line 89
    :goto_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 90
    invoke-static {p0}, Lcom/android/camera2/CaptureResultParser;->isLLSNeeded(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p0

    if-eqz p0, :cond_18

    const-string p1, "LLS"

    .line 91
    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "night-mode:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Util;->addDebugInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultWatermarkFileName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0oO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oo00()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/camera/Util;->WATERMARK_SPACE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_custom_watermark.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "dualcamera.png"

    :goto_0
    return-object v0
.end method

.method public static getDeviceFrontWatermark(IIILcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 10

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/android/camera/Util;->WATERMARK_FRONT_FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->generateFrontWatermark2File()Landroid/graphics/Bitmap;

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-static {v2}, Lmiuix/core/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 7
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    .line 8
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v2

    move-object v0, v1

    :goto_1
    const-string v3, "CameraUtil"

    const-string v4, "Failed to load front camera water mark"

    .line 9
    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 10
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 11
    new-instance v0, Lcom/android/camera/effect/renders/ImageWaterMark;

    .line 12
    invoke-virtual {p3}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v9

    move-object v4, v0

    move v6, p0

    move v7, p1

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/effect/renders/ImageWaterMark;-><init>(Landroid/graphics/Bitmap;IIIZ)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public static getDeviceWatermark(IIILcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 10

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0Oo0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oo00()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v0

    .line 5
    invoke-virtual {p3}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isFrontWatermarkEnable()Z

    move-result v1

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    if-eqz v1, :cond_2

    .line 6
    sget-object v1, Lcom/android/camera/Util;->WATERMARK_FRONT_FILE_NAME:Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    if-eq p2, v3, :cond_3

    if-ne p2, v2, :cond_4

    .line 7
    :cond_3
    sget-object v1, Lcom/android/camera/Util;->WATERMARK_CINEMATIC_RATIO_FILE_NAME:Ljava/lang/String;

    goto :goto_1

    .line 8
    :cond_4
    invoke-static {}, Lcom/android/camera/Util;->getDefaultWatermarkFileName()Ljava/lang/String;

    move-result-object v1

    .line 9
    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz v0, :cond_6

    if-eq p2, v3, :cond_5

    if-ne p2, v2, :cond_6

    .line 13
    :cond_5
    invoke-static {}, Lcom/android/camera/Util;->generateCinematicRatioWatermark2File()Landroid/graphics/Bitmap;

    goto :goto_2

    .line 14
    :cond_6
    invoke-static {}, Lcom/android/camera/Util;->generateMainWatermark2File()Landroid/graphics/Bitmap;

    :cond_7
    :goto_2
    move-object v0, v1

    :goto_3
    const/4 v1, 0x0

    .line 15
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    :try_start_1
    invoke-static {v2}, Lmiuix/core/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 18
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    .line 19
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v2

    move-object v0, v1

    :goto_5
    const-string v3, "CameraUtil"

    const-string v4, "Failed to load dual camera water mark"

    .line 20
    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    if-eqz v0, :cond_8

    const/4 v2, 0x0

    .line 21
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 22
    new-instance v0, Lcom/android/camera/effect/renders/ImageWaterMark;

    .line 23
    invoke-virtual {p3}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v9

    move-object v4, v0

    move v6, p0

    move v7, p1

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/effect/renders/ImageWaterMark;-><init>(Landroid/graphics/Bitmap;IIIZ)V

    return-object v0

    :cond_8
    return-object v1
.end method

.method public static getDisplayOrientation(II)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getSensorOrientation()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result p1

    if-nez p1, :cond_0

    add-int/2addr v0, p0

    .line 4
    rem-int/lit16 v0, v0, 0x168

    rsub-int p0, v0, 0x168

    .line 5
    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p0

    add-int/lit16 v0, v0, 0x168

    .line 6
    rem-int/lit16 p0, v0, 0x168

    :goto_0
    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0
.end method

.method public static getDisplayRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayRect(I)Landroid/graphics/Rect;
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo0O()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    goto :goto_1

    .line 4
    :cond_0
    sget p0, Lcom/android/camera/Util;->mLockedOrientation:I

    if-eqz p0, :cond_2

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v2

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    sget p0, Lcom/android/camera/Util;->mLockedOrientation:I

    :goto_1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    if-eq p0, v1, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    return v2

    :cond_3
    const/16 p0, 0x10e

    return p0

    :cond_4
    const/16 p0, 0xb4

    return p0

    :cond_5
    const/16 p0, 0x5a

    return p0
.end method

.method public static getDumpCropFrontZoomRatio()Ljava/lang/Float;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/Util;->sDumpCropFrontZoomRatio:Ljava/lang/Float;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "camera.debug.cropFrontZoomRatio"

    .line 2
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Util;->sDumpCropFrontZoomRatio:Ljava/lang/Float;

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/Util;->sDumpCropFrontZoomRatio:Ljava/lang/Float;

    return-object v0
.end method

.method public static getDuration(Landroid/net/Uri;)J
    .locals 7

    const-string v0, "CameraUtil"

    .line 15
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const-wide/16 v2, 0x0

    .line 16
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v4, 0x9

    .line 17
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "metadata:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v4, "IllegalArgumentException"

    .line 21
    invoke-static {v0, v4, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide v2

    :goto_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p0
.end method

.method public static getDuration(Ljava/io/FileDescriptor;)J
    .locals 6

    const-string v0, "CameraUtil"

    .line 7
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const-wide/16 v2, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const/16 p0, 0x9

    .line 9
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "metadata:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v4, "IllegalArgumentException"

    .line 13
    invoke-static {v0, v4, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide v2

    :goto_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p0
.end method

.method public static getDuration(Ljava/lang/String;)J
    .locals 3

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x9

    .line 3
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "CameraUtil"

    const-string v2, "getDuration Exception"

    .line 5
    invoke-static {v1, v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    const-wide/16 v0, 0x0

    return-wide v0

    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p0
.end method

.method public static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xiaomi/compat/common/UserHandleCompat;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/camera/Util;->getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enabled_accessibility_services"

    .line 3
    invoke-static {p0, v0, p1}, Lcom/xiaomi/compat/settings/SettingsCompat$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 7
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 8
    invoke-interface {v0, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 9
    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static getEnglishDecimalFormat()Landroid/icu/text/DecimalFormat;
    .locals 3

    .line 1
    new-instance v0, Landroid/icu/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/icu/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 v2, 0x2e

    .line 3
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    return-object v0
.end method

.method public static getEnterDuration()J
    .locals 3

    const-string v0, "enter.duration"

    const-wide/16 v1, 0x1f4

    .line 1
    invoke-static {v0, v1, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getExif(Ljava/lang/String;)Lcom/android/gallery3d/exif/ExifInterface;
    .locals 2

    .line 4
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 5
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CameraUtil"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static getExif([B)Lcom/android/gallery3d/exif/ExifInterface;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CameraUtil"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static getExitDuration()J
    .locals 3

    const-string v0, "exit.duration"

    const-wide/16 v1, 0x1f4

    .line 1
    invoke-static {v0, v1, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFZMiaoWuJWTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    const-string/jumbo v0, "vendor/camera/fonts/FZMiaoWuJW.ttf"

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/Util;->getTypefaceFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "/"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    const-string v0, "."

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static getFilesState(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExternalStorageState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exists:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canWrite:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canRead:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFirstPlane(Landroid/media/Image;)[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    .line 2
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 5
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFlickerDuration()J
    .locals 3

    const-string v0, "flicker.duration"

    const-wide/16 v1, 0x190

    .line 1
    invoke-static {v0, v1, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getHeader2Int(Ljava/io/File;I)I
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 p0, 0x4

    new-array p0, p0, [B

    int-to-long v1, p1

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/io/FileInputStream;->skip(J)J

    .line 3
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 5
    invoke-static {p0}, Lcom/android/camera/Util;->fromByteArray([B)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static getJpegRotation(II)I
    .locals 1

    const/16 v0, 0x5a

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/camera/Util;->getRotation(III)I

    move-result p0

    return p0
.end method

.method public static getLength(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 2
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 3
    aget v0, v0, v2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    .line 6
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v0, v0

    int-to-float v2, v2

    int-to-float p0, p0

    invoke-direct {v3, v1, v0, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method public static getMakeUpRecyclerViewContentWidth(I)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07012c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/2addr v1, p0

    add-int/lit8 p0, p0, 0x1

    mul-int/2addr p0, v0

    add-int/2addr v1, p0

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p0

    return p0
.end method

.method public static getMaxZoomRatio()F
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;->getMaxZoomRatio()F

    move-result v0

    return v0
.end method

.method public static getMemInfo()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "memfree"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v5, "cached"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const-string v7, "cat /proc/meminfo|grep -Ei \'^%s|^%s\'"

    .line 2
    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2, v6}, Lcom/android/camera/Util;->execCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const-string v7, "\r\n"

    .line 4
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5
    array-length v7, v2

    move v8, v4

    :goto_0
    if-ge v8, v7, :cond_3

    aget-object v9, v2, v8

    const-string v10, ":"

    .line 6
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 7
    array-length v10, v9

    if-lt v10, v1, :cond_2

    .line 8
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v11, v1, [Ljava/lang/Object;

    aget-object v12, v9, v4

    aput-object v12, v11, v4

    aget-object v12, v9, v6

    aput-object v12, v11, v6

    const-string v12, "getMemInfo: %s: %s"

    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "CameraUtil"

    invoke-static {v11, v10}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    aget-object v10, v9, v4

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 11
    :cond_1
    aget-object v9, v9, v6

    const-string v11, "\\D"

    const-string v12, ""

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static final getMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getMinZoomRatio()F
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;->getMinZoomRatio()F

    move-result v0

    return v0
.end method

.method public static getMiuiTypeface()Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "mipro-regular"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getOptimalJpegThumbnailSize(Ljava/util/List;D)Lcom/android/camera/CameraSize;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;D)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    const-string v0, "CameraUtil"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v2, "null thumbnail size list"

    .line 1
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-wide/16 v2, 0x0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/CameraSize;

    .line 3
    invoke-virtual {v5}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v5}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v5}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    sub-double v8, v6, p1

    .line 5
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double v10, v2, p1

    .line 6
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v12, v8, v12

    if-lez v12, :cond_3

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v12, v8, v12

    if-lez v12, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 7
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_4

    .line 8
    invoke-virtual {v5}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v9

    if-le v8, v9, :cond_1

    :cond_4
    move-object v1, v5

    move-wide v2, v6

    goto :goto_0

    :cond_5
    if-nez v1, :cond_8

    const-string v2, "No thumbnail size match the aspect ratio"

    .line 9
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraSize;

    if-eqz v1, :cond_7

    .line 11
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_6

    :cond_7
    move-object v1, v2

    goto :goto_1

    :cond_8
    return-object v1
.end method

.method public static getOptimalPreviewSize(ZILjava/util/List;D)Lcom/android/camera/CameraSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;D)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 36
    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->getOptimalPreviewSize(ZILjava/util/List;DLcom/android/camera/CameraSize;)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public static getOptimalPreviewSize(ZILjava/util/List;DLcom/android/camera/CameraSize;)Lcom/android/camera/CameraSize;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;D",
            "Lcom/android/camera/CameraSize;",
            ")",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    const/4 v4, 0x0

    const-string v5, "CameraUtil"

    if-nez v0, :cond_0

    const-string v0, "null preview size list"

    .line 1
    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000O0()I

    move-result v6

    const/16 v7, 0x438

    const/4 v8, 0x2

    const/4 v10, 0x0

    if-eqz v6, :cond_5

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v11

    move/from16 v12, p1

    if-ne v12, v11, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    move v11, v10

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayWidth()I

    move-result v12

    if-ge v12, v7, :cond_2

    and-int/lit8 v6, v6, -0xf

    :cond_2
    if-eqz v11, :cond_3

    move v11, v8

    goto :goto_1

    :cond_3
    const/4 v11, 0x1

    :goto_1
    if-nez p0, :cond_4

    move v12, v10

    goto :goto_2

    :cond_4
    move v12, v8

    :goto_2
    shl-int/2addr v11, v12

    or-int/2addr v11, v10

    and-int/2addr v6, v11

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    move v6, v10

    .line 5
    :goto_3
    new-instance v11, Landroid/graphics/Point;

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayWidth()I

    move-result v12

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayHeight()I

    move-result v13

    if-eqz v6, :cond_6

    const/16 v14, 0x780

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    :cond_6
    invoke-direct {v11, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v13

    invoke-virtual {v13}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOoo()Z

    move-result v13

    const-wide v14, 0x3f947ae147ae147bL    # 0.02

    if-eqz v13, :cond_7

    const-wide v16, 0x3ffc71c720000000L    # 1.7777777910232544

    sub-double v16, v16, v1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpg-double v13, v16, v14

    if-gtz v13, :cond_7

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 8
    :cond_7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000O00()Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v7, 0x2d0

    .line 9
    :cond_8
    iget v12, v11, Landroid/graphics/Point;->x:I

    if-le v12, v7, :cond_9

    .line 10
    iget v13, v11, Landroid/graphics/Point;->y:I

    mul-int/2addr v13, v7

    div-int/2addr v13, v12

    iput v13, v11, Landroid/graphics/Point;->y:I

    .line 11
    iput v7, v11, Landroid/graphics/Point;->x:I

    :cond_9
    if-eqz v3, :cond_d

    .line 12
    iget v6, v11, Landroid/graphics/Point;->x:I

    iget v7, v3, Lcom/android/camera/CameraSize;->height:I

    if-gt v6, v7, :cond_a

    iget v6, v11, Landroid/graphics/Point;->y:I

    iget v7, v3, Lcom/android/camera/CameraSize;->width:I

    if-le v6, v7, :cond_c

    .line 13
    :cond_a
    iget v6, v11, Landroid/graphics/Point;->y:I

    int-to-double v6, v6

    iget v12, v11, Landroid/graphics/Point;->x:I

    int-to-double v12, v12

    div-double/2addr v6, v12

    .line 14
    iget v12, v3, Lcom/android/camera/CameraSize;->width:I

    iget v13, v3, Lcom/android/camera/CameraSize;->height:I

    if-le v12, v13, :cond_b

    move v12, v13

    :cond_b
    iput v12, v11, Landroid/graphics/Point;->x:I

    int-to-double v12, v12

    mul-double/2addr v6, v12

    double-to-int v6, v6

    .line 15
    iput v6, v11, Landroid/graphics/Point;->y:I

    :cond_c
    move v6, v10

    .line 16
    :cond_d
    sget v7, Lcom/android/camera/PictureSizeManager;->HIGH_ACCURACY_TOLERANCE:F

    const/4 v12, 0x0

    cmpl-float v7, v7, v12

    if-lez v7, :cond_e

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "target ration is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-float v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget v2, v11, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1, v2, v8}, Lcom/android/camera/PictureSizeManager;->findMaxSizeWithRatio(Ljava/util/List;FII)Lcom/android/camera/CameraSize;

    move-result-object v0

    return-object v0

    .line 19
    :cond_e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object/from16 v16, v4

    const-wide v17, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v19, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v12, v21

    check-cast v12, Lcom/android/camera/CameraSize;

    .line 20
    iget v13, v12, Lcom/android/camera/CameraSize;->width:I

    int-to-double v8, v13

    iget v13, v12, Lcom/android/camera/CameraSize;->height:I

    move-object/from16 v22, v11

    int-to-double v10, v13

    div-double/2addr v8, v10

    .line 21
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getOptimalPreviewSize: height:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v12, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " width: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v12, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " ratio:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x1f4

    if-eqz v3, :cond_f

    .line 22
    iget v11, v3, Lcom/android/camera/CameraSize;->width:I

    iget v13, v3, Lcom/android/camera/CameraSize;->height:I

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-le v11, v10, :cond_10

    :cond_f
    iget v11, v12, Lcom/android/camera/CameraSize;->width:I

    iget v13, v12, Lcom/android/camera/CameraSize;->height:I

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-ge v11, v10, :cond_10

    :goto_5
    move-object/from16 v8, v22

    goto :goto_6

    :cond_10
    sub-double/2addr v8, v1

    .line 23
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v8, v8, v14

    if-lez v8, :cond_11

    goto :goto_5

    :cond_11
    move-object/from16 v8, v22

    if-eqz v6, :cond_14

    .line 24
    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v10, v12, Lcom/android/camera/CameraSize;->height:I

    if-le v9, v10, :cond_12

    iget v9, v8, Landroid/graphics/Point;->y:I

    iget v10, v12, Lcom/android/camera/CameraSize;->width:I

    if-gt v9, v10, :cond_14

    .line 25
    :cond_12
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getOptimalPreviewSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " | "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_6
    move-object v11, v8

    const/4 v8, 0x2

    const/4 v10, 0x0

    goto/16 :goto_4

    .line 26
    :cond_14
    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v10, v12, Lcom/android/camera/CameraSize;->height:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, v8, Landroid/graphics/Point;->y:I

    iget v11, v12, Lcom/android/camera/CameraSize;->width:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    if-nez v9, :cond_15

    move-object v4, v12

    move-object/from16 v16, v4

    goto :goto_7

    .line 27
    :cond_15
    iget v10, v12, Lcom/android/camera/CameraSize;->height:I

    iget v11, v8, Landroid/graphics/Point;->x:I

    if-gt v10, v11, :cond_16

    iget v10, v12, Lcom/android/camera/CameraSize;->width:I

    iget v11, v8, Landroid/graphics/Point;->y:I

    if-gt v10, v11, :cond_16

    int-to-double v10, v9

    cmpg-double v13, v10, v17

    if-gez v13, :cond_16

    move-wide/from16 v17, v10

    move-object/from16 v16, v12

    :cond_16
    int-to-double v9, v9

    cmpg-double v11, v9, v19

    if-gez v11, :cond_13

    move-wide/from16 v19, v9

    move-object v4, v12

    goto :goto_6

    :cond_17
    move-object v8, v11

    :goto_7
    if-eqz v16, :cond_18

    move-object/from16 v4, v16

    :cond_18
    if-nez v4, :cond_1a

    .line 28
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    .line 29
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v7, v2

    const-string v1, "no preview size match the aspect ratio: %.2f"

    .line 30
    invoke-static {v3, v1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_19
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraSize;

    .line 32
    iget v2, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-double v2, v2

    cmpg-double v6, v2, v12

    if-gez v6, :cond_19

    move-object v4, v1

    move-wide v12, v2

    goto :goto_8

    :cond_1a
    if-eqz v4, :cond_1b

    .line 33
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "best preview size: %dx%d"

    .line 35
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-object v4
.end method

.method public static getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Lcom/android/camera/CameraSize;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;DII)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    const-string v0, "CameraUtil"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "null size list"

    .line 1
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraSize;

    .line 3
    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    sub-double/2addr v4, p1

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 6
    :cond_3
    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v4

    if-gt v4, p3, :cond_1

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v4

    if-gt v4, p4, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_4
    if-nez v1, :cond_7

    const-string p1, "No picture size match the aspect ratio"

    .line 7
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/CameraSize;

    if-eqz v1, :cond_6

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result p2

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result p3

    if-le p2, p3, :cond_5

    :cond_6
    move-object v1, p1

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method public static getPhoneMemorySize()J
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/compat/common/ProcessCompat;->getTotalMemory()J

    move-result-wide v0

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPixels([BII[I)[B
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 1
    aget v1, p3, v0

    const/4 v2, 0x3

    aget v3, p3, v2

    mul-int/2addr v1, v3

    mul-int/2addr v1, p2

    new-array v1, v1, [B

    const/4 v3, 0x1

    .line 2
    aget v3, p3, v3

    mul-int/2addr v3, p1

    const/4 v4, 0x0

    aget v5, p3, v4

    add-int/2addr v3, v5

    mul-int/2addr v3, p2

    move v5, v4

    .line 3
    :goto_0
    aget v6, p3, v2

    if-ge v4, v6, :cond_1

    .line 4
    aget v6, p3, v0

    mul-int/2addr v6, p2

    invoke-static {p0, v3, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v6, p1, p2

    add-int/2addr v3, v6

    .line 5
    aget v6, p3, v0

    mul-int/2addr v6, p2

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getRange(III)[I
    .locals 7

    const/4 p2, 0x4

    new-array v0, p2, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    int-to-double v3, p0

    const-wide v5, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v3, v5

    double-to-int p0, v3

    const/4 v3, 0x2

    aput p0, v0, v3

    const/4 p0, 0x3

    aput p1, v0, p0

    .line 1
    aget p1, v0, v1

    div-int/2addr p1, v3

    mul-int/2addr p1, v3

    aput p1, v0, v1

    .line 2
    aget p1, v0, v2

    div-int/2addr p1, v3

    mul-int/2addr p1, v3

    aput p1, v0, v2

    .line 3
    aget p1, v0, v3

    div-int/2addr p1, p2

    mul-int/2addr p1, p2

    aput p1, v0, v3

    .line 4
    aget p1, v0, p0

    div-int/2addr p1, p2

    mul-int/2addr p1, p2

    aput p1, v0, p0

    return-object v0
.end method

.method public static getRatio(Ljava/lang/String;)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "19.5x9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "16x10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_2
    const-string v0, "20x9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_3
    const-string v0, "19x9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "18x9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "16x9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "4x3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_7
    const-string v0, "1x1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_8
    const-string v0, "18.75x9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const p0, 0x3faaaaaa

    return p0

    :pswitch_0
    const p0, 0x3fcccccd    # 1.6f

    return p0

    :pswitch_1
    const p0, 0x400e38e4

    return p0

    :pswitch_2
    const p0, 0x40055555

    return p0

    :pswitch_3
    const p0, 0x400aaaab

    return p0

    :pswitch_4
    const p0, 0x40071c72

    return p0

    :pswitch_5
    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :pswitch_6
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :pswitch_7
    const p0, 0x3fe38e38

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7dbd367a -> :sswitch_8
        0xc6aa -> :sswitch_7
        0xd1ef -> :sswitch_6
        0x171fa6 -> :sswitch_5
        0x172728 -> :sswitch_4
        0x172ae9 -> :sswitch_3
        0x177d7f -> :sswitch_2
        0x2ccd452 -> :sswitch_1
        0x56d670f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p1, "_data"

    .line 5
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 6
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public static getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p0, 0x0

    .line 2
    aget v1, v0, p0

    const/4 v2, 0x1

    .line 3
    aget v3, v0, v2

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5
    aget p1, v0, p0

    sub-int/2addr p1, v1

    aput p1, v0, p0

    .line 6
    aget p0, v0, v2

    sub-int/2addr p0, v3

    aput p0, v0, v2

    return-object v0
.end method

.method public static getResolution(Landroid/content/ContentValues;)Lcom/android/camera/CameraSize;
    .locals 3

    const-string/jumbo v0, "resolution"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Lcom/android/camera/CameraSize;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/android/camera/CameraSize;-><init>(II)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRotation(III)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSensorOrientation()I

    move-result p2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result p0

    if-nez p0, :cond_0

    sub-int/2addr p2, p1

    add-int/lit16 p2, p2, 0x168

    .line 4
    rem-int/lit16 p2, p2, 0x168

    goto :goto_0

    :cond_0
    add-int/2addr p2, p1

    .line 5
    rem-int/lit16 p2, p2, 0x168

    goto :goto_0

    :cond_1
    const-string p0, "CameraUtil"

    const-string p1, "getRotation: UNKNOWN!!! return sensor orientation"

    .line 6
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return p2
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 3
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 6
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    .line 8
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v5, -0x1000000

    .line 9
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    invoke-virtual {v1, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 11
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 12
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static getSampleTime()J
    .locals 3

    const-string/jumbo v0, "sample.time"

    const-wide/16 v1, 0x190

    .line 1
    invoke-static {v0, v1, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getScreenInches(Landroid/content/Context;)D
    .locals 7

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p0

    int-to-float p0, p0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr p0, v1

    float-to-double v1, p0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p0

    int-to-float p0, p0

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr p0, v0

    float-to-double v5, p0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScreenInches="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "CameraUtil"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public static getScreenLightColor(I)I
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->initScreenLightColorMap()V

    .line 2
    sget-object v0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "CameraUtil"

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_MAP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Util;->binarySearchRightMost(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 4
    sget-object v2, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 5
    sget-object v0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    .line 6
    sget-object v2, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, p0

    sget-object v3, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    .line 7
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v3, p0, v3

    if-le v2, v3, :cond_2

    move v0, v4

    .line 8
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScreenLightColor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "K -> "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "K"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget-object p0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_MAP:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    :goto_1
    const-string p0, "color temperature list empty!"

    .line 10
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getSensorOrientation(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSensorOrientation()I

    move-result p0

    return p0
.end method

.method public static getShareMediaIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 0

    .line 1
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.SEND"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "android.intent.extra.STREAM"

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    .line 3
    invoke-static {p1}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "image/*"

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public static getShootOrientation(Landroid/app/Activity;I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p0

    sub-int/2addr p1, p0

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    return p1
.end method

.method public static getShootRotation(Landroid/app/Activity;F)F
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    :goto_0
    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    const/high16 v0, 0x43b40000    # 360.0f

    if-gez p0, :cond_0

    add-float/2addr p1, v0

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-float p0, p1, v0

    if-lez p0, :cond_1

    sub-float/2addr p1, v0

    goto :goto_1

    :cond_1
    return p1
.end method

.method public static getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getStorageDirectory()Ljava/io/File;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/Util;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    :goto_0
    return-object v0
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

.method public static varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSubYuvImage([BIIII[I)Lcom/android/camera/effect/MiYuvImage;
    .locals 9

    const/4 v0, 0x2

    .line 24
    aget v1, p5, v0

    const/4 v2, 0x3

    aget v3, p5, v2

    mul-int/2addr v1, v3

    mul-int/2addr v1, v2

    div-int/2addr v1, v0

    new-array v1, v1, [B

    const/4 v3, 0x1

    .line 25
    aget v4, p5, v3

    mul-int/2addr v4, p3

    const/4 v5, 0x0

    aget v6, p5, v5

    add-int/2addr v4, v6

    move v6, v5

    move v7, v6

    .line 26
    :goto_0
    aget v8, p5, v2

    if-ge v6, v8, :cond_0

    .line 27
    aget v8, p5, v0

    invoke-static {p0, v4, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, p3

    .line 28
    aget v8, p5, v0

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p2, v3

    mul-int/2addr p3, p2

    add-int/2addr p3, p1

    .line 29
    aget p1, p5, v3

    div-int/2addr p1, v0

    mul-int/2addr p1, p4

    add-int/2addr p3, p1

    aget p1, p5, v5

    add-int/2addr p3, p1

    .line 30
    :goto_1
    aget p1, p5, v2

    div-int/2addr p1, v0

    if-ge v5, p1, :cond_1

    .line 31
    aget p1, p5, v0

    invoke-static {p0, p3, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, p4

    .line 32
    aget p1, p5, v0

    add-int/2addr v7, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 33
    :cond_1
    new-instance p0, Lcom/android/camera/effect/MiYuvImage;

    aget p1, p5, v0

    aget p2, p5, v2

    const/16 p3, 0x23

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/camera/effect/MiYuvImage;-><init>([BIII)V

    return-object p0
.end method

.method public static getSubYuvImage(Landroid/media/Image;[I)[B
    .locals 16

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubYuvImage: range = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x2

    .line 3
    aget v4, p1, v0

    const/4 v5, 0x3

    aget v6, p1, v5

    mul-int/2addr v4, v6

    mul-int/2addr v4, v5

    div-int/2addr v4, v0

    new-array v4, v4, [B

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    const/4 v7, 0x0

    .line 5
    aget-object v8, v6, v7

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    .line 6
    aget-object v9, v6, v0

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    const/4 v10, 0x1

    .line 7
    aget v11, p1, v10

    mul-int/2addr v11, v8

    aget v12, p1, v7

    add-int/2addr v11, v12

    .line 8
    aget-object v12, v6, v7

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    move v13, v7

    move v14, v13

    .line 9
    :goto_0
    aget v15, p1, v5

    if-ge v13, v15, :cond_0

    .line 10
    invoke-virtual {v12, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    aget v15, p1, v0

    invoke-virtual {v12, v4, v14, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v11, v8

    .line 12
    aget v15, p1, v0

    add-int/2addr v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 13
    :cond_0
    aget v8, p1, v10

    div-int/2addr v8, v0

    mul-int/2addr v8, v9

    aget v11, p1, v7

    add-int/2addr v8, v11

    new-array v11, v0, [Ljava/lang/Object;

    .line 14
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v10

    const-string v12, "getSubYuvImage: srcCursor = %d, dstCursor = %d"

    invoke-static {v1, v12, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 15
    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 16
    aget v5, p1, v5

    div-int/2addr v5, v0

    move v11, v7

    :goto_1
    if-ge v11, v5, :cond_2

    .line 17
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v12, v5, -0x1

    if-ne v11, v12, :cond_1

    .line 18
    aget v12, p1, v0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 19
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getSubYuvImage: length = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "|"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {v6, v4, v14, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 21
    :cond_1
    aget v12, p1, v0

    invoke-virtual {v6, v4, v14, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_2
    add-int/2addr v8, v9

    .line 22
    aget v12, p1, v0

    add-int/2addr v14, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    new-array v0, v10, [Ljava/lang/Object;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v7

    const-string v2, "getSubYuvImage: cost %dms"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v4
.end method

.method public static getSuperMoonRange([I[FLandroid/graphics/Rect;)[I
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 1
    aget v3, p1, v2

    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2
    aget v5, p0, v4

    int-to-float v5, v5

    aget v6, p1, v2

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    aput v5, v1, v2

    .line 3
    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, p2

    const/4 p2, 0x2

    aget v6, p0, p2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    aget p1, p1, v4

    mul-float/2addr v5, p1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int p1, v5

    aput p1, v1, v4

    const/4 p1, 0x3

    .line 4
    aget v5, p0, p1

    aget v6, p0, v4

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    aput v5, v1, p2

    .line 5
    aget v5, p0, p2

    aget p0, p0, v2

    sub-int/2addr v5, p0

    int-to-float p0, v5

    mul-float/2addr p0, v3

    float-to-double v5, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int p0, v5

    aput p0, v1, p1

    .line 6
    aget p0, v1, v2

    div-int/2addr p0, p2

    mul-int/2addr p0, p2

    aput p0, v1, v2

    .line 7
    aget p0, v1, v4

    div-int/2addr p0, p2

    mul-int/2addr p0, p2

    aput p0, v1, v4

    .line 8
    aget p0, v1, p2

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    aput p0, v1, p2

    .line 9
    aget p0, v1, p1

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    aput p0, v1, p1

    return-object v1
.end method

.method public static getSurfaceInfo(Landroid/view/Surface;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSuspendDuration()J
    .locals 3

    const-string/jumbo v0, "suspend.duration"

    const-wide/16 v1, 0x1f4

    .line 1
    invoke-static {v0, v1, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTapableRectWithEdgeSlop(ZLandroid/graphics/Rect;Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    .line 3
    invoke-static {p2}, Lcom/android/camera/Util;->calculateDefaultPreviewEdgeSlop(Landroid/content/Context;)I

    move-result p1

    const/4 p2, -0x1

    const-string v1, "camera_touch_edge_slop"

    .line 4
    invoke-static {v1, p2}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, v1

    .line 5
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    :goto_0
    if-eqz p0, :cond_2

    .line 6
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p2

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v1

    sub-int/2addr p2, v1

    if-le p0, p2, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p0

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result p2

    sub-int/2addr p0, p2

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 8
    :cond_1
    iget p0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result p2

    if-ge p0, p2, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 10
    :cond_2
    iget p0, v0, Landroid/graphics/Rect;->left:I

    if-nez p0, :cond_3

    add-int/2addr p0, p1

    .line 11
    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 12
    :cond_3
    iget p0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    if-ne p0, p2, :cond_4

    .line 13
    iget p0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 14
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getTapableRectWithEdgeSlop: after rect = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", edgeSlop = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraUtil"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getTimeWatermark(Landroid/app/Activity;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f120970

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 4
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const-string p0, "  "

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 9
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/text/format/Time;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%02d"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget p0, p0, Landroid/text/format/Time;->minute:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTotalMemory(Landroid/content/Context;)J
    .locals 2

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 2
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 4
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method

.method public static declared-synchronized getTypefaceFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    const-class v0, Lcom/android/camera/Util;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    sget-object p0, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getTypefaceFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    const-class p0, Lcom/android/camera/Util;

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getValidValue(III)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 2
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getValue(Ljava/util/HashMap;I)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;I)F"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getVendorWatermarkRange(III)[I
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [I

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz p2, :cond_3

    const/16 v7, 0x5a

    if-eq p2, v7, :cond_2

    const/16 v7, 0xb4

    if-eq p2, v7, :cond_1

    const/16 v7, 0x10e

    if-eq p2, v7, :cond_0

    goto :goto_0

    :cond_0
    aput v6, v1, v6

    aput v6, v1, v4

    int-to-float p0, p0

    mul-float/2addr p0, v2

    float-to-int p0, p0

    aput p0, v1, v5

    aput p1, v1, v3

    goto :goto_0

    :cond_1
    aput v6, v1, v6

    aput v6, v1, v4

    aput p0, v1, v5

    int-to-float p0, p1

    mul-float/2addr p0, v2

    float-to-int p0, p0

    aput p0, v1, v3

    goto :goto_0

    :cond_2
    int-to-float p2, p0

    mul-float/2addr p2, v2

    float-to-int p2, p2

    sub-int/2addr p0, p2

    aput p0, v1, v6

    aput v6, v1, v4

    aput p2, v1, v5

    aput p1, v1, v3

    goto :goto_0

    :cond_3
    aput v6, v1, v6

    int-to-float p2, p1

    mul-float/2addr p2, v2

    float-to-int p2, p2

    sub-int/2addr p1, p2

    aput p1, v1, v4

    aput p0, v1, v5

    aput p2, v1, v3

    .line 1
    :goto_0
    aget p0, v1, v6

    div-int/2addr p0, v5

    mul-int/2addr p0, v5

    aput p0, v1, v6

    .line 2
    aget p0, v1, v4

    div-int/2addr p0, v5

    mul-int/2addr p0, v5

    aput p0, v1, v4

    .line 3
    aget p0, v1, v5

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    aput p0, v1, v5

    .line 4
    aget p0, v1, v3

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    aput p0, v1, v3

    return-object v1
.end method

.method public static getVideoDuration(Ljava/lang/String;)J
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/android/camera/Util;->getDuration(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {p0, v1}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getDuration(Ljava/io/FileDescriptor;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    .line 6
    invoke-static {p0}, Lcom/android/camera/FileCompat;->removeDocumentFileForPath(Ljava/lang/String;)V

    move-wide v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    .line 8
    invoke-static {p0}, Lcom/android/camera/FileCompat;->removeDocumentFileForPath(Ljava/lang/String;)V

    throw v1

    .line 9
    :catch_0
    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    .line 10
    invoke-static {p0}, Lcom/android/camera/FileCompat;->removeDocumentFileForPath(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static getVideoRotation(II)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/camera/Util;->getRotation(III)I

    move-result p0

    return p0
.end method

.method public static getWaterMarkPaddingX()F
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0oo()Z

    move-result v0

    const/high16 v0, 0x43020000    # 130.0f

    return v0
.end method

.method public static getWaterMarkPaddingY()F
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0oo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42c00000    # 96.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42d80000    # 108.0f

    :goto_0
    return v0
.end method

.method public static getWatermarkCinematicAspectMargin(II)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    int-to-float p0, p0

    const/high16 p1, 0x41ac0000    # 21.5f

    div-float/2addr p0, p1

    sub-float/2addr v0, p0

    float-to-double p0, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static getWatermarkData(Lcom/android/camera/effect/renders/WaterMark;[IF)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getPaddingX()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    aput v1, p1, v0

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getPaddingY()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int p2, v1

    aput p2, p1, v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getTexture()Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/ui/UploadedTexture;

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmapData(Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getWatermarkFileName(Z)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCameraWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/Util;->WATERMARK_FRONT_FILE_NAME:Ljava/lang/String;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 3
    sget-object p0, Lcom/android/camera/Util;->WATERMARK_CINEMATIC_RATIO_FILE_NAME:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getDefaultWatermarkFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWatermarkRange(IIILcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/renders/WaterMark;)[I
    .locals 10

    const-string v0, ", watermarkRange = "

    const-string v1, "CameraUtil"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eqz p3, :cond_0

    new-array v8, v6, [I

    .line 1
    invoke-virtual {p3}, Lcom/android/camera/effect/renders/WaterMark;->getWidth()I

    move-result v9

    aput v9, v8, v5

    .line 2
    invoke-virtual {p3}, Lcom/android/camera/effect/renders/WaterMark;->getHeight()I

    move-result v9

    aput v9, v8, v4

    .line 3
    invoke-virtual {p3}, Lcom/android/camera/effect/renders/WaterMark;->getPaddingX()I

    move-result v9

    aput v9, v8, v3

    .line 4
    invoke-virtual {p3}, Lcom/android/camera/effect/renders/WaterMark;->getPaddingY()I

    move-result p3

    aput p3, v8, v2

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceWaterMarkLocation: rotation = "

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 7
    invoke-static {v1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v8, v7

    :goto_0
    if-eqz p4, :cond_1

    new-array v7, v6, [I

    .line 8
    invoke-virtual {p4}, Lcom/android/camera/effect/renders/WaterMark;->getWidth()I

    move-result p3

    aput p3, v7, v5

    .line 9
    invoke-virtual {p4}, Lcom/android/camera/effect/renders/WaterMark;->getHeight()I

    move-result p3

    aput p3, v7, v4

    .line 10
    invoke-virtual {p4}, Lcom/android/camera/effect/renders/WaterMark;->getPaddingX()I

    move-result p3

    aput p3, v7, v3

    .line 11
    invoke-virtual {p4}, Lcom/android/camera/effect/renders/WaterMark;->getPaddingY()I

    move-result p3

    aput p3, v7, v2

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "timeWaterMarkLocation: rotation = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 14
    invoke-static {v1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_1
    invoke-static {p0, p1, p2, v8, v7}, Lcom/android/camera/Util;->getWatermarkRange(III[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public static getWatermarkRange(III[I[I)[I
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz p2, :cond_9

    const/16 v6, 0x5a

    if-eq p2, v6, :cond_6

    const/16 v6, 0xb4

    if-eq p2, v6, :cond_3

    const/16 v6, 0x10e

    if-eq p2, v6, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 16
    aget p2, p3, v5

    aget v6, p4, v5

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    aput p2, v1, v2

    .line 17
    aget p2, p3, v4

    aput p2, v1, v3

    .line 18
    aget p2, p3, v3

    aget v6, p3, v5

    add-int/2addr p2, v6

    aget v6, p4, v3

    aget v7, p4, v5

    add-int/2addr v6, v7

    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    aget v6, p3, v5

    aget v7, p4, v5

    .line 19
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr p2, v6

    aput p2, v1, v4

    .line 20
    aget p2, p3, v4

    sub-int p2, p1, p2

    aget p3, p4, v4

    sub-int/2addr p2, p3

    aput p2, v1, v5

    goto/16 :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 21
    aget p2, p3, v5

    aput p2, v1, v2

    .line 22
    aget p2, p3, v4

    aput p2, v1, v3

    .line 23
    aget p2, p3, v3

    aput p2, v1, v4

    .line 24
    aget p2, p3, v2

    aput p2, v1, v5

    goto/16 :goto_0

    :cond_2
    if-eqz p4, :cond_c

    .line 25
    aget p2, p4, v5

    aput p2, v1, v2

    .line 26
    aget p2, p4, v2

    sub-int p2, p1, p2

    aget p3, p4, v4

    sub-int/2addr p2, p3

    aput p2, v1, v3

    .line 27
    aget p2, p4, v3

    aput p2, v1, v4

    .line 28
    aget p2, p4, v2

    aput p2, v1, v5

    goto/16 :goto_0

    :cond_3
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    .line 29
    aget p2, p4, v4

    aput p2, v1, v2

    .line 30
    aget p2, p3, v5

    aget v6, p4, v5

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    aput p2, v1, v3

    .line 31
    aget p2, p3, v4

    sub-int p2, p0, p2

    aget v6, p4, v4

    sub-int/2addr p2, v6

    aput p2, v1, v4

    .line 32
    aget p2, p3, v3

    aget v6, p3, v5

    add-int/2addr p2, v6

    aget v6, p4, v3

    aget v7, p4, v5

    add-int/2addr v6, v7

    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    aget p3, p3, v5

    aget p4, p4, v5

    .line 33
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    sub-int/2addr p2, p3

    aput p2, v1, v5

    goto/16 :goto_0

    :cond_4
    if-eqz p3, :cond_5

    .line 34
    aget p2, p3, v2

    sub-int p2, p0, p2

    aget p4, p3, v4

    sub-int/2addr p2, p4

    aput p2, v1, v2

    .line 35
    aget p2, p3, v5

    aput p2, v1, v3

    .line 36
    aget p2, p3, v2

    aput p2, v1, v4

    .line 37
    aget p2, p3, v3

    aput p2, v1, v5

    goto/16 :goto_0

    :cond_5
    if-eqz p4, :cond_c

    .line 38
    aget p2, p4, v4

    aput p2, v1, v2

    .line 39
    aget p2, p4, v5

    aput p2, v1, v3

    .line 40
    aget p2, p4, v2

    aput p2, v1, v4

    .line 41
    aget p2, p4, v3

    aput p2, v1, v5

    goto/16 :goto_0

    :cond_6
    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    .line 42
    aget p2, p3, v3

    aget v6, p3, v5

    add-int/2addr p2, v6

    aget v6, p4, v3

    aget v7, p4, v5

    add-int/2addr v6, v7

    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int p2, p0, p2

    aput p2, v1, v2

    .line 43
    aget p2, p4, v4

    aput p2, v1, v3

    .line 44
    aget p2, p3, v3

    aget v6, p3, v5

    add-int/2addr p2, v6

    aget v6, p4, v3

    aget v7, p4, v5

    add-int/2addr v6, v7

    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    aget v6, p3, v5

    aget v7, p4, v5

    .line 45
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr p2, v6

    aput p2, v1, v4

    .line 46
    aget p2, p3, v4

    sub-int p2, p1, p2

    aget p3, p4, v4

    sub-int/2addr p2, p3

    aput p2, v1, v5

    goto/16 :goto_0

    :cond_7
    if-eqz p3, :cond_8

    .line 47
    aget p2, p3, v3

    sub-int p2, p0, p2

    aget p4, p3, v5

    sub-int/2addr p2, p4

    aput p2, v1, v2

    .line 48
    aget p2, p3, v2

    sub-int p2, p1, p2

    aget p4, p3, v4

    sub-int/2addr p2, p4

    aput p2, v1, v3

    .line 49
    aget p2, p3, v3

    aput p2, v1, v4

    .line 50
    aget p2, p3, v2

    aput p2, v1, v5

    goto/16 :goto_0

    :cond_8
    if-eqz p4, :cond_c

    .line 51
    aget p2, p4, v3

    sub-int p2, p0, p2

    aget p3, p4, v5

    sub-int/2addr p2, p3

    aput p2, v1, v2

    .line 52
    aget p2, p4, v4

    aput p2, v1, v3

    .line 53
    aget p2, p4, v3

    aput p2, v1, v4

    .line 54
    aget p2, p4, v2

    aput p2, v1, v5

    goto :goto_0

    :cond_9
    if-eqz p3, :cond_a

    if-eqz p4, :cond_a

    .line 55
    aget p2, p3, v4

    aput p2, v1, v2

    .line 56
    aget p2, p3, v3

    aget v6, p3, v5

    add-int/2addr p2, v6

    aget v6, p4, v3

    aget v7, p4, v5

    add-int/2addr v6, v7

    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int p2, p1, p2

    aput p2, v1, v3

    .line 57
    aget p2, p3, v4

    sub-int p2, p0, p2

    aget v6, p4, v4

    sub-int/2addr p2, v6

    aput p2, v1, v4

    .line 58
    aget p2, p3, v3

    aget v6, p3, v5

    add-int/2addr p2, v6

    aget v6, p4, v3

    aget v7, p4, v5

    add-int/2addr v6, v7

    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    aget p3, p3, v5

    aget p4, p4, v5

    .line 59
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    sub-int/2addr p2, p3

    aput p2, v1, v5

    goto :goto_0

    :cond_a
    if-eqz p3, :cond_b

    .line 60
    aget p2, p3, v4

    aput p2, v1, v2

    .line 61
    aget p2, p3, v3

    sub-int p2, p1, p2

    aget p4, p3, v5

    sub-int/2addr p2, p4

    aput p2, v1, v3

    .line 62
    aget p2, p3, v2

    aput p2, v1, v4

    .line 63
    aget p2, p3, v3

    aput p2, v1, v5

    goto :goto_0

    :cond_b
    if-eqz p4, :cond_c

    .line 64
    aget p2, p4, v2

    sub-int p2, p0, p2

    aget p3, p4, v4

    sub-int/2addr p2, p3

    aput p2, v1, v2

    .line 65
    aget p2, p4, v3

    sub-int p2, p1, p2

    aget p3, p4, v5

    sub-int/2addr p2, p3

    aput p2, v1, v3

    .line 66
    aget p2, p4, v2

    aput p2, v1, v4

    .line 67
    aget p2, p4, v3

    aput p2, v1, v5

    .line 68
    :cond_c
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getWatermarkRange before watermarkRange = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CameraUtil"

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    aget p2, v1, v4

    .line 70
    aget p4, v1, v5

    .line 71
    aget v6, v1, v4

    div-int/2addr v6, v0

    mul-int/2addr v6, v0

    aput v6, v1, v4

    .line 72
    aget v6, v1, v5

    div-int/2addr v6, v0

    mul-int/2addr v6, v0

    aput v6, v1, v5

    .line 73
    aget v6, v1, v4

    add-int/2addr v6, v0

    aput v6, v1, v4

    .line 74
    aget v6, v1, v5

    add-int/2addr v6, v0

    aput v6, v1, v5

    .line 75
    aget v0, v1, v2

    aget v6, v1, v4

    sub-int/2addr v6, p2

    div-int/2addr v6, v4

    sub-int/2addr v0, v6

    aput v0, v1, v2

    .line 76
    aget p2, v1, v3

    aget v0, v1, v5

    sub-int/2addr v0, p4

    div-int/2addr v0, v4

    sub-int/2addr p2, v0

    aput p2, v1, v3

    .line 77
    aget p2, v1, v2

    aget p4, v1, v4

    add-int/2addr p2, p4

    if-le p2, p0, :cond_d

    .line 78
    aget p2, v1, v2

    aget p4, v1, v4

    add-int/2addr p2, p4

    sub-int/2addr p2, p0

    .line 79
    aget p0, v1, v2

    sub-int/2addr p0, p2

    aput p0, v1, v2

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getWatermarkRange range[0] diff - "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_d
    aget p0, v1, v3

    aget p2, v1, v5

    add-int/2addr p0, p2

    if-le p0, p1, :cond_e

    .line 82
    aget p0, v1, v3

    aget p2, v1, v5

    add-int/2addr p0, p2

    sub-int/2addr p0, p1

    .line 83
    aget p1, v1, v3

    sub-int/2addr p1, p0

    aput p1, v1, v3

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getWatermarkRange range[1] diff - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_e
    aget p0, v1, v2

    div-int/2addr p0, v4

    mul-int/2addr p0, v4

    aput p0, v1, v2

    .line 86
    aget p0, v1, v3

    div-int/2addr p0, v4

    mul-int/2addr p0, v4

    aput p0, v1, v3

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getWatermarkRange after watermarkRange = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getWatermarkRatio(II)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const p1, 0x453b8000    # 3000.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static getWeekDay(Ljava/util/Calendar;)I
    .locals 8

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    .line 2
    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ne v5, v2, :cond_1

    .line 3
    aget v2, v1, v4

    :goto_0
    if-lez v4, :cond_0

    add-int/lit8 v6, v4, -0x1

    .line 4
    aget v6, v1, v6

    aput v6, v1, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    aput v2, v1, v3

    goto :goto_2

    :cond_1
    if-ne v0, v2, :cond_3

    .line 5
    aget v2, v1, v4

    const/4 v6, 0x5

    .line 6
    aget v6, v1, v6

    :goto_1
    if-le v4, v5, :cond_2

    add-int/lit8 v7, v4, -0x2

    .line 7
    aget v7, v1, v7

    aput v7, v1, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    aput v2, v1, v5

    aput v6, v1, v3

    .line 8
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p0, v5

    if-gez p0, :cond_4

    goto :goto_3

    :cond_4
    move v3, p0

    .line 9
    :goto_3
    aget p0, v1, v3

    return p0

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public static getZipSize(Ljava/lang/String;)J
    .locals 7

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    move-wide v3, v0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v3, v5

    goto :goto_0

    .line 5
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-wide v0, v3

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 6
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    .line 7
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :goto_2
    return-wide v0
.end method

.method public static getZoomRatioText(F)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result p0

    float-to-int v1, p0

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, p0

    mul-int/lit8 v3, v1, 0xa

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    if-nez v2, :cond_0

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "X"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hideCoveredBlackView()V
    .locals 5

    const-string v0, "CameraUtil"

    :try_start_0
    const-string v1, "hideCoveredBlackView"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.cameracovered.MiuiCameraCoveredManager"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "removeCoveredBlackView"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call hideCoveredBlackView failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static hintFoldTips(Landroid/app/Activity;)Lio/reactivex/disposables/Disposable;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const v0, 0x7f0a02db

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/android/camera/OnScreenHint;->hintTips(Landroid/app/Activity;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static initScreenLightColorMap()V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a

    sget-object v0, Lcom/android/camera/Util;->COLOR_TEMPERATURE_MAP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getColorMapXmlMapFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 4
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 6
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 7
    :try_start_2
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v4

    :goto_0
    move-object v0, v1

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_1

    :catch_5
    move-exception v4

    :goto_1
    move-object v0, v1

    move-object v3, v0

    .line 8
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_1
    move-object v0, v1

    move-object v3, v0

    :goto_3
    const-string v4, "CameraUtil"

    if-nez v0, :cond_3

    const-string v0, "Cannot find screen color map in system, try local resource."

    .line 9
    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "screen_light"

    const-string/jumbo v7, "xml"

    .line 12
    invoke-virtual {v0, v6, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    const-string/jumbo v0, "res/xml/screen_light.xml not found!"

    .line 13
    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 15
    :cond_3
    :goto_4
    :try_start_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_8

    .line 16
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    goto :goto_4

    :cond_4
    const-string/jumbo v5, "screen"

    .line 17
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 18
    sget-object v5, Lcom/android/camera/Util;->SCREEN_VENDOR:Ljava/lang/String;

    const-string/jumbo v7, "vendor"

    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 19
    invoke-static {v0}, Lcom/android/camera/Util;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 20
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load screen light parameters for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/camera/Util;->SCREEN_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :goto_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_8

    .line 22
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v6, :cond_6

    goto :goto_5

    :cond_6
    const-string v1, "light"

    .line 23
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    const-string v1, "CCT"

    .line 24
    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    const-string v4, "R"

    .line 25
    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->getAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "G"

    .line 26
    invoke-static {v0, v5, v2}, Lcom/android/camera/Util;->getAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    const-string v7, "B"

    .line 27
    invoke-static {v0, v7, v2}, Lcom/android/camera/Util;->getAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 28
    sget-object v8, Lcom/android/camera/Util;->COLOR_TEMPERATURE_LIST:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v1, Lcom/android/camera/Util;->COLOR_TEMPERATURE_MAP:Ljava/util/List;

    invoke-static {v4, v5, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 30
    :cond_8
    :goto_6
    invoke-static {v3}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    .line 31
    instance-of v1, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_a

    goto :goto_7

    :catchall_0
    move-exception v1

    .line 32
    invoke-static {v3}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    .line 33
    instance-of v2, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_9

    .line 34
    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v1

    .line 35
    :catch_6
    invoke-static {v3}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    .line 36
    instance-of v1, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_a

    goto :goto_7

    .line 37
    :catch_7
    invoke-static {v3}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    .line 38
    instance-of v1, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_a

    .line 39
    :goto_7
    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_a
    :goto_8
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/camera/Util;->updateDeviceConfig(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/android/camera/Util$ImageFileNamer;

    const v1, 0x7f120448

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    .line 4
    invoke-static {p0}, Lcom/android/camera/Util;->checkHasBackLightSensot(Landroid/content/Context;)V

    return-void
.end method

.method public static installPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;ZZ)V
    .locals 2

    const-string v0, "CameraUtil"

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0O0;

    invoke-direct {v1, p2}, LOooO00o/OooO0O0/OooO00o/Oooo0O0;-><init>(Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;)V

    invoke-static {p0, p1, p3, p4, v1}, Lcom/xiaomi/compat/miui/PackageInstallCompat;->installPackage(Landroid/content/Context;Ljava/lang/String;ZZLcom/xiaomi/compat/miui/PackageInstallCompat$Listener;)Z

    move-result p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "installPackage: result="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid params. pkgName="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isAEStable(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isAWBStable(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isAccessible()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/Util;->sIsAccessibilityEnable:Z

    return v0
.end method

.method public static isActivityAlive(Landroid/app/Activity;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isActivityInvert(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p0

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAntibanding60()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/Util;->ANTIBANDING_60_COUNTRY:Ljava/util/HashSet;

    sget-object v1, Lcom/android/camera/Util;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isAppLocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/GeneralUtils;->isAppLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isBitmapLikelyBlack(Landroid/graphics/Bitmap;)Z
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    :goto_0
    const/16 v6, 0xa

    if-ge v4, v6, :cond_2

    .line 2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    .line 3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v7, v9

    double-to-int v7, v7

    .line 4
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-lt v8, v9, :cond_1

    .line 5
    invoke-virtual {p0, v6, v7}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v6

    .line 6
    aget v7, v6, v2

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    aget v7, v6, v3

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    const/4 v7, 0x2

    aget v6, v6, v7

    cmpl-float v6, v6, v8

    if-nez v6, :cond_0

    move v6, v3

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBitmapLikelyBlack "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraUtil"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public static isBringupDebug()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOoo()Z

    move-result v0

    return v0
.end method

.method public static isContains(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v3, p0

    if-gez v4, :cond_1

    iget v4, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isDebugOsBuild()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

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

.method public static isDumpImageEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/Util;->sIsDumpImageEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    const-string v1, "algoup_dump_images"

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->generatePrimaryFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Util;->sIsDumpImageEnabled:Ljava/lang/Boolean;

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/Util;->sIsDumpImageEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isEqual([BLjava/io/File;)Z
    .locals 7

    const-string v0, "CameraUtil"

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    .line 1
    array-length v2, p0

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    const/16 v3, 0x200

    new-array v4, v3, [B

    :try_start_0
    const-string v5, "MD5"

    .line 3
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 4
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :goto_0
    :try_start_1
    invoke-virtual {v6, v4, v1, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    .line 6
    invoke-virtual {v5, v4, v1, p1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    .line 8
    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    .line 9
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    .line 10
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return p0

    :catchall_0
    move-exception p0

    move-object v2, v6

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :goto_2
    move-object v2, v6

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    goto :goto_3

    :catch_4
    move-exception p0

    .line 13
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    .line 14
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catch_5
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_4
    return v1

    :goto_5
    if-eqz v2, :cond_4

    .line 16
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_6

    :catch_6
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    :cond_4
    :goto_6
    throw p0

    :cond_5
    :goto_7
    return v1
.end method

.method public static isEqualsZero(D)Z
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p0, :cond_0

    const/16 v0, 0x1b

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0o()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFlickSensorEnable()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/Util;->isFlickSensorEnable:Z

    return v0
.end method

.method public static isFlingV(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v2, v1

    .line 2
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v2, p1, p0

    .line 3
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, p2, :cond_4

    if-nez v1, :cond_1

    :goto_0
    move p2, v3

    goto :goto_1

    :cond_1
    int-to-float p2, v2

    int-to-float v1, v1

    div-float/2addr p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v0

    :goto_1
    if-eqz p2, :cond_4

    if-le p0, p1, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    :cond_4
    :goto_2
    return v0
.end method

.method public static isForceNameSuffix()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/Util;->sIsForceNameSuffix:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    const-string v1, "force_name_suffix"

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->generatePrimaryFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Util;->sIsForceNameSuffix:Ljava/lang/Boolean;

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/Util;->sIsForceNameSuffix:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isFromSecureKeyguard(Landroid/app/Activity;)Z
    .locals 3

    const-string v0, "keyguard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 2
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFromSecureKeyguard, isKeyguardLocked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isKeyguardSecure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraUtil"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFullScreenNavBarHidden(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0}, Lcom/xiaomi/compat/miui/MiuiSettingsCompat$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isGlobalVersion()Z
    .locals 2

    const-string/jumbo v0, "ro.product.mod_device"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000ooO()Z

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

.method public static isGyroscopeStable([F)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 3
    array-length v1, p0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3f333333    # 0.7f

    cmpg-float v1, v1, v2

    const/4 v3, 0x1

    if-gez v1, :cond_1

    aget v1, p0, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x40a00000    # 5.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    const/4 v1, 0x2

    aget p0, p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_1

    move v0, v3

    :cond_1
    :goto_0
    return v0
.end method

.method public static isGyroscopeStable([F[F)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera/Util;->isGyroscopeStable([F)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-static {p1}, Lcom/android/camera/Util;->isGyroscopeStable([F)Z

    move-result p1

    if-eqz p1, :cond_2

    return p0

    :cond_2
    return v1
.end method

.method public static isHDR10Video(Ljava/lang/String;)Z
    .locals 7

    .line 1
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p0, :cond_2

    .line 4
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    const-string v5, "mime"

    .line 5
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "video/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "frame-rate"

    .line 7
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "width"

    .line 8
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "height"

    .line 9
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "profile"

    .line 10
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    move v1, v3

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    .line 12
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    move v3, v1

    :goto_3
    return v3

    :goto_4
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    throw p0
.end method

.method public static isHasBackLightSensor()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/Util;->isHasBackLightSensor:Z

    return v0
.end method

.method public static isInSRZoomRatioTheInterval(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera2/CameraCapabilities;F)Z
    .locals 9

    const-string v0, "CameraUtil"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "SR Trigger optimization CameraCapabilities == null"

    .line 1
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getThresholdZoomValue()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_b

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x15

    .line 3
    invoke-static {p1, v0}, Lcom/android/camera/Util;->getValue(Ljava/util/HashMap;I)F

    move-result v0

    .line 4
    invoke-static {p1, v1}, Lcom/android/camera/Util;->getValue(Ljava/util/HashMap;I)F

    move-result v2

    const/16 v3, 0x14

    .line 5
    invoke-static {p1, v3}, Lcom/android/camera/Util;->getValue(Ljava/util/HashMap;I)F

    move-result v3

    const/16 v4, 0x17

    .line 6
    invoke-static {p1, v4}, Lcom/android/camera/Util;->getValue(Ljava/util/HashMap;I)F

    move-result p1

    .line 7
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v4

    .line 8
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v7, v0, v6

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    return v8

    :cond_2
    cmpl-float v0, v2, v6

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getSatMasterCameraId()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_6

    cmpl-float p0, v3, v6

    if-eqz p0, :cond_3

    cmpl-float v0, p2, v2

    if-gez v0, :cond_5

    :cond_3
    if-nez p0, :cond_4

    cmpl-float v0, p1, v6

    if-eqz v0, :cond_4

    cmpl-float v0, p2, v2

    if-gez v0, :cond_5

    :cond_4
    if-nez p0, :cond_a

    cmpl-float p0, p1, v6

    if-nez p0, :cond_a

    cmpl-float p0, p2, v2

    if-ltz p0, :cond_a

    :cond_5
    return v8

    :cond_6
    cmpl-float v0, v3, v6

    if-eqz v0, :cond_9

    cmpl-float v0, p2, v4

    if-ltz v0, :cond_9

    cmpl-float p0, p1, v6

    if-eqz p0, :cond_7

    cmpl-float p1, p2, v3

    if-ltz p1, :cond_7

    cmpg-float p1, p2, v5

    if-ltz p1, :cond_8

    :cond_7
    if-nez p0, :cond_a

    cmpl-float p0, p2, v3

    if-ltz p0, :cond_a

    :cond_8
    return v8

    :cond_9
    cmpl-float v0, p1, v6

    if-eqz v0, :cond_a

    .line 10
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getSatMasterCameraId()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_a

    cmpl-float p0, p2, p1

    if-ltz p0, :cond_a

    return v8

    :cond_a
    return v1

    :cond_b
    :goto_0
    const-string p0, "SR Trigger optimization getThresholdZoom == null"

    .line 11
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isInViewRegion(Landroid/view/View;II)Z
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "hercules"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, -0x60

    .line 2
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    .line 6
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getAppBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p0

    .line 7
    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    .line 8
    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p0

    .line 9
    :cond_2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public static isInternationalBuild()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    return v0
.end method

.method public static isLTR()Z
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLabOptionsVisible()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/Util;->sIsLabOptionsVisible:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "camera.lab.options"

    .line 2
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Util;->sIsLabOptionsVisible:Ljava/lang/Boolean;

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/Util;->sIsLabOptionsVisible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isLayoutRTL(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public static isLivePhotoStable(Lcom/xiaomi/camera/liveshot/LivePhotoResult;I)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/LivePhotoResult;->getAEState()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/Util;->isAEStable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/LivePhotoResult;->getAWBState()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/Util;->isAWBStable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/LivePhotoResult;->isGyroScopeStable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/LivePhotoResult;->getFilterId()I

    move-result p0

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLocaleChinese()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isLowMemory()Z
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->getMemInfo()Ljava/util/HashMap;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "CameraUtil"

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4
    :try_start_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v4, v5, :cond_0

    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v5

    .line 5
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_1
    sget v2, Lcom/android/camera/Util;->LOW_MEMORY_THRESHOLD_MB:I

    const-string v5, "camera.debug.low_memory_threshold_mb"

    invoke-static {v5, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    .line 7
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string v8, "isLowMemory: available = %dKb, threshold = %dKb"

    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLowMemory: cost="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v4, v2, :cond_2

    move v3, v9

    :cond_2
    return v3
.end method

.method public static isMemoryRich(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 2
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 4
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v2, 0x19000000

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNightUiMode(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 2
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNonUI()Z
    .locals 2

    const-string/jumbo v0, "sys.power.nonui"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNonUIEnabled()Z
    .locals 2

    const-string/jumbo v0, "sys.power.nonui"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "CameraUtil"

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_2

    :cond_1
    move v0, p1

    :cond_2
    return v0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    .line 6
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid params. packageName="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isPathExist(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isProduceFocusInfoSuccess([B)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    const/16 v1, 0x19

    if-ge v1, v0, :cond_0

    array-length v0, p0

    sub-int/2addr v0, v1

    aget-byte p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isQuotaExceeded(Ljava/lang/Exception;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isQuotaExceeded: msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 4
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "quota exceeded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSaveDocPreview()Z
    .locals 2

    const-string v0, "doc.save_preview"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSaveToHidenFolder(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xb6

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

.method public static isScreenSlideOff(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sc_status"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isShowAfRegionView()Z
    .locals 2

    const-string v0, "camera.preview.debug.afRegion_view"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isShowDebugInfo()Z
    .locals 2

    const-string/jumbo v0, "persist.camera.enable.log"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "persist.camera.debug.show_af"

    .line 2
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "persist.camera.debug.show_awb"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "persist.camera.debug.show_aec"

    .line 4
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "persist.camera.debug.autoscene"

    .line 5
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "persist.camera.debug.hht"

    .line 6
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isShowDebugInfoView()Z
    .locals 2

    const-string v0, "camera.preview.debug.debugInfo_view"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isShowPreviewDebugInfo()Z
    .locals 2

    const-string v0, "camera.preview.enable.log"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStringValueContained(Ljava/lang/Object;I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;[Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isStringValueContained(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isStringValueContained(Ljava/lang/Object;[Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 4
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static isSupportWCG(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oO0O0()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    const-string/jumbo v0, "persist.vendor.camera.sensor.EnableP3ColorSpace"

    .line 3
    invoke-static {v0, p0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "CameraUtil"

    if-nez v0, :cond_2

    const-string v0, "isSupportWCG: setprop close"

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "isSupportWCG: true"

    .line 5
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isSupported(I[I)Z
    .locals 0

    .line 3
    invoke-static {p1, p0}, Lcom/android/camera/Util;->getArrayIndex([II)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupported(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;)Z"
        }
    .end annotation

    .line 2
    invoke-static {p1, p0}, Lcom/android/camera/Util;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTimeout(JJJ)Z
    .locals 1

    cmp-long v0, p0, p2

    if-ltz v0, :cond_1

    sub-long/2addr p0, p2

    cmp-long p0, p0, p4

    if-lez p0, :cond_0

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

.method public static isTurnOnInvisibleMode(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "key_invisible_mode_state"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 3

    const-string v0, "CameraUtil"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v2, "r"

    .line 1
    invoke-virtual {p1, p0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to open URI. URI="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityException: no access because uri not exist "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_1
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException occurs when fail to read EXIF info by MediaProvider#getRedactionRanges"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_2
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException occurs when Volume not found: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_3
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException occurs when opening URI: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "user"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidValue(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^[0-9]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isViewIntersectWindow(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 2
    aget v2, v0, v1

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    aget v2, v0, v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-ltz v2, :cond_0

    aget v2, v0, v4

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    aget v0, v0, v4

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    if-ltz v0, :cond_0

    move v1, v4

    :cond_0
    return v1
.end method

.method public static isVoiceAccessible()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/Util;->sIsVoiceAccessibilityEnable:Z

    return v0
.end method

.method public static isWiredAudioHeadset(Landroid/media/AudioDeviceInfo;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWiredAudioHeadset.type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isWiredHeadsetOn()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x17

    if-lt v2, v4, :cond_1

    const-string v2, "android.hardware.audio.output"

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 5
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 6
    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 7
    invoke-static {v4}, Lcom/android/camera/Util;->isWiredAudioHeadset(Landroid/media/AudioDeviceInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static isZhCn()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "zh"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v3
.end method

.method public static isZoomAnimationEnabled()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOOOo()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "camera_zoom_animation"

    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static join(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static keepLiveShotMicroVideoInCache()Z
    .locals 2

    const-string v0, "liveshotsmv"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static loadFrontCameraWatermark()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 4
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 5
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getFrontIconName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/Util;->loadWatermarkIcon(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getFrontTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/CustomTextWaterMark;->drawFrontWaterMark(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadWatermarkIcon(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "watermarks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-static {p0, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_1

    .line 6
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "CameraUtil"

    const-string p2, "Failed to load app camera watermark "

    .line 7
    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static logStack(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/Util;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_1

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1, v4, p1}, Lcom/android/camera/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 6
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 8
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 9
    array-length p1, p0

    invoke-static {p0, v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "CameraUtil"

    const-string v1, "Got oom exception "

    .line 10
    invoke-static {p1, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static makeSureNoMedia(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF8"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v0, ""

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/lit16 v0, v0, -0x100

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/Util;->millisecondToTimeString(JZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final millisecondToTimeString(JZZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/camera/Util;->millisecondToTimeString(JZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final millisecondToTimeString(JZZZ)Ljava/lang/String;
    .locals 19

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x3e8

    .line 3
    div-long v4, v0, v2

    const-wide/16 v6, 0x3c

    .line 4
    div-long v8, v4, v6

    .line 5
    div-long v10, v8, v6

    mul-long v12, v10, v6

    sub-long v12, v8, v12

    mul-long/2addr v8, v6

    sub-long v6, v4, v8

    .line 6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v15, 0x0

    cmp-long v15, v10, v15

    const/16 v2, 0x3a

    const/16 v3, 0x30

    const-wide/16 v17, 0xa

    if-lez v15, :cond_1

    cmp-long v15, v10, v17

    if-gez v15, :cond_0

    .line 7
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    const-string v10, "00"

    .line 9
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    cmp-long v10, v12, v17

    if-gez v10, :cond_3

    .line 10
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    :cond_3
    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p2, :cond_4

    if-eqz p3, :cond_4

    long-to-double v6, v0

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v10

    long-to-double v8, v8

    sub-double/2addr v6, v8

    .line 12
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    :cond_4
    cmp-long v2, v6, v17

    if-gez v2, :cond_5

    .line 13
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    :cond_5
    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_7

    const/16 v2, 0x2e

    .line 15
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long/2addr v0, v4

    .line 16
    div-long v0, v0, v17

    cmp-long v2, v0, v17

    if-gez v2, :cond_6

    .line 17
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    :cond_6
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    :cond_7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mkdirs(Ljava/io/File;III)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, p2, p3}, Lcom/android/camera/Util;->mkdirs(Ljava/io/File;III)Z

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result p0

    return p0
.end method

.method public static modify(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    return-void
.end method

.method public static nextPowerOf2(I)I
    .locals 1

    add-int/lit8 p0, p0, -0x1

    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static normalizeDegree(F)F
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-gez v0, :cond_0

    add-float/2addr p0, v1

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, v1

    if-lez v0, :cond_1

    rem-float/2addr p0, v1

    :cond_1
    :goto_0
    const/high16 v0, 0x42340000    # 45.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2

    return p0

    :cond_2
    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v2, p0, v0

    if-gtz v2, :cond_3

    sub-float/2addr v0, p0

    return v0

    :cond_3
    const/high16 v2, 0x43070000    # 135.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_4

    sub-float/2addr p0, v0

    return p0

    :cond_4
    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v2, p0, v0

    if-gtz v2, :cond_5

    sub-float/2addr v0, p0

    return v0

    :cond_5
    const/high16 v2, 0x43610000    # 225.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_6

    sub-float/2addr p0, v0

    return p0

    :cond_6
    const/high16 v0, 0x43870000    # 270.0f

    cmpg-float v2, p0, v0

    if-gtz v2, :cond_7

    sub-float/2addr v0, p0

    return v0

    :cond_7
    const v2, 0x439d8000    # 315.0f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_8

    sub-float/2addr p0, v0

    return p0

    :cond_8
    sub-float/2addr v1, p0

    return v1
.end method

.method public static onCameraError(Landroid/app/Activity;Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackCameraErrorDialogShow()V

    .line 2
    sget-boolean v0, Lcom/android/camera/Util;->sIsKillCameraService:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Ooooo00()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpBugReport:Z

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getBroadcastKillServiceTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x6

    const-string v1, "CameraUtil"

    const-string v2, "Error dialog: broadcastKillService"

    .line 5
    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {p0, p1}, Lcom/android/camera/Util;->broadcastKillService(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public static onCameraErrorFinish(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->dumpBugReportLog()V

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->reset()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static onIfLockStop(ZLandroid/app/Activity;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/android/camera/Util;->isActivityAlive(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 4
    :cond_0
    throw p0
.end method

.method public static photoUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "photo"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static pixelToXxhdp(F)F
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getsPixelDensityScale()F

    move-result v0

    mul-float/2addr p0, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static pointInView(FFLandroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2
    aget v2, v1, v0

    int-to-float v2, v2

    cmpl-float v2, p0, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    aget v2, v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    cmpg-float p0, p0, v2

    if-gez p0, :cond_1

    aget p0, v1, v3

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1

    aget p0, v1, v3

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p0, p2

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    move v0, v3

    :cond_1
    return v0
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIIIIIII)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float p1, p2

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/16 p1, 0x5a

    if-eq p2, p1, :cond_2

    const/16 p1, 0x10e

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    mul-int p1, p4, p7

    .line 3
    div-int/2addr p1, p8

    int-to-float p1, p1

    int-to-float p2, p7

    div-float/2addr p1, p2

    int-to-float p2, p4

    int-to-float p3, p8

    div-float/2addr p2, p3

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2

    :cond_2
    :goto_1
    if-ne p3, p4, :cond_3

    int-to-float p1, p3

    int-to-float p2, p8

    div-float/2addr p1, p2

    .line 5
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2

    :cond_3
    mul-int p1, p4, p8

    .line 6
    div-int/2addr p1, p7

    int-to-float p1, p1

    int-to-float p2, p8

    div-float/2addr p1, p2

    int-to-float p2, p4

    int-to-float p3, p7

    div-float/2addr p2, p3

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_2
    int-to-float p1, p5

    int-to-float p2, p6

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public static varargs printLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    .line 5
    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static reclaimMemoryForCamera(J)V
    .locals 7

    const-string v0, "CameraUtil"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modeValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "miui.process.ProcessManager"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "reclaimMemoryForCamera"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 4
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static removeCustomWatermark()V
    .locals 5

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oo00()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->getDefaultWatermarkFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/WatermarkMiSysUtils;->eraseFile(Ljava/lang/String;)I

    .line 3
    sget-object v0, Lcom/android/camera/Util;->WATERMARK_FRONT_FILE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/WatermarkMiSysUtils;->eraseFile(Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/android/camera/Util;->WATERMARK_CINEMATIC_RATIO_FILE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/WatermarkMiSysUtils;->eraseFile(Ljava/lang/String;)I

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/camera/Util;->getDefaultWatermarkFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/camera/Util;->WATERMARK_FRONT_FILE_NAME:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/camera/Util;->WATERMARK_CINEMATIC_RATIO_FILE_NAME:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 11
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 13
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    return-void
.end method

.method public static replaceStartEffectRender(Landroid/app/Activity;)I
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extras.START_WITH_EFFECT_RENDER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "integer"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 6
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setShaderEffect(I)V

    return p0

    .line 7
    :cond_0
    sget p0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    return p0
.end method

.method public static reverseAnimatorSet(Landroid/animation/AnimatorSet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 3
    instance-of v1, v0, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v1, v0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/camera/Util;->reverseAnimatorSet(Landroid/animation/AnimatorSet;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static rotate(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p1, :cond_0

    if-eqz p2, :cond_8

    :cond_0
    if-eqz p0, :cond_8

    .line 2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p2, :cond_5

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {v5, p2, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    add-int/lit16 p1, p1, 0x168

    .line 4
    rem-int/lit16 p1, p1, 0x168

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid degrees="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 7
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    int-to-float p1, p1

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {v5, p1, p2, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_8

    if-eqz p3, :cond_7

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    move-object p0, p1

    :catch_0
    :cond_8
    return-object p0
.end method

.method public static roundOrientation(II)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int v1, p0, p1

    .line 1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v2, v1, 0x168

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x4b

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    add-int/lit8 p0, p0, 0x46

    .line 3
    div-int/lit8 p0, p0, 0x5a

    mul-int/lit8 p0, p0, 0x5a

    rem-int/lit16 p0, p0, 0x168

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onOrientationChanged: orientation = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraUtil"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2
    return p1
.end method

.method public static safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p0, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "CameraUtil"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "safeDelete url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " where="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " selectionArgs="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " result="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static saveBitmap(Ljava/nio/Buffer;IILandroid/graphics/Bitmap$Config;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_2

    .line 1
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const/4 p0, 0x0

    .line 3
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p3, 0x64

    invoke-virtual {p1, p0, p3, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x1

    .line 5
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 6
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_6

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v0, p2

    move-object p2, p0

    move-object p0, v0

    goto :goto_3

    :catch_2
    move-exception p2

    move-object v0, p2

    move-object p2, p0

    move-object p0, v0

    :goto_1
    :try_start_3
    const-string p3, "CameraUtil"

    const-string/jumbo p4, "saveBitmap failed!"

    .line 9
    invoke-static {p3, p4, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_0

    .line 10
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 11
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_0
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz p2, :cond_1

    .line 14
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 15
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    .line 16
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_1
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw p0

    :cond_2
    :goto_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static saveBlobToFile([BLjava/lang/String;)V
    .locals 3

    const-string v0, "CameraUtil"

    const-string v1, "The target filepath must not be null"

    .line 1
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "successfully write blob into file: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 7
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .line 8
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 9
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to write blob into file: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static saveCameraCalibrationToFile([Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;)V
    .locals 10

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    .line 2
    iget v4, v3, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->type:I

    const/16 v5, 0x14

    if-eq v4, v5, :cond_3

    const/16 v5, 0x15

    if-eq v4, v5, :cond_2

    const/high16 v5, 0x140000

    if-eq v4, v5, :cond_3

    const v5, 0x140017

    if-eq v4, v5, :cond_1

    const/high16 v5, 0x150000

    if-eq v4, v5, :cond_2

    const v5, 0x170014

    if-eq v4, v5, :cond_1

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "back_dual_camera_caldata_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v5, "back_dual_camera_caldata_tut.bin"

    goto :goto_1

    :cond_2
    const-string v5, "back_dual_camera_caldata_wu.bin"

    goto :goto_1

    :cond_3
    const-string v5, "back_dual_camera_caldata.bin"

    .line 4
    :goto_1
    iget-object v6, v3, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->data:[B

    iget v7, v3, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->size:I

    invoke-static {v6, v1, v7, v5}, Lcom/android/camera/Util;->saveCameraCalibrationToFile([BIILjava/lang/String;)Z

    move-result v6

    const-string v7, "CameraUtil"

    const-string v8, "@"

    if-eqz v6, :cond_4

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sat fusion calibration data successfully saved: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->size:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sat fusion calibration data not saved: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->size:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static saveCameraCalibrationToFile([BIILjava/lang/String;)Z
    .locals 5

    const-string v0, "CameraUtil"

    .line 8
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    if-nez v1, :cond_0

    goto :goto_5

    .line 9
    :cond_0
    invoke-virtual {v1, p3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 10
    invoke-static {p0, v3}, Lcom/android/camera/Util;->isEqual([BLjava/io/File;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    return v4

    .line 11
    :cond_1
    :try_start_0
    invoke-virtual {v1, p3, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 12
    :try_start_1
    invoke-virtual {p3, p0, p1, p2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_3

    .line 13
    :try_start_2
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    move v2, v4

    goto :goto_1

    :catch_1
    move-exception p0

    move v2, v4

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 14
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p3, :cond_2

    .line 15
    :try_start_4
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    :goto_1
    const-string/jumbo p1, "saveCameraCalibrationToFile: IOException"

    .line 16
    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception p0

    :goto_2
    const-string/jumbo p1, "saveCameraCalibrationToFile: FileNotFoundException"

    .line 17
    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    move v4, v2

    :cond_3
    :goto_4
    return v4

    :cond_4
    :goto_5
    return v2
.end method

.method public static saveCameraCalibrationToFile([BLjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 7
    :cond_0
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/android/camera/Util;->saveCameraCalibrationToFile([BIILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static saveCustomWatermark2File(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveCustomWatermark2File: start... watermarkBitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oo00()Z

    move-result v4

    const/16 v5, 0x5a

    if-eqz v4, :cond_0

    .line 5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 8
    invoke-static {v0, p1}, Lcom/android/camera/WatermarkMiSysUtils;->writeFileToPersist([BLjava/lang/String;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 10
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v0, v5, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 13
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v7

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v7

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    const-string/jumbo v4, "saveCustomWatermark2File Failed to write image"

    .line 16
    invoke-static {v1, v4, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :cond_1
    :goto_2
    const/4 p1, 0x0

    .line 18
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveCustomWatermark2File: watermarkBitmap = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", save result = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", cost time = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static saveImageToJpeg(Landroid/media/Image;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x2

    .line 3
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    new-array v5, v3, [I

    .line 4
    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    aput v6, v5, v1

    aget-object v6, v0, v3

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    const/4 v7, 0x1

    aput v6, v5, v7

    .line 5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    .line 6
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    add-int v9, v6, v8

    .line 7
    new-array v9, v9, [B

    .line 8
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 9
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 10
    invoke-virtual {v2, v9, v1, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v4, v9, v6, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 12
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v7

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v8, v1

    const-string v0, "%d_image_stride%d_%dx%d"

    .line 14
    invoke-static {v6, v0, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    invoke-static {v9, v1, p0, v5, v0}, Lcom/android/camera/ImageHelper;->saveYuvToJpg([BII[ILjava/lang/String;)V

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "saveImageToJpeg: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraUtil"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static saveLastFrameGaussian2File(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveLastFrameGaussian2File: start... blurBitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 5
    new-instance v5, Ljava/io/File;

    const-string v6, "blur.jpg.tmp"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5a

    invoke-virtual {p0, v0, v7, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 9
    new-instance v0, Ljava/io/File;

    const-string v7, "blur.jpg"

    invoke-direct {v0, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v6, v0

    move-object v0, v4

    :goto_0
    :try_start_2
    const-string/jumbo v4, "saveLastFrameGaussian2File Failed to write image"

    .line 11
    invoke-static {v1, v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v0, v6

    :goto_1
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :cond_0
    :goto_2
    const/4 v0, 0x0

    .line 13
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveLastFrameGaussian2File: blurBitmap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", save result = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", cost time = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-virtual {p0, p3, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 9
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static saveToFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 11
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 13
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 15
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 16
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_3
    move-exception p0

    .line 17
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_1

    .line 18
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 p0, 0x1

    return p0

    :goto_3
    if-eqz v0, :cond_2

    .line 20
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 22
    :cond_2
    :goto_4
    throw p0
.end method

.method public static saveYuv([BLjava/lang/String;)V
    .locals 5

    const-string v0, "Failed to flush/close stream"

    const-string v1, "CameraUtil"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sdcard/DCIM/Camera/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".yuv"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveYuv: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_3
    const-string p1, "Failed to write image"

    .line 7
    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 8
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 9
    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v2, :cond_1

    .line 10
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 11
    invoke-static {v1, v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :cond_1
    :goto_3
    throw p0
.end method

.method public static saveYuvToJpg([BII[ILjava/lang/String;)V
    .locals 8

    const-string v0, "CameraUtil"

    if-nez p0, :cond_0

    const-string/jumbo p0, "saveYuvToJpg: null data"

    .line 1
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    new-instance v7, Landroid/graphics/YuvImage;

    const/16 v3, 0x11

    move-object v1, v7

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "sdcard/DCIM/Camera/"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".jpg"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "saveYuvToJpg: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :try_start_0
    new-instance p3, Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p1, 0x64

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3, p1, p2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static scaleCamera2Matrix(Landroid/graphics/Matrix;Landroid/graphics/Rect;F)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-void
.end method

.method public static setBrightnessRampRate(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/camera/Util;->setBrightnessRampRate1(I)V

    .line 2
    invoke-static {p0}, Lcom/android/camera/Util;->setBrightnessRampRate2(I)V

    return-void
.end method

.method public static setBrightnessRampRate1(I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBrightnessRampRate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.os.IPowerManager.Stub"

    .line 2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "asInterface"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    const-class v5, Landroid/os/IBinder;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "power"

    .line 4
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "android.os.IPowerManager"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v4, "setBrightnessRampRate"

    new-array v5, v3, [Ljava/lang/Class;

    .line 6
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "modify screen light ramp rate failed, so screen light will rise slowly!"

    .line 8
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setBrightnessRampRate2(I)V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBrightnessRampRate2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    const-string v2, "display"

    .line 3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    :try_start_0
    const-string v5, "android.view.android.hardware.display.IDisplayManager"

    .line 6
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    const p0, 0xfffffd

    .line 8
    invoke-interface {v2, p0, v3, v4, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 10
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    :try_start_1
    const-string/jumbo p0, "setBrightnessRampRate2 failed!"

    .line 11
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 12
    :goto_3
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static setFlickSensorEnable(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/android/camera/Util;->isFlickSensorEnable:Z

    return-void
.end method

.method public static setPixels([BII[B[I)V
    .locals 5

    if-eqz p0, :cond_1

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1
    aget v0, p4, v0

    mul-int/2addr v0, p1

    const/4 v1, 0x0

    aget v2, p4, v1

    add-int/2addr v0, v2

    mul-int/2addr v0, p2

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    .line 2
    aget v3, p4, v3

    if-ge v1, v3, :cond_1

    const/4 v3, 0x2

    .line 3
    aget v4, p4, v3

    mul-int/2addr v4, p2

    invoke-static {p3, v2, p0, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    aget v3, p4, v3

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    mul-int v3, p1, p2

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static setScreenEffect(Z)V
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00ooo()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2
    :goto_0
    :try_start_0
    invoke-static {v0, p0}, Lcom/xiaomi/compat/miui/DisplayFeatureManagerCompat;->setScreenEffect(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "CameraUtil"

    const-string v1, "Meet Exception when calling DisplayFeatureManager#setScreenEffect()"

    .line 3
    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public static setViewAndChildrenEnabled(Landroid/view/View;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    invoke-static {v2, p1}, Lcom/android/camera/Util;->setViewAndChildrenEnabled(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static shareMediaToMore(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/CharSequence;Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p2, p1, p4}, Lcom/android/camera/Util;->getShareMediaIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "CameraUtil"

    const-string p2, "failed to share video shareMore "

    .line 4
    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static showCoveredBlackView()V
    .locals 5

    const-string v0, "CameraUtil"

    :try_start_0
    const-string/jumbo v1, "showCoveredBlackView"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.cameracovered.MiuiCameraCoveredManager"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addCoveredBlackView"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call showCoveredBlackView failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static showErrorAndFinish(Landroid/app/Activity;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;IZZ)V

    return-void
.end method

.method public static showErrorAndFinish(Landroid/app/Activity;IZZ)V
    .locals 9

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f120260

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const v0, 0x7f1205bb

    if-eq p1, v0, :cond_2

    const v0, 0x7f12025f

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showErrorAndFinish: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraUtil"

    const/4 v4, 0x6

    invoke-static {v4, v3, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v2, Lcom/android/camera/Util$1;

    invoke-direct {v2, v0, p0}, Lcom/android/camera/Util$1;-><init>(ZLandroid/app/Activity;)V

    .line 5
    new-instance v5, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v5, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1010355

    .line 7
    invoke-virtual {v5, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f120249

    .line 8
    invoke-virtual {v5, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    .line 9
    invoke-virtual {v5, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v5, 0x7f12034b

    .line 10
    invoke-virtual {p1, v5, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz v0, :cond_3

    .line 12
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackCameraErrorDialogShow()V

    :cond_3
    if-nez p3, :cond_5

    .line 13
    sget-boolean p3, Lcom/android/camera/Util;->sIsKillCameraService:Z

    if-eqz p3, :cond_5

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p3, v2, :cond_5

    .line 14
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Ooooo00()Z

    move-result p3

    if-eqz p3, :cond_5

    if-eqz v0, :cond_5

    sget-boolean p3, Lcom/android/camera/Util;->sIsDumpBugReport:Z

    if-nez p3, :cond_5

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Lcom/android/camera/CameraSettings;->getBroadcastKillServiceTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0xea60

    cmp-long p3, v5, v7

    if-lez p3, :cond_4

    const-string p3, "Error dialog: broadcastKillService"

    .line 16
    invoke-static {v4, v3, p3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {p0, p2}, Lcom/android/camera/Util;->broadcastKillService(Landroid/content/Context;Z)V

    :cond_4
    const/4 p2, -0x3

    .line 18
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    .line 19
    invoke-virtual {v8, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 20
    new-instance p2, Lcom/android/camera/Util$2;

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x3e8

    move-object v2, p2

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/Util$2;-><init>(JJLandroid/app/Activity;Landroid/widget/Button;)V

    .line 21
    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p2

    .line 22
    new-instance p3, Lcom/android/camera/Util$3;

    invoke-direct {p3, p2}, Lcom/android/camera/Util$3;-><init>(Landroid/os/CountDownTimer;)V

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 23
    :cond_5
    check-cast p0, Lcom/android/camera/ActivityBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->setErrorDialog(Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method

.method public static showErrorScreen(ILmiuix/appcompat/app/AppCompatActivity;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->setErrorType(I)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->setDumpNativeBackTrace(Z)V

    const/4 p0, 0x2

    const p2, 0x7f1300b8

    .line 4
    invoke-virtual {v0, p0, p2}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const-string p1, "CameraExitHint"

    .line 6
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static showFoldTips(Landroid/app/Activity;I)Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1208ad

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1208ae

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    const-wide/16 v1, 0xbb8

    .line 6
    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/camera/OnScreenHint;->showTips(Landroid/app/Activity;Ljava/lang/CharSequence;JI)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static showInvisibleModeDialog(Landroid/app/Activity;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/Util;->mInvisibleModeDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->dismissSystemChoiceDialog()V

    .line 4
    :cond_1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12044c

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12044b

    .line 6
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f12044d

    .line 8
    new-instance v3, Lcom/android/camera/Util$4;

    invoke-direct {v3, p0}, Lcom/android/camera/Util$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f12044a

    .line 9
    new-instance v3, Lcom/android/camera/Util$5;

    invoke-direct {v3, p0}, Lcom/android/camera/Util$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 10
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/android/camera/Util;->mInvisibleModeDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 11
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 12
    sget-object p0, Lcom/android/camera/Util;->mInvisibleModeDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 3
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static startActivityForResultCatchException(Landroid/app/Activity;Landroid/content/Intent;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CameraUtil"

    const-string p2, "failed to start activity"

    .line 2
    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static startFromKeyGuard(Landroid/app/Activity;)Z
    .locals 1

    const-string v0, "keyguard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 2
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method public static startScreenSlideAlphaInAnimation(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0x15e

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0x190

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    new-instance v0, Lmiuix/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public static startShareMedia(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-static {p2, p4, p3, p5}, Lcom/android/camera/Util;->getShareMediaIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object p3

    .line 2
    new-instance p5, Landroid/content/ComponentName;

    invoke-direct {p5, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed to share video "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraUtil"

    invoke-static {p2, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static stringSparseArraysIndexOf(Landroid/util/SparseArray;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static toHumanString(J)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo p1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unRegisterAccessibiltyStateChange()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/Util;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/camera/Util;->mTouchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void
.end method

.method public static updateAccessibility(Landroid/content/Context;)V
    .locals 2

    const-string v0, "accessibility"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    sput-object v0, Lcom/android/camera/Util;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    sget-object v0, Lcom/android/camera/Util;->mTouchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, LOooO00o/OooO0O0/OooO00o/Oooo0;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0;

    sput-object v0, Lcom/android/camera/Util;->mTouchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 4
    :cond_0
    sget-object v0, Lcom/android/camera/Util;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    sget-object v1, Lcom/android/camera/Util;->mTouchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 5
    sget-object v0, Lcom/android/camera/Util;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/Util;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/camera/Util;->sIsAccessibilityEnable:Z

    .line 6
    invoke-static {p0}, Lcom/android/camera/Util;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "com.miui.accessibility/com.miui.accessibility.voiceaccess.VoiceAccessAccessibilityService"

    .line 7
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    sput-boolean p0, Lcom/android/camera/Util;->sIsVoiceAccessibilityEnable:Z

    return-void
.end method

.method public static updateDeviceConfig(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "ro.miui.region"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Util;->sRegion:Ljava/lang/String;

    const-string/jumbo v0, "ro.miui.customized.region"

    .line 2
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jp_kd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "JP"

    .line 3
    sput-object v0, Lcom/android/camera/Util;->sRegion:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "phone"

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 5
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 6
    sget-object v0, Lcom/android/camera/Util;->sRegion:Ljava/lang/String;

    .line 7
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {p0}, Lcom/xiaomi/compat/common/CountryCompat;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_2
    sput-object v0, Lcom/android/camera/Util;->mCountryIso:Ljava/lang/String;

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "antiBanding mCountryIso="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/camera/Util;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sRegion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/camera/Util;->sRegion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraUtil"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    sget-boolean p0, Lcom/android/camera/Util;->DEBUG:Z

    const-string v0, "camera_dump_parameters"

    invoke-static {v0, p0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/camera/Util;->sIsDumpLog:Z

    const/4 p0, 0x0

    const-string v0, "camera_dump_bug_report"

    .line 12
    invoke-static {v0, p0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Util;->sIsDumpBugReport:Z

    const-string v0, "camera_dump_orig_jpg"

    .line 13
    invoke-static {v0, p0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Util;->sIsDumpOrigJpg:Z

    .line 14
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Ooooooo:Z

    const-string v1, "kill_camera_service_enable"

    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Util;->sIsKillCameraService:Z

    const-string/jumbo v0, "super_night_default_mode_enable"

    .line 15
    invoke-static {v0, p0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/camera/Util;->sSuperNightDefaultModeEnable:Z

    const/4 p0, 0x1

    const-string v0, "debug.camera.withoutalgo.depthimage.enble"

    .line 16
    invoke-static {v0, p0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Util;->sIsDepthImageWithoutAlgoEnable:Z

    const-string/jumbo v0, "persist.mibokeh.depth.scale"

    .line 17
    invoke-static {v0, p0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/camera/Util;->mDepthBokeBufferSizeScale:I

    return-void
.end method

.method public static updateOrientationLayoutRotation(Landroid/view/View;II)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    rsub-int v0, p2, 0x168

    .line 1
    rem-int/lit16 v0, v0, 0x168

    if-eq p1, p2, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getScreenOrientation()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p2, 0x10

    .line 6
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 8
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 p2, 0x0

    .line 9
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    int-to-float p2, v0

    .line 10
    invoke-virtual {p0, p2}, Landroid/view/View;->setRotation(F)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public static updateSelectIndicator(Landroid/view/View;ZZ)V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    if-eqz p1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 1
    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    new-instance p2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 3
    invoke-virtual {p0, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    new-instance p2, Lcom/android/camera/Util$6;

    invoke-direct {p2, p1}, Lcom/android/camera/Util$6;-><init>(Z)V

    .line 4
    invoke-virtual {p0, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    const/16 p2, 0x8

    .line 6
    :goto_1
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_4

    move v0, v1

    .line 7
    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method public static verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-static {p0, p2, p3}, Lcom/android/camera/Util;->verifyZip(Ljava/io/InputStream;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_1

    .line 6
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public static verifyFileZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "verifyAssetZip "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraUtil"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/camera/Util;->verifyZip(Ljava/io/InputStream;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 7
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
.end method

.method public static verifySdcardZip(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->verifyZip(Ljava/io/InputStream;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 4
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public static verifySdcardZipWithProgress(Ljava/lang/String;Ljava/lang/String;ILio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/Util;->verifyZip(Ljava/lang/String;Ljava/lang/String;ILio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static verifyZip(Ljava/io/InputStream;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :try_start_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 48
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3

    .line 50
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 52
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 54
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 55
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    goto :goto_2

    .line 56
    :cond_3
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_6

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 60
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_5

    .line 61
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 63
    :cond_5
    invoke-static {v1, p2}, Lcom/android/camera/network/download/Verifier;->crc32(Ljava/io/File;I)J

    move-result-wide v5

    .line 64
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    move v3, v4

    :goto_2
    if-eqz v3, :cond_0

    const-string v2, "CameraUtil"

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "corrupted "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 67
    :try_start_2
    new-array v1, p2, [B

    .line 68
    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_7

    .line 69
    invoke-virtual {p0, v1, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 70
    :cond_7
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 71
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    .line 72
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 73
    :cond_8
    :try_start_7
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_6

    :catchall_3
    move-exception p0

    .line 74
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    .line 75
    :try_start_9
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p2

    :try_start_a
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    return-void
.end method

.method public static verifyZip(Ljava/lang/String;Ljava/lang/String;ILio/reactivex/ObservableEmitter;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    new-instance v3, Ljava/util/zip/ZipFile;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/camera/Util;->getZipSize(Ljava/lang/String;)J

    move-result-wide v4

    .line 6
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    const-wide/16 v7, 0x0

    move-wide v9, v7

    .line 7
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 8
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/zip/ZipEntry;

    .line 9
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    .line 11
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 12
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 13
    :cond_1
    new-instance v13, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 15
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 16
    :cond_2
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 18
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_6

    .line 19
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 20
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 21
    :cond_4
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v13

    if-nez v13, :cond_5

    .line 22
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 23
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 24
    :cond_5
    invoke-static {v12, v1}, Lcom/android/camera/network/download/Verifier;->crc32(Ljava/io/File;I)J

    move-result-wide v13

    .line 25
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v16

    cmp-long v13, v13, v16

    if-eqz v13, :cond_6

    :goto_1
    const/4 v14, 0x1

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_a

    const-string v13, "CameraUtil"

    .line 26
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "corrupted "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {v3, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 28
    :try_start_1
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 29
    :try_start_2
    new-array v12, v1, [B

    .line 30
    :goto_4
    invoke-virtual {v11, v12}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_8

    if-eqz v2, :cond_7

    cmp-long v15, v4, v7

    if-eqz v15, :cond_7

    int-to-long v7, v14

    add-long/2addr v9, v7

    const-wide/16 v7, 0x64

    mul-long/2addr v7, v9

    .line 31
    div-long/2addr v7, v4

    long-to-int v7, v7

    .line 32
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_7
    const/4 v7, 0x0

    .line 33
    invoke-virtual {v13, v12, v7, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v7, 0x0

    goto :goto_4

    .line 34
    :cond_8
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v11, :cond_a

    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 35
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 36
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_7
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 37
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    if-eqz v11, :cond_9

    .line 38
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v4, v0

    :try_start_a
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_6
    throw v2

    :cond_a
    :goto_7
    const-wide/16 v7, 0x0

    goto/16 :goto_0

    :cond_b
    if-eqz v2, :cond_c

    const/16 v0, 0x64

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 40
    :cond_c
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    return-void

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 41
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    .line 42
    :try_start_c
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_8

    :catchall_8
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v2
.end method

.method public static viewUri(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    const-string v1, "CameraUtil"

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Uri invalid. uri="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.REVIEW"

    invoke-direct {v0, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "review image fail. uri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static viewVisibilityToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "GONE"

    return-object p0

    :cond_1
    const-string p0, "INVISIBLE"

    return-object p0

    :cond_2
    const-string p0, "VISIBLE"

    return-object p0
.end method

.method public static workaroundForJ1()Z
    .locals 2

    .line 1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "cmi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x400

    new-array p0, p0, [B

    int-to-long v1, p2

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/io/FileInputStream;->skip(J)J

    .line 3
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    if-gez p2, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, p0, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method
