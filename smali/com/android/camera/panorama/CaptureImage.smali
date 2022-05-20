.class public abstract Lcom/android/camera/panorama/CaptureImage;
.super Ljava/lang/Object;
.source "CaptureImage.java"


# instance fields
.field public mExposureTime:J

.field public mImage:Landroid/media/Image;

.field public mImageTimeStamp:J

.field public mRaw:[B

.field public mRollingShutterSkew:J

.field public mSensitivity:I

.field public mSensorTimeStamp:J


# direct methods
.method public constructor <init>(Landroid/media/Image;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/panorama/CaptureImage;->mImage:Landroid/media/Image;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    iput-object v1, p0, Lcom/android/camera/panorama/CaptureImage;->mRaw:[B

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    iput-wide v1, p0, Lcom/android/camera/panorama/CaptureImage;->mImageTimeStamp:J

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/panorama/CaptureImage;->setSensitivity(I)V

    const-wide/16 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/panorama/CaptureImage;->setExposureTime(J)V

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/panorama/CaptureImage;->setRollingShutterSkew(J)V

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/panorama/CaptureImage;->setSensorTimeStamp(J)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/android/camera/panorama/CaptureImage;->mRaw:[B

    :cond_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/camera/panorama/CaptureImage;->mImage:Landroid/media/Image;

    .line 12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/panorama/CaptureImage;->mImageTimeStamp:J

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/camera/panorama/CaptureImage;->setSensitivity(I)V

    const-wide/16 v0, 0x0

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/panorama/CaptureImage;->setExposureTime(J)V

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/panorama/CaptureImage;->setRollingShutterSkew(J)V

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/panorama/CaptureImage;->setSensorTimeStamp(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/panorama/CaptureImage;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/panorama/CaptureImage;->mImage:Landroid/media/Image;

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Lcom/android/camera/panorama/CaptureImage;->mRaw:[B

    return-void
.end method

.method public getExposureTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/panorama/CaptureImage;->mExposureTime:J

    return-wide v0
.end method

.method public abstract getHeight()I
.end method

.method public abstract getImageFormat()Ljava/lang/String;
.end method

.method public getRollingShutterSkew()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/panorama/CaptureImage;->mRollingShutterSkew:J

    return-wide v0
.end method

.method public getSensitivity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/panorama/CaptureImage;->mSensitivity:I

    return v0
.end method

.method public getSensorTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/panorama/CaptureImage;->mSensorTimeStamp:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/panorama/CaptureImage;->mImageTimeStamp:J

    return-wide v0
.end method

.method public abstract getWidth()I
.end method

.method public image()Landroid/media/Image;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/panorama/CaptureImage;->mImage:Landroid/media/Image;

    return-object v0
.end method

.method public raw()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/panorama/CaptureImage;->mRaw:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public setExposureTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/panorama/CaptureImage;->mExposureTime:J

    return-void
.end method

.method public setRollingShutterSkew(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/panorama/CaptureImage;->mRollingShutterSkew:J

    return-void
.end method

.method public setSensitivity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/panorama/CaptureImage;->mSensitivity:I

    return-void
.end method

.method public setSensorTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/panorama/CaptureImage;->mSensorTimeStamp:J

    return-void
.end method
