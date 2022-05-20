.class public Lcom/android/camera/module/SuperMoonModule$LocalParallelServiceStatusListener;
.super Ljava/lang/Object;
.source "SuperMoonModule.java"

# interfaces
.implements Lcom/android/camera/LocalParallelService$ServiceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/SuperMoonModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalParallelServiceStatusListener"
.end annotation


# instance fields
.field public final mCameraDevice:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public final mSuperMoonModuleRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/SuperMoonModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/SuperMoonModule;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/SuperMoonModule$LocalParallelServiceStatusListener;->mCameraDevice:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/SuperMoonModule$LocalParallelServiceStatusListener;->mSuperMoonModuleRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onImagePostProcessEnd(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$LocalParallelServiceStatusListener;->mSuperMoonModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/SuperMoonModule;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isJpegDataReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oo0O()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/module/SuperMoonModule;->onPictureTakenFinished(ZJ)V

    :cond_0
    return-void
.end method

.method public onImagePostProcessStart(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$LocalParallelServiceStatusListener;->mSuperMoonModuleRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/SuperMoonModule;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oo0O()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/module/SuperMoonModule;->onPictureTakenFinished(ZJ)V

    .line 5
    :cond_1
    invoke-static {v2}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackPictureCapture(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/SuperMoonModule$LocalParallelServiceStatusListener;->mCameraDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->onParallelImagePostProcStart()V

    :cond_2
    return-void
.end method
