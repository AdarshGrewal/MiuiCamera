.class public Lcom/xiaomi/camera/core/PictureInfo;
.super Ljava/lang/Object;
.source "PictureInfo.java"


# static fields
.field public static final AF_ROI:Ljava/lang/String; = "afRoi"

.field public static final AISCENE:Ljava/lang/String; = "AIScene"

.field public static final BABY:Ljava/lang/String; = "Baby"

.field public static final BEAUTY_LEVEL:Ljava/lang/String; = "BeautyLevel"

.field public static final EXPOSURE_VALUE:Ljava/lang/String; = "exposureValue"

.field public static final FACE_RECOGNITION:Ljava/lang/String; = "faceRoi"

.field public static final FEMALE:Ljava/lang/String; = "Female"

.field public static final FILTER:Ljava/lang/String; = "filterId"

.field public static final HDR_ENABLED:Ljava/lang/String; = "hdrEnable"

.field public static final HDR_EV:Ljava/lang/String; = "hdrEv"

.field public static final HDR_TYPE:Ljava/lang/String; = "Hdr"

.field public static final LENS_APERTUES:Ljava/lang/String; = "lensApertues"

.field public static final LENS_FOCAL:Ljava/lang/String; = "lensFocal"

.field public static final MALE:Ljava/lang/String; = "Male"

.field public static final MAX_BABY_AGE:F = 6.0f

.field public static final MAX_GENDER_FEMALE:F = 0.4f

.field public static final MIN_BABY_AGE:F = 0.0f

.field public static final MIN_GENDER_MALE:F = 0.6f

.field public static final MIRROR:Ljava/lang/String; = "mirror"

.field public static final NIGHTSCENE:Ljava/lang/String; = "NightScene"

.field public static final OPMODE:Ljava/lang/String; = "OpMode"

.field public static final PREVIEW_SUPER_NIGHT_EXIF:Ljava/lang/String; = "previewSuperNight"

.field public static final SCENE_MANUALLY:Ljava/lang/String; = "sceneManually"

.field public static final SCENE_PANORAMA:Ljava/lang/String; = "scenePanorama"

.field public static final SCENE_PROFESSION:Ljava/lang/String; = "sceneProfession"

.field public static final SCENE_SHOT_BURST:Ljava/lang/String; = "sceneShotburst"

.field public static final SENSOR_TYPE:Ljava/lang/String; = "sensorType"

.field public static final SENSOR_TYPE_FRONT:Ljava/lang/String; = "front"

.field public static final SENSOR_TYPE_REAR:Ljava/lang/String; = "rear"

.field public static final SENSOR_TYPE_REAR_MACRO:Ljava/lang/String; = "_RearMacro"

.field public static final SENSOR_TYPE_REAR_TELE:Ljava/lang/String; = "_RearTele"

.field public static final SENSOR_TYPE_REAR_TELE4x:Ljava/lang/String; = "_RearTele4x"

.field public static final SENSOR_TYPE_REAR_ULTRA:Ljava/lang/String; = "_RearUltra"

.field public static final SENSOR_TYPE_REAR_WIDE:Ljava/lang/String; = "_RearWide"

.field public static final SHOT_2_GALLERY:Ljava/lang/String; = "shot2Gallery"

.field public static final SHOT_2_SHOT:Ljava/lang/String; = "shot2Shot"

.field public static final SHOT_2_SHUTTER:Ljava/lang/String; = "shot2Shutter"

.field public static final TAG:Ljava/lang/String; = "PictureInfo"

.field public static final ZOOM_MULTIPLE:Ljava/lang/String; = "zoomMultiple"


# instance fields
.field public aiEnabled:Z

.field public aiType:I

.field public isBokehFrontCamera:Z

.field public isMirror:Z

.field public mAfMrRoi:Landroid/hardware/camera2/params/MeteringRectangle;

.field public mAfRoi:Ljava/lang/String;

.field public mAlgoExif:Ljava/lang/String;

.field public mCaptureResultInfo:Ljava/lang/String;

.field public mEvValue:I

.field public mExtraInfo:Ljava/lang/String;

.field public mFaceInfo:Ljava/lang/String;

.field public mFilterId:I

.field public mHdrEnabled:Z

.field public mHdrEvValues:[I

.field public transient mInfo:Lorg/json/JSONObject;

.field public mInfoString:Ljava/lang/String;

.field public mIsPanorama:Z

.field public mIsProfession:Z

.field public mIsShotBurst:Z

.field public mLensApertues:F

.field public mLensType:Ljava/lang/String;

.field public mLensfocal:F

.field public mOperateMode:I

.field public mPreviewSuperNightExif:Ljava/lang/String;

.field public mSensorType:Ljava/lang/String;

.field public mShot2Gallery:J

.field public mShot2Shot:J

.field public mShot2Shutter:J

.field public mSiqeType:B

.field public mSuperNightExif:Ljava/lang/String;

.field public mXStart:I

.field public mYStart:I

.field public mZoomMulti:F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rear"

    .line 2
    iput-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mSensorType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-byte v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mSiqeType:B

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mShot2Shutter:J

    .line 5
    iput-wide v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mShot2Shot:J

    .line 6
    iput-wide v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mShot2Gallery:J

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfo:Lorg/json/JSONObject;

    return-void
.end method

.method public static getEvString([I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p0, :cond_2

    .line 2
    array-length v1, p0

    if-lez v1, :cond_2

    const-string v1, "["

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 5
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ","

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public end()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfo:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfoString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfo:Lorg/json/JSONObject;

    return-void
.end method

.method public getAiType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->aiType:I

    return v0
.end method

.method public getInfoString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfoString:Ljava/lang/String;

    return-object v0
.end method

.method public getOperateMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mOperateMode:I

    return v0
.end method

.method public getPreviewSuperNightExif()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mPreviewSuperNightExif:Ljava/lang/String;

    return-object v0
.end method

.method public getShot2Gallery()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mShot2Gallery:J

    return-wide v0
.end method

.method public getShot2Shot()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mShot2Shot:J

    return-wide v0
.end method

.method public getShot2Shutter()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mShot2Shutter:J

    return-wide v0
.end method

.method public getSiqeType()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mSiqeType:B

    return v0
.end method

.method public getXpCommentBytes()[B
    .locals 6

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sensorType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/core/PictureInfo;->mLensType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exposureValue:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaomi/camera/core/PictureInfo;->mEvValue:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sceneShotburst:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaomi/camera/core/PictureInfo;->mIsShotBurst:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lensApertues:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaomi/camera/core/PictureInfo;->mLensApertues:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lensFocal:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaomi/camera/core/PictureInfo;->mLensfocal:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sceneProfession:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaomi/camera/core/PictureInfo;->mIsProfession:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scenePanorama:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PictureInfo;->isPanorama()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zoomMultiple:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaomi/camera/core/PictureInfo;->mZoomMulti:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "afRoi:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfRoi:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "faceRoi:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/camera/core/PictureInfo;->mFaceInfo:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filterId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaomi/camera/core/PictureInfo;->mFilterId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AIScene:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PictureInfo;->getAiType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "previewSuperNight:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PictureInfo;->getPreviewSuperNightExif()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hdrEnable:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaomi/camera/core/PictureInfo;->mHdrEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shot2Shutter:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PictureInfo;->getShot2Shutter()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shot2Shot:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PictureInfo;->getShot2Shot()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shot2Gallery:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PictureInfo;->getShot2Gallery()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mHdrEvValues:[I

    invoke-static {v2}, Lcom/xiaomi/camera/core/PictureInfo;->getEvString([I)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hdrEv:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mCaptureResultInfo:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAlgoExif:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mSuperNightExif:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 27
    iget-object v2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mSuperNightExif:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mExtraInfo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "UTF-16LE"

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/xiaomi/camera/base/RsaUtil;->encryptByPublicKey([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public isAiEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->aiEnabled:Z

    return v0
.end method

.method public isBokehFrontCamera()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->isBokehFrontCamera:Z

    return v0
.end method

.method public isFrontCamera()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mSensorType:Ljava/lang/String;

    const-string v1, "front"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFrontMirror()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->isMirror:Z

    return v0
.end method

.method public isPanorama()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mIsPanorama:Z

    return v0
.end method

.method public setAfRoi(III)Ljava/lang/String;
    .locals 6

    .line 1
    rem-int/lit16 p1, p1, 0x168

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    .line 2
    :cond_0
    iget v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mXStart:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mYStart:I

    if-nez v0, :cond_1

    const-string p1, "0"

    .line 3
    iput-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfRoi:Ljava/lang/String;

    return-object p1

    :cond_1
    const/16 v0, 0x5a

    const-string v1, "]"

    const-string v2, ",height="

    const-string v3, ",width="

    const-string v4, ",y="

    const-string v5, "[x="

    if-ge p1, v0, :cond_2

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mXStart:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mYStart:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfMrRoi:Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p2}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfMrRoi:Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p2}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfRoi:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xb4

    if-ge p1, v0, :cond_3

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mYStart:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mXStart:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfMrRoi:Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p2}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfMrRoi:Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p2}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfRoi:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v0, 0x10e

    if-ge p1, v0, :cond_4

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mXStart:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mYStart:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfMrRoi:Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p2}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfMrRoi:Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p2}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfRoi:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/xiaomi/camera/core/PictureInfo;->mYStart:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/xiaomi/camera/core/PictureInfo;->mXStart:I

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfMrRoi:Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p2}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfMrRoi:Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p2}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfRoi:Ljava/lang/String;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfRoi:Ljava/lang/String;

    return-object p1
.end method

.method public setAiEnabled(Z)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->aiEnabled:Z

    return-object p0
.end method

.method public setAiType(I)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 2

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->aiType:I

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfo:Lorg/json/JSONObject;

    const-string v1, "AIScene"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/xiaomi/camera/core/PictureInfo;->TAG:Ljava/lang/String;

    const-string v1, "setAIScene JSONException occurs "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method

.method public setAlgoExif(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAlgoExif:Ljava/lang/String;

    return-void
.end method

.method public setBaby([F)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    aget p1, p1, v0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x40c00000    # 6.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfo:Lorg/json/JSONObject;

    const-string v1, "Baby"

    float-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    sget-object v0, Lcom/xiaomi/camera/core/PictureInfo;->TAG:Ljava/lang/String;

    const-string v1, "setBaby JSONException occurs "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object p0
.end method

.method public setBeautyLevel(Ljava/lang/String;)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfo:Lorg/json/JSONObject;

    const-string v1, "BeautyLevel"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/PictureInfo;->TAG:Ljava/lang/String;

    const-string v1, "setBeautyLevel JSONException occurs "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method

.method public setBokehFrontCamera(Z)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->isBokehFrontCamera:Z

    return-object p0
.end method

.method public setCaptureResult(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mCaptureResultInfo:Ljava/lang/String;

    return-void
.end method

.method public setEvValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mEvValue:I

    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mExtraInfo:Ljava/lang/String;

    return-void
.end method

.method public setFaceRoi(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mFaceInfo:Ljava/lang/String;

    return-void
.end method

.method public setFilter(I)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 2

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mFilterId:I

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfo:Lorg/json/JSONObject;

    const-string v1, "filterId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/xiaomi/camera/core/PictureInfo;->TAG:Ljava/lang/String;

    const-string v1, "setFilter JSONException occurs "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method

.method public setFrontMirror(Z)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->isMirror:Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfo:Lorg/json/JSONObject;

    const-string v1, "mirror"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/xiaomi/camera/core/PictureInfo;->TAG:Ljava/lang/String;

    const-string v1, "setFrontMirror JSONException occurs "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method

.method public setGender([F)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    array-length v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    move v1, v0

    :goto_0
    move v2, v0

    move v3, v2

    :goto_1
    if-ge v0, v1, :cond_3

    .line 2
    aget v4, p1, v0

    const v5, 0x3f19999a    # 0.6f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 3
    :cond_1
    aget v4, p1, v0

    const v5, 0x3ecccccd    # 0.4f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfo:Lorg/json/JSONObject;

    const-string v0, "Male"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfo:Lorg/json/JSONObject;

    const-string v0, "Female"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 6
    :goto_2
    sget-object v0, Lcom/xiaomi/camera/core/PictureInfo;->TAG:Ljava/lang/String;

    const-string v1, "setGender JSONException occurs "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-object p0
.end method

.method public setHdrEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mHdrEnabled:Z

    return-void
.end method

.method public setHdrEvValues([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mHdrEvValues:[I

    return-void
.end method

.method public setHdrType(Ljava/lang/String;)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfo:Lorg/json/JSONObject;

    const-string v1, "Hdr"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/PictureInfo;->TAG:Ljava/lang/String;

    const-string v1, "setHdrType JSONException occurs "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method

.method public setLensApertues(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mLensApertues:F

    return-void
.end method

.method public setLensType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mLensType:Ljava/lang/String;

    return-void
.end method

.method public setLensfocal(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mLensfocal:F

    return-void
.end method

.method public setNightScene(I)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfo:Lorg/json/JSONObject;

    const-string v1, "NightScene"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/PictureInfo;->TAG:Ljava/lang/String;

    const-string v1, "setNightScene JSONException occurs "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method

.method public setOpMode(I)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfo:Lorg/json/JSONObject;

    const-string v1, "OpMode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/PictureInfo;->TAG:Ljava/lang/String;

    const-string v1, "setOpMode JSONException occurs "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method

.method public setOperateMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mOperateMode:I

    return-void
.end method

.method public setPanorama(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mIsPanorama:Z

    return-void
.end method

.method public setPreviewSuperNightExif(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mPreviewSuperNightExif:Ljava/lang/String;

    return-void
.end method

.method public setProfession(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mIsProfession:Z

    return-void
.end method

.method public setSensorType(Z)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "front"

    goto :goto_0

    :cond_0
    const-string p1, "rear"

    .line 1
    :goto_0
    iput-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mSensorType:Ljava/lang/String;

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfo:Lorg/json/JSONObject;

    const-string v1, "sensorType"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/xiaomi/camera/core/PictureInfo;->TAG:Ljava/lang/String;

    const-string v1, "setSensorType JSONException occurs "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object p0
.end method

.method public setShot2Gallery(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mShot2Gallery:J

    return-void
.end method

.method public setShot2Shot(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mShot2Shot:J

    return-void
.end method

.method public setShot2Shutter(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mShot2Shutter:J

    return-void
.end method

.method public setShotBurst(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mIsShotBurst:Z

    return-void
.end method

.method public setSiqeType(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mSiqeType:B

    return-void
.end method

.method public setSuperNightExif(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mSuperNightExif:Ljava/lang/String;

    return-void
.end method

.method public setTouchRoi(Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "0"

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfRoi:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mAfMrRoi:Landroid/hardware/camera2/params/MeteringRectangle;

    .line 3
    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getX()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mXStart:I

    .line 4
    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getY()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mYStart:I

    :goto_0
    return-void
.end method

.method public setZoomMulti(F)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 4

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/PictureInfo;->mZoomMulti:F

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PictureInfo;->mInfo:Lorg/json/JSONObject;

    const-string v1, "zoomMultiple"

    float-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/xiaomi/camera/core/PictureInfo;->TAG:Ljava/lang/String;

    const-string v1, "setZoomMulti JSONException occurs "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method
