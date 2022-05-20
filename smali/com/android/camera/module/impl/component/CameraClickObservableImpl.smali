.class public Lcom/android/camera/module/impl/component/CameraClickObservableImpl;
.super Ljava/lang/Object;
.source "CameraClickObservableImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;


# instance fields
.field public mBottomTipObservableArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field public mBottomTipObserverArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mBottomTipTipMsgArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipObservableArray:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipObserverArray:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipTipMsgArray:Ljava/util/List;

    return-void
.end method

.method public static create()Lcom/android/camera/module/impl/component/CameraClickObservableImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;

    invoke-direct {v0}, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public varargs addObservable([ILcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;[I)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipObservableArray:Ljava/util/List;

    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p3, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipTipMsgArray:Ljava/util/List;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipObserverArray:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe3

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public subscribe(I)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    .line 2
    :goto_0
    iget-object v4, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipTipMsgArray:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 3
    iget-object v4, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipTipMsgArray:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 4
    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget v7, v4, v6

    if-lez v7, :cond_0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-interface {v0, v7}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isCurrentRecommendTipText(I)Z

    move-result v7
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    move v2, v3

    goto :goto_2

    :catch_0
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-gez v2, :cond_3

    return-void

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipObservableArray:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_6

    .line 7
    array-length v3, v0

    if-gtz v3, :cond_4

    goto :goto_4

    .line 8
    :cond_4
    :goto_3
    array-length v3, v0

    if-ge v1, v3, :cond_6

    .line 9
    aget v3, v0, v1

    if-ne v3, p1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipObserverArray:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;->action()V

    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipObservableArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipObserverArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipTipMsgArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe3

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
