.class public Lcom/android/camera/module/Camera2Module$LocalParallelServiceStatusListener;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Lcom/android/camera/LocalParallelService$ServiceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalParallelServiceStatusListener"
.end annotation


# instance fields
.field public final mCamera2ModuleRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field

.field public final mCameraDevice:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$LocalParallelServiceStatusListener;->mCameraDevice:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$LocalParallelServiceStatusListener;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onImagePostProcessEnd(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$LocalParallelServiceStatusListener;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isJpegDataReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$100(Lcom/android/camera/module/Camera2Module;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$LocalParallelServiceStatusListener;->mCameraDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/Camera2Proxy;

    invoke-static {v1}, Lcom/android/camera/module/Camera2Module;->access$200(Lcom/android/camera2/Camera2Proxy;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/module/Camera2Module;->onPictureTakenFinished(ZJ)V

    :cond_1
    return-void
.end method

.method public onImagePostProcessStart(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$LocalParallelServiceStatusListener;->mCamera2ModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 3
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$100(Lcom/android/camera/module/Camera2Module;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$LocalParallelServiceStatusListener;->mCameraDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/Camera2Proxy;

    invoke-static {v1}, Lcom/android/camera/module/Camera2Module;->access$200(Lcom/android/camera2/Camera2Proxy;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/module/Camera2Module;->onPictureTakenFinished(ZJ)V

    .line 5
    :cond_1
    invoke-static {v2}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackPictureCapture(I)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module$LocalParallelServiceStatusListener;->mCameraDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->onParallelImagePostProcStart()V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$300(Lcom/android/camera/module/Camera2Module;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setShot2Shot(J)V

    .line 11
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$400(Lcom/android/camera/module/Camera2Module;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setShot2Shutter(J)V

    .line 12
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$500(Lcom/android/camera/module/Camera2Module;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setShot2Gallery(J)V

    :cond_3
    return-void
.end method
