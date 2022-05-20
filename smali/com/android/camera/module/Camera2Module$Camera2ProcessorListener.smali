.class public Lcom/android/camera/module/Camera2Module$Camera2ProcessorListener;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Lcom/xiaomi/camera/core/ParallelTaskData$OnParallelTaskDataAddToProcessorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Camera2ProcessorListener"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Camera2ProcessorListener"


# instance fields
.field public final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$Camera2ProcessorListener;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/Camera2Module$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module$Camera2ProcessorListener;-><init>(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method


# virtual methods
.method public OnParallelTaskDataAddToProcessor()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$Camera2ProcessorListener;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    const-string v1, "Camera2ProcessorListener"

    if-nez v0, :cond_0

    const-string v0, "OnParallelTaskDataAddToProcessor: module is null, returning."

    .line 2
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 3
    invoke-static {v0, v2}, Lcom/android/camera/module/Camera2Module;->access$5002(Lcom/android/camera/module/Camera2Module;Z)Z

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKeptBitmapTexture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->needKeepBitmapTexture()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mMultiSnapStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1900(Lcom/android/camera/module/Camera2Module;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mBlockQuickShot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$5600(Lcom/android/camera/module/Camera2Module;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",getSuperNight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->getSuperNight()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",mFixedShot2ShotTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$5700(Lcom/android/camera/module/Camera2Module;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isHdr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 7
    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isHQQuickShot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$5800(Lcom/android/camera/module/Camera2Module;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->needKeepBitmapTexture()Z

    move-result v1

    if-nez v1, :cond_4

    .line 11
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$1900(Lcom/android/camera/module/Camera2Module;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 12
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$5600(Lcom/android/camera/module/Camera2Module;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getSuperNight()Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$5700(Lcom/android/camera/module/Camera2Module;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$5900(Lcom/android/camera/module/Camera2Module;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    :cond_2
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$4900(Lcom/android/camera/module/Camera2Module;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$5800(Lcom/android/camera/module/Camera2Module;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$6000(Lcom/android/camera/module/Camera2Module;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 16
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->resetStatusToIdle()V

    :cond_4
    return-void
.end method
