.class public Lcom/android/camera2/PortraitDepthMapExif;
.super Ljava/lang/Object;
.source "PortraitDepthMapExif.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/PortraitDepthMapExif$Builder;
    }
.end annotation


# instance fields
.field public cameraPreferredMode:I

.field public coordinatesOfOfTheRegionUnderWatermarks:[I

.field public depthLength:I

.field public dulCameraWaterMarkLocation:[I

.field public dulWaterMark:[B

.field public isBokehFrontCamera:Z

.field public isCinematicAspectRatio:Z

.field public isFrontMirror:Z

.field public isSupportZeroDegreeOrientationImage:Z

.field public jpeg:[B

.field public jpegDataOfTheRegionUnderWatermarks:[B

.field public lightingPattern:I

.field public pictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

.field public portraitLightingVersioin:I

.field public rawLength:I

.field public rotation:I

.field public timeStamp:J

.field public timeWaterMark:[B

.field public timeWaterMarkLocation:[I


# direct methods
.method public constructor <init>(Lcom/android/camera2/PortraitDepthMapExif$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$000(Lcom/android/camera2/PortraitDepthMapExif$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->jpeg:[B

    .line 4
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$100(Lcom/android/camera2/PortraitDepthMapExif$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->dulWaterMark:[B

    .line 5
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$200(Lcom/android/camera2/PortraitDepthMapExif$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->dulCameraWaterMarkLocation:[I

    .line 6
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$300(Lcom/android/camera2/PortraitDepthMapExif$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->timeWaterMark:[B

    .line 7
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$400(Lcom/android/camera2/PortraitDepthMapExif$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->timeWaterMarkLocation:[I

    .line 8
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$500(Lcom/android/camera2/PortraitDepthMapExif$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->jpegDataOfTheRegionUnderWatermarks:[B

    .line 9
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$600(Lcom/android/camera2/PortraitDepthMapExif$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->coordinatesOfOfTheRegionUnderWatermarks:[I

    .line 10
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$700(Lcom/android/camera2/PortraitDepthMapExif$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->rotation:I

    .line 11
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$800(Lcom/android/camera2/PortraitDepthMapExif$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->lightingPattern:I

    .line 12
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$900(Lcom/android/camera2/PortraitDepthMapExif$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->isFrontMirror:Z

    .line 13
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$1000(Lcom/android/camera2/PortraitDepthMapExif$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->isBokehFrontCamera:Z

    .line 14
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$1100(Lcom/android/camera2/PortraitDepthMapExif$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->isCinematicAspectRatio:Z

    .line 15
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$1200(Lcom/android/camera2/PortraitDepthMapExif$Builder;)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->pictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    .line 16
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$1300(Lcom/android/camera2/PortraitDepthMapExif$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->rawLength:I

    .line 17
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$1400(Lcom/android/camera2/PortraitDepthMapExif$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->depthLength:I

    .line 18
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$1500(Lcom/android/camera2/PortraitDepthMapExif$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->timeStamp:J

    .line 19
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$1600(Lcom/android/camera2/PortraitDepthMapExif$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->portraitLightingVersioin:I

    .line 20
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$1700(Lcom/android/camera2/PortraitDepthMapExif$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->isSupportZeroDegreeOrientationImage:Z

    .line 21
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMapExif$Builder;->access$1800(Lcom/android/camera2/PortraitDepthMapExif$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/camera2/PortraitDepthMapExif;->cameraPreferredMode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera2/PortraitDepthMapExif$Builder;Lcom/android/camera2/PortraitDepthMapExif$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/PortraitDepthMapExif;-><init>(Lcom/android/camera2/PortraitDepthMapExif$Builder;)V

    return-void
.end method


# virtual methods
.method public getCameraPreferredMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->cameraPreferredMode:I

    return v0
.end method

.method public getCoordinatesOfOfTheRegionUnderWatermarks()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->coordinatesOfOfTheRegionUnderWatermarks:[I

    return-object v0
.end method

.method public getDepthLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->depthLength:I

    return v0
.end method

.method public getDulCameraWaterMarkLocation()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->dulCameraWaterMarkLocation:[I

    return-object v0
.end method

.method public getDulWaterMark()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->dulWaterMark:[B

    return-object v0
.end method

.method public getJpeg()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->jpeg:[B

    return-object v0
.end method

.method public getJpegDataOfTheRegionUnderWatermarks()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->jpegDataOfTheRegionUnderWatermarks:[B

    return-object v0
.end method

.method public getLightingPattern()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->lightingPattern:I

    return v0
.end method

.method public getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->pictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    return-object v0
.end method

.method public getPortraitLightingVersioin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->portraitLightingVersioin:I

    return v0
.end method

.method public getRawLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->rawLength:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->rotation:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->timeStamp:J

    return-wide v0
.end method

.method public getTimeWaterMark()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->timeWaterMark:[B

    return-object v0
.end method

.method public getTimeWaterMarkLocation()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->timeWaterMarkLocation:[I

    return-object v0
.end method

.method public isBokehFrontCamera()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->isBokehFrontCamera:Z

    return v0
.end method

.method public isCinematicAspectRatio()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->isCinematicAspectRatio:Z

    return v0
.end method

.method public isFrontMirror()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->isFrontMirror:Z

    return v0
.end method

.method public isSupportZeroDegreeOrientationImage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/PortraitDepthMapExif;->isSupportZeroDegreeOrientationImage:Z

    return v0
.end method
