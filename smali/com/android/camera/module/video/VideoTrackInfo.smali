.class public Lcom/android/camera/module/video/VideoTrackInfo;
.super Ljava/lang/Object;
.source "VideoTrackInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    }
.end annotation


# instance fields
.field public mAIAudioTrackParams:[Ljava/lang/String;

.field public mActualCameraId:I

.field public mAutoHibernation:Z

.field public mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field public mDuration:J

.field public mEV:Ljava/lang/String;

.field public mEnterAutoHibernationCount:I

.field public mExposureTime:Ljava/lang/String;

.field public mFlashMode:I

.field public mFrameRate:I

.field public mIsAutoZoomEnable:Z

.field public mIsBluetoothScoOn:Z

.field public mIsFrontCamera:Z

.field public mIsSubtitleSupported:Z

.field public mIsSuperEISEnable:Z

.field public mIsUltraWideEnable:Z

.field public mIso:Ljava/lang/String;

.field public mLapseCaptureTime:I

.field public mModuleIndex:I

.field public mVideoHdr:Z

.field public mVideoMode:Ljava/lang/String;

.field public mVideoQuality:I

.field public mWhiteBalance:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsFrontCamera:Z

    return p1
.end method

.method public static synthetic access$1002(Lcom/android/camera/module/video/VideoTrackInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mActualCameraId:I

    return p1
.end method

.method public static synthetic access$102(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mVideoHdr:Z

    return p1
.end method

.method public static synthetic access$1102(Lcom/android/camera/module/video/VideoTrackInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mModuleIndex:I

    return p1
.end method

.method public static synthetic access$1202(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsAutoZoomEnable:Z

    return p1
.end method

.method public static synthetic access$1302(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsSuperEISEnable:Z

    return p1
.end method

.method public static synthetic access$1402(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsUltraWideEnable:Z

    return p1
.end method

.method public static synthetic access$1502(Lcom/android/camera/module/video/VideoTrackInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mVideoMode:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1602(Lcom/android/camera/module/video/VideoTrackInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mVideoQuality:I

    return p1
.end method

.method public static synthetic access$1702(Lcom/android/camera/module/video/VideoTrackInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mFlashMode:I

    return p1
.end method

.method public static synthetic access$1802(Lcom/android/camera/module/video/VideoTrackInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mFrameRate:I

    return p1
.end method

.method public static synthetic access$1902(Lcom/android/camera/module/video/VideoTrackInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mLapseCaptureTime:I

    return p1
.end method

.method public static synthetic access$2002(Lcom/android/camera/module/video/VideoTrackInfo;Lcom/android/camera/fragment/beauty/BeautyValues;)Lcom/android/camera/fragment/beauty/BeautyValues;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/android/camera/module/video/VideoTrackInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mWhiteBalance:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2102(Lcom/android/camera/module/video/VideoTrackInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mDuration:J

    return-wide p1
.end method

.method public static synthetic access$2202(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsSubtitleSupported:Z

    return p1
.end method

.method public static synthetic access$302(Lcom/android/camera/module/video/VideoTrackInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mExposureTime:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/android/camera/module/video/VideoTrackInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mEV:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/android/camera/module/video/VideoTrackInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIso:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/android/camera/module/video/VideoTrackInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mAIAudioTrackParams:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsBluetoothScoOn:Z

    return p1
.end method

.method public static synthetic access$802(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mAutoHibernation:Z

    return p1
.end method

.method public static synthetic access$902(Lcom/android/camera/module/video/VideoTrackInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mEnterAutoHibernationCount:I

    return p1
.end method

.method public static builder()Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    new-instance v0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    invoke-direct {v0}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public aIAudioTrackParams()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mAIAudioTrackParams:[Ljava/lang/String;

    return-object v0
.end method

.method public actualCameraId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mActualCameraId:I

    return v0
.end method

.method public autoHibernationCount()I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mEnterAutoHibernationCount:I

    return v0
.end method

.method public autoZoomEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsAutoZoomEnable:Z

    return v0
.end method

.method public beautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    return-object v0
.end method

.method public bluetoothScoOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsBluetoothScoOn:Z

    return v0
.end method

.method public ev()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mEV:Ljava/lang/String;

    return-object v0
.end method

.method public exposureTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mExposureTime:Ljava/lang/String;

    return-object v0
.end method

.method public flashMode()I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mFlashMode:I

    return v0
.end method

.method public frameRate()I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mFrameRate:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mDuration:J

    return-wide v0
.end method

.method public getmLapseCaptureTime()I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mLapseCaptureTime:I

    return v0
.end method

.method public isFrontCamera()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsFrontCamera:Z

    return v0
.end method

.method public ismAutoHibernation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mAutoHibernation:Z

    return v0
.end method

.method public ismIsSuperEISEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsSuperEISEnable:Z

    return v0
.end method

.method public ismVideoHdr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mVideoHdr:Z

    return v0
.end method

.method public iso()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIso:Ljava/lang/String;

    return-object v0
.end method

.method public moduleIndex()I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mModuleIndex:I

    return v0
.end method

.method public subtitleSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsSubtitleSupported:Z

    return v0
.end method

.method public ultraWideEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsUltraWideEnable:Z

    return v0
.end method

.method public videoMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mVideoMode:Ljava/lang/String;

    return-object v0
.end method

.method public videoQuality()I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mVideoQuality:I

    return v0
.end method

.method public whiteBalance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mWhiteBalance:Ljava/lang/String;

    return-object v0
.end method
