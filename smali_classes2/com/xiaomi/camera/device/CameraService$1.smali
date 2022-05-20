.class public final Lcom/xiaomi/camera/device/CameraService$1;
.super Lcom/xiaomi/camera/util/Singleton;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/device/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/camera/util/Singleton<",
        "Lcom/xiaomi/camera/device/CameraService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/xiaomi/camera/device/CameraService;
    .locals 2

    .line 2
    new-instance v0, Lcom/xiaomi/camera/device/CameraService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/device/CameraService;-><init>(Lcom/xiaomi/camera/device/CameraService$1;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/device/CameraService$1;->create()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    return-object v0
.end method
