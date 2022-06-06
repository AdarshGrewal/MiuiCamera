.class public Lcom/android/camera/module/video/VideoConfig;
.super Ljava/lang/Object;
.source "VideoConfig.java"


# static fields
.field public static final EXPOSURE_TIME_FOR_SLOW_SHUTTER:J = 0x7735940L

.field public static final HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_DURATION_4K:I = 0x75300

.field public static final MAX_DURATION_4K_HDR10P:I = 0x57e40

.field public static final MAX_DURATION_8K:I = 0x57e40

.field public static final RESET_VIDEO_AUTO_FOCUS_TIME:I = 0xbb8

.field public static final SIZE_1080:Landroid/util/Size;

.field public static final SIZE_2160:Landroid/util/Size;

.field public static final SIZE_720:Landroid/util/Size;

.field public static final VIDEO_HFR_FRAME_RATE_120:I = 0x78

.field public static final VIDEO_HFR_FRAME_RATE_240:I = 0xf0

.field public static final VIDEO_HFR_FRAME_RATE_480:I = 0x1e0

.field public static final VIDEO_MAX_SINGLE_FILE_SIZE:J = 0xdac00000L

.field public static final VIDEO_MIN_SINGLE_FILE_SIZE:J

.field public static final VIDEO_NORMAL_FRAME_RATE:I = 0x1e


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide/32 v0, 0x800000

    const-wide/32 v2, 0xc800000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/module/video/VideoConfig;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/module/video/VideoConfig;->SIZE_720:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/module/video/VideoConfig;->SIZE_1080:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/module/video/VideoConfig;->SIZE_2160:Landroid/util/Size;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/module/video/VideoConfig;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    const v1, 0x24b76a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3840x2160:30"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/module/video/VideoConfig;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    const v1, 0xeafc40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1920x1080:30"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/module/video/VideoConfig;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    const v1, 0xa47d60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1280x720:30"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/module/video/VideoConfig;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    const v1, 0x150e00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "720x480:30"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
