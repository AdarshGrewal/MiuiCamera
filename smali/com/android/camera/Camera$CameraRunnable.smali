.class public Lcom/android/camera/Camera$CameraRunnable;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraRunnable"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraRunnable"


# instance fields
.field public mCamera:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field public mReleaseDevice:Z

.field public mReleaseImmediate:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/Camera;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/Camera$CameraRunnable;->mCamera:Ljava/lang/ref/WeakReference;

    .line 3
    iput-boolean p2, p0, Lcom/android/camera/Camera$CameraRunnable;->mReleaseDevice:Z

    .line 4
    iput-boolean p3, p0, Lcom/android/camera/Camera$CameraRunnable;->mReleaseImmediate:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera$CameraRunnable;->mCamera:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 4
    invoke-interface {v1, v2}, Lcom/android/camera/module/Module;->release(Z)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->resetTimeOut()V

    .line 6
    iget-boolean v1, p0, Lcom/android/camera/Camera$CameraRunnable;->mReleaseDevice:Z

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, v0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v1}, Lcom/android/camera/CameraAppImpl;->containsResumedCameraInStack()Z

    move-result v1

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start releaseCameraDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraRunnable"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/camera/Camera$CameraRunnable;->mReleaseImmediate:Z

    invoke-virtual {v1, v3}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->release(Z)V

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityStopped()Z

    move-result v1

    .line 11
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000OooO()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    .line 12
    invoke-virtual {v3}, Lcom/android/camera/CameraAppImpl;->containsResumedCameraInStack()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->releaseCameraScreenNail()V

    goto :goto_1

    :cond_3
    const-string v0, "Camera2OpenManager release ignored."

    .line 15
    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method
