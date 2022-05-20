.class public Lcom/android/camera/statistic/CameraStatUtils;
.super Ljava/lang/Object;
.source "CameraStatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder;
    }
.end annotation


# static fields
.field public static final NS_TO_S:Ljava/lang/Long;

.field public static final TAG:Ljava/lang/String; = "CameraStatUtils"

.field public static mFirstThermalResult:I

.field public static mFirstThermalResultArrived:Z

.field public static mLayoutType:Ljava/lang/String;

.field public static mMaxThermalResult:I

.field public static mZoomPair:Ljava/lang/String;

.field public static sBeautyTypeToName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sBeautyTypeToValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sCameraModeIdToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sExposureTimeLessThan1sToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sFilterTypeToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sMiLiveBeautyTypeToName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sPictureQualityIndexToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sSpeedToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sTriggerModeIdToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sVideoBokehTypeToName:Ljava/util/HashMap;
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
    .locals 15

    const-wide/32 v0, 0x3b9aca00

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtils;->NS_TO_S:Ljava/lang/Long;

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa1

    const-string v2, "M_funTinyVideo_"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xb7

    const-string v2, "M_miLive_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xb8

    const-string v2, "M_funArMimoji2_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa3

    const-string v2, "M_capture_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa7

    const-string v2, "M_manual_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xab

    const-string v2, "M_portrait_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const-string v1, "M_panorama_"

    const/16 v2, 0xa6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v2, 0xb0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xac

    const-string v2, "M_newSlowMotion_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa2

    const-string v2, "M_recordVideo_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa9

    const-string v2, "M_fastMotion_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOO()Z

    move-result v0

    const/16 v1, 0xcc

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const-string v2, "M_multi_camera_dual_video_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const-string v2, "M_dual_video_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    :goto_0
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xad

    const-string v2, "M_superNight_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xd6

    const-string v2, "M_superNightVideo_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xaf

    const-string v2, "M_48mPixel_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xb4

    const-string v2, "M_proVideo_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xb9

    const-string v2, "M_clone_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xba

    const-string v3, "M_Doc_"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xd3

    const-string v3, "M_film_"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xd0

    const-string v3, "M_film_exposuredelay_"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xd4

    const-string v3, "M_film_paralleldream_"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xcf

    const-string v3, "M_film_slow_shutter_"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xd5

    const-string v3, "M_film_time_freeze_"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xbd

    const-string v3, "M_film_dolly_zoom_"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xcd

    const-string v3, "M_ai_watermark_"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xbb

    const-string v3, "M_ambilight_"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xbc

    const-string v3, "M_superMoon_"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xb3

    const-string v3, "M_liveVlog_"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xd1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xb6

    const-string v3, "M_idCard_"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xd2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string/jumbo v2, "shutter_button"

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x14

    const-string/jumbo v2, "volume"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x1e

    const-string v2, "fingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "keycode_camera"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string v2, "keycode_dpad"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string/jumbo v2, "object_track"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x46

    const-string v2, "audio_capture"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x50

    const-string v2, "focus_shoot"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string v2, "exposure_view"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string v2, "hand_gesture"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string/jumbo v2, "speech_shutter"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "lowest"

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "lower"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "low"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "high"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "higher"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "highest"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "auto"

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/16 v1, 0x3e8

    const-string v2, "1/1000s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/16 v1, 0x7d0

    const-string v2, "1/500s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/16 v1, 0xfa0

    const-string v2, "1/250s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/16 v1, 0x1f40

    const-string v2, "1/125s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/16 v1, 0x411b

    const-string v2, "1/60s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x8235

    const-string v2, "1/30s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x1046b

    const-string v2, "1/15s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x1e848

    const-string v2, "1/8s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x3d090

    const-string v2, "1/4s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x7a120

    const-string v2, "1/2s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0xf4240

    const-string v2, "1s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x1e8480

    const-string v2, "2s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x3d0900

    const-string v2, "4s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x7a1200

    const-string v2, "8s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0xf42400

    const-string v2, "16s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x1e84800

    const-string v2, "32s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v1, "attr_beauty_level"

    const-string/jumbo v2, "pref_old_beautify_level_key_capture"

    .line 76
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v3, "pref_beautify_skin_smooth_ratio_key"

    const-string v4, "attr_skin_smooth"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v4, "pref_beautify_skin_color_ratio_key"

    const-string v5, "attr_skin_color"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v5, "pref_beautify_enlarge_eye_ratio_key"

    const-string v6, "attr_enlarge_eye"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v6, "pref_beautify_slim_face_ratio_key"

    const-string v7, "attr_slim_face"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v7, "pref_beautify_color_skin_ratio_key"

    const-string v8, "attr_select_skincolor"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v8, "pref_beautify_solid_ratio_key"

    const-string v9, "attr_solid"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v8, "pref_beautify_whiten_ratio_key"

    const-string v9, "attr_whiten"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v8, "pref_beautify_makeup_ratio_key"

    const-string v9, "attr_makeup"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v8, "pref_beautify_nose_ratio_key"

    const-string v9, "attr_nose"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v8, "pref_beautify_risorius_ratio_key"

    const-string v9, "attr_risorius"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v8, "pref_beautify_lips_ratio_key"

    const-string v9, "attr_lips"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v8, "pref_beautify_chin_ratio_key"

    const-string v9, "attr_chin"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v8, "pref_beautify_neck_ratio_key"

    const-string v9, "attr_neck"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v8, "pref_beautify_smile_ratio_key"

    const-string v9, "attr_smile"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v8, "pref_beautify_slim_nose_ratio_key"

    const-string v9, "attr_slim_nose"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v8, "pref_beautify_hairline_ratio_key"

    const-string v9, "attr_hairline"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v8, "pref_beauty_head_slim_ratio"

    const-string v9, "attr_head_slim"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v9, "pref_beauty_body_slim_ratio"

    const-string v10, "attr_body_slim"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v10, "pref_beauty_shoulder_slim_ratio"

    const-string v11, "attr_shoulder_slim"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v11, "key_beauty_leg_slim_ratio"

    const-string v12, "attr_leg_slim"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v12, "pref_beauty_whole_body_slim_ratio"

    const-string v13, "attr_whole_body_slim"

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v13, "pref_beauty_butt_slim_ratio"

    const-string v14, "attr_butt_slim"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "RESET"

    const-string/jumbo v14, "reset"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v13, "pref_beautify_makeups_none"

    const-string v14, "attr_makeup_none"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v13, "pref_beautify_nude_makeups_ratio_key"

    const-string v14, "attr_makeup_nude"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v13, "pref_beautify_toughman_makeups_ratio_key"

    const-string v14, "attr_makeup_toughman"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v13, "pref_beautify_gentleman_makeups_ratio_key"

    const-string v14, "attr_makeup_gentleman"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v13, "pref_beautify_female_pink_makeups_ratio_key"

    const-string v14, "attr_female_pink"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v13, "pref_beautify_female_blue_makeups_ratio_key"

    const-string v14, "attr_female_blue"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v13, "pref_beautify_solid_makeups_ratio_key"

    const-string v14, "attr_makeup_solid"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "-1"

    const-string v14, "attr_skincolor_back"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "0"

    const-string v14, "attr_skincolor_off"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "1"

    const-string v14, "attr_skincolor_caramel"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "2"

    const-string v14, "attr_skincolor_wheat"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "3"

    const-string v14, "attr_skincolor_milktea"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "4"

    const-string v14, "attr_skincolor_white"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "5"

    const-string v14, "attr_skincolor_pink"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "6"

    const-string v14, "attr_skincolor_peach"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "7"

    const-string v14, "attr_skincolor_lotus"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "8"

    const-string v14, "attr_skincolor_matte"

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sMiLiveBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "attr_mi_live_smooth_ratio"

    .line 118
    invoke-virtual {v0, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sMiLiveBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "attr_mi_live_shrink_face_ratio"

    invoke-virtual {v0, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sMiLiveBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "attr_mi_live_enlarge_eye_ratio"

    invoke-virtual {v0, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sMiLiveBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "attr_mi_live_whole_body_slim"

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sMiLiveBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "attr_mi_live_leg_slim"

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sMiLiveBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "attr_mi_live_head_slim"

    invoke-virtual {v0, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sMiLiveBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "attr_mi_live_body_slim"

    invoke-virtual {v0, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sMiLiveBeautyTypeToName:Ljava/util/HashMap;

    const-string v13, "attr_mi_live_shoulder_slim"

    invoke-virtual {v0, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    .line 127
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "attr_click_skin_smooth"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "attr_click_whole_body_slim_ratio"

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "attr_click_leg_slim_ratio"

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "attr_click_head_slim_ratio"

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "attr_click_body_slim_ratio"

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "attr_click_shoulder_slim_ratio"

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "attr_click_skin_color"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "attr_click_enlarge_eye"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "attr_click_slim_face"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "attr_click_select_skincolor"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_solid_ratio_key"

    const-string v2, "attr_click_solid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_whiten_ratio_key"

    const-string v2, "attr_click_whiten"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_makeup_ratio_key"

    const-string v2, "attr_makeup"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_nose_ratio_key"

    const-string v2, "attr_click_nose"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_risorius_ratio_key"

    const-string v2, "attr_click_risorius"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_lips_ratio_key"

    const-string v2, "attr_click_lips"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_chin_ratio_key"

    const-string v2, "attr_click_chin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_neck_ratio_key"

    const-string v2, "attr_click_neck"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_smile_ratio_key"

    const-string v2, "attr_click_smile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_slim_nose_ratio_key"

    const-string v2, "attr_click_slim_nose"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_hairline_ratio_key"

    const-string v2, "attr_click_hairline"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_makeups_none"

    const-string v2, "attr_click_makeup_none"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_nude_makeups_ratio_key"

    const-string v2, "attr_click_makeup_nude"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_toughman_makeups_ratio_key"

    const-string v2, "attr_click_makeup_toughman"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_gentleman_makeups_ratio_key"

    const-string v2, "attr_click_makeup_gentleman"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_female_pink_makeups_ratio_key"

    const-string v2, "attr_click_female_pink"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_female_blue_makeups_ratio_key"

    const-string v2, "attr_click_female_blue"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_beautify_solid_makeups_ratio_key"

    const-string v2, "attr_click_makeup_solid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "-1"

    const-string v2, "attr_click_skincolor_back"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "0"

    const-string v2, "attr_click_skincolor_off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "1"

    const-string v2, "attr_click_skincolor_caramel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "2"

    const-string v2, "attr_click_skincolor_wheat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "3"

    const-string v2, "attr_click_skincolor_milktea"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "4"

    const-string v2, "attr_click_skincolor_white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "5"

    const-string v2, "attr_click_skincolor_pink"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "6"

    const-string v2, "attr_click_skincolor_peach"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "7"

    const-string v2, "attr_click_skincolor_lotus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    const-string v1, "8"

    const-string v2, "attr_click_skincolor_matte"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    .line 167
    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_FIRST:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_first"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_SIBOPENK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_sibopenk"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_BLACKGOLD:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_blackgold"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_BLACKICE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_blackice"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_DELICACY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_delicacy"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_FILM:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_film"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_ORIGINAL:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_original"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_HOLIDAY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_holiday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_OXYGEN:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_oxygen"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_MINT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_mint"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_PINK_ORANGE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_pink_orange"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->M_NUDE_MAKEUP:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "m_nude_makeup"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->M_SWEET_MAKEUP:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "m_sweet_makeup"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->M_COOL_MAKEUP:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "m_cool_makeup"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->M_NEUTRAL_MAKEUP:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "m_neutral_makeup"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->M_HARDLINE_MAKEUP:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "m_hardline_makeup"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->M_SOFT_MAKEUP:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "m_soft_makeup"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_NATURE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_nature"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_JAPANESE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_japanese"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_PINK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_pink"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_LILT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_lilt"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_LIVELY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_lively"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_CLASSIC:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_classic"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_JAPANESE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_japanese"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_NATURE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_nature"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_PINK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_pink"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_LILT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_lilt"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_FAIRYTALE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "b_fairytale"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_JAPANESE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "b_japanese"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MINT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "b_mint"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MOOD:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "b_mood"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_NATURE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "b_nature"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_PINK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "b_pink"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_ROMANCE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "b_romance"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MAZE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "b_maze"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "b_whiteAndBlack"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_FILM:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "s_film"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_YEARS:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "s_years"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_POLAROID:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "s_polaroid"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_FOREST:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "s_forest"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_BYGONE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "s_bygone"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "s_whiteAndBlack"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "n_whiteAndBlack"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_RIDDLE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "b_riddle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_STORY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "b_story"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MOVIE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "b_movie"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_M_TEA:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "b_m_tea"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_M_LILT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "b_m_lilt"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_M_SEPIA:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "b_m_sepia"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_M_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "b_m_whiteandblack"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_DOC:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A1_DOC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_FLOWER:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A2_FLOWER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_FOOD:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A3_FOOD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_PPT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A4_PPT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_SKY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A5_SKY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_SUNRISE_SUNSET:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A6_SUNRISE_SUNSET"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_CAT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A7_CAT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_DOG:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A8_DOG"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_GREEN_PLANTS:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A9_GREEN_PLANTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_NIGHT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A10_NIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_SNOW:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A11_SNOW"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_SEA:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A12_SEA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_AUTUMN:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A13_AUTUMN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_CANDLELIGHT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A14_CANDLELIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_CAR:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A15_CAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_GRASS:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A16_GRASS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_MAPLE_LEAVES:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A17_MAPLE_LEAVES"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_SUCCULENT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A18_SUCCULENT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_BUILDING:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A19_BUILDING"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_CITY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A20_CITY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_CLOUD:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A21_CLOUD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_OVERCAST:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A22_OVERCAST"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_BACKLIGHT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A23_BACKLIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_SILHOUETTE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A24_SILHOUETTE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_HUMAN:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A25_HUMAN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_JEWELRY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A26_JEWELRY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_BUDDHA:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A27_BUDDHA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_COW:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A28_COW"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_CURRY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A29_CURRY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_MOTORBIKE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A30_MOTORBIKE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_TEMPLE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A31_TEMPLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_BEACH:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A32_BEACH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->A_DIVING:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "A33_DRIVING"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->BI_SUNNY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "bi_sunny"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->BI_PINK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "bi_pink"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->BI_MEMORY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "bi_memory"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->BI_STRONG:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "bi_strong"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->BI_WARM:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "bi_warm"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->BI_RETRO:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "bi_retro"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->BI_ROMANTIC:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "bi_remantic"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->BI_SWEET:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "bi_sweet"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->BI_PORTRAIT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "bi_portrait"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->BI_YOUNG:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "bi_young"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->BI_M_DUSK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "bi_m_dusk"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->BI_M_LILT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "bi_m_lilt"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->BI_M_TEA:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "bi_m_tea"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->BI_M_SEPIA:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "bi_m_sepia"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->BI_M_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "bi_m_whiteandblack"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->ML_BLUE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "ml_blue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->ML_CONTRAST:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "ml_contrast"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->ML_DEEPBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "ml_deepblack"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->ML_FAIR:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "ml_fair"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 269
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->ML_HONGKONG:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "ml_hongkong"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 270
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->ML_MOUSSE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "ml_mousse"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->ML_SOLAR:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "ml_solar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->ML_YEARS:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "ml_years"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 273
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->V_SUMMER_DAY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "v_summer_day"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 274
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->V_FANTASY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "v_fantasy"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->V_MEET:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "v_meet"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->V_WIND_SING:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "v_wind_sing"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->V_LOST:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "v_lost"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->V_CENTRAL:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "v_central"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->V_NORTHERN_EUROPE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "v_northern_europe"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->V_ROME:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "v_rome"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->V_BLACKGOLD:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "v_blackgold"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->V_ORANGE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "v_orange"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->V_CYBERPINK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "v_cyberpink"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->V_BLACKICE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "v_blackice"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sSpeedToName:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "Super slow"

    .line 286
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sSpeedToName:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "Slow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sSpeedToName:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "Regular"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sSpeedToName:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "Fast"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sSpeedToName:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "Super fast"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sVideoBokehTypeToName:Ljava/util/HashMap;

    const-string v1, "key_video_bokeh_blur_null"

    const-string v2, "arrt_video_bokeh_blur_null"

    .line 292
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sVideoBokehTypeToName:Ljava/util/HashMap;

    const-string v1, "key_video_bokeh_color_point_retention"

    const-string v2, "arrt_video_bokeh_color_retention"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sVideoBokehTypeToName:Ljava/util/HashMap;

    const-string v1, "key_video_bokeh_color_point_ratio"

    const-string v2, "arrt_video_bokeh_color_point_ratio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sVideoBokehTypeToName:Ljava/util/HashMap;

    const-string v1, "key_video_bokeh_zoom_ratio"

    const-string v2, "arrt_video_bokeh_zoom_ratio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sVideoBokehTypeToName:Ljava/util/HashMap;

    const-string v1, "key_video_bokeh_spin_ratio"

    const-string v2, "arrt_video_bokeh_spin_ratio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sVideoBokehTypeToName:Ljava/util/HashMap;

    const-string v1, "key_video_bokeh_blur_ratio"

    const-string v2, "arrt_video_bokeh_blur_ratio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TrackInit(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/camera/statistic/MistatsWrapper;->initialize(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/android/camera/statistic/OneTrackWrapper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static addCameraSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "front"

    goto :goto_0

    :cond_0
    const-string p0, "back"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static addUltraPixelParameter(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    const-string/jumbo v2, "off"

    const-string v3, "attr_supreme_pixel_value"

    if-eqz v1, :cond_1

    .line 12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Ooooo0o()I

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_0

    const-string v2, "32M_ON"

    .line 13
    :cond_0
    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000000O()I

    move-result v1

    .line 15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRear108MPSwitchOn()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    if-eqz v0, :cond_2

    const-string v2, "48M_ON"

    .line 16
    :cond_2
    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    if-eqz v0, :cond_4

    const-string v2, "64M_ON"

    .line 17
    :cond_4
    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    const-string v0, "108M_ON"

    .line 18
    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_6
    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_0
    return-void
.end method

.method public static addUltraPixelParameter(ZLjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    const-string/jumbo v1, "off"

    const-string v2, "attr_ultra_pixel"

    if-eqz p0, :cond_1

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Ooooo0o()I

    move-result p0

    if-nez p0, :cond_b

    if-eqz v0, :cond_0

    const-string v1, "32MP"

    .line 3
    :cond_0
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000000O()I

    move-result p0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_3

    if-eqz v0, :cond_2

    const-string v1, "48MP"

    .line 5
    :cond_2
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne p0, v3, :cond_5

    if-eqz v0, :cond_4

    const-string v1, "50MP"

    .line 6
    :cond_4
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    if-ne p0, v3, :cond_7

    if-eqz v0, :cond_6

    const-string v1, "64MP"

    .line 7
    :cond_6
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const/4 v3, 0x5

    if-ne p0, v3, :cond_9

    if-eqz v0, :cond_8

    const-string v1, "100MP"

    .line 8
    :cond_8
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_9
    const/4 v3, 0x3

    if-ne p0, v3, :cond_b

    if-eqz v0, :cond_a

    const-string v1, "108MP"

    .line 9
    :cond_a
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_0
    return-void
.end method

.method public static antiBandingToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "others"

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera/statistic/CameraStatUtils;->TAG:Ljava/lang/String;

    const-string v1, "null antiBanding"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v1, -0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :pswitch_1
    const-string v2, "2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :pswitch_2
    const-string v2, "1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    goto :goto_0

    :pswitch_3
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    .line 3
    sget-object v1, Lcom/android/camera/statistic/CameraStatUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected antiBanding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const-string p0, "auto"

    return-object p0

    :cond_3
    const-string p0, "60hz"

    return-object p0

    :cond_4
    const-string p0, "50hz"

    return-object p0

    :cond_5
    const-string/jumbo p0, "off"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static autoWhiteBalanceToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string/jumbo v0, "others"

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera/statistic/CameraStatUtils;->TAG:Ljava/lang/String;

    const-string v1, "null awb"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v1, -0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4075183a

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x35

    if-eq v2, v3, :cond_2

    const/16 v3, 0x36

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v6

    goto :goto_0

    :pswitch_1
    const-string v2, "2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v7

    goto :goto_0

    :pswitch_2
    const-string v2, "1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v8

    goto :goto_0

    :cond_1
    const-string v2, "6"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v4

    goto :goto_0

    :cond_2
    const-string v2, "5"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v5

    goto :goto_0

    :cond_3
    const-string v2, "manual"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    :cond_4
    :goto_0
    if-eqz v1, :cond_a

    if-eq v1, v8, :cond_9

    if-eq v1, v7, :cond_8

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    .line 3
    sget-object v1, Lcom/android/camera/statistic/CameraStatUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected awb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5
    const-string p0, "cloudy-daylight"

    return-object p0

    :cond_6
    const-string p0, "daylight"

    return-object p0

    :cond_7
    const-string p0, "fluorescent"

    return-object p0

    :cond_8
    const-string p0, "incandescent"

    return-object p0

    :cond_9
    const-string p0, "auto"

    :cond_a
    return-object p0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static burstShotNumToName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->divideTo10Section(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cameraIdToName(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "front"

    goto :goto_0

    :cond_0
    const-string p0, "back"

    :goto_0
    return-object p0
.end method

.method public static contrastToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f030029

    .line 1
    invoke-static {v0, p0}, Lcom/android/camera/statistic/CameraStatUtils;->pictureQualityToName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static divideTo10Section(I)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "0+"

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    add-int/lit8 p0, p0, -0x1

    .line 1
    div-int/lit8 p0, p0, 0xa

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    const-string p0, "90+"

    return-object p0

    :pswitch_0
    const-string p0, "80+"

    return-object p0

    :pswitch_1
    const-string p0, "70+"

    return-object p0

    :pswitch_2
    const-string p0, "60+"

    return-object p0

    :pswitch_3
    const-string p0, "50+"

    return-object p0

    :pswitch_4
    const-string p0, "40+"

    return-object p0

    :pswitch_5
    const-string p0, "30+"

    return-object p0

    :pswitch_6
    const-string p0, "20+"

    return-object p0

    :pswitch_7
    const-string p0, "10+"

    return-object p0

    :pswitch_8
    const-string p0, "1+"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

.method public static exposureTimeToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0xf4240

    if-ge v0, v1, :cond_0

    .line 2
    sget-object v1, Lcom/android/camera/statistic/CameraStatUtils;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_0
    div-int/2addr v0, v1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 5
    :catch_0
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid exposure time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected exposure time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "auto"

    return-object p0
.end method

.method public static faceBeautyRatioToName(I)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->divideTo10Section(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static filterIdToName(I)Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v0, p0, :cond_0

    const-string/jumbo p0, "reset"

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result v0

    .line 4
    sget-object v1, Lcom/android/camera/statistic/CameraStatUtils;->sFilterTypeToName:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected filter id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "none"

    return-object p0
.end method

.method public static flashModeToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "others"

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera/statistic/CameraStatUtils;->TAG:Ljava/lang/String;

    const-string v1, "null flash mode"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v1, -0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0xbdf2

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const-string v2, "106"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x7

    goto :goto_0

    :pswitch_1
    const-string v2, "105"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_2
    const-string v2, "104"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :pswitch_3
    const-string v2, "103"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :pswitch_4
    const-string v2, "3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_5
    const-string v2, "2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :pswitch_6
    const-string v2, "1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :pswitch_7
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "101"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x6

    :cond_2
    :goto_0
    const-string v2, "halo_flash"

    packed-switch v1, :pswitch_data_2

    .line 3
    sget-object v1, Lcom/android/camera/statistic/CameraStatUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected flash mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 4
    :pswitch_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string/jumbo v2, "torch"

    :cond_3
    :pswitch_9
    return-object v2

    :pswitch_a
    const-string/jumbo p0, "screen_light"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "on"

    return-object p0

    :pswitch_c
    const-string p0, "halo"

    return-object p0

    :pswitch_d
    const-string p0, "auto"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "off"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbdf4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static focusPositionToName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3e8

    if-ne v0, p0, :cond_0

    const-string p0, "auto"

    return-object p0

    :cond_0
    sub-int/2addr v0, p0

    .line 1
    div-int/lit8 v0, v0, 0xa

    .line 2
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->divideTo10Section(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDocumentModeValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDocument()Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "off"

    :goto_0
    return-object p0
.end method

.method public static getDualZoomName(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa6

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ultra"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    sget p0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string/jumbo v1, "tele"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result p0

    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "Standalone"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result p0

    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string/jumbo v1, "wide"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 p0, 0x3f800000    # 1.0f

    .line 9
    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_4
    :goto_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result p0

    .line 11
    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getModeName()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb9

    if-ne v0, v2, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static indexOfString([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 2
    aget-object v1, p0, v0

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

.method public static initCameraThermal()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/android/camera/statistic/CameraStatUtils;->mFirstThermalResultArrived:Z

    .line 2
    sput v0, Lcom/android/camera/statistic/CameraStatUtils;->mFirstThermalResult:I

    .line 3
    sput v0, Lcom/android/camera/statistic/CameraStatUtils;->mMaxThermalResult:I

    return-void
.end method

.method public static isMultiCameraDualVideo()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOO()Z

    move-result v0

    return v0
.end method

.method public static isoToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "auto"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static modeIdToName(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sCameraModeIdToName:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "M_unspecified_"

    :cond_0
    const-string v0, "M_capture_"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "M_square_"

    :cond_1
    return-object p0
.end method

.method public static pictureQualityToName(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->indexOfString([Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    array-length p0, p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 5
    sget-object p0, Lcom/android/camera/statistic/CameraStatUtils;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string/jumbo p0, "others"

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "picture quality array size is smaller than values size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static round(JI)J
    .locals 2

    if-gtz p2, :cond_0

    return-wide p0

    .line 1
    :cond_0
    div-int/lit8 v0, p2, 0x2

    int-to-long v0, v0

    add-long/2addr p0, v0

    int-to-long v0, p2

    div-long/2addr p0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static saturationToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f030031

    .line 1
    invoke-static {v0, p0}, Lcom/android/camera/statistic/CameraStatUtils;->pictureQualityToName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setCameraThermal(I)V
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/statistic/CameraStatUtils;->mMaxThermalResult:I

    if-lt v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/android/camera/statistic/CameraStatUtils;->mFirstThermalResultArrived:Z

    if-nez v0, :cond_1

    .line 3
    sput p0, Lcom/android/camera/statistic/CameraStatUtils;->mFirstThermalResult:I

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcom/android/camera/statistic/CameraStatUtils;->mFirstThermalResultArrived:Z

    .line 5
    :cond_1
    sput p0, Lcom/android/camera/statistic/CameraStatUtils;->mMaxThermalResult:I

    return-void
.end method

.method public static sharpnessToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f030033

    .line 1
    invoke-static {v0, p0}, Lcom/android/camera/statistic/CameraStatUtils;->pictureQualityToName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static slowMotionConfigToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "slow_motion_120"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "fps_120"

    return-object p0

    :cond_0
    const-string/jumbo v0, "slow_motion_240"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "fps_240"

    return-object p0

    :cond_1
    const-string p0, "fps_960"

    return-object p0
.end method

.method public static slowMotionQualityIdToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "others"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x35

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0x36

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "6"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v4

    goto :goto_0

    :cond_2
    const-string v2, "5"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    return-object v0

    :cond_4
    const-string p0, "1080p"

    return-object p0

    :cond_5
    const-string p0, "720p"

    return-object p0
.end method

.method public static speedIdToName(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sSpeedToName:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/android/camera/statistic/CameraStatUtils;->sSpeedToName:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static tarckBokenChanged(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    const-string v0, "attr_BOKEH"

    .line 2
    invoke-static {v0, p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static timeLapseIntervalToName(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ge p0, v2, :cond_0

    .line 1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float p0, p0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%.2fs"

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    div-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%ds"

    invoke-static {v3, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static track8KVideo(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_feature_name"

    const-string v2, "8K_video_fps"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attr_value"

    .line 3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "attr_module_name"

    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "off"

    :goto_0
    const-string p1, "attr_video_ratio_movie"

    .line 7
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_video_common_click"

    .line 8
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAIAudio(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_ai_audio"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_video_common_click"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAISceneChanged(IILandroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const p0, 0x7f030003

    .line 2
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    if-ltz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "unspecified"

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x0

    const-string p2, "aiScene"

    .line 6
    invoke-static {p2, p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static trackAIWatermarkCapture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ai_watermark_type"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ai_watermark_key"

    .line 4
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ai_watermark_move"

    .line 5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ai_watermark_orientation"

    .line 6
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ai_watermark"

    .line 7
    invoke-static {p1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackAIWatermarkCategory(Ljava/lang/String;)V

    return-void
.end method

.method public static trackAIWatermarkCategory(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ai_watermark_category"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "ai_watermark_ai"

    .line 4
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    const-string p0, "ai_watermark_manual"

    .line 5
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p0, "ai_watermark"

    .line 6
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 7
    :catch_0
    sget-object p0, Lcom/android/camera/statistic/CameraStatUtils;->TAG:Ljava/lang/String;

    const-string v0, "NumberFormatException when parser type"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static trackAIWatermarkClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ai_watermark"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAIWatermarkKey(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ai_watermark_select"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ai_watermark"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAiAudioNew(Z)V
    .locals 2

    if-eqz p0, :cond_0

    const-string/jumbo p0, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "off"

    .line 1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_ai_audio_new"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_video_common_click"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAiAudioSingle(Z)V
    .locals 2

    if-eqz p0, :cond_0

    const-string/jumbo p0, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "off"

    .line 1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_ai_audio_single"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_video_common_click"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAiTipCard()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_asd_detect_tip"

    const-string v2, "ai_goto_id_card"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_common_tips"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAiTipDoc()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_asd_detect_tip"

    const-string v2, "ai_goto_doc"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_common_tips"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAiTipQrCode()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_asd_detect_tip"

    const-string/jumbo v2, "qrcode_detected"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_common_tips"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAmbilightCapture(IJZI)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "attr_ambilight_scene_mode"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x32

    .line 4
    invoke-static {p1, p2, p0}, Lcom/android/camera/statistic/CameraStatUtils;->round(JI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_cost_time"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    const-string/jumbo p0, "on"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "off"

    :goto_0
    const-string p1, "attr_auto_hibernation"

    .line 5
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_auto_hibernation_count"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_ambilight"

    .line 7
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAmbilightClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_ambilight"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAmbilightGenerateVideo()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_ambilight_generate_video"

    const-string/jumbo v2, "success"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_ambilight"

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAwbChanged(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa7

    if-ne p1, v0, :cond_1

    const-string p1, "M_manual_"

    goto :goto_0

    :cond_1
    const-string p1, "M_proVideo_"

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->autoWhiteBalanceToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "awb"

    .line 3
    invoke-static {p1, v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackBeautyClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v2

    const-string v3, "attr_module_name"

    if-eqz v2, :cond_1

    const-string v1, "M_idphoto"

    .line 5
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->modeIdToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "attr_mode"

    const-string/jumbo v2, "photo"

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_4

    const/16 v3, 0x620

    if-eq v2, v3, :cond_3

    const/16 v3, 0x621

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v2, "6"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 v1, 0x8

    goto :goto_1

    :pswitch_1
    const-string v2, "5"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x4

    goto :goto_1

    :pswitch_2
    const-string v2, "4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x3

    goto :goto_1

    :pswitch_3
    const-string v2, "3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x2

    goto :goto_1

    :pswitch_4
    const-string v2, "2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_5
    const-string v2, "1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v2, "12"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x7

    goto :goto_1

    :cond_3
    const-string v2, "11"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x6

    goto :goto_1

    :cond_4
    const-string v2, "9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x5

    :cond_5
    :goto_1
    const/4 p0, 0x0

    packed-switch v1, :pswitch_data_1

    move-object p1, p0

    goto :goto_2

    .line 9
    :pswitch_6
    sget-object p0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "key_body_slim"

    goto :goto_2

    .line 10
    :pswitch_7
    sget-object p0, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToValue:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "key_beauty_face"

    .line 11
    :goto_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO00o()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_beauty_mode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "attr_port"

    .line 14
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    return-void

    .line 16
    :cond_8
    invoke-static {p1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static trackBeautyInfo(ILjava/lang/String;Lcom/android/camera/fragment/beauty/BeautyValues;J)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/fragment/beauty/BeautyValues;->isFaceBeautyOn()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v1

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Oo0()Z

    move-result v2

    const-string v3, "attr_beauty_level"

    if-eqz v2, :cond_d

    .line 5
    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_LEVEL:[Ljava/lang/String;

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v2, v6

    .line 6
    sget-object v8, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 7
    invoke-virtual {p2, v7}, Lcom/android/camera/fragment/beauty/BeautyValues;->getValueByType(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/camera/statistic/CameraStatUtils;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "front"

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "key_beauty"

    if-eqz p1, :cond_9

    .line 9
    invoke-virtual {p2}, Lcom/android/camera/fragment/beauty/BeautyValues;->isFaceBeautyOn()Z

    move-result p1

    if-eqz p1, :cond_c

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isBeautyModeDependTsVersion()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_TRUESIGHT:[Ljava/lang/String;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_FRONT_REMODELING:[Ljava/lang/String;

    .line 11
    :goto_1
    array-length v4, p1

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_6

    aget-object v7, p1, v6

    .line 12
    sget-object v8, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 13
    invoke-virtual {p2, v7}, Lcom/android/camera/fragment/beauty/BeautyValues;->getValueByType(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/camera/statistic/CameraStatUtils;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 14
    :cond_6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO00o()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyMode()Ljava/lang/String;

    move-result-object p1

    const-string v4, "attr_beauty_mode"

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v1, :cond_c

    .line 16
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isNewMakeupsDependBeautyVersion()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 17
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMakeupsType()Ljava/lang/String;

    move-result-object p1

    .line 18
    sget-object v1, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 19
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSkinColorType()Ljava/lang/String;

    move-result-object p1

    .line 21
    sget-object v1, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_c

    .line 22
    invoke-static {v5}, Lcom/android/camera/statistic/CameraStatUtils;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 23
    :cond_9
    invoke-virtual {p2}, Lcom/android/camera/fragment/beauty/BeautyValues;->isBeautyBodyOn()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 24
    sget-object p1, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_BACK_FIGURE:[Ljava/lang/String;

    array-length v1, p1

    :goto_3
    if-ge v5, v1, :cond_b

    aget-object v2, p1, v5

    .line 25
    sget-object v4, Lcom/android/camera/statistic/CameraStatUtils;->sBeautyTypeToName:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 26
    invoke-virtual {p2, v2}, Lcom/android/camera/fragment/beauty/BeautyValues;->getValueByType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/statistic/CameraStatUtils;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    const-string v2, "key_body_slim"

    :cond_c
    :goto_4
    if-eqz p2, :cond_e

    .line 27
    iget p1, p2, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 28
    :cond_d
    iget p1, p2, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    .line 29
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "attr_slim_face"

    .line 30
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget p1, p2, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyEnlargeEye:I

    .line 32
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "attr_enlarge_eye"

    .line 33
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget p1, p2, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinColor:I

    .line 35
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "attr_skin_color"

    .line 36
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget p1, p2, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    .line 38
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "attr_skin_smooth"

    .line 39
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p1, p2, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautyLevel:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "key_beauty_old"

    .line 41
    :cond_e
    :goto_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_count"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_time_stamp"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {v2, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackBeautySwitchChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_beauty_level"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_beauty_click"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackBroadcastKillService()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_feature_name"

    const-string v2, "camera_broadcast_kill_service"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_camera_exception"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCTADialogAgree()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_cta_agree"

    const-string v2, "accept"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_cta_dialog_agree"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCTADialogDisagree()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_cta_disagree"

    const-string/jumbo v2, "reject"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_cta_dialog_disagree"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCallerControl(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->isUseFrontCamera()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x0

    const-string v0, "camera_caller"

    .line 3
    invoke-static {v0, p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static trackCameraError(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_error_msg"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "attr_feature_name"

    const-string v1, "camera_hardware_error"

    .line 3
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_camera_exception"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCameraErrorDialogShow()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_feature_name"

    const-string v2, "camera_error_dialog_show"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_camera_exception"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCameraThermal()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/camera/statistic/CameraStatUtils;->mFirstThermalResultArrived:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/camera/statistic/CameraStatUtils;->mFirstThermalResult:I

    if-eqz v0, :cond_1

    sget v0, Lcom/android/camera/statistic/CameraStatUtils;->mMaxThermalResult:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget v1, Lcom/android/camera/statistic/CameraStatUtils;->mMaxThermalResult:I

    div-int/lit16 v2, v1, 0x3e8

    .line 4
    sget v3, Lcom/android/camera/statistic/CameraStatUtils;->mFirstThermalResult:I

    sub-int/2addr v1, v3

    div-int/lit16 v1, v1, 0x3e8

    const/16 v3, 0x19

    const/16 v4, 0x35

    .line 5
    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "attr_thermal_result_max"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, -0x1c

    const/16 v3, 0x1c

    .line 6
    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->clamp(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "attr_thermal_result_differ"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_thermal_result"

    .line 7
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static trackCapturePortrait(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0O0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBeautyLensOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->readFNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr_bokeh_ratio"

    .line 4
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "on"

    const-string/jumbo v2, "off"

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    const-string v3, "attr_whole_body"

    .line 6
    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPortraitLightingPattern()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "attr_portrait_lighting"

    .line 9
    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "attr_mode"

    const-string/jumbo v3, "photo"

    .line 10
    invoke-interface {p0, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedBeautyLens()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyLens()Ljava/lang/String;

    move-result-object v0

    const-string v3, "attr_beauty_lens_id"

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/16 v0, 0xa3

    .line 13
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "attr_ai_shutter"

    goto :goto_1

    :cond_5
    const-string v3, "attr_predictive_shutter"

    .line 14
    :goto_1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiShutterOn(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, v2

    .line 15
    :goto_2
    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "M_portrait_"

    .line 16
    invoke-static {v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleCaptureEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCaptureSuperNight(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v0, "M_superNight_"

    .line 2
    invoke-static {v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleCaptureEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCaptureSuperNightVideo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v0, "M_superNight_"

    .line 2
    invoke-static {v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleRecordEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackClickScanner(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_scanner_click"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCloneCaptureHint(Lcom/xiaomi/fenshen/FenShenCam$Mode;Lcom/xiaomi/fenshen/FenShenCam$Message;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/android/camera/statistic/CameraStatUtils$1;->$SwitchMap$com$xiaomi$fenshen$FenShenCam$Message:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "TOO_MUCH_MOVEMENT"

    goto :goto_0

    :cond_1
    const-string p1, "NO_SUBJECT"

    goto :goto_0

    :cond_2
    const-string p1, "RETURN_ORIGINAL_POSITION"

    .line 3
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 4
    :cond_3
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v1, :cond_4

    const-string p0, "attr_clone_photo_capture_hint"

    .line 5
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_4
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v1, :cond_5

    const-string p0, "attr_clone_video_capture_hint"

    .line 7
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_5
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v1, :cond_6

    const-string p0, "attr_freeze_frame_capture_hint"

    .line 9
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_6
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v1, :cond_7

    const-string p0, "attr_time_freeze_capture_hint"

    .line 11
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "key_clone"

    .line 13
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_8
    return-void
.end method

.method public static trackCloneCaptureParams(Lcom/xiaomi/fenshen/FenShenCam$Mode;ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const-string v2, "attr_clone_capture_mode"

    if-ne p0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_photo_subject_count"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_video_duration"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v1, :cond_2

    const-string p0, "FREEZE_FRAME"

    .line 9
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "attr_freeze_frame_video_duration"

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_freeze_frame_subject_count"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    const-string p0, "key_clone"

    .line 12
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCloneClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_clone"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCloneTemplateThumbnailClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_photo_subject_count_template_click"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_clone"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCommonModeFull()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_common_mode_full"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_camera_mode_edit"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEventSimple(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackDirectionChanged(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const-string/jumbo p0, "unknown"

    goto :goto_0

    :cond_1
    const-string p0, "T2B"

    goto :goto_0

    :cond_2
    const-string p0, "B2T"

    goto :goto_0

    :cond_3
    const-string p0, "R2L"

    goto :goto_0

    :cond_4
    const-string p0, "L2R"

    :goto_0
    const-string v0, "M_panorama_"

    const-string/jumbo v1, "panorama_direction"

    .line 2
    invoke-static {v0, v1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackDirectionToggle(Z)V
    .locals 2

    if-eqz p0, :cond_0

    const-string/jumbo p0, "panorama_toggle_vertical"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "panorama_toggle_horizontal"

    :goto_0
    const-string v0, "M_panorama_"

    const-string/jumbo v1, "panorama_toggle_v_h"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackDocumentDetectBlurHintShow()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_asd_detect_tip"

    const-string v2, "asd_document_blur_tip"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_common_tips"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackDocumentModeChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "value_document_mode"

    .line 2
    invoke-static {v1, p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static trackDollyZoomClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_film_dolly_zoom"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackDollyZoomRecordingParams(ZFI)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_1

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_operate_exception_zoom_value"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_operate_normal_zoom_value"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-lez p2, :cond_2

    .line 5
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_operate_recording_time_value"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p0, "key_film_dolly_zoom"

    .line 6
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackDualVideoCommonAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHeadSetState()Z

    move-result p0

    const-string/jumbo p1, "on"

    const-string/jumbo v2, "off"

    if-eqz p0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    const-string v3, "attr_pro_mode_headset"

    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHeadSetState()Z

    move-result p0

    if-eqz p0, :cond_1

    move-object p0, p1

    goto :goto_1

    :cond_1
    move-object p0, v2

    :goto_1
    const-string v3, "attr_pro_mode_bluetooth_earphone_video"

    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKaraokeState()Z

    move-result p0

    if-eqz p0, :cond_2

    move-object p0, p1

    goto :goto_2

    :cond_2
    move-object p0, v2

    :goto_2
    const-string v3, "attr_pro_mode_karaoke"

    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKaraokeState()Z

    move-result p0

    if-eqz p0, :cond_3

    move-object p0, p1

    goto :goto_3

    :cond_3
    move-object p0, v2

    :goto_3
    const-string v3, "attr_pro_mode_karaoke_video"

    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiNoiseReductionState()Z

    move-result p0

    if-eqz p0, :cond_4

    move-object p0, p1

    goto :goto_4

    :cond_4
    move-object p0, v2

    :goto_4
    const-string v3, "attr_pro_mode_ai_noise_reduction"

    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiNoiseReductionState()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    move-object p1, v2

    :goto_5
    const-string p0, "attr_pro_mode_ai_noise_reduction_video"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_video_common_click"

    .line 10
    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleMistatsEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->isMultiCameraDualVideo()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "key_multi_camera_dual_video"

    .line 12
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_6

    :cond_6
    const-string p0, "key_front_back"

    .line 13
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    :goto_6
    return-void
.end method

.method public static trackDualVideoCommonClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->isMultiCameraDualVideo()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "key_multi_camera_dual_video"

    .line 5
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const-string p0, "key_front_back"

    .line 6
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public static trackDualWaterMarkChanged(Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "attr_watermark_device"

    invoke-static {v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackDualZoomChanged(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v1

    const-string v2, "attr_module_name"

    if-eqz v1, :cond_1

    const-string p0, "M_idphoto"

    .line 4
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p0, "attr_zoom_ratio"

    .line 6
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-boolean p0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz p0, :cond_2

    const-string p0, "attr_SAT_ratio"

    .line 8
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p0, "attr_zoom_adjusted_mode"

    const-string p1, "click"

    .line 9
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_zoom"

    .line 10
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEVChanged(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa7

    if-ne p1, v0, :cond_1

    const-string p1, "M_manual_"

    goto :goto_0

    :cond_1
    const-string p1, "M_proVideo_"

    :goto_0
    const-string v0, "exposureValue"

    .line 2
    invoke-static {p1, v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackEnterMoreMode(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_enter_more_mode_type"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_camera_more_mode"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEventSimple(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEvAdjusted(F)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v0, "ev_adjusted"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static trackExposureTimeChanged(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa7

    if-ne p1, v0, :cond_1

    const-string p1, "M_manual_"

    goto :goto_0

    :cond_1
    const-string p1, "M_proVideo_"

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->exposureTimeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "exposureTime"

    .line 3
    invoke-static {p1, v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackFeatureAutoDownloadSelect(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "key_feature_auto_download_confirm"

    goto :goto_0

    :cond_0
    const-string p0, "key_feature_auto_download_cancel"

    :goto_0
    const-string v1, "attr_operate_state"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_feature_auto_download_dialog"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEventSimple(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFeatureInstallError(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_feature_install_error"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_feature"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFeatureInstallOperation(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_feature"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFeatureInstallResult(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_feature_install_result"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_feature"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFeatureInstallStartClick(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_feature_name_version"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_feature_install_from"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_feature_install_use_wifi"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_feature"

    .line 5
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFilmDollyZoomClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_dolly_zoom"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "attr_operate_state"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_film_dolly_zoom"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFilmDreamClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_dream"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "attr_operate_state"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_film_dream"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFilmStartClick(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_film_template_name"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string p1, "attr_film_click_template_preview"

    .line 3
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_film"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFilmTemplateThumbnailClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_film_template_name"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_film"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFilmTimeFreezeClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_time_freeze"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "attr_operate_state"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_film_dream"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFilmTimeFreezeRecord(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    const-string/jumbo v2, "value_time_freeze_start_record"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string/jumbo p0, "on"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "off"

    :goto_0
    const-string v1, "attr_time_freeze_before_recording"

    .line 4
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_film_dream"

    .line 5
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFilterChanged(IZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "key_filter_changed"

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->filterIdToName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "click"

    .line 3
    invoke-static {v0, p0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->featureTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->filterIdToName(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "slide"

    .line 5
    invoke-static {v0, p0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->featureTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static trackFlashChanged(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->flashModeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "attr_flash_mode"

    invoke-static {v0, p0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static trackFocusPositionChanged(II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa7

    if-ne p1, v0, :cond_1

    const-string p1, "M_manual_"

    goto :goto_0

    :cond_1
    const-string p1, "M_proVideo_"

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->focusPositionToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "focus_position"

    .line 3
    invoke-static {p1, v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackGeneralInfo(Ljava/util/Map;ZZIIZILcom/android/camera/fragment/beauty/BeautyValues;Lcom/android/camera/MutexModeManager;Ljava/lang/String;)V
    .locals 14

    move/from16 v0, p3

    move/from16 v1, p5

    move-object/from16 v2, p9

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    if-nez p0, :cond_0

    .line 3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object v5, p0

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v6

    const-string v7, "attr_module_name"

    if-eqz v6, :cond_1

    const-string v6, "M_idphoto"

    .line 5
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/camera/statistic/CameraStatUtils;->modeIdToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_1
    invoke-static/range {p4 .. p4}, Lcom/android/camera/statistic/CameraStatUtils;->triggerModeToName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "attr_trigger_mode"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "0"

    if-nez p1, :cond_2

    .line 8
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 9
    invoke-virtual {v7, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v6

    .line 10
    :goto_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v8

    const/4 v9, 0x0

    const-string/jumbo v10, "pref_camera_referenceline_key"

    invoke-virtual {v8, v10, v9}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 11
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    if-eqz v8, :cond_3

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v8

    const-string/jumbo v10, "pref_camera_referenceline_type_key"

    const-string v11, "jiugongge"

    invoke-virtual {v8, v10, v11}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_3
    const-string v8, "attr_reference_line"

    .line 13
    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "attr_timer"

    .line 14
    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "null"

    const-string v8, "close"

    const-string v10, "not_null"

    if-eqz p2, :cond_4

    move-object v11, v10

    goto :goto_3

    .line 15
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v11, v7

    goto :goto_3

    :cond_5
    move-object v11, v8

    :goto_3
    const-string v12, "attr_save_location"

    .line 16
    invoke-interface {v5, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 18
    invoke-virtual {v11, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v11

    if-eqz p1, :cond_6

    const-string v13, "2"

    .line 19
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_4

    :cond_6
    move-object v6, v11

    :cond_7
    :goto_4
    const-string v11, "attr_flash_mode"

    if-eqz v2, :cond_8

    .line 20
    invoke-interface {v5, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 21
    :cond_8
    invoke-static {v6}, Lcom/android/camera/statistic/CameraStatUtils;->flashModeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :goto_5
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/camera/effect/EffectController;->getEffectForSaving(Z)I

    move-result v2

    if-eqz p1, :cond_9

    const-string v2, "none"

    goto :goto_6

    .line 23
    :cond_9
    invoke-static {v2}, Lcom/android/camera/statistic/CameraStatUtils;->filterIdToName(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    const-string v6, "attr_filter"

    .line 24
    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "off"

    const-string/jumbo v6, "on"

    if-eqz p7, :cond_d

    const-string v11, "female"

    .line 25
    invoke-static {v11}, Lcom/android/camera/CameraSettings;->isUseNewBeautyMode(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string/jumbo v11, "on_female"

    goto :goto_7

    :cond_a
    const-string v11, "male"

    .line 26
    invoke-static {v11}, Lcom/android/camera/CameraSettings;->isUseNewBeautyMode(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string/jumbo v11, "on_male"

    goto :goto_7

    :cond_b
    move-object v11, v6

    :goto_7
    if-nez p1, :cond_c

    .line 27
    invoke-virtual/range {p7 .. p7}, Lcom/android/camera/fragment/beauty/BeautyValues;->isFaceBeautyOn()Z

    move-result v13

    if-eqz v13, :cond_c

    goto :goto_8

    :cond_c
    move-object v11, v2

    :goto_8
    const-string v13, "attr_beauty_switch"

    .line 28
    invoke-interface {v5, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_d
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "attr_picture_ration"

    invoke-interface {v5, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {v1, v5}, Lcom/android/camera/statistic/CameraStatUtils;->addUltraPixelParameter(ZLjava/util/Map;)V

    .line 31
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "attr_quality"

    invoke-interface {v5, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_11

    .line 32
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 33
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v1, v6

    goto :goto_9

    :cond_e
    move-object v1, v2

    :goto_9
    const-string v11, "attr_palm_shutter"

    .line 34
    invoke-interface {v5, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_f
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixelPortrait()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 36
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, v6

    goto :goto_a

    :cond_10
    move-object v1, v2

    :goto_a
    const-string v11, "attr_ultrapixel_portrait"

    .line 37
    invoke-interface {v5, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_11
    move/from16 v1, p6

    .line 38
    invoke-static {v1, v0, v5}, Lcom/android/camera/statistic/CameraStatUtils;->trackSatState(IILjava/util/Map;)V

    .line 39
    :cond_12
    :goto_b
    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v1

    .line 40
    invoke-static {v1}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v11, "attr_zoom_ratio"

    invoke-interface {v5, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_15

    if-eqz p8, :cond_15

    .line 41
    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v1

    .line 42
    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 43
    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v11, "auto"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    if-eqz v1, :cond_13

    const-string v1, "auto-on"

    goto :goto_c

    :cond_13
    const-string v1, "auto-off"

    goto :goto_c

    :cond_14
    if-eqz v1, :cond_15

    move-object v1, v6

    goto :goto_c

    :cond_15
    move-object v1, v2

    :goto_c
    const-string v4, "attr_HDR"

    .line 44
    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_16

    move-object v7, v10

    goto :goto_d

    .line 45
    :cond_16
    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_d

    :cond_17
    move-object v7, v8

    .line 46
    :goto_d
    invoke-interface {v5, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_19

    .line 47
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 48
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string/jumbo v1, "pro_color_on"

    goto :goto_e

    :cond_18
    const-string/jumbo v1, "pro_color_off"

    :goto_e
    const-string v3, "attr_pro_color_state"

    .line 49
    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    if-nez p1, :cond_1a

    .line 50
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object v1, v6

    goto :goto_f

    :cond_1a
    move-object v1, v2

    :goto_f
    const-string v3, "attr_gradiente"

    .line 51
    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1b

    .line 52
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object v1, v6

    goto :goto_10

    :cond_1b
    move-object v1, v2

    :goto_10
    const-string v3, "attr_center_mark"

    .line 53
    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v1

    if-eqz v1, :cond_1c

    move-object v1, v6

    goto :goto_11

    :cond_1c
    move-object v1, v2

    :goto_11
    const-string v3, "attr_watermark_time"

    .line 55
    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCameraWaterMarkOpen()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    const/4 v9, 0x1

    :cond_1e
    if-eqz v9, :cond_1f

    move-object v1, v6

    goto :goto_12

    :cond_1f
    move-object v1, v2

    :goto_12
    const-string v3, "attr_watermark_device"

    .line 57
    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCustomWatermarkOpen()Z

    move-result v1

    if-eqz v1, :cond_20

    move-object v1, v6

    goto :goto_13

    :cond_20
    move-object v1, v2

    :goto_13
    const-string v3, "attr_watermark_custom"

    .line 59
    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_21

    move-object v0, v6

    goto :goto_14

    :cond_21
    move-object v0, v2

    :goto_14
    const-string v1, "attr_switch_macro"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o00oO()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 62
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result v0

    if-eqz v0, :cond_22

    move-object v2, v6

    :cond_22
    const-string v0, "attr_espdisplay"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    const-string v0, "key_capture"

    .line 63
    invoke-static {v0, v5}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackGoogleLensOobeContinue(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "accept"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "reject"

    :goto_0
    const-string v1, "attr_Google_OOBE_continue_button_click"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_google_lens"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackGoogleLensPicker()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    const-string v2, "google_lens_picker"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_google_lens"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackGoogleLensPickerValue(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "google_lens"

    goto :goto_0

    :cond_0
    const-string p0, "lock_AE/AF"

    :goto_0
    const-string v1, "attr_longPress_preview_dialog_pick"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_google_lens"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackGoogleLensTouchAndHold()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    const-string v2, "google_lens_touch_and_hold"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_google_lens"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackGotoGallery(I)V
    .locals 1

    const/4 p0, 0x0

    const-string v0, "goto_gallery"

    .line 1
    invoke-static {v0, p0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static trackGotoIDCard()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "goto_id_card"

    .line 1
    invoke-static {v1, v0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static trackGotoSettings(I)V
    .locals 1

    const/4 p0, 0x0

    const-string v0, "goto_settings"

    .line 1
    invoke-static {v0, p0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static trackHdrChanged(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    const-string v0, "attr_HDR"

    .line 2
    invoke-static {v0, p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static trackIdPhoto(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "front"

    goto :goto_0

    :cond_0
    const-string v0, "back"

    :goto_0
    const-string v1, "attr_sensor_id"

    .line 2
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    const/16 v2, 0xa3

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "attr_timer"

    .line 7
    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "0"

    .line 10
    :goto_1
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->flashModeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr_flash_mode"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->getEffectForSaving(Z)I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->filterIdToName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr_filter"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    .line 14
    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr_zoom_ratio"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "M_idphoto"

    .line 15
    invoke-static {v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleCaptureEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackInterruptionNetwork()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "subtitle_network_interruption"

    const-string v2, "attr_video_subtitle"

    .line 2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_video_common_click"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackIntoBluetoothSco()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "attr_bluetooth_sco"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_video_common_click"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackIsoChanged(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa7

    if-ne p1, v0, :cond_1

    const-string p1, "M_manual_"

    goto :goto_0

    :cond_1
    const-string p1, "M_proVideo_"

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->isoToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "iso"

    .line 3
    invoke-static {p1, v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackKaleidoscopeClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "M_miLive_"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackKaleidoscopeValue(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_mi_live_kaleidoscope_name"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "M_miLive_"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackLensChanged(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa7

    if-ne p1, v0, :cond_1

    const-string p1, "M_manual_"

    goto :goto_0

    :cond_1
    const-string p1, "M_proVideo_"

    :goto_0
    const-string v0, "lens"

    .line 2
    invoke-static {p1, v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackLightingChanged(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "M_portrait_"

    const-string/jumbo v0, "portrait_lighting"

    .line 2
    invoke-static {p0, v0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackLiveBeautyCounter(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const-string v2, "key_live_shrink_face_ratio"

    if-ne v2, p0, :cond_1

    const-string v1, "live_shrink_face_ratio"

    goto :goto_0

    :cond_1
    const-string v2, "key_live_enlarge_eye_ratio"

    if-ne v2, p0, :cond_2

    const-string v1, "live_enlarge_eye_ratio"

    goto :goto_0

    :cond_2
    const-string v2, "key_live_smooth_strength"

    if-ne v2, p0, :cond_3

    const-string v1, "live_smooth_ratio"

    goto :goto_0

    :cond_3
    const-string v2, "RESET"

    if-ne v2, p0, :cond_4

    const-string/jumbo v1, "reset"

    .line 2
    :cond_4
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-void

    :cond_5
    const-string p0, "attr_live_beauty_port"

    .line 3
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_live_beauty"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackLiveClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "M_liveDouyin_"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackLiveRecordingParams(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIZ)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "on"

    const-string/jumbo v2, "off"

    if-eqz p0, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    const-string v4, "attr_live_music_on"

    .line 3
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_2

    const-string v3, "attr_live_music_name"

    move-object v4, p1

    .line 4
    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_3

    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    const-string v4, "attr_filter_segment_on"

    .line 5
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    const-string v3, "attr_filter_name"

    move-object v4, p3

    .line 6
    invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p4, :cond_5

    move-object v3, v1

    goto :goto_2

    :cond_5
    move-object v3, v2

    :goto_2
    const-string v4, "attr_sticker_segment_on"

    .line 7
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_6

    const-string v3, "attr_live_sticker_name"

    move-object v4, p5

    .line 8
    invoke-interface {v0, v3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v3, "attr_live_speed_level"

    move-object v4, p6

    .line 9
    invoke-interface {v0, v3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p7, :cond_7

    goto :goto_3

    :cond_7
    move-object v1, v2

    :goto_3
    const-string v2, "attr_live_beauty_segment_on"

    .line 10
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p8}, Lcom/android/camera/statistic/CameraStatUtils;->divideTo10Section(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_shrink_face_ratio"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p9}, Lcom/android/camera/statistic/CameraStatUtils;->divideTo10Section(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_enlarge_eye_ratio"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p10}, Lcom/android/camera/statistic/CameraStatUtils;->divideTo10Section(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_smooth_ratio"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->videoQualityToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_quality"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_live_video_segment"

    .line 15
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackLiveStickerDownload(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_live_sticker_name"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string/jumbo p0, "success"

    goto :goto_0

    :cond_1
    const-string p0, "failed"

    :goto_0
    const-string p1, "attr_live_download"

    .line 4
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "M_liveDouyin_"

    .line 5
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackLiveStickerMore(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_1

    const-string p0, "market"

    goto :goto_0

    :cond_1
    const-string p0, "live_app"

    :goto_0
    const-string v1, "attr_to"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_see_more"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackLiveVideoParams(IFZZZ)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "on"

    const-string/jumbo v2, "off"

    if-eqz p2, :cond_1

    move-object p2, v1

    goto :goto_0

    :cond_1
    move-object p2, v2

    :goto_0
    const-string v3, "attr_filter_on"

    .line 3
    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    move-object p2, v1

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_1
    const-string p3, "attr_sticker_on"

    .line 4
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    const-string p2, "attr_beauty_on"

    .line 5
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "attr_record_segments"

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    float-to-int p0, p1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_record_time"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_live_video_complete"

    .line 8
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackLongPressDialogSelect(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_lp_dialog"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEventSimple(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackLongPressRecord()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_long_press_record"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackLostCount(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "lost_more_10"

    :goto_0
    const-string v1, "attr_tracking_lost_object"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_auto_zoom"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackLyingDirectPictureTaken(Ljava/util/Map;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_1

    .line 1
    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    :cond_1
    rem-int/lit16 v0, v0, 0x168

    add-int/lit16 v0, v0, 0x168

    :goto_0
    rsub-int v0, v0, 0x168

    .line 2
    rem-int/lit16 v0, v0, 0x168

    .line 3
    rem-int/lit8 p1, p1, 0x2

    const-string v1, "attr_lying_direct"

    if-nez p1, :cond_2

    const-string p1, "none"

    .line 4
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public static trackLyingDirectShow(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "attr_lying_direct"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_common_tips"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackMacroModeTaken(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getBogusCameraId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Util;->getZoomRatioText(F)Ljava/lang/String;

    move-result-object v0

    const-string v2, "attr_focus_position"

    .line 5
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "on"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "off"

    .line 6
    :goto_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0o0oO()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "attr_standlone_macroMode"

    .line 7
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v2, "attr_macro_mode"

    .line 8
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v0, 0x0

    const/16 v2, 0xa2

    if-eq p0, v2, :cond_4

    const/16 v2, 0xa3

    if-eq p0, v2, :cond_3

    const/16 v2, 0xa9

    if-eq p0, v2, :cond_4

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "photo"

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "video"

    :goto_2
    const-string p0, "attr_mode"

    .line 9
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_macro_mode"

    .line 10
    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackManuallyResetClick()V
    .locals 3

    const/16 v0, 0xa7

    const-string/jumbo v1, "reset_params_click"

    const-string v2, "none"

    .line 1
    invoke-static {v0, v1, v2}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackManuallyResetDialogCancel()V
    .locals 3

    const/16 v0, 0xa7

    const-string/jumbo v1, "reset_params_click"

    const-string/jumbo v2, "off"

    .line 1
    invoke-static {v0, v1, v2}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackManuallyResetDialogOk()V
    .locals 3

    const/16 v0, 0xa7

    const-string/jumbo v1, "reset_params_click"

    const-string/jumbo v2, "on"

    .line 1
    invoke-static {v0, v1, v2}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackManuallyResetPictureStyle()V
    .locals 3

    const/16 v0, 0xa7

    const-string/jumbo v1, "reset_picturestyle_click"

    const-string v2, "none"

    .line 1
    invoke-static {v0, v1, v2}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackManuallyResetShow()V
    .locals 3

    const/16 v0, 0xa7

    const-string/jumbo v1, "reset_params_show"

    const-string v2, "none"

    .line 1
    invoke-static {v0, v1, v2}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackMeterClick()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "meter_icon_click"

    invoke-static {v2, v0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static trackMiLiveBeautyCounter(Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "key_live_enlarge_eye_ratio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v4

    goto :goto_0

    :sswitch_1
    const-string v1, "key_live_shrink_face_ratio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const-string v1, "RESET"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_3
    const-string v1, "key_live_smooth_strength"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v3

    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "mi_live_click_beauty_reset"

    .line 2
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p0, "mi_live_click_smooth"

    .line 3
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p0, "mi_live_click_enlarge_eye"

    .line 4
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string p0, "mi_live_click_shrink_face"

    .line 5
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7dcb43c1 -> :sswitch_3
        0x4a4252f -> :sswitch_2
        0xa78ecec -> :sswitch_1
        0x699265fd -> :sswitch_0
    .end sparse-switch
.end method

.method public static trackMiLiveClick(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "M_miLive_"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHeadSetState()Z

    move-result v0

    const-string/jumbo v1, "on"

    const-string/jumbo v2, "off"

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    const-string v3, "attr_pro_mode_headset"

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHeadSetState()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    const-string v3, "attr_pro_mode_bluetooth_earphone_video"

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKaraokeState()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    const-string v3, "attr_pro_mode_karaoke"

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKaraokeState()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_3
    const-string v3, "attr_pro_mode_karaoke_video"

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiNoiseReductionState()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    goto :goto_4

    :cond_5
    move-object v0, v2

    :goto_4
    const-string v3, "attr_pro_mode_ai_noise_reduction"

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiNoiseReductionState()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    const-string v0, "attr_pro_mode_ai_noise_reduction_video"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_video_common_click"

    .line 12
    invoke-static {v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackMiLiveRecordingParams(ILjava/lang/String;IIZLcom/android/camera/fragment/beauty/BeautyValues;ILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/android/camera/statistic/CameraStatUtils;->videoQualityToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    const-string v1, "attr_mi_live_quality"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    const-string p6, "front"

    goto :goto_0

    :cond_1
    const-string p6, "back"

    :goto_0
    const-string v1, "attr_mi_live_facing"

    .line 4
    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p6, "attr_mi_live_segment_count"

    invoke-interface {v0, p6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string p6, "none"

    if-eqz p0, :cond_2

    move-object p1, p6

    :cond_2
    const-string p0, "attr_mi_live_music_name"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;

    move-result-object p1

    const/16 v1, 0xb7

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "S"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_mi_live_time"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget p0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne p2, p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/android/camera/statistic/CameraStatUtils;->filterIdToName(I)Ljava/lang/String;

    move-result-object p6

    :goto_1
    const-string p0, "attr_mi_live_filter_name"

    invoke-interface {v0, p0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p3}, Lcom/android/camera/statistic/CameraStatUtils;->speedIdToName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_mi_live_speed"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p5}, Lcom/android/camera/fragment/beauty/BeautyValues;->isFaceBeautyOn()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string/jumbo p0, "on"

    goto :goto_2

    :cond_4
    const-string/jumbo p0, "off"

    :goto_2
    const-string p1, "attr_mi_live_beauty_on"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p0, Lcom/android/camera/statistic/CameraStatUtils;->sMiLiveBeautyTypeToName:Ljava/util/HashMap;

    const-string/jumbo p1, "pref_beautify_skin_smooth_ratio_key"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_5

    .line 14
    invoke-virtual {p5, p1}, Lcom/android/camera/fragment/beauty/BeautyValues;->getValueByType(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 p0, 0x0

    if-eqz p4, :cond_7

    .line 15
    sget-object p1, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_MI_LIVE:[Ljava/lang/String;

    array-length p2, p1

    :goto_3
    if-ge p0, p2, :cond_9

    aget-object p3, p1, p0

    .line 16
    sget-object p4, Lcom/android/camera/statistic/CameraStatUtils;->sMiLiveBeautyTypeToName:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-eqz p4, :cond_6

    .line 17
    invoke-virtual {p5, p3}, Lcom/android/camera/fragment/beauty/BeautyValues;->getValueByType(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Lcom/android/camera/statistic/CameraStatUtils;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .line 18
    :cond_7
    sget-object p1, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_BACK_FIGURE:[Ljava/lang/String;

    array-length p2, p1

    :goto_4
    if-ge p0, p2, :cond_9

    aget-object p3, p1, p0

    .line 19
    sget-object p4, Lcom/android/camera/statistic/CameraStatUtils;->sMiLiveBeautyTypeToName:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-eqz p4, :cond_8

    .line 20
    invoke-virtual {p5, p3}, Lcom/android/camera/fragment/beauty/BeautyValues;->getValueByType(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Lcom/android/camera/statistic/CameraStatUtils;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_9
    const-string p0, "attr_mi_live_kaleidoscope_name"

    .line 21
    invoke-interface {v0, p0, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_mi_live_video_segment"

    .line 22
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackMimoji2CaptureOrRecord(Ljava/util/Map;Ljava/lang/String;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->flashModeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "attr_flash_mode"

    .line 3
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attr_mode"

    if-eqz p2, :cond_1

    const-string/jumbo p2, "photo"

    .line 4
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 5
    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHeadSetState()Z

    move-result v0

    const-string/jumbo v1, "off"

    const-string/jumbo v2, "on"

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    const-string v3, "attr_pro_mode_headset"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHeadSetState()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    const-string v3, "attr_pro_mode_bluetooth_earphone_video"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKaraokeState()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v2

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    const-string v3, "attr_pro_mode_karaoke"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKaraokeState()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v2

    goto :goto_3

    :cond_5
    move-object v0, v1

    :goto_3
    const-string v3, "attr_pro_mode_karaoke_video"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiNoiseReductionState()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v2

    goto :goto_4

    :cond_6
    move-object v0, v1

    :goto_4
    const-string v3, "attr_pro_mode_ai_noise_reduction"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiNoiseReductionState()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v1, v2

    :cond_7
    const-string v0, "attr_pro_mode_ai_noise_reduction_video"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_video_common_click"

    .line 12
    invoke-static {v0, p2}, Lcom/android/camera/statistic/MistatsWrapper;->moduleMistatsEvent(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p3, :cond_8

    const-string p2, "attr_bluetooth_sco"

    .line 13
    invoke-interface {p0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p2

    const-class p3, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 15
    invoke-virtual {p2, p3}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "gif"

    goto :goto_5

    :cond_9
    const-string/jumbo p2, "video"

    .line 16
    :goto_5
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    const-string p1, "M_funArMimoji2_"

    .line 17
    invoke-static {p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleMistatsEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "attr_mimoji_type"

    .line 5
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "attr_operate_state"

    .line 7
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "attr_feature_name"

    .line 9
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p0, "key_mimoji_click"

    .line 10
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackMimojiCaptureOrRecord(Ljava/util/Map;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->flashModeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "attr_flash_mode"

    .line 3
    invoke-interface {p0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attr_mode"

    if-eqz p2, :cond_1

    const-string/jumbo p2, "photo"

    .line 4
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "video"

    .line 5
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p1, "M_funArMimoji2_"

    .line 6
    invoke-static {p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleMistatsEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_feature_name"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "attr_operate_state"

    .line 4
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_mimoji_click"

    .line 5
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackMimojiCount(I)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1, v2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getAvatarPanelState()I

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "mimoji_person"

    goto :goto_1

    :cond_2
    const-string v2, "mimoji_cartoon"

    :goto_1
    const-string v4, "attr_mimoji_type"

    .line 4
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    add-int/lit8 p0, p0, -0x2

    goto :goto_2

    :cond_3
    sub-int/2addr p0, v3

    .line 5
    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "attr_mimoji_emoji_history_count"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "attr_feature_name"

    const-string v1, "key_mimoji_tab"

    .line 6
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_common"

    .line 7
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public static trackMimojiSaveGif(Ljava/lang/String;ZZZLjava/lang/String;J)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_mimoji_type"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "mimoji_gif_remove_background"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "mimoji_gif_reverse"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "mimoji_gif_speed"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "mimoji_gif_text"

    .line 7
    invoke-interface {v0, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "mimoji_gif_duration"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_mimoji_gif_save"

    .line 9
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackMimojiSavePara(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackMimojiTrigger(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_mimoji_extra_scene_trigger"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_mimoji_click"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackModeEditClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "edit_mode"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEventSimple(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackModeEditInfo()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getFavoriteModeCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getSortModes()[I

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    .line 4
    array-length v5, v1

    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    .line 5
    sget-object v4, Lcom/android/camera/statistic/CameraStatUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trackModeEdit commonModesCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trackModeEdit commonModes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trackModeEdit moreModes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    array-length v4, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "attr_common_mode_count_after_edit"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "attr_more_mode_count_after_edit"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "key_camera_mode_edit"

    .line 11
    invoke-static {v4, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEventSimple(Ljava/lang/String;Ljava/util/Map;)V

    .line 12
    array-length v0, v3

    move v4, v2

    :goto_0
    const-string v5, "attr_module_name"

    if-ge v4, v0, :cond_2

    aget v6, v3, v4

    .line 13
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v6, "M_idphoto"

    .line 15
    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {v6}, Lcom/android/camera/statistic/CameraStatUtils;->modeIdToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v5, "key_common_modes_after_edit"

    .line 17
    invoke-static {v5, v7}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEventSimple(Ljava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    :cond_2
    array-length v0, v1

    :goto_2
    if-ge v2, v0, :cond_3

    aget v3, v1, v2

    .line 19
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 20
    invoke-static {v3}, Lcom/android/camera/statistic/CameraStatUtils;->modeIdToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "key_more_modes_after_edit"

    .line 21
    invoke-static {v3, v4}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEventSimple(Ljava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static trackModeSwitch()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->modeIdToName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "target_mode"

    .line 3
    invoke-static {v2, v0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trackMoonMode(Ljava/util/Map;ZZ)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "in_moon_mode"

    goto :goto_0

    :cond_2
    const-string p1, "in_night_mode"

    :goto_0
    const-string p2, "attr_night_moon_mode"

    .line 2
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xbc

    .line 3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attr_zoom_ratio"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static trackMultiCameraDualVideo(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOO()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_1

    const-string v1, "attr_video_duration"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "attr_record_type"

    .line 4
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-ltz p2, :cond_3

    .line 5
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_record_paused"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-ltz p3, :cond_4

    .line 6
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_record_resume"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-ltz p4, :cond_5

    .line 7
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_record_capture"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "key_multi_camera_dual_video"

    .line 9
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_6
    return-void
.end method

.method public static trackMultiWindowCamera()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_feature_name"

    const-string/jumbo v2, "open_multi_window_camera"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_common"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackNewSlowMotionVideoRecorded(Ljava/lang/String;IIIJ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_sensor_id"

    const-string v2, "back"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attr_video_mode"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->slowMotionQualityIdToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_quality"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    const-string/jumbo p0, "torch"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "off"

    :goto_0
    const-string p1, "attr_flash_mode"

    .line 5
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_video_fps"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_video_time"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_slow_motion_mode"

    .line 8
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackPauseOrResumeVideoRecording(ZZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "front"

    goto :goto_0

    :cond_0
    const-string p0, "back"

    :goto_0
    const-string v1, "attr_sensor_id"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string/jumbo p0, "video_resume_recording"

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "video_pause_recording"

    :goto_1
    const-string p1, "attr_life_state"

    .line 3
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_video_common_click"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackPictureData(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 9

    if-eqz p0, :cond_5

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 5
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0000o()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    sget-object v4, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ISO_VALUE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 9
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    mul-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 11
    :cond_2
    :goto_0
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    .line 12
    sget-object v7, Lcom/android/camera/statistic/CameraStatUtils;->NS_TO_S:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v5, v7

    .line 13
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "attr_picture_iso"

    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, "attr_picture_exposure_time"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "attr_picture_f_number"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "attr_picture_focal_length"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "attr_time_stamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getSiqeType()B

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    const-string/jumbo v2, "on"

    goto :goto_2

    :cond_4
    const-string/jumbo v2, "off"

    :goto_2
    const-string v3, "attr_smartfusion"

    .line 20
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackQcomAIShutterInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/util/Map;)V

    .line 22
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "attr_picture_orientation"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_picture_save"

    .line 23
    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public static trackPictureSize(ILjava/lang/String;)V
    .locals 1

    const-string p0, "attr_picture_ration"

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static trackPictureTakenInManual(Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v0, "attr_mode"

    const-string/jumbo v1, "photo"

    .line 2
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attr_ev"

    .line 3
    invoke-interface {p0, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lcom/android/camera/statistic/CameraStatUtils;->autoWhiteBalanceToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p5, "attr_awb"

    invoke-interface {p0, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result p2

    invoke-static {p2}, Lcom/android/camera/statistic/CameraStatUtils;->focusPositionToName(I)Ljava/lang/String;

    move-result-object p2

    const-string p5, "attr_focus_position"

    .line 6
    invoke-interface {p0, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p3}, Lcom/android/camera/statistic/CameraStatUtils;->exposureTimeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "attr_et"

    invoke-interface {p0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p4}, Lcom/android/camera/statistic/CameraStatUtils;->isoToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "attr_iso"

    invoke-interface {p0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p6}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "attr_lens"

    invoke-interface {p0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/EffectController;->isNeedDrawPeaking()Z

    move-result p2

    const-string/jumbo p3, "on"

    const-string/jumbo p4, "off"

    if-eqz p2, :cond_1

    move-object p2, p3

    goto :goto_0

    :cond_1
    move-object p2, p4

    :goto_0
    const-string p5, "attr_focus_peak"

    invoke-interface {p0, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/EffectController;->isNeedDrawExposure()Z

    move-result p2

    if-eqz p2, :cond_2

    move-object p2, p3

    goto :goto_1

    :cond_2
    move-object p2, p4

    :goto_1
    const-string p5, "attr_exposure_feedback"

    invoke-interface {p0, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    const/4 p5, 0x0

    const-string/jumbo v0, "pref_camera_referenceline_key"

    invoke-virtual {p2, v0, p5}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 13
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_3

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    const-string/jumbo v0, "pref_camera_referenceline_type_key"

    const-string v1, "jiugongge"

    invoke-virtual {p2, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string p2, "attr_reference_line"

    .line 15
    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result p2

    if-eqz p2, :cond_4

    move-object p2, p3

    goto :goto_2

    :cond_4
    move-object p2, p4

    :goto_2
    const-string v0, "attr_gradiente"

    .line 17
    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move-object p3, p4

    :goto_3
    const-string p2, "attr_center_mark"

    .line 19
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p6}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result p3

    .line 21
    invoke-static {p3}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object p3

    const-string p4, "attr_zoom_ratio"

    invoke-interface {p0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object p3

    const/16 p4, 0xa7

    .line 23
    invoke-virtual {p3, p4}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result p3

    .line 24
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string v0, "attr_raw"

    invoke-interface {p0, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigMeter()Lcom/android/camera/data/data/config/ComponentConfigMeter;

    move-result-object p3

    .line 26
    invoke-virtual {p3, p4}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getTrackValue(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "attr_auto_exposure"

    .line 27
    invoke-interface {p0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "attr_count"

    invoke-interface {p0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {p7, p6, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackSatState(IILjava/util/Map;)V

    .line 30
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->addUltraPixelParameter(Ljava/util/Map;)V

    .line 31
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/android/camera/effect/EffectController;->getEffectForSaving(Z)I

    move-result p1

    .line 32
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->filterIdToName(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "attr_filter"

    invoke-interface {p0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p3, "attr_gradient"

    invoke-interface {p0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallyContrast()Lcom/android/camera/data/data/config/ComponentManuallyContrast;

    move-result-object p1

    const/16 p2, 0xa0

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallySharpness()Lcom/android/camera/data/data/config/ComponentManuallySharpness;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object p3

    .line 37
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallySaturation()Lcom/android/camera/data/data/config/ComponentManuallySaturation;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "attr_contrast"

    .line 38
    invoke-interface {p0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attr_sharpness"

    .line 39
    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attr_saturation"

    .line 40
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {p5, p0}, Lcom/android/camera/statistic/CameraStatUtils;->addUltraPixelParameter(ZLjava/util/Map;)V

    const-string p1, "M_manual_"

    .line 42
    invoke-static {p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleCaptureEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackPictureTakenInPanorama(Ljava/util/Map;Landroid/content/Context;Lcom/android/camera/fragment/beauty/BeautyValues;I)V
    .locals 1

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget p2, p2, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "attr_beauty_level"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getPanoramaMoveDirection(Landroid/content/Context;)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    const-string/jumbo p1, "unknown"

    goto :goto_0

    :cond_2
    const-string p1, "T2B"

    goto :goto_0

    :cond_3
    const-string p1, "B2T"

    goto :goto_0

    :cond_4
    const-string p1, "R2L"

    goto :goto_0

    :cond_5
    const-string p1, "L2R"

    :goto_0
    const-string p2, "attr_panorama_direction"

    .line 4
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attr_count"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attr_mode"

    const-string/jumbo p2, "photo"

    .line 6
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "M_panorama_"

    .line 7
    invoke-static {p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackPictureTakenInWideSelfie(Ljava/lang/String;Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_stop_capture_mode"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 3
    iget p0, p1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_beauty_level"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p0, "attr_mode"

    const-string/jumbo p1, "photo"

    .line 4
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "M_panorama_"

    .line 5
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackPocketModeEnter(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "attr_operate_state"

    const-string/jumbo v1, "pocket_mode_enter"

    .line 2
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_enter_fault"

    .line 3
    invoke-static {v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackPocketModeExit(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_pocket_mode_keyguard_exit"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackPocketModeSensorDelay()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_count"

    const-string v2, "1"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_pocket_mode_sensor_delay"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackProColorClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "pro_color"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackQcomAIShutterInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Ooooo00()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MI_MOTION_CAPTURE_FLICKER:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/impl/CameraMetadataNative;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr_hal_banding"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiShutterOn(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MI_MOTION_CAPTURE_TYPE1:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/impl/CameraMetadataNative;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 6
    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MI_MOTION_CAPTURE_ORIGEXP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/impl/CameraMetadataNative;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 7
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MI_MOTION_CAPTURE_GAIN:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/impl/CameraMetadataNative;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "attr_predictive_shutter_hal"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr_predictive_shutter_hal_s"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p0, :cond_3

    .line 10
    invoke-virtual {p0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "attr_predictive_shutter_hal_gain"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static trackRecordVideoInProMode(Lcom/android/camera/module/video/VideoTrackInfo;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->videoQuality()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->videoQualityToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_quality"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->frameRate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_video_fps"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attr_mode"

    const-string/jumbo v2, "video"

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->ev()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_ev"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->whiteBalance()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->autoWhiteBalanceToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_awb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->focusPositionToName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_focus_position"

    .line 8
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->exposureTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->exposureTimeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_et"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->iso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->isoToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_iso"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_lens"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isNeedDrawPeaking()Z

    move-result v1

    const-string/jumbo v2, "off"

    const-string/jumbo v3, "on"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v4, "attr_focus_peak"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isNeedDrawExposure()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v4, "attr_exposure_feedback"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const/4 v4, 0x0

    const-string/jumbo v5, "pref_camera_referenceline_key"

    invoke-virtual {v1, v5, v4}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_2

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string/jumbo v5, "pref_camera_referenceline_type_key"

    const-string v6, "jiugongge"

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string v1, "attr_reference_line"

    .line 17
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v3

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    const-string v5, "attr_gradiente"

    .line 19
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v3

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    const-string v5, "attr_center_mark"

    .line 21
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v1

    .line 23
    invoke-static {v1}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v6, "attr_zoom_ratio"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigMeter()Lcom/android/camera/data/data/config/ComponentConfigMeter;

    move-result-object v1

    const/16 v6, 0xb4

    .line 25
    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getTrackValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "attr_auto_exposure"

    .line 26
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->actualCameraId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v6

    invoke-static {v1, v6, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackSatState(IILjava/util/Map;)V

    .line 28
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->addUltraPixelParameter(Ljava/util/Map;)V

    .line 29
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/effect/EffectController;->getEffectForSaving(Z)I

    move-result v1

    .line 30
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->filterIdToName(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "attr_filter"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v4, "attr_gradient"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v3

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    const-string v4, "attr_log"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v3

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    const-string v4, "attr_histogram"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->bluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "attr_bluetooth_sco"

    .line 36
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->ismAutoHibernation()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v3

    goto :goto_6

    :cond_8
    move-object v1, v2

    :goto_6
    const-string v4, "attr_auto_hibernation"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->autoHibernationCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "attr_auto_hibernation_count"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isProVideoAudioMapOpen(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v3

    goto :goto_7

    :cond_9
    move-object v1, v2

    :goto_7
    const-string v4, "attr_audio_map"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isProVideoAudioMapOpen(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v1, v3

    goto :goto_8

    :cond_a
    move-object v1, v2

    :goto_8
    const-string v4, "attr_audio_map_video"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v1, v3

    goto :goto_9

    :cond_b
    move-object v1, v2

    :goto_9
    const-string v4, "attr_histogram_video"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHeadSetState()Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, v3

    goto :goto_a

    :cond_c
    move-object v1, v2

    :goto_a
    const-string v4, "attr_pro_mode_headset"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHeadSetState()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, v3

    goto :goto_b

    :cond_d
    move-object v1, v2

    :goto_b
    const-string v4, "attr_pro_mode_bluetooth_earphone_video"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKaraokeState()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v1, v3

    goto :goto_c

    :cond_e
    move-object v1, v2

    :goto_c
    const-string v4, "attr_pro_mode_karaoke"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKaraokeState()Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v1, v3

    goto :goto_d

    :cond_f
    move-object v1, v2

    :goto_d
    const-string v4, "attr_pro_mode_karaoke_video"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {}, Lcom/android/camera/CameraSettings;->is3DAudioOn()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "attr_video_3d_video"

    .line 47
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "attr_ai_audio_new_video"

    .line 49
    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_11
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiNoiseReductionState()Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "attr_video_intel_replace_wind_denoise_video"

    .line 51
    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 52
    :cond_12
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiNoiseReductionState()Z

    move-result p0

    if-eqz p0, :cond_13

    move-object p0, v3

    goto :goto_e

    :cond_13
    move-object p0, v2

    :goto_e
    const-string v1, "attr_pro_mode_ai_noise_reduction"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiNoiseReductionState()Z

    move-result p0

    if-eqz p0, :cond_14

    move-object v2, v3

    :cond_14
    const-string p0, "attr_pro_mode_ai_noise_reduction_video"

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    const-string p0, "M_proVideo_"

    .line 54
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleCaptureEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackRecordVideoInProMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZI)V
    .locals 1

    .line 55
    invoke-static {}, Lcom/android/camera/module/video/VideoTrackInfo;->builder()Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setWhiteBalance(Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object p0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setExposureTime(Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object p0

    .line 58
    invoke-virtual {p0, p2}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setISO(Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object p0

    .line 59
    invoke-virtual {p0, p3}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setEV(Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object p0

    .line 60
    invoke-virtual {p0, p4}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setModuleIndex(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object p0

    .line 61
    invoke-virtual {p0, p5}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setActualCameraId(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object p0

    .line 62
    invoke-virtual {p0, p6}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setIsBluetoothScoOn(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object p0

    .line 63
    invoke-virtual {p0, p7}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setAutoHibernation(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object p0

    .line 64
    invoke-virtual {p0, p8}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setAutoHibernationCount(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 65
    invoke-virtual {v0}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->build()Lcom/android/camera/module/video/VideoTrackInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRecordVideoInProMode(Lcom/android/camera/module/video/VideoTrackInfo;)V

    return-void
.end method

.method public static trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_remote_online"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackRemoteOnlineParams(Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder;->update(Ljava/util/Map;)V

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    const-string p0, "key_remote_online"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackResourceDownloadResult(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_resource_download_result"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_resource"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackResourceDownloadStart(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "attr_resource_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_resource"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSatState(IILjava/util/Map;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    const-string v1, "attr_sat_device"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->getDualZoomName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result p1

    if-ne p0, p1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_RearUltra"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result p1

    if-ne p0, p1, :cond_2

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_RearMacro"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result p1

    if-ne p0, p1, :cond_3

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_RearTele2x"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p1

    if-ne p0, p1, :cond_4

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_RearTele4x"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p1

    if-ne p0, p1, :cond_5

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_RearWide"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    return-void
.end method

.method public static trackSelectObject(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "in_recording"

    goto :goto_0

    :cond_0
    const-string p0, "before_record"

    :goto_0
    const-string v1, "attr_select_object_state"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_auto_zoom"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackShineClick()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isTopFilterEntry()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "attr_click_filter_top_button"

    .line 3
    invoke-static {v0, v1, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "attr_click_beauty_top_button"

    .line 4
    invoke-static {v0, v1, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static trackShortcutClick(Landroid/content/Intent;I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xa2

    const-string v2, "key_video_common_click"

    const/4 v3, 0x1

    if-eq p1, v1, :cond_3

    const/16 v1, 0xa3

    if-eq p1, v1, :cond_2

    const/16 p0, 0xa7

    if-eq p1, p0, :cond_1

    const/16 p0, 0xba

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "attr_shortcut_docs_mode"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v2, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "attr_shortcut_pro_mode"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v2, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->isUseFrontCamera()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-ne p1, v3, :cond_4

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "attr_shortcut_selfie_mode"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v2, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "attr_shortcut_video_mode"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v2, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static trackShowZoomBarByScroll(Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "attr_feature_name"

    const-string/jumbo v1, "show_zoom_bar_by_scroll"

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_common"

    .line 3
    invoke-static {v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSlowMotionQuality(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_video_fps"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->slowMotionQualityIdToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_video_quality"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_slow_motion_mode"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSnapInfo(Z)V
    .locals 2

    .line 1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr_module_name"

    .line 4
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_snap_camera"

    .line 5
    invoke-static {v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEventSimple(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSpeechShutterStatus(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string/jumbo p0, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "off"

    :goto_0
    const-string v1, "attr_speech_shutter_status"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_speech_shutter"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackStartAppCost(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x2710

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_feature_name"

    const-string/jumbo v2, "start_app_cost"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x32

    .line 3
    invoke-static {p0, p1, v1}, Lcom/android/camera/statistic/CameraStatUtils;->round(JI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_cost_time"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_camera_performance"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The time cost when start app is illegal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static trackSubtitle(Z)V
    .locals 2

    if-eqz p0, :cond_0

    const-string/jumbo p0, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "off"

    .line 1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_video_subtitle"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_video_common_click"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSubtitleRecordingStart()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_video_subtitle"

    const-string/jumbo v2, "subtitle_start_recording"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_video_common_click"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSuperEisPro(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "attr_feature_name"

    const-string/jumbo v1, "super_eis_pro"

    .line 2
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attr_value"

    .line 3
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key_video_common_click"

    .line 4
    invoke-static {p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSuperMoonCapture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_feature_name"

    const-string/jumbo v2, "super_moon_capture"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attr_super_moon_silhouette_key"

    .line 4
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "attr_super_moon_text_key"

    .line 5
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "attr_super_moon_has_effect"

    .line 6
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "M_superMoon_"

    .line 7
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSuperMoonClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_super_moon"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSuperMoonEffectKey(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "attr_super_moon_effect_select"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_super_moon"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSuperNightInCaptureMode(Ljava/util/Map;Z)V
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0oOO()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo p1, "on"

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "off"

    :goto_0
    const-string v0, "attr_supernight_in_M_capture_"

    .line 3
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static trackSwitchTabStyle(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_switch_tab_style"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_camera_more_mode"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEventSimple(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackTakePictureCost(JZI)V
    .locals 1

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "attr_feature_name"

    const-string/jumbo v0, "take_picture_cost"

    .line 2
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p3, 0x32

    .line 3
    invoke-static {p0, p1, p3}, Lcom/android/camera/statistic/CameraStatUtils;->round(JI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_cost_time"

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_camera_performance"

    .line 4
    invoke-static {p0, p2}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackTiltShiftChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "tiltshift"

    .line 2
    invoke-static {v1, p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static trackTimerBurst(IFIZI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "param_total_count"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "param_interval_timer"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "param_taken_count"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string/jumbo p0, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "off"

    :goto_0
    const-string p1, "attr_auto_hibernation"

    .line 5
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_auto_hibernation_count"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_timer_burst_taken"

    .line 7
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackTimerChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "attr_timer_changed"

    .line 2
    invoke-static {v1, p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static trackTriggerSubtitle()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_video_subtitle"

    const-string/jumbo v2, "trigger_subtitle"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_video_common_click"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackUserDefineWatermark()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "attr_watermark_custom"

    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackVV2Exit(ZZZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_key_vv_exit_2"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_vlog"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVV2ExitConfirm(ZZZZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_key_vv_exit_confirm_2"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_vlog"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVVClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "attr_vv_template_name"

    .line 4
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_vlog"

    .line 5
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVVRecordingParams(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "attr_vv_template_name_finish"

    .line 3
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_vlog"

    .line 4
    invoke-static {p0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVVSave(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_vv_template_name_save"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_vlog"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVVStartClick(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_vv_template_name_start"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string p1, "attr_vv_click_template_preview"

    .line 3
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_vlog"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVVTemplateThumbnailClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_vv_template_name_click"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_vlog"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVVWorkspaceClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_vlog"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVVWorkspaceDeleteConfirm(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "value_vv_click_workspace_delete_confirm"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_vlog"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVideoAiAudioNewZoom()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "attr_ai_audio_new_video_to_zoom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_video_common_click"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVideoBokehMode(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/android/camera/statistic/CameraStatUtils;->sVideoBokehTypeToName:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "attr_value"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "attr_feature_name"

    const-string v1, "key_video_bokeh_changed"

    .line 4
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "attr_trigger_mode"

    const-string v1, "click"

    .line 5
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_common"

    .line 6
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVideoCastClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_video_cast"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVideoCastParams(Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder;->update(Ljava/util/Map;)V

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    const-string p0, "key_video_cast"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVideoCommonClickB(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "off"

    .line 1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_video_common_click"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVideoModeChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/statistic/MistatsWrapper;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_video_mode"

    .line 3
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_video_common_click"

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVideoQuality(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/android/camera/statistic/CameraStatUtils;->videoQualityToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attr_video_quality"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key_video"

    .line 3
    invoke-static {p1, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackVideoRecorded(Lcom/android/camera/module/video/VideoTrackInfo;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "front"

    goto :goto_0

    :cond_0
    const-string v1, "back"

    :goto_0
    const-string v2, "attr_sensor_id"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->videoMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_video_mode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->videoQuality()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->videoQualityToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_quality"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->flashMode()I

    move-result v1

    const/4 v2, 0x2

    const-string/jumbo v3, "off"

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "torch"

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    const-string v2, "attr_flash_mode"

    .line 7
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->actualCameraId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackSatState(IILjava/util/Map;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->frameRate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_video_fps"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v1

    const/16 v2, 0xa2

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->autoZoomEnabled()Z

    move-result v1

    const-string v4, "attr_autozoom_state"

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->ultraWideEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "use_ultra"

    goto :goto_2

    :cond_2
    const-string v1, "not_ultra"

    :goto_2
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 13
    :cond_3
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :goto_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningEisPro()Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "attr_super_eis"

    .line 16
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->beautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->beautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "attr_beauty_level"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "attr_video_time"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->subtitleSupported()Z

    move-result v1

    const-string v4, "attr_subtitle_recording"

    const-string/jumbo v5, "on"

    if-eqz v1, :cond_6

    .line 22
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 23
    :cond_6
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->aIAudioTrackParams()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 25
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->aIAudioTrackParams()[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 26
    aget-object v4, v1, v4

    const-string v6, "attr_ai_audio"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    .line 27
    aget-object v1, v1, v4

    const-string v4, "attr_ai_audio_zoom"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v1

    const/16 v4, 0xb4

    const-string v6, "attr_filter"

    const-string v7, "attr_cinematic"

    if-eq v1, v4, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v1

    if-ne v1, v2, :cond_b

    .line 29
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v5

    goto :goto_5

    :cond_9
    move-object v1, v3

    .line 30
    :goto_5
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "pref_beautify_skin_smooth_ratio_key"

    .line 31
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "attr_beauty"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportMasterFilter()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 33
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoMasterFilter()I

    move-result v1

    goto :goto_6

    .line 34
    :cond_a
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v1

    .line 35
    :goto_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehRatio()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v4, "attr_bokeh"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehColorRetentionMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "attr_bokeh_mode"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_b
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, v5

    goto :goto_7

    :cond_c
    move-object v1, v3

    :goto_7
    const-string v4, "attr_gradient"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, v5

    goto :goto_8

    :cond_d
    move-object v1, v3

    :goto_8
    const-string v4, "attr_center_mark"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->bluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "attr_bluetooth_sco"

    .line 41
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->ismAutoHibernation()Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v1, v5

    goto :goto_9

    :cond_f
    move-object v1, v3

    :goto_9
    const-string v4, "attr_auto_hibernation"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->autoHibernationCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "attr_auto_hibernation_count"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v1

    if-ne v1, v2, :cond_11

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "attr_video_ai"

    .line 46
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->ismVideoHdr()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "attr_video_hdr"

    .line 48
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_11
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAiAudioSingleEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "attr_ai_audio_single_video"

    .line 50
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_12
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoTagOn()Z

    move-result v1

    if-eqz v1, :cond_13

    move-object v1, v5

    goto :goto_a

    :cond_13
    move-object v1, v3

    :goto_a
    const-string v4, "attr_video_tag"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->ismIsSuperEISEnable()Z

    move-result v1

    if-nez v1, :cond_14

    move-object v1, v5

    goto :goto_b

    :cond_14
    move-object v1, v3

    :goto_b
    const-string v4, "attr_movie_solid"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_video"

    .line 53
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->getLapseCaptureTime()I

    move-result v0

    if-lez v0, :cond_18

    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->videoMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->getLapseCaptureTime()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->timeLapseIntervalToName(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "attr_video_time_lapse_interval"

    .line 57
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo0()Z

    move-result v1

    if-nez v1, :cond_15

    .line 59
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 60
    :cond_15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 61
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object v4

    const/16 v8, 0xa0

    invoke-virtual {v4, v8}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "pref_new_video_time_lapse_duration_key"

    .line 62
    invoke-virtual {v1, v8, v4}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "attr_video_time_lapse_duration"

    .line 63
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v1

    invoke-static {v1}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v4, "attr_SAT_ratio"

    .line 65
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object v1, v5

    goto :goto_c

    :cond_16
    move-object v1, v3

    .line 68
    :goto_c
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const-string v1, "key_video_quick"

    .line 69
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    :cond_18
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result v0

    if-ne v0, v2, :cond_22

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHeadSetState()Z

    move-result v1

    if-eqz v1, :cond_19

    move-object v1, v5

    goto :goto_d

    :cond_19
    move-object v1, v3

    :goto_d
    const-string v2, "attr_pro_mode_headset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHeadSetState()Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object v1, v5

    goto :goto_e

    :cond_1a
    move-object v1, v3

    :goto_e
    const-string v2, "attr_pro_mode_bluetooth_earphone_video"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKaraokeState()Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object v1, v5

    goto :goto_f

    :cond_1b
    move-object v1, v3

    :goto_f
    const-string v2, "attr_pro_mode_karaoke"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKaraokeState()Z

    move-result v1

    if-eqz v1, :cond_1c

    move-object v1, v5

    goto :goto_10

    :cond_1c
    move-object v1, v3

    :goto_10
    const-string v2, "attr_pro_mode_karaoke_video"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/android/camera/CameraSettings;->is3DAudioOn()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "attr_video_3d_video"

    .line 77
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_1d
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoTrackInfo;->moduleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_1e

    const-string p0, "attr_ai_audio_new_video"

    .line 79
    invoke-interface {v0, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_1e
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1f

    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiNoiseReductionState()Z

    move-result p0

    if-eqz p0, :cond_1f

    const-string p0, "attr_video_intel_replace_wind_denoise_video"

    .line 81
    invoke-interface {v0, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 82
    :cond_1f
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiNoiseReductionState()Z

    move-result p0

    if-eqz p0, :cond_20

    move-object p0, v5

    goto :goto_11

    :cond_20
    move-object p0, v3

    :goto_11
    const-string v1, "attr_pro_mode_ai_noise_reduction"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiNoiseReductionState()Z

    move-result p0

    if-eqz p0, :cond_21

    move-object v3, v5

    :cond_21
    const-string p0, "attr_pro_mode_ai_noise_reduction_video"

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_12
    const-string p0, "key_video_common_click"

    .line 84
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_22
    return-void
.end method

.method public static trackVideoRecorded(ZIIZZZLjava/lang/String;IIIILcom/android/camera/fragment/beauty/BeautyValues;JZ[Ljava/lang/String;ZZIZ)V
    .locals 4

    .line 85
    invoke-static {}, Lcom/android/camera/module/video/VideoTrackInfo;->builder()Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v0

    move v1, p0

    .line 86
    invoke-virtual {v0, p0}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setIsFrontCamera(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move v2, p1

    .line 87
    invoke-virtual {v1, p1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setActualCameraId(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move v2, p2

    .line 88
    invoke-virtual {v1, p2}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setModuleIndex(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move v2, p3

    .line 89
    invoke-virtual {v1, p3}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setIsAutoZoom(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move v2, p4

    .line 90
    invoke-virtual {v1, p4}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setIsSuperEis(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move v2, p5

    .line 91
    invoke-virtual {v1, p5}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setIsUltraWide(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move-object v2, p6

    .line 92
    invoke-virtual {v1, p6}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setVideoMode(Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move v2, p7

    .line 93
    invoke-virtual {v1, p7}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setVideoQuality(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move v2, p8

    .line 94
    invoke-virtual {v1, p8}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setFlashMode(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move v2, p9

    .line 95
    invoke-virtual {v1, p9}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setFrameRate(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move v2, p10

    .line 96
    invoke-virtual {v1, p10}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setLapseCaptureTime(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move-object v2, p11

    .line 97
    invoke-virtual {v1, p11}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move-wide/from16 v2, p12

    .line 98
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setDuration(J)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move/from16 v2, p14

    .line 99
    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setSubtitleSupported(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move-object/from16 v2, p15

    .line 100
    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setAiAudioTrackParams([Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move/from16 v2, p16

    .line 101
    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setIsBluetoothScoOn(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move/from16 v2, p17

    .line 102
    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setAutoHibernation(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move/from16 v2, p18

    .line 103
    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setAutoHibernationCount(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    move/from16 v2, p19

    .line 104
    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setVideoHdr(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 105
    invoke-virtual {v0}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->build()Lcom/android/camera/module/video/VideoTrackInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoRecorded(Lcom/android/camera/module/video/VideoTrackInfo;)V

    return-void
.end method

.method public static trackVideoSnapshot(Z)V
    .locals 2

    .line 1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr_video_snapshot_count"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_video_common_click"

    .line 4
    invoke-static {v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackWithoutNetwork()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_video_subtitle"

    const-string/jumbo v2, "subtitle_start_no_network"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_video_common_click"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackZoomAdjusted(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_zoom_adjusted_mode"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string/jumbo p0, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "off"

    :goto_0
    const-string p1, "attr_in_recording"

    .line 3
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    .line 5
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result p0

    .line 6
    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result p0

    .line 7
    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_zoom_ratio"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_zoom"

    .line 8
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackZoomMapMoveWindow(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_zoom_map_move_window"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_zoom_map"

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackZoomMapRemoveWindow()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    const-string/jumbo v2, "value_zoom_map_remove_window"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_zoom_map"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackZoomMapShow()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    const-string/jumbo v2, "value_zoom_map_show_window"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_zoom_map"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackZoomValue()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40400000    # 3.0f

    move v7, v2

    :goto_0
    const/4 v8, 0x7

    if-ge v7, v8, :cond_3

    cmpg-float v9, v1, v5

    if-gez v9, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v9, 0x41700000    # 15.0f

    cmpl-float v9, v1, v9

    if-nez v9, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    cmpl-float v8, v1, v5

    if-ltz v8, :cond_2

    cmpg-float v8, v1, v6

    if-gez v8, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    const/high16 v8, 0x40000000    # 2.0f

    add-float/2addr v5, v8

    add-float/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    const-string v2, "attr_video_zoom_13x_to_15x"

    .line 5
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_1
    const-string v2, "attr_video_zoom_11x_to_13x"

    .line 6
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_2
    const-string v2, "attr_video_zoom_9x_to_11x"

    .line 7
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_3
    const-string v2, "attr_video_zoom_7x_to_9x"

    .line 8
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_4
    const-string v2, "attr_video_zoom_5x_to_7x"

    .line 9
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_5
    const-string v2, "attr_video_zoom_3x_to_5x"

    .line 10
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_6
    const-string v2, "attr_video_zoom_1x_to_3x"

    .line 11
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_7
    const-string v2, "attr_video_zoom_min_to_1x"

    .line 12
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :goto_2
    invoke-static {v1}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_video_zoom_value"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_zoom"

    .line 14
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static triggerModeToName(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->sTriggerModeIdToName:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static videoQualityToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "4k"

    return-object p0

    :cond_0
    const/4 v0, 0x6

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "1080p"

    return-object p0

    :cond_1
    const/4 v0, 0x5

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "720p"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "480p"

    return-object p0

    :cond_3
    const-string v0, "8,60"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "4k-60fps"

    return-object p0

    :cond_4
    const-string v0, "6,60"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "1080p-60fps"

    return-object p0

    :cond_5
    const-string v0, "3001"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "8k-30fps"

    return-object p0

    .line 8
    :cond_6
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected video quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "others"

    return-object p0
.end method
