.class public Lcom/android/camera2/imagereaders/NormalImageReaderHandler;
.super Lcom/android/camera2/imagereaders/ImageReaderHandler;
.source "NormalImageReaderHandler.java"


# direct methods
.method public constructor <init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/imagereaders/ImageReaderHandler;-><init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V

    return-void
.end method


# virtual methods
.method public couldProcess()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->isQcfaMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O00()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRAndMfnrPixelOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera2/imagereaders/ImageReaderParam;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getRawCallbackType()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    const-string v0, "ImageReaderHandler"

    const-string v1, "could normal handle"

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public process()Lcom/android/camera2/imagereaders/ImageReaderSurface;
    .locals 11

    .line 2
    new-instance v0, Lcom/android/camera2/imagereaders/ImageReaderSurface;

    invoke-direct {v0}, Lcom/android/camera2/imagereaders/ImageReaderSurface;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v5

    const/16 v6, 0x23

    iget-object v7, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v7, Lcom/android/camera2/imagereaders/ImageReaderParam;

    .line 5
    invoke-virtual {v7}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getMaxBufferSize()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 6
    invoke-static/range {v2 .. v10}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->generateSpec(IIIIIIIIZ)Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v3, v2}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->addSpec(ILcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;)V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "normal add spec:1 size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageReaderHandler"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->isNeedSingleRaw()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getRawCallbackType()I

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    .line 10
    invoke-virtual {v1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getRawCallbackType()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->isNeedSingleRaw()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    .line 11
    invoke-virtual {v1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getRawCallbackType()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->miviNightModeSupported()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    .line 12
    invoke-virtual {v1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getRawCallbackType()I

    move-result v1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->isFacingFront()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isParallelDualShotType()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->checkSubSize(Lcom/android/camera2/imagereaders/ImageReaderSurface;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->prepareBokehRawSurface(Lcom/android/camera2/imagereaders/ImageReaderSurface;)V

    goto :goto_1

    .line 17
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->checkBinningSize(Lcom/android/camera2/imagereaders/ImageReaderSurface;)V

    .line 18
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->checkMTKIspHidl(Lcom/android/camera2/imagereaders/ImageReaderSurface;Lcom/android/camera/CameraSize;)V

    return-object v0
.end method

.method public bridge synthetic process()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/imagereaders/NormalImageReaderHandler;->process()Lcom/android/camera2/imagereaders/ImageReaderSurface;

    move-result-object v0

    return-object v0
.end method
