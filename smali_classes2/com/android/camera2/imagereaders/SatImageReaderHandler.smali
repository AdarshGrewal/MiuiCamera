.class public Lcom/android/camera2/imagereaders/SatImageReaderHandler;
.super Lcom/android/camera2/imagereaders/ImageReaderHandler;
.source "SatImageReaderHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;
    }
.end annotation


# static fields
.field public static final ADDITIONAL_BINNING_SR:I = 0x6

.field public static final ADDITIONAL_FAKE:I = 0x2

.field public static final ADDITIONAL_FUSION:I = 0x5

.field public static final ADDITIONAL_RAW:I = 0x4

.field public static final ADDITIONAL_TILE:I = 0x1

.field public static final ADDITIONAL_VT:I = 0x3


# direct methods
.method public constructor <init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/imagereaders/ImageReaderHandler;-><init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V

    return-void
.end method

.method private getIdCameraSize(II)Lcom/android/camera/CameraSize;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {p1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1

    :cond_0
    if-ne p2, v2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {p1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfUltraWide()Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {p1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getUltraWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_5

    if-ne p2, v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {p1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getFakeSatWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p2, v2, :cond_4

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {p1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfWide()Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {p1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1

    .line 9
    :cond_5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v0

    if-ne p1, v0, :cond_8

    if-ne p2, v1, :cond_6

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {p1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getFakeSatTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1

    :cond_6
    if-ne p2, v2, :cond_7

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {p1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfTele()Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1

    .line 12
    :cond_7
    iget-object p1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {p1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1

    .line 13
    :cond_8
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v0

    if-ne p1, v0, :cond_b

    if-ne p2, v1, :cond_9

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {p1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1

    :cond_9
    if-ne p2, v2, :cond_a

    .line 15
    iget-object p1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {p1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfUltraTele()Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1

    .line 16
    :cond_a
    iget-object p1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {p1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getStandalonePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1

    .line 17
    :cond_b
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v0

    if-ne p1, v0, :cond_d

    if-ne p2, v2, :cond_c

    .line 18
    iget-object p1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {p1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfMacro()Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1

    .line 19
    :cond_c
    iget-object p1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {p1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getMacroPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method private mapIdToIndexInfo(II)Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-ne p1, v0, :cond_5

    if-ne p2, v2, :cond_0

    const/16 p1, 0xb

    goto :goto_0

    :cond_0
    if-ne p2, v5, :cond_1

    const/4 p1, 0x7

    goto :goto_0

    :cond_1
    if-ne p2, v4, :cond_2

    const/16 p1, 0x17

    goto :goto_0

    :cond_2
    if-ne p2, v6, :cond_3

    const/16 p1, 0x12

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    const/16 p1, 0x1b

    goto :goto_0

    :cond_4
    move p1, v3

    .line 2
    :goto_0
    new-instance p2, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;

    invoke-direct {p2, v3, v6, p1}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;-><init>(III)V

    return-object p2

    .line 3
    :cond_5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v0

    const/4 v7, 0x6

    if-ne p1, v0, :cond_c

    if-ne p2, v2, :cond_6

    const/16 v2, 0xc

    goto :goto_1

    :cond_6
    if-ne p2, v5, :cond_7

    const/16 v2, 0x8

    goto :goto_1

    :cond_7
    if-ne p2, v4, :cond_8

    const/16 v2, 0x18

    goto :goto_1

    :cond_8
    if-ne p2, v6, :cond_9

    const/16 v2, 0x13

    goto :goto_1

    :cond_9
    if-ne p2, v1, :cond_a

    const/16 v2, 0x1c

    goto :goto_1

    :cond_a
    if-ne p2, v7, :cond_b

    const/16 v2, 0x1f

    .line 4
    :cond_b
    :goto_1
    new-instance p1, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;

    invoke-direct {p1, v3, v4, v2}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;-><init>(III)V

    return-object p1

    .line 5
    :cond_c
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v0

    if-ne p1, v0, :cond_12

    if-ne p2, v2, :cond_d

    const/16 v5, 0xd

    goto :goto_2

    :cond_d
    if-ne p2, v5, :cond_e

    const/16 v5, 0x9

    goto :goto_2

    :cond_e
    if-ne p2, v4, :cond_f

    const/16 v5, 0x19

    goto :goto_2

    :cond_f
    if-ne p2, v6, :cond_10

    const/16 v5, 0x14

    goto :goto_2

    :cond_10
    if-ne p2, v1, :cond_11

    const/16 v5, 0x1d

    .line 6
    :cond_11
    :goto_2
    new-instance p1, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;

    invoke-direct {p1, v3, v1, v5}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;-><init>(III)V

    return-object p1

    .line 7
    :cond_12
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v0

    if-ne p1, v0, :cond_18

    if-ne p2, v2, :cond_13

    const/16 v4, 0xe

    goto :goto_3

    :cond_13
    if-ne p2, v5, :cond_14

    const/16 v4, 0xa

    goto :goto_3

    :cond_14
    if-ne p2, v4, :cond_15

    const/16 v4, 0x1a

    goto :goto_3

    :cond_15
    if-ne p2, v6, :cond_16

    const/16 v4, 0x15

    goto :goto_3

    :cond_16
    if-ne p2, v1, :cond_17

    const/16 v4, 0x1e

    .line 8
    :cond_17
    :goto_3
    new-instance p1, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;

    invoke-direct {p1, v3, v7, v4}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;-><init>(III)V

    return-object p1

    .line 9
    :cond_18
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1a

    if-ne p2, v6, :cond_19

    const/16 v6, 0x16

    .line 10
    :cond_19
    new-instance p1, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;

    invoke-direct {p1, v3, v5, v6}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;-><init>(III)V

    return-object p1

    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public couldProcess()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->isMultiSurfaceSatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImageReaderHandler"

    const-string v1, "could sat handle"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public process()Lcom/android/camera2/imagereaders/ImageReaderSurface;
    .locals 28

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getSatCameraIds()[I

    move-result-object v1

    const-string v2, "ImageReaderHandler"

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getSatCameraIds()[I

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "could not get physical ids for sat"

    .line 3
    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    new-instance v1, Lcom/android/camera2/imagereaders/ImageReaderSurface;

    invoke-direct {v1}, Lcom/android/camera2/imagereaders/ImageReaderSurface;-><init>()V

    const/4 v3, 0x0

    .line 5
    iget-object v4, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v4, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v4}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getMTKFusionPhysicalId()[I

    move-result-object v4

    .line 6
    iget-object v5, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v5, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v5}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getSatCameraIds()[I

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v8, v6, :cond_14

    aget v15, v5, v8

    .line 7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SAT] process physical id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v10

    const/4 v14, 0x1

    if-ne v15, v10, :cond_2

    move/from16 v19, v14

    goto :goto_1

    :cond_2
    move/from16 v19, v7

    .line 9
    :goto_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v10

    if-ne v15, v10, :cond_3

    move/from16 v20, v14

    goto :goto_2

    :cond_3
    move/from16 v20, v7

    .line 10
    :goto_2
    invoke-direct {v0, v15, v7}, Lcom/android/camera2/imagereaders/SatImageReaderHandler;->mapIdToIndexInfo(II)Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;

    move-result-object v21

    .line 11
    invoke-direct {v0, v15, v7}, Lcom/android/camera2/imagereaders/SatImageReaderHandler;->getIdCameraSize(II)Lcom/android/camera/CameraSize;

    move-result-object v13

    if-eqz v21, :cond_12

    if-nez v13, :cond_4

    goto/16 :goto_9

    .line 12
    :cond_4
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v11

    .line 13
    invoke-virtual {v13}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v12

    invoke-virtual {v13}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v16

    const/16 v17, 0x23

    iget-object v10, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v10, Lcom/android/camera2/imagereaders/ImageReaderParam;

    .line 14
    invoke-virtual {v10}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getMaxBufferSize()I

    move-result v18

    .line 15
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getImageType()I

    move-result v22

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getCameraType()I

    move-result v23

    const/16 v24, 0x0

    move v10, v15

    move-object v7, v13

    move/from16 v13, v16

    move-object/from16 v25, v5

    move v5, v14

    move/from16 v14, v17

    move v5, v15

    move/from16 v15, v18

    move/from16 v16, v22

    move/from16 v17, v23

    move/from16 v18, v24

    .line 16
    invoke-static/range {v10 .. v18}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->generateSpec(IIIIIIIIZ)Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    move-result-object v15

    .line 17
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v10

    invoke-virtual {v1, v10, v15}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->addSpec(ILcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;)V

    .line 18
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add spec for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " size: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_7

    if-nez v19, :cond_7

    const/4 v10, 0x0

    .line 19
    :goto_3
    array-length v11, v4

    if-ge v10, v11, :cond_7

    .line 20
    aget v11, v4, v10

    if-ne v5, v11, :cond_6

    const/4 v11, 0x5

    .line 21
    invoke-direct {v0, v5, v11}, Lcom/android/camera2/imagereaders/SatImageReaderHandler;->mapIdToIndexInfo(II)Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;

    move-result-object v21

    if-nez v21, :cond_5

    const-string v11, "fusion index null"

    .line 22
    invoke-static {v2, v11}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 23
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v11

    .line 24
    invoke-virtual {v7}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v12

    invoke-virtual {v7}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v13

    const/16 v16, 0x23

    iget-object v10, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v10, Lcom/android/camera2/imagereaders/ImageReaderParam;

    .line 25
    invoke-virtual {v10}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getMaxBufferSize()I

    move-result v17

    .line 26
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getImageType()I

    move-result v18

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getCameraType()I

    move-result v22

    const/16 v23, 0x0

    move v10, v5

    move-object/from16 v24, v4

    move-object v4, v14

    move/from16 v14, v16

    move-object/from16 v26, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v22

    move/from16 v18, v23

    .line 27
    invoke-static/range {v10 .. v18}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->generateSpec(IIIIIIIIZ)Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    move-result-object v10

    const/4 v11, 0x1

    .line 28
    invoke-virtual {v10, v11}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->setForMTKFusion(Z)V

    .line 29
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v11

    invoke-virtual {v1, v11, v10}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->addSpec(ILcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;)V

    .line 30
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add fusion spec for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    :goto_4
    move-object/from16 v24, v4

    move-object v4, v14

    move-object/from16 v26, v15

    add-int/lit8 v10, v10, 0x1

    move-object v14, v4

    move-object/from16 v4, v24

    move-object/from16 v15, v26

    goto :goto_3

    :cond_7
    move-object/from16 v24, v4

    move-object v4, v14

    move-object/from16 v26, v15

    .line 31
    :goto_5
    iget-object v10, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v10, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v10}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getHdrType()I

    move-result v10

    const/4 v15, 0x3

    const/4 v14, 0x4

    if-ne v10, v15, :cond_9

    if-nez v19, :cond_9

    const/4 v10, 0x1

    .line 32
    invoke-direct {v0, v5, v10}, Lcom/android/camera2/imagereaders/SatImageReaderHandler;->mapIdToIndexInfo(II)Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;

    move-result-object v21

    if-nez v21, :cond_8

    const-string v4, "tile index null"

    .line 33
    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v27, v6

    goto/16 :goto_a

    .line 34
    :cond_8
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v11

    .line 35
    invoke-virtual {v7}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v10

    mul-int/lit8 v12, v10, 0x4

    invoke-virtual {v7}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v13

    const/16 v16, 0x23

    iget-object v10, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v10, Lcom/android/camera2/imagereaders/ImageReaderParam;

    .line 36
    invoke-virtual {v10}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getMaxBufferSize()I

    move-result v17

    .line 37
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getImageType()I

    move-result v18

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getCameraType()I

    move-result v22

    const/16 v23, 0x0

    move v10, v5

    move/from16 v27, v6

    move v6, v14

    move/from16 v14, v16

    move v6, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v22

    move/from16 v18, v23

    .line 38
    invoke-static/range {v10 .. v18}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->generateSpec(IIIIIIIIZ)Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    move-result-object v10

    .line 39
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v11

    invoke-virtual {v1, v11, v10}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->addSpec(ILcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;)V

    .line 40
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add hdr spec for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    move/from16 v27, v6

    move v6, v15

    :goto_6
    const/4 v10, 0x2

    .line 41
    invoke-direct {v0, v5, v10}, Lcom/android/camera2/imagereaders/SatImageReaderHandler;->mapIdToIndexInfo(II)Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;

    move-result-object v21

    .line 42
    invoke-direct {v0, v5, v10}, Lcom/android/camera2/imagereaders/SatImageReaderHandler;->getIdCameraSize(II)Lcom/android/camera/CameraSize;

    move-result-object v15

    if-eqz v15, :cond_b

    if-nez v19, :cond_b

    if-nez v21, :cond_a

    const-string v4, "fake index null"

    .line 43
    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 44
    :cond_a
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v11

    .line 45
    invoke-virtual {v15}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v12

    invoke-virtual {v15}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v13

    const/16 v14, 0x23

    iget-object v10, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v10, Lcom/android/camera2/imagereaders/ImageReaderParam;

    .line 46
    invoke-virtual {v10}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getMaxBufferSize()I

    move-result v16

    .line 47
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getImageType()I

    move-result v17

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getCameraType()I

    move-result v18

    const/16 v22, 0x0

    move v10, v5

    move-object v6, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v22

    .line 48
    invoke-static/range {v10 .. v18}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->generateSpec(IIIIIIIIZ)Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    move-result-object v10

    .line 49
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v11

    invoke-virtual {v1, v11, v10}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->addSpec(ILcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;)V

    .line 50
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add fake spec for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    .line 52
    invoke-virtual {v10, v6}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->setNeedImageReader(Z)V

    .line 53
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v10

    move-object/from16 v11, v26

    invoke-virtual {v11, v10}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->setAliasIndex(I)V

    .line 54
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set fake spec for alias"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    .line 55
    :goto_7
    iget-object v10, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v10, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v10}, Lcom/android/camera2/imagereaders/ImageReaderParam;->isUseParallelVtCam()Z

    move-result v10

    if-eqz v10, :cond_d

    if-nez v19, :cond_d

    const/4 v10, 0x3

    .line 56
    invoke-direct {v0, v5, v10}, Lcom/android/camera2/imagereaders/SatImageReaderHandler;->mapIdToIndexInfo(II)Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;

    move-result-object v19

    if-nez v19, :cond_c

    const-string v4, "vt index null"

    .line 57
    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 58
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v11

    .line 59
    invoke-virtual {v7}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v12

    invoke-virtual {v7}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v13

    const/16 v14, 0x23

    iget-object v7, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v7, Lcom/android/camera2/imagereaders/ImageReaderParam;

    .line 60
    invoke-virtual {v7}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getMaxBufferSize()I

    move-result v15

    .line 61
    invoke-virtual/range {v19 .. v19}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getImageType()I

    move-result v16

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getCameraType()I

    move-result v17

    const/16 v18, 0x0

    move v10, v5

    .line 62
    invoke-static/range {v10 .. v18}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->generateSpec(IIIIIIIIZ)Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    move-result-object v7

    const/4 v10, 0x1

    .line 63
    invoke-virtual {v7, v10}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->setForParallelVT(Z)V

    .line 64
    invoke-virtual/range {v19 .. v19}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v10

    invoke-virtual {v1, v10, v7}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->addSpec(ILcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;)V

    .line 65
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v7

    .line 66
    invoke-static {v5}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->mapPhysicalIdToSatMasterId(I)I

    move-result v10

    add-int/lit8 v11, v9, 0x1

    .line 67
    invoke-virtual {v7, v10, v9}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setSurfaceIndex(II)V

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add parallel vt sepc "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v11

    .line 69
    :cond_d
    iget-object v7, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v7, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v7}, Lcom/android/camera2/imagereaders/ImageReaderParam;->isNeedSingleRaw()Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x4

    .line 70
    invoke-direct {v0, v5, v7}, Lcom/android/camera2/imagereaders/SatImageReaderHandler;->getIdCameraSize(II)Lcom/android/camera/CameraSize;

    move-result-object v4

    if-eqz v4, :cond_11

    if-eqz v3, :cond_e

    .line 71
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraSize;->compareTo(Lcom/android/camera/CameraSize;)I

    move-result v7

    if-gez v7, :cond_11

    :cond_e
    const-string v3, "need largest single raw"

    .line 72
    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto/16 :goto_8

    .line 73
    :cond_f
    iget-object v7, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v7, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v7}, Lcom/android/camera2/imagereaders/ImageReaderParam;->isNeedMultipleRaw()Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x4

    .line 74
    invoke-direct {v0, v5, v7}, Lcom/android/camera2/imagereaders/SatImageReaderHandler;->getIdCameraSize(II)Lcom/android/camera/CameraSize;

    move-result-object v15

    if-eqz v15, :cond_11

    .line 75
    invoke-direct {v0, v5, v7}, Lcom/android/camera2/imagereaders/SatImageReaderHandler;->mapIdToIndexInfo(II)Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;

    move-result-object v7

    if-nez v7, :cond_10

    const-string v4, "raw index null"

    .line 76
    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 77
    :cond_10
    invoke-virtual {v7}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v11

    .line 78
    invoke-virtual {v15}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v12

    invoke-virtual {v15}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v13

    const/16 v14, 0x20

    iget-object v10, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v10, Lcom/android/camera2/imagereaders/ImageReaderParam;

    .line 79
    invoke-virtual {v10}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getMaxBufferSize()I

    move-result v16

    .line 80
    invoke-virtual {v7}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getImageType()I

    move-result v17

    invoke-virtual {v7}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getCameraType()I

    move-result v18

    const/16 v19, 0x0

    move v10, v5

    move-object v6, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    .line 81
    invoke-static/range {v10 .. v18}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->generateSpec(IIIIIIIIZ)Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    move-result-object v10

    .line 82
    invoke-virtual {v7}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v7

    invoke-virtual {v1, v7, v10}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->addSpec(ILcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;)V

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "need multi raw: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getIndex()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_8
    if-eqz v20, :cond_13

    .line 84
    iget-object v4, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v4, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v4}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getBinningSrData()Lcom/android/camera2/vendortag/struct/BinningSrData;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 85
    invoke-virtual {v4}, Lcom/android/camera2/vendortag/struct/BinningSrData;->isBinningSrEnabled()Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v6, 0x6

    .line 86
    invoke-direct {v0, v5, v6}, Lcom/android/camera2/imagereaders/SatImageReaderHandler;->mapIdToIndexInfo(II)Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 87
    invoke-virtual {v6}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v11

    .line 88
    invoke-virtual {v4}, Lcom/android/camera2/vendortag/struct/BinningSrData;->getBinningSrInputSize()Lcom/android/camera/CameraSize;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v12

    invoke-virtual {v4}, Lcom/android/camera2/vendortag/struct/BinningSrData;->getBinningSrInputSize()Lcom/android/camera/CameraSize;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v13

    const/16 v14, 0x23

    .line 89
    invoke-virtual {v4}, Lcom/android/camera2/vendortag/struct/BinningSrData;->getMaxBinningSrBufferSize()I

    move-result v15

    .line 90
    invoke-virtual {v6}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getImageType()I

    move-result v16

    invoke-virtual {v6}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getCameraType()I

    move-result v17

    const/16 v18, 0x0

    move v10, v5

    .line 91
    invoke-static/range {v10 .. v18}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->generateSpec(IIIIIIIIZ)Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    move-result-object v5

    .line 92
    invoke-virtual {v6}, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->getIndex()I

    move-result v6

    invoke-virtual {v1, v6, v5}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->addSpec(ILcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;)V

    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "need binning sr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getIndex()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", size = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/camera2/vendortag/struct/BinningSrData;->getBinningSrInputSize()Lcom/android/camera/CameraSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_12
    :goto_9
    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v27, v6

    const-string v4, "error happens when config sat handler, could not find index or size"

    .line 94
    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    move/from16 v6, v27

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 95
    :cond_14
    invoke-virtual {v0, v1}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->checkBinningSize(Lcom/android/camera2/imagereaders/ImageReaderSurface;)V

    .line 96
    invoke-virtual {v0, v1, v3}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->checkMTKIspHidl(Lcom/android/camera2/imagereaders/ImageReaderSurface;Lcom/android/camera/CameraSize;)V

    return-object v1
.end method

.method public bridge synthetic process()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/imagereaders/SatImageReaderHandler;->process()Lcom/android/camera2/imagereaders/ImageReaderSurface;

    move-result-object v0

    return-object v0
.end method
