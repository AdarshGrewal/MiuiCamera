.class public Lcom/android/camera2/imagereaders/DefaultImageReaderHandler;
.super Lcom/android/camera2/imagereaders/ImageReaderHandler;
.source "DefaultImageReaderHandler.java"


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

    const-string v0, "ImageReaderHandler"

    const-string v1, "default handler could handle"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public process()Lcom/android/camera2/imagereaders/ImageReaderSurface;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/camera2/imagereaders/ImageReaderSurface;

    invoke-direct {v0}, Lcom/android/camera2/imagereaders/ImageReaderSurface;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {v1}, Lcom/android/camera2/imagereaders/ImageReaderParam;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isParallelDualShotType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->checkSubSize(Lcom/android/camera2/imagereaders/ImageReaderSurface;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->prepareBokehRawSurface(Lcom/android/camera2/imagereaders/ImageReaderSurface;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->checkBinningSize(Lcom/android/camera2/imagereaders/ImageReaderSurface;)V

    :goto_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/camera2/imagereaders/ImageReaderHandler;->checkMTKIspHidl(Lcom/android/camera2/imagereaders/ImageReaderSurface;Lcom/android/camera/CameraSize;)V

    return-object v0
.end method

.method public bridge synthetic process()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/imagereaders/DefaultImageReaderHandler;->process()Lcom/android/camera2/imagereaders/ImageReaderSurface;

    move-result-object v0

    return-object v0
.end method
