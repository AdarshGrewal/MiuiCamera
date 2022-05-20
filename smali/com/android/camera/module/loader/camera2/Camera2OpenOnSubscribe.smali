.class public Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;
.super Ljava/lang/Object;
.source "Camera2OpenOnSubscribe.java"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;
.implements Lcom/android/camera/module/loader/SurfaceCreatedCallback;
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "Lcom/android/camera/module/loader/camera2/Camera2Result;",
        ">;",
        "Lcom/android/camera/module/loader/SurfaceCreatedCallback;",
        "Lio/reactivex/Observer<",
        "Lcom/android/camera/module/loader/camera2/Camera2Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Camera2OpenOnSubScribe"


# instance fields
.field public mCamera2Result:Lcom/android/camera/module/loader/camera2/Camera2Result;

.field public mSingleEmitter:Lio/reactivex/SingleEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleEmitter<",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;"
        }
    .end annotation
.end field

.field public final mSurfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/loader/SurfaceStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->mSurfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;

    return-void
.end method

.method private submitResult(Lcom/android/camera/module/loader/camera2/Camera2Result;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->mSingleEmitter:Lio/reactivex/SingleEmitter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    const-string v0, "Camera2OpenOnSubScribe"

    const-string/jumbo v1, "onComplete"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onError: hasSurface = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->mSurfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;

    invoke-interface {v0}, Lcom/android/camera/module/loader/SurfaceStateListener;->hasSurface()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2OpenOnSubScribe"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 2
    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/Camera2Result;->create(I)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->mCamera2Result:Lcom/android/camera/module/loader/camera2/Camera2Result;

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->submitResult(Lcom/android/camera/module/loader/camera2/Camera2Result;)V

    return-void
.end method

.method public onGlSurfaceCreated()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGlSurfaceCreated: mSingleEmitter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->mSingleEmitter:Lio/reactivex/SingleEmitter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2OpenOnSubScribe"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->mSingleEmitter:Lio/reactivex/SingleEmitter;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGlSurfaceCreated: mCamera2Result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->mCamera2Result:Lcom/android/camera/module/loader/camera2/Camera2Result;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->mCamera2Result:Lcom/android/camera/module/loader/camera2/Camera2Result;

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->submitResult(Lcom/android/camera/module/loader/camera2/Camera2Result;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string/jumbo v0, "onGlSurfaceCreated: mSingleEmitter already disposed"

    .line 6
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNext(Lcom/android/camera/module/loader/camera2/Camera2Result;)V
    .locals 4

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCapture()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->mSurfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;

    invoke-interface {v1}, Lcom/android/camera/module/loader/SurfaceStateListener;->hasSurface()Z

    move-result v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNext: hasSurface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isCapture = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Camera2OpenOnSubScribe"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->mCamera2Result:Lcom/android/camera/module/loader/camera2/Camera2Result;

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->submitResult(Lcom/android/camera/module/loader/camera2/Camera2Result;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/loader/camera2/Camera2Result;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->onNext(Lcom/android/camera/module/loader/camera2/Camera2Result;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    const-string p1, "Camera2OpenOnSubScribe"

    const-string/jumbo v0, "onSubscribe"

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->mCamera2Result:Lcom/android/camera/module/loader/camera2/Camera2Result;

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->mSingleEmitter:Lio/reactivex/SingleEmitter;

    .line 3
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/snap/SnapTrigger;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->destroy()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribe: request to open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Camera2OpenOnSubScribe"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p0, v2}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->openCamera(IILio/reactivex/Observer;Z)V

    return-void
.end method
