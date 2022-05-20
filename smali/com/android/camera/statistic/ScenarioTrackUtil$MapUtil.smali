.class public Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;
.super Ljava/lang/Object;
.source "ScenarioTrackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/statistic/ScenarioTrackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapUtil"
.end annotation


# static fields
.field public static final BACK:Ljava/lang/String; = "back"

.field public static final BEAUTY:Ljava/lang/String; = "M_beauty_"

.field public static final CAPTURE:Ljava/lang/String; = "M_capture_"

.field public static final FAST_MOTION:Ljava/lang/String; = "M_fastMotion_"

.field public static final FRONT:Ljava/lang/String; = "front"

.field public static final FUN:Ljava/lang/String; = "M_funTinyVideo_"

.field public static final ID_CARD:Ljava/lang/String; = "M_idCard_"

.field public static final LIVE:Ljava/lang/String; = "M_liveDouyin_"

.field public static final LIVE_VV:Ljava/lang/String; = "M_liveVlog_"

.field public static final MANUAL:Ljava/lang/String; = "M_manual_"

.field public static final MIMOJI:Ljava/lang/String; = "M_funArMimoji2_"

.field public static final MI_LIVE:Ljava/lang/String; = "M_miLive_"

.field public static final NEW_SLOW_MOTION:Ljava/lang/String; = "M_newSlowMotion_"

.field public static final PANORAMA:Ljava/lang/String; = "M_panorama_"

.field public static final PIXEL:Ljava/lang/String; = "M_48mPixel_"

.field public static final PORTRAIT:Ljava/lang/String; = "M_portrait_"

.field public static final PROVIDEO:Ljava/lang/String; = "M_proVideo_"

.field public static final RECORD_VIDEO:Ljava/lang/String; = "M_recordVideo_"

.field public static final SLOW_MOTION:Ljava/lang/String; = "M_slowMotion_"

.field public static final SQUARE:Ljava/lang/String; = "M_square_"

.field public static final STANDALONE_MACRO:Ljava/lang/String; = "M_standaloneMacro_"

.field public static final SUPER_MOON:Ljava/lang/String; = "M_superMoon_"

.field public static final SUPER_NIGHT:Ljava/lang/String; = "M_superNight_"

.field public static final SUPER_NIGHT_VIDEO:Ljava/lang/String; = "M_superNightVideo_"

.field public static final UNSPECIFIED:Ljava/lang/String; = "M_unspecified_"

.field public static final VALUE_TARGET_MODE:Ljava/lang/String; = "target_mode"

.field public static final VIDEO_HFR:Ljava/lang/String; = "M_videoHfr_"

.field public static final WIDE_SELFIE:Ljava/lang/String; = "M_wideSelfie_"

.field public static sCameraModeIdToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa1

    const-string v2, "M_funTinyVideo_"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xb7

    const-string v2, "M_miLive_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xb8

    const-string v2, "M_funArMimoji2_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa3

    const-string v2, "M_capture_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa7

    const-string v2, "M_manual_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xab

    const-string v2, "M_portrait_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xbc

    const-string v2, "M_superMoon_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa6

    const-string v2, "M_panorama_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xb0

    const-string v2, "M_wideSelfie_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xac

    const-string v2, "M_newSlowMotion_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa2

    const-string v2, "M_recordVideo_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa9

    const-string v2, "M_fastMotion_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xad

    const-string v2, "M_superNight_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xd6

    const-string v2, "M_superNightVideo_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xaf

    const-string v2, "M_48mPixel_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xb4

    const-string v2, "M_proVideo_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

.method public static modeIdToName(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil$MapUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "M_unspecified_"

    :cond_0
    return-object p0
.end method
