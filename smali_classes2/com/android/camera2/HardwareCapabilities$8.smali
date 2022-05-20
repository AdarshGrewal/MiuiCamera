.class public final Lcom/android/camera2/HardwareCapabilities$8;
.super Lcom/android/camera2/HardwareCapabilities$TypedValue;
.source "HardwareCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/HardwareCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/HardwareCapabilities$TypedValue<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/HardwareCapabilities$TypedValue;-><init>(Lcom/android/camera2/HardwareCapabilities$1;)V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Boolean;
    .locals 3

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSuperNightYUVReprocessSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/HardwareCapabilities$8;->create()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
