.class public Lcom/android/camera/module/video/MediaRecorderParameter;
.super Ljava/lang/Object;
.source "MediaRecorderParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/video/MediaRecorderParameter$Builder;
    }
.end annotation


# static fields
.field public static DOUBLE_VALUE_UNSET:D = -1.0

.field public static INT_VALUE_UNSET:I = -0x1


# instance fields
.field public mAudioChannels:I

.field public mAudioEncoder:I

.field public mAudioEncodingBitRate:I

.field public mAudioSamplingRate:I

.field public mAudioSource:I

.field public mCaptureRate:D

.field public mEnableAudio:Z

.field public mExtraParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLocation:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mMaxDuration:I

.field public mMaxFileSize:J

.field public mOrientationHint:I

.field public mOutputFormat:I

.field public mVideoEncoder:I

.field public mVideoEncodingBitRate:I

.field public mVideoEncodingProfileLevel:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mVideoSize:Landroid/util/Size;

.field public mVideoSource:I

.field public mVideoVideoFrameRate:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/android/camera/module/video/MediaRecorderParameter;->INT_VALUE_UNSET:I

    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioChannels:I

    .line 3
    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncoder:I

    .line 4
    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncodingBitRate:I

    .line 5
    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSamplingRate:I

    .line 6
    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSource:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncoder:I

    .line 8
    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingBitRate:I

    .line 9
    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoVideoFrameRate:I

    const/4 v1, 0x2

    .line 10
    iput v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSource:I

    const/4 v1, 0x1

    .line 11
    iput v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mOutputFormat:I

    .line 12
    sget-wide v1, Lcom/android/camera/module/video/MediaRecorderParameter;->DOUBLE_VALUE_UNSET:D

    iput-wide v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mCaptureRate:D

    .line 13
    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxDuration:I

    int-to-long v1, v0

    .line 14
    iput-wide v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxFileSize:J

    .line 15
    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mOrientationHint:I

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mExtraParameters:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/video/MediaRecorderParameter;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget-boolean v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mEnableAudio:Z

    iput-boolean v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mEnableAudio:Z

    .line 19
    iget v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioChannels:I

    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioChannels:I

    .line 20
    iget v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncoder:I

    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncoder:I

    .line 21
    iget v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncodingBitRate:I

    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncodingBitRate:I

    .line 22
    iget v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSamplingRate:I

    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSamplingRate:I

    .line 23
    iget v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSource:I

    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSource:I

    .line 24
    iget v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncoder:I

    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncoder:I

    .line 25
    iget v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingBitRate:I

    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingBitRate:I

    .line 26
    iget v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoVideoFrameRate:I

    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoVideoFrameRate:I

    .line 27
    iget v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSource:I

    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSource:I

    .line 28
    iget v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mOutputFormat:I

    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mOutputFormat:I

    .line 29
    iget-wide v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mCaptureRate:D

    iput-wide v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mCaptureRate:D

    .line 30
    iget v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxDuration:I

    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxDuration:I

    .line 31
    iget-wide v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxFileSize:J

    iput-wide v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxFileSize:J

    .line 32
    iget v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mOrientationHint:I

    iput v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mOrientationHint:I

    .line 33
    iget-object v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingProfileLevel:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingProfileLevel:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingProfileLevel:Landroid/util/Pair;

    .line 35
    :cond_0
    iget-object v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSize:Landroid/util/Size;

    if-eqz v0, :cond_1

    .line 36
    new-instance v0, Landroid/util/Size;

    iget-object v1, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSize:Landroid/util/Size;

    .line 37
    :cond_1
    iget-object v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mLocation:Landroid/util/Pair;

    if-eqz v0, :cond_2

    .line 38
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mLocation:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mLocation:Landroid/util/Pair;

    .line 39
    :cond_2
    iget-object v0, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mExtraParameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mExtraParameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    iget-object v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mExtraParameters:Ljava/util/List;

    iget-object p1, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mExtraParameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/module/video/MediaRecorderParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mEnableAudio:Z

    return p1
.end method

.method public static synthetic access$1002(Lcom/android/camera/module/video/MediaRecorderParameter;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSize:Landroid/util/Size;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/android/camera/module/video/MediaRecorderParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioChannels:I

    return p1
.end method

.method public static synthetic access$1102(Lcom/android/camera/module/video/MediaRecorderParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSource:I

    return p1
.end method

.method public static synthetic access$1202(Lcom/android/camera/module/video/MediaRecorderParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mOutputFormat:I

    return p1
.end method

.method public static synthetic access$1302(Lcom/android/camera/module/video/MediaRecorderParameter;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mCaptureRate:D

    return-wide p1
.end method

.method public static synthetic access$1402(Lcom/android/camera/module/video/MediaRecorderParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxDuration:I

    return p1
.end method

.method public static synthetic access$1502(Lcom/android/camera/module/video/MediaRecorderParameter;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mLocation:Landroid/util/Pair;

    return-object p1
.end method

.method public static synthetic access$1602(Lcom/android/camera/module/video/MediaRecorderParameter;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxFileSize:J

    return-wide p1
.end method

.method public static synthetic access$1702(Lcom/android/camera/module/video/MediaRecorderParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mOrientationHint:I

    return p1
.end method

.method public static synthetic access$1802(Lcom/android/camera/module/video/MediaRecorderParameter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mExtraParameters:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/android/camera/module/video/MediaRecorderParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncoder:I

    return p1
.end method

.method public static synthetic access$302(Lcom/android/camera/module/video/MediaRecorderParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncodingBitRate:I

    return p1
.end method

.method public static synthetic access$402(Lcom/android/camera/module/video/MediaRecorderParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSamplingRate:I

    return p1
.end method

.method public static synthetic access$502(Lcom/android/camera/module/video/MediaRecorderParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSource:I

    return p1
.end method

.method public static synthetic access$602(Lcom/android/camera/module/video/MediaRecorderParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncoder:I

    return p1
.end method

.method public static synthetic access$702(Lcom/android/camera/module/video/MediaRecorderParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingBitRate:I

    return p1
.end method

.method public static synthetic access$802(Lcom/android/camera/module/video/MediaRecorderParameter;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingProfileLevel:Landroid/util/Pair;

    return-object p1
.end method

.method public static synthetic access$902(Lcom/android/camera/module/video/MediaRecorderParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoVideoFrameRate:I

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/android/camera/module/video/MediaRecorderParameter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/android/camera/module/video/MediaRecorderParameter;

    .line 3
    iget-boolean v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mEnableAudio:Z

    iget-boolean v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mEnableAudio:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioChannels:I

    iget v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioChannels:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncoder:I

    iget v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncoder:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncodingBitRate:I

    iget v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncodingBitRate:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSamplingRate:I

    iget v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSamplingRate:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSource:I

    iget v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSource:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncoder:I

    iget v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncoder:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingBitRate:I

    iget v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingBitRate:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoVideoFrameRate:I

    iget v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoVideoFrameRate:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSource:I

    iget v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSource:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mOutputFormat:I

    iget v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mOutputFormat:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mCaptureRate:D

    iget-wide v5, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mCaptureRate:D

    .line 4
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxDuration:I

    iget v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxDuration:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxFileSize:J

    iget-wide v5, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxFileSize:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mOrientationHint:I

    iget v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mOrientationHint:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingProfileLevel:Landroid/util/Pair;

    iget-object v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingProfileLevel:Landroid/util/Pair;

    .line 5
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSize:Landroid/util/Size;

    iget-object v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSize:Landroid/util/Size;

    .line 6
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mLocation:Landroid/util/Pair;

    iget-object v3, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mLocation:Landroid/util/Pair;

    .line 7
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mExtraParameters:Ljava/util/List;

    iget-object p1, p1, Lcom/android/camera/module/video/MediaRecorderParameter;->mExtraParameters:Ljava/util/List;

    .line 8
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAudioChannels()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioChannels:I

    return v0
.end method

.method public getAudioEncoder()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncoder:I

    return v0
.end method

.method public getAudioEncodingBitRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncodingBitRate:I

    return v0
.end method

.method public getAudioSamplingRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSamplingRate:I

    return v0
.end method

.method public getAudioSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSource:I

    return v0
.end method

.method public getCaptureRate()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mCaptureRate:D

    return-wide v0
.end method

.method public getExtraParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mExtraParameters:Ljava/util/List;

    return-object v0
.end method

.method public getLocation()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mLocation:Landroid/util/Pair;

    return-object v0
.end method

.method public getMaxDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxDuration:I

    return v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxFileSize:J

    return-wide v0
.end method

.method public getOrientationHint()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mOrientationHint:I

    return v0
.end method

.method public getOutputFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mOutputFormat:I

    return v0
.end method

.method public getVideoEncoder()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncoder:I

    return v0
.end method

.method public getVideoEncodingBitRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingBitRate:I

    return v0
.end method

.method public getVideoEncodingProfileLevel()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingProfileLevel:Landroid/util/Pair;

    return-object v0
.end method

.method public getVideoFrameRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoVideoFrameRate:I

    return v0
.end method

.method public getVideoSize()Landroid/util/Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSize:Landroid/util/Size;

    return-object v0
.end method

.method public getVideoSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSource:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-boolean v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mEnableAudio:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioChannels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncoder:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncodingBitRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSamplingRate:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncoder:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingBitRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingProfileLevel:Landroid/util/Pair;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoVideoFrameRate:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSize:Landroid/util/Size;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mOutputFormat:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mCaptureRate:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mLocation:Landroid/util/Pair;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxDuration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxFileSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mOrientationHint:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mExtraParameters:Ljava/util/List;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEnableAudio()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mEnableAudio:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaRecorderParameter{mEnableAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mEnableAudio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioChannels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioEncoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncoder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioEncodingBitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioEncodingBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioSamplingRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSamplingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mAudioSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoEncoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncoder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoEncodingBitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoEncodingProfileLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoEncodingProfileLevel:Landroid/util/Pair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoVideoFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoVideoFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mVideoSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOutputFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mOutputFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mCaptureRate:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mLocation:Landroid/util/Pair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mMaxFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientationHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mOrientationHint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExtraParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/video/MediaRecorderParameter;->mExtraParameters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
