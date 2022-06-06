.class public abstract Lcom/android/camera2/imagereaders/ImageReaderHandler;
.super Lcom/android/camera/module/shottype/ChainHandler;
.source "ImageReaderHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/shottype/ChainHandler<",
        "Lcom/android/camera2/imagereaders/ImageReaderParam;",
        "Lcom/android/camera2/imagereaders/ImageReaderSurface;",
        ">;"
    }
.end annotation


# static fields
.field public static final FAKE_TELE_INDEX:I = 0x9

.field public static final FAKE_ULTRA_TELE_INDEX:I = 0xa

.field public static final FAKE_ULTRA_WIDE_INDEX:I = 0x7

.field public static final FAKE_WIDE_INDEX:I = 0x8

.field public static final MACRO_INDEX:I = 0x4

.field public static final MTK_FUSION_TELE_INDEX:I = 0x1d

.field public static final MTK_FUSION_ULTRA_TELE_INDEX:I = 0x1e

.field public static final MTK_FUSION_ULTRA_WIDE_INDEX:I = 0x1b

.field public static final MTK_FUSION_WIDE_INDEX:I = 0x1c

.field public static final PREVIEW_INDEX:I = 0x64

.field public static final QCFA_INDEX:I = 0x5

.field public static final RAW_MACRO_INDEX:I = 0x16

.field public static final RAW_SHARED_INDEX:I = 0xf

.field public static final RAW_TELE_INDEX:I = 0x14

.field public static final RAW_TUNING_INDEX:I = 0x10

.field public static final RAW_ULTRA_TELE_INDEX:I = 0x15

.field public static final RAW_ULTRA_WIDE_INDEX:I = 0x12

.field public static final RAW_WIDE_INDEX:I = 0x13

.field public static final SUB_INDEX:I = 0x6

.field public static final TAG:Ljava/lang/String; = "ImageReaderHandler"

.field public static final TELE_INDEX:I = 0x2

.field public static final TILED_TELE_INDEX:I = 0xd

.field public static final TILED_ULTRA_TELE_INDEX:I = 0xe

.field public static final TILED_ULTRA_WIDE_INDEX:I = 0xb

.field public static final TILED_WIDE_INDEX:I = 0xc

.field public static final TUNING_INDEX:I = 0x11

.field public static final ULTRA_TELE_INDEX:I = 0x3

.field public static final ULTRA_WIDE_INDEX:I = 0x0

.field public static final VT_TELE_INDEX:I = 0x19

.field public static final VT_ULTRA_TELE_INDEX:I = 0x1a

.field public static final VT_ULTRA_WIDE_INDEX:I = 0x17

.field public static final VT_WIDE_INDEX:I = 0x18

.field public static final WIDE_BINNING_SR_INDEX:I = 0x1f

.field public static final WIDE_INDEX:I = 0x1


# direct methods
.method public constructor <init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/shottype/ChainHandler;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static generateSpec(IIIIIIIIZ)Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;
    .locals 8

    new-instance v7, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    move-object v0, v7

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    move v0, p0

    invoke-virtual {v7, p0}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    new-instance v0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    invoke-direct {v0}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;-><init>()V

    invoke-virtual {v0, v7}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->setParam(Lcom/xiaomi/protocol/IImageReaderParameterSets;)V

    move v1, p1

    invoke-virtual {v0, p1}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->setIndex(I)V

    if-eqz p8, :cond_0

    invoke-static {p2, p3, p4, p5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->setImageReader(Landroid/media/ImageReader;)V

    :cond_0
    return-object v0
.end method

.method public static mapPhysicalIdToSatMasterId(I)I
    .locals 2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v0

    if-ne p0, v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v0

    if-ne p0, v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error map physicalId to sat master id for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImageReaderHandler"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public checkBinningSize(Lcom/android/camera2/imagereaders/ImageReaderSurface;)V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->needQcfa()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBinningPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, -0x1

    const/4 v3, 0x5

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v5

    const/16 v6, 0x23

    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getMaxBufferSize()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->generateSpec(IIIIIIIIZ)Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getParam()Lcom/xiaomi/protocol/IImageReaderParameterSets;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setShouldHoldImages(Z)V

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->addSpec(ILcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;)V

    const-string p1, "ImageReaderHandler"

    const-string/jumbo v0, "need binning size"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public checkMTKIspHidl(Lcom/android/camera2/imagereaders/ImageReaderSurface;Lcom/android/camera/CameraSize;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v3}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getRawCallbackType()I

    move-result v3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O00o0o()Z

    move-result v4

    const/16 v5, 0xf

    const/16 v6, 0x10

    const-string v7, "ImageReaderHandler"

    if-eqz v4, :cond_3

    const-string/jumbo v4, "need mtk isp hidl"

    invoke-static {v7, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    and-int/lit8 v4, v3, 0x28

    if-eqz v4, :cond_0

    const-string v4, "config raw for SuperNight or SE"

    invoke-static {v7, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v4, "config raw for other usecase"

    invoke-static {v7, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v8, -0x1

    const/16 v9, 0xf

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v11

    const/16 v12, 0x20

    iget-object v4, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v4, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v4}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getMaxBufferSize()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->generateSpec(IIIIIIIIZ)Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->addSpec(ILcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add shared raw spec: 15 size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfTuningBuffer()Lcom/android/camera/CameraSize;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v8, -0x1

    const/16 v9, 0x10

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v11

    const v12, 0x32315659

    iget-object v4, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v4, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v4}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getMaxBufferSize()I

    move-result v13

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->generateSpec(IIIIIIIIZ)Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->addSpec(ILcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add raw tuning spec: 16 size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit8 v2, v3, 0x8

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getTuningBufferSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v8, -0x1

    const/16 v9, 0x11

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v11

    const v12, 0x32315659

    iget-object v3, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v3}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getMaxBufferSize()I

    move-result v13

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->generateSpec(IIIIIIIIZ)Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v1, v4, v3}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->addSpec(ILcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add yuv tuning spec: 17 size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    and-int/2addr v3, v6

    if-eqz v3, :cond_4

    const/4 v8, -0x1

    const/16 v9, 0xf

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v11

    const/16 v12, 0x20

    iget-object v3, v0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v3}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getMaxBufferSize()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->generateSpec(IIIIIIIIZ)Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->addSpec(ILcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add single raw spec not for mtk hidl 15 size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public checkSubSize(Lcom/android/camera2/imagereaders/ImageReaderSurface;)V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getSubPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const/4 v2, 0x6

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v4

    const/16 v5, 0x23

    iget-object v6, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v6, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v6}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getMaxBufferSize()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->generateSpec(IIIIIIIIZ)Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->addSpec(ILcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add sub spec: 6 size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageReaderHandler"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
