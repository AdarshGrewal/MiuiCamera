.class public Lcom/android/camera/Camera$AdjBoostCallable;
.super Lcom/xiaomi/camera/device/callable/CameraCallable;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdjBoostCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/camera/device/callable/CameraCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AdjBoostCallable"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0}, Lcom/xiaomi/camera/device/callable/CameraCallable;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/Camera$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/Camera$AdjBoostCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/xiaomi/camera/device/callable/CallableReturn;
    .locals 3
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

    invoke-virtual {v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookies()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    .line 2
    iget-object v1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->isCaptureBusy(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->adjBoost()V

    .line 4
    :cond_1
    new-instance v0, Lcom/xiaomi/camera/device/callable/CallableReturn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/device/callable/CallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/Camera$AdjBoostCallable;->TAG:Ljava/lang/String;

    return-object v0
.end method
