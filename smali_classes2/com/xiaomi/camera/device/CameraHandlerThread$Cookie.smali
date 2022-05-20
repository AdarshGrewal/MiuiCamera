.class public final Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;
.super Ljava/lang/Object;
.source "CameraHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/device/CameraHandlerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cookie"
.end annotation


# instance fields
.field public mCamera2Device:Lcom/android/camera2/Camera2Proxy;

.field public mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

.field public final mCameraId:Ljava/lang/String;

.field public mIsClosing:Z

.field public mIsOpening:Z

.field public mIsReleaseing:Z

.field public final mStreamingHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    .line 4
    iput-boolean v0, p0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsClosing:Z

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsReleaseing:Z

    .line 6
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Streaming ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 8
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mStreamingHandler:Landroid/os/Handler;

    .line 9
    iput-object p1, p0, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/xiaomi/camera/device/CameraHandlerThread$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;-><init>(Ljava/lang/String;)V

    return-void
.end method
