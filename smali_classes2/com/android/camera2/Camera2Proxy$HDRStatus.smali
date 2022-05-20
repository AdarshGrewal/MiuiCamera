.class public Lcom/android/camera2/Camera2Proxy$HDRStatus;
.super Ljava/lang/Object;
.source "Camera2Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/Camera2Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HDRStatus"
.end annotation


# instance fields
.field public enable:Z

.field public isFlashHDR:Z

.field public isSuperResolutionHDR:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->enable:Z

    .line 4
    iput-boolean p2, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isFlashHDR:Z

    .line 5
    iput-boolean p3, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isSuperResolutionHDR:Z

    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->enable:Z

    return v0
.end method

.method public isFlashHDR()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isFlashHDR:Z

    return v0
.end method

.method public isSuperResolutionHDR()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isSuperResolutionHDR:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-boolean v1, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->enable:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isFlashHDR:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isSuperResolutionHDR:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "hdrEnable: %b, isNightHDR: %b, isSuperResolutionHDR: %b"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
