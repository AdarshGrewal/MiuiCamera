.class public Lcom/android/camera2/imagereaders/ImageReaderHandlerManager;
.super Ljava/lang/Object;
.source "ImageReaderHandlerManager.java"


# instance fields
.field public mHead:Lcom/android/camera2/imagereaders/ImageReaderHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera2/imagereaders/SatImageReaderHandler;

    invoke-direct {v0, p1}, Lcom/android/camera2/imagereaders/SatImageReaderHandler;-><init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V

    .line 3
    new-instance v1, Lcom/android/camera2/imagereaders/NormalImageReaderHandler;

    invoke-direct {v1, p1}, Lcom/android/camera2/imagereaders/NormalImageReaderHandler;-><init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V

    .line 4
    new-instance v2, Lcom/android/camera2/imagereaders/OtherImageReaderHandler;

    invoke-direct {v2, p1}, Lcom/android/camera2/imagereaders/OtherImageReaderHandler;-><init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V

    .line 5
    new-instance v3, Lcom/android/camera2/imagereaders/DefaultImageReaderHandler;

    invoke-direct {v3, p1}, Lcom/android/camera2/imagereaders/DefaultImageReaderHandler;-><init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/module/shottype/ChainHandler;->setNextHandler(Lcom/android/camera/module/shottype/ChainHandler;)V

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/camera/module/shottype/ChainHandler;->setNextHandler(Lcom/android/camera/module/shottype/ChainHandler;)V

    .line 8
    invoke-virtual {v2, v3}, Lcom/android/camera/module/shottype/ChainHandler;->setNextHandler(Lcom/android/camera/module/shottype/ChainHandler;)V

    .line 9
    iput-object v0, p0, Lcom/android/camera2/imagereaders/ImageReaderHandlerManager;->mHead:Lcom/android/camera2/imagereaders/ImageReaderHandler;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera2/imagereaders/ImageReaderHandler;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/shottype/ChainHandler;

    add-int/lit8 v1, v1, 0x1

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/shottype/ChainHandler;

    invoke-virtual {v2, v3}, Lcom/android/camera/module/shottype/ChainHandler;->setNextHandler(Lcom/android/camera/module/shottype/ChainHandler;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderHandler;

    iput-object p1, p0, Lcom/android/camera2/imagereaders/ImageReaderHandlerManager;->mHead:Lcom/android/camera2/imagereaders/ImageReaderHandler;

    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "could not init imagereader handler chain"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getChainHandler()Lcom/android/camera2/imagereaders/ImageReaderHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/imagereaders/ImageReaderHandlerManager;->mHead:Lcom/android/camera2/imagereaders/ImageReaderHandler;

    return-object v0
.end method
