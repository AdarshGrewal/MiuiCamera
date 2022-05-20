.class public Lcom/android/camera/CameraErrorCallbackImpl;
.super Ljava/lang/Object;
.source "CameraErrorCallbackImpl.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraErrorCallback"


# instance fields
.field public mWeakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ActivityBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/CameraErrorCallbackImpl;->mWeakActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCameraError(Lcom/android/camera2/Camera2Proxy;I)V
    .locals 4

    const/4 p1, 0x5

    const/4 v0, 0x6

    const-string v1, "CameraErrorCallback"

    if-ne p2, p1, :cond_0

    const-string/jumbo v2, "onCameraError: camera service error"

    .line 1
    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    const-string/jumbo v2, "onCameraError: camera device error"

    .line 2
    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    const-string/jumbo v2, "onCameraError: camera disabled"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    const-string/jumbo v2, "onCameraError: max camera in use"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    const-string/jumbo v2, "onCameraError: camera in use"

    .line 5
    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCameraError: other error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackCameraError(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->getInstance()Lcom/android/camera/aftersales/AftersalesManager;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-virtual {p2, v2, v3, p1, v0}, Lcom/android/camera/aftersales/AftersalesManager;->count(JII)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/CameraErrorCallbackImpl;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 11
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/module/common/IModuleState;->isCreated()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 12
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ICameraMgr;->onCameraError()V

    goto :goto_1

    :cond_5
    const-string p1, "mActivity has been collected."

    .line 13
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method
