.class public Lcom/android/camera/module/shottype/ShotTypeChainManager;
.super Ljava/lang/Object;
.source "ShotTypeChainManager.java"


# instance fields
.field public mHead:Lcom/android/camera/module/shottype/ShotTypeHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/shottype/ShotTypeParam;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/module/shottype/IntentShotTypeHandler;

    invoke-direct {v0, p1}, Lcom/android/camera/module/shottype/IntentShotTypeHandler;-><init>(Lcom/android/camera/module/shottype/ShotTypeParam;)V

    new-instance v1, Lcom/android/camera/module/shottype/CaptureShotTypeHandler;

    invoke-direct {v1, p1}, Lcom/android/camera/module/shottype/CaptureShotTypeHandler;-><init>(Lcom/android/camera/module/shottype/ShotTypeParam;)V

    new-instance v2, Lcom/android/camera/module/shottype/PortraitShotTypeHandler;

    invoke-direct {v2, p1}, Lcom/android/camera/module/shottype/PortraitShotTypeHandler;-><init>(Lcom/android/camera/module/shottype/ShotTypeParam;)V

    new-instance v3, Lcom/android/camera/module/shottype/SuperNightShotTypeHandler;

    invoke-direct {v3, p1}, Lcom/android/camera/module/shottype/SuperNightShotTypeHandler;-><init>(Lcom/android/camera/module/shottype/ShotTypeParam;)V

    new-instance v4, Lcom/android/camera/module/shottype/DefaultShotTypeHandler;

    invoke-direct {v4, p1}, Lcom/android/camera/module/shottype/DefaultShotTypeHandler;-><init>(Lcom/android/camera/module/shottype/ShotTypeParam;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/module/shottype/ChainHandler;->setNextHandler(Lcom/android/camera/module/shottype/ChainHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/module/shottype/ChainHandler;->setNextHandler(Lcom/android/camera/module/shottype/ChainHandler;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/module/shottype/ChainHandler;->setNextHandler(Lcom/android/camera/module/shottype/ChainHandler;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/module/shottype/ChainHandler;->setNextHandler(Lcom/android/camera/module/shottype/ChainHandler;)V

    iput-object v0, p0, Lcom/android/camera/module/shottype/ShotTypeChainManager;->mHead:Lcom/android/camera/module/shottype/ShotTypeHandler;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/module/shottype/ShotTypeHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/shottype/ChainHandler;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/shottype/ChainHandler;

    invoke-virtual {v2, v3}, Lcom/android/camera/module/shottype/ChainHandler;->setNextHandler(Lcom/android/camera/module/shottype/ChainHandler;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/shottype/ShotTypeHandler;

    iput-object p1, p0, Lcom/android/camera/module/shottype/ShotTypeChainManager;->mHead:Lcom/android/camera/module/shottype/ShotTypeHandler;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "could not init shottype chain"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getChainHandler()Lcom/android/camera/module/shottype/ShotTypeHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/shottype/ShotTypeChainManager;->mHead:Lcom/android/camera/module/shottype/ShotTypeHandler;

    return-object v0
.end method
