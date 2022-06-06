.class public Lcom/android/camera/module/video/VideoTrackInfo$Builder;
.super Ljava/lang/Object;
.source "VideoTrackInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video/VideoTrackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-direct {v0}, Lcom/android/camera/module/video/VideoTrackInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/camera/module/video/VideoTrackInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    return-object v0
.end method

.method public setActualCameraId(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$1002(Lcom/android/camera/module/video/VideoTrackInfo;I)I

    return-object p0
.end method

.method public setAiAudioTrackParams([Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$602(Lcom/android/camera/module/video/VideoTrackInfo;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method

.method public setAutoHibernation(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$802(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z

    return-object p0
.end method

.method public setAutoHibernationCount(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$902(Lcom/android/camera/module/video/VideoTrackInfo;I)I

    return-object p0
.end method

.method public setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$2002(Lcom/android/camera/module/video/VideoTrackInfo;Lcom/android/camera/fragment/beauty/BeautyValues;)Lcom/android/camera/fragment/beauty/BeautyValues;

    return-object p0
.end method

.method public setDuration(J)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1, p2}, Lcom/android/camera/module/video/VideoTrackInfo;->access$2102(Lcom/android/camera/module/video/VideoTrackInfo;J)J

    return-object p0
.end method

.method public setEV(Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$402(Lcom/android/camera/module/video/VideoTrackInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setExposureTime(Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$302(Lcom/android/camera/module/video/VideoTrackInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setFlashMode(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$1702(Lcom/android/camera/module/video/VideoTrackInfo;I)I

    return-object p0
.end method

.method public setFrameRate(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$1802(Lcom/android/camera/module/video/VideoTrackInfo;I)I

    return-object p0
.end method

.method public setISO(Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$502(Lcom/android/camera/module/video/VideoTrackInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setIsAutoZoom(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$1202(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z

    return-object p0
.end method

.method public setIsBluetoothScoOn(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$702(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z

    return-object p0
.end method

.method public setIsFrontCamera(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$002(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z

    return-object p0
.end method

.method public setIsSuperEis(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$1302(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z

    return-object p0
.end method

.method public setIsUltraWide(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$1402(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z

    return-object p0
.end method

.method public setLapseCaptureTime(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$1902(Lcom/android/camera/module/video/VideoTrackInfo;I)I

    return-object p0
.end method

.method public setModuleIndex(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$1102(Lcom/android/camera/module/video/VideoTrackInfo;I)I

    return-object p0
.end method

.method public setSubtitleSupported(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$2202(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z

    return-object p0
.end method

.method public setVideoHdr(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$102(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z

    return-object p0
.end method

.method public setVideoMode(Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$1502(Lcom/android/camera/module/video/VideoTrackInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setVideoQuality(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$1602(Lcom/android/camera/module/video/VideoTrackInfo;I)I

    return-object p0
.end method

.method public setWhiteBalance(Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->mVideoTrackInfo:Lcom/android/camera/module/video/VideoTrackInfo;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoTrackInfo;->access$202(Lcom/android/camera/module/video/VideoTrackInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
