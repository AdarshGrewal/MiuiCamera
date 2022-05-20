.class public Lcom/xiaomi/camera/processor/SuperResolutionProcessor;
.super Ljava/lang/Object;
.source "SuperResolutionProcessor.java"

# interfaces
.implements Lcom/xiaomi/camera/processor/AlgoProcessor;


# static fields
.field public static final TAG:Ljava/lang/String; = "SRProcessor"


# instance fields
.field public mOutputHeight:I

.field public mOutputWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onImageAvailable(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;Lcom/xiaomi/camera/processor/ProcessResultListener;)V
    .locals 0

    .line 4
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/CaptureData;->setMultiFrameProcessResult(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isMoonMode()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p3, p1, p2}, Lcom/xiaomi/camera/processor/ProcessResultListener;->onProcessFinished(Lcom/xiaomi/camera/core/CaptureData;Z)V

    return-void
.end method

.method private onImageAvailable(Lcom/xiaomi/camera/core/CaptureData;Ljava/util/List;Lcom/xiaomi/camera/processor/ProcessResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/camera/core/CaptureData;",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;",
            "Lcom/xiaomi/camera/processor/ProcessResultListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/CaptureData;->setMultiFrameProcessResult(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    .line 2
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/CaptureData;->setHDRSRResult(Ljava/util/List;)V

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isMoonMode()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p3, p1, p2}, Lcom/xiaomi/camera/processor/ProcessResultListener;->onProcessFinished(Lcom/xiaomi/camera/core/CaptureData;Z)V

    return-void
.end method


# virtual methods
.method public doProcess(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/camera/processor/ProcessResultListener;Lcom/xiaomi/engine/TaskSession;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "SRProcessor"

    const-string v0, "doProcess: E"

    .line 1
    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 4
    new-instance v13, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getStreamNum()I

    move-result v8

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->isRequireTuningData()Z

    move-result v9

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getSatFusionType()I

    move-result v10

    const/4 v11, 0x1

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->isHdrSR()Z

    move-result v12

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;-><init>(IZIZZ)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doProcess: dataNum = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v8

    const/16 v16, 0x2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/16 v19, 0x0

    move-wide v14, v8

    invoke-static/range {v14 .. v19}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(JIJLjava/lang/String;)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "algo process start, timestamp: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "[SR]"

    const/4 v9, 0x0

    .line 13
    invoke-static {v8, v9}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackAlgorithmProcess(Ljava/lang/String;I)V

    .line 14
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->isHdrSR()Z

    move-result v11

    const/4 v0, 0x0

    if-eqz v11, :cond_0

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    move-object v12, v0

    .line 17
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 18
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v21

    .line 19
    :try_start_0
    move-object/from16 v0, v21

    check-cast v0, Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v23, v14

    :try_start_1
    sget-object v14, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_FUSION_IMAGE_TYPE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 20
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 21
    invoke-virtual {v0, v14, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    const-string v0, "update metadata with image flag: 0"

    .line 22
    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v23, v14

    .line 23
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "doProcess: Exception\uff1a "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-nez v11, :cond_1

    .line 24
    new-instance v0, Lcom/xiaomi/engine/FrameData;

    const/16 v17, 0x0

    .line 25
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSequenceId()I

    move-result v18

    .line 26
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v19

    .line 27
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v22

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Lcom/xiaomi/engine/FrameData;-><init>(IIJLandroid/os/Parcelable;Landroid/media/Image;)V

    .line 28
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 29
    :cond_1
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 31
    :cond_2
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 32
    :cond_3
    :goto_3
    new-instance v0, Lcom/xiaomi/engine/FrameData;

    const/16 v17, 0x0

    .line 33
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSequenceId()I

    move-result v18

    .line 34
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v19

    .line 35
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v22

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Lcom/xiaomi/engine/FrameData;-><init>(IIJLandroid/os/Parcelable;Landroid/media/Image;)V

    .line 36
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    move-object/from16 v2, p1

    move-object/from16 v14, v23

    goto/16 :goto_0

    .line 37
    :cond_4
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v0

    .line 38
    new-instance v2, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    iget v14, v1, Lcom/xiaomi/camera/processor/SuperResolutionProcessor;->mOutputWidth:I

    if-lez v14, :cond_5

    goto :goto_5

    .line 39
    :cond_5
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v14

    :goto_5
    iget v15, v1, Lcom/xiaomi/camera/processor/SuperResolutionProcessor;->mOutputHeight:I

    if-lez v15, :cond_6

    goto :goto_6

    .line 40
    :cond_6
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v15

    .line 41
    :goto_6
    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v0

    invoke-direct {v2, v14, v15, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;-><init>(III)V

    .line 42
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getAnEmptyImage(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/media/Image;

    move-result-object v2

    .line 43
    invoke-virtual {v4, v10, v2, v9}, Lcom/xiaomi/engine/TaskSession;->processFrameWithSync(Ljava/util/List;Landroid/media/Image;I)I

    move-result v0

    .line 44
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const-string v14, "doProcess: returned a error baseIndex: "

    if-gt v0, v10, :cond_7

    if-gez v0, :cond_8

    .line 45
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    :cond_8
    const/4 v10, 0x1

    .line 46
    invoke-static {v8, v10}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackAlgorithmProcess(Ljava/lang/String;I)V

    .line 47
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doProcess: SR done. baseIndex = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 49
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v9

    move/from16 v18, v11

    move-object/from16 v19, v12

    .line 50
    invoke-virtual {v9}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v11

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getSatFusionType()I

    move-result v0

    if-eqz v0, :cond_c

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 53
    invoke-static {v8, v7}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackAlgorithmProcess(Ljava/lang/String;I)V

    .line 54
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 56
    invoke-virtual/range {v21 .. v21}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v27

    .line 57
    :try_start_2
    move-object/from16 v0, v27

    check-cast v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_FUSION_IMAGE_TYPE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v16, 0x1

    .line 58
    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 59
    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    const-string v0, "update metadata with image flag: 1"

    .line 60
    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doProcess: sat fusion exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_8
    new-instance v0, Lcom/xiaomi/engine/FrameData;

    const/16 v23, 0x1

    .line 63
    invoke-virtual/range {v21 .. v21}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSequenceId()I

    move-result v24

    .line 64
    invoke-virtual/range {v21 .. v21}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v25

    .line 65
    invoke-virtual/range {v21 .. v21}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v28

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v28}, Lcom/xiaomi/engine/FrameData;-><init>(IIJLandroid/os/Parcelable;Landroid/media/Image;)V

    .line 66
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    .line 67
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v0

    .line 68
    new-instance v3, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    .line 69
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v1

    move-object/from16 v20, v6

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v0

    invoke-direct {v3, v1, v6, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;-><init>(III)V

    .line 70
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getAnEmptyImage(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/media/Image;

    move-result-object v0

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v4, v7, v0, v1}, Lcom/xiaomi/engine/TaskSession;->processFrameWithSync(Ljava/util/List;Landroid/media/Image;I)I

    move-result v3

    .line 72
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-gt v3, v1, :cond_b

    if-gez v3, :cond_a

    goto :goto_9

    :cond_a
    const/4 v1, 0x1

    goto :goto_a

    .line 73
    :cond_b
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 74
    :goto_a
    invoke-static {v8, v1}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackAlgorithmProcess(Ljava/lang/String;I)V

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v0, v11, v12}, Landroid/media/Image;->setTimestamp(J)V

    .line 77
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->queueImage(Landroid/media/Image;)V

    .line 78
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImage(J)Landroid/media/Image;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v13, v0, v1, v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    .line 80
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->holdImage(Landroid/media/Image;)V

    goto :goto_b

    :cond_c
    move-object/from16 v20, v6

    const/4 v1, 0x1

    .line 81
    :goto_b
    invoke-virtual {v13, v9, v1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->isRequireTuningData()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 83
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTuningImage()Landroid/media/Image;

    move-result-object v0

    const/4 v1, 0x2

    .line 84
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isTuningImageFromPool()Z

    move-result v3

    .line 85
    invoke-virtual {v13, v0, v1, v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    .line 86
    :cond_d
    invoke-virtual {v2, v11, v12}, Landroid/media/Image;->setTimestamp(J)V

    .line 87
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->queueImage(Landroid/media/Image;)V

    .line 88
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImage(J)Landroid/media/Image;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    invoke-virtual {v13, v0, v1, v1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    .line 90
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->holdImage(Landroid/media/Image;)V

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataListener()Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v0

    .line 92
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    move-object/from16 v3, v19

    if-eq v2, v15, :cond_10

    if-eqz v19, :cond_e

    .line 93
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_d

    .line 94
    :cond_e
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v4

    .line 95
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 96
    invoke-interface {v0, v4}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    .line 97
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 98
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 99
    invoke-interface {v0, v4}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    .line 100
    :cond_f
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTuningImage()Landroid/media/Image;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 101
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 102
    invoke-interface {v0, v2}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    :cond_10
    :goto_d
    move-object/from16 v19, v3

    goto :goto_c

    :cond_11
    move-object/from16 v3, v19

    .line 103
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 104
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 106
    invoke-interface {v0, v1}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    .line 107
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getSatFusionType()I

    move-result v2

    if-eqz v2, :cond_12

    .line 109
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 110
    invoke-interface {v0, v1}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    goto :goto_e

    :cond_12
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 111
    invoke-virtual {v13, v1, v2, v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    goto :goto_f

    :cond_13
    :goto_e
    const/4 v4, 0x0

    .line 112
    :goto_f
    invoke-virtual {v13}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz v18, :cond_15

    .line 113
    invoke-interface {v3, v4, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 114
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 115
    invoke-virtual {v1, v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setIsHdrSrShot(Z)V

    goto :goto_10

    :cond_14
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    .line 116
    invoke-direct {v1, v2, v3, v6}, Lcom/xiaomi/camera/processor/SuperResolutionProcessor;->onImageAvailable(Lcom/xiaomi/camera/core/CaptureData;Ljava/util/List;Lcom/xiaomi/camera/processor/ProcessResultListener;)V

    goto :goto_11

    :cond_15
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    .line 117
    invoke-direct {v1, v2, v13, v6}, Lcom/xiaomi/camera/processor/SuperResolutionProcessor;->onImageAvailable(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;Lcom/xiaomi/camera/processor/ProcessResultListener;)V

    goto :goto_11

    :cond_16
    move-object/from16 v1, p0

    :goto_11
    const-string v0, "doProcess: X"

    .line 118
    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 119
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "taskBeanList is not allow to be empty!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutputSize(II)V
    .locals 2

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOutputSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SRProcessor"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lcom/xiaomi/camera/processor/SuperResolutionProcessor;->mOutputWidth:I

    .line 3
    iput p2, p0, Lcom/xiaomi/camera/processor/SuperResolutionProcessor;->mOutputHeight:I

    :cond_0
    return-void
.end method
