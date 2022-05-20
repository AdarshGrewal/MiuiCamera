.class public final Lcom/android/camera/module/loader/camera2/Camera2OpenManager$1;
.super Lcom/xiaomi/camera/util/Singleton;
.source "Camera2OpenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/loader/camera2/Camera2OpenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/camera/util/Singleton<",
        "Lcom/android/camera/module/loader/camera2/Camera2OpenManager;",
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
.method public create()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    invoke-direct {v0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager$1;->create()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    move-result-object v0

    return-object v0
.end method
