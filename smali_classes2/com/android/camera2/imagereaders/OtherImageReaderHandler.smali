.class public Lcom/android/camera2/imagereaders/OtherImageReaderHandler;
.super Lcom/android/camera2/imagereaders/ImageReaderHandler;
.source "OtherImageReaderHandler.java"


# direct methods
.method public constructor <init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/imagereaders/ImageReaderHandler;-><init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V

    return-void
.end method


# virtual methods
.method public couldProcess()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getRawCallbackType()I

    move-result v0

    and-int/lit8 v1, v0, 0x28

    const/4 v2, 0x1

    if-nez v1, :cond_1

    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera2/imagereaders/ImageReaderParam;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getCameraId()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const-string v0, "ImageReaderHandler"

    const-string v1, "could other handle"

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public process()Lcom/android/camera2/imagereaders/ImageReaderSurface;
    .locals 3

    .line 2
    new-instance v0, Lcom/android/camera2/imagereaders/ImageReaderSurface;

    invoke-direct {v0}, Lcom/android/camera2/imagereaders/ImageReaderSurface;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isParallelDualShotType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->checkSubSize(Lcom/android/camera2/imagereaders/ImageReaderSurface;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->prepareBokehRawSurface(Lcom/android/camera2/imagereaders/ImageReaderSurface;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->checkBinningSize(Lcom/android/camera2/imagereaders/ImageReaderSurface;)V

    .line 8
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->checkMTKIspHidl(Lcom/android/camera2/imagereaders/ImageReaderSurface;Lcom/android/camera/CameraSize;)V

    return-object v0
.end method

.method public bridge synthetic process()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/imagereaders/OtherImageReaderHandler;->process()Lcom/android/camera2/imagereaders/ImageReaderSurface;

    move-result-object v0

    return-object v0
.end method
