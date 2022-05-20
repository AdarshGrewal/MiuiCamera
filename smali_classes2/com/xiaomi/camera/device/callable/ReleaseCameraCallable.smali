.class public Lcom/xiaomi/camera/device/callable/ReleaseCameraCallable;
.super Lcom/xiaomi/camera/device/callable/CameraCallable;
.source "ReleaseCameraCallable.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/camera/device/callable/CameraCallable<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ReleaseCameraCallable"


# instance fields
.field public final mImmediately:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/xiaomi/camera/device/callable/CameraListener;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcom/xiaomi/camera/device/callable/CameraCallable;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;Landroid/os/Handler;)V

    .line 2
    iput-boolean p2, p0, Lcom/xiaomi/camera/device/callable/ReleaseCameraCallable;->mImmediately:Z

    return-void
.end method


# virtual methods
.method public call()Lcom/xiaomi/camera/device/callable/CallableReturn;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/camera/device/callable/CallableReturn<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookies()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsReleaseing:Z

    .line 4
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraId:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    sget-object v3, Lcom/xiaomi/camera/device/callable/ReleaseCameraCallable;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "E: releaseCamera: cid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, p0}, Lcom/android/camera2/Camera2Proxy;->setCaptureBusyCallback(Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;)V

    .line 9
    sget-object v1, Lcom/xiaomi/camera/device/callable/ReleaseCameraCallable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X: releaseCamera: cid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_2
    new-instance v0, Lcom/xiaomi/camera/device/callable/CallableReturn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/device/callable/CallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/device/callable/ReleaseCameraCallable;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onCaptureCompleted(Z)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/xiaomi/camera/device/callable/ReleaseCameraCallable;->mImmediately:Z

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/xiaomi/camera/device/callable/ReleaseCameraCallable;->TAG:Ljava/lang/String;

    const-string v0, "releaseCamera:close camera"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p1, Lcom/xiaomi/camera/device/callable/CloseCameraCallable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/xiaomi/camera/device/callable/CloseCameraCallable;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CameraListener;Landroid/os/Handler;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/camera/device/CameraService;->addCameraCallable(Lcom/xiaomi/camera/device/callable/CameraCallable;)V

    .line 4
    sget-boolean p1, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->isParallelTagOpen:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->closeCamera()V

    :cond_0
    return-void
.end method
