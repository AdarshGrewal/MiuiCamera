.class public Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "MiCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/MiCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptureSessionStateCallback"
.end annotation


# instance fields
.field public mClientCb:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mId:I

.field public final synthetic this$0:Lcom/android/camera2/MiCamera2;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 2
    iput p2, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->mId:I

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->mClientCb:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera2/MiCamera2;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClosed: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2;->access$1200(Lcom/android/camera2/MiCamera2;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->mId:I

    iget-object v1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2;->access$1200(Lcom/android/camera2/MiCamera2;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->mClientCb:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;->onPreviewSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    :cond_0
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera2/MiCamera2;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigureFailed: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2;->access$1200(Lcom/android/camera2/MiCamera2;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->mId:I

    iget-object v1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2;->access$1200(Lcom/android/camera2/MiCamera2;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->mClientCb:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;->onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    :cond_0
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->mId:I

    iget-object v1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2;->access$1200(Lcom/android/camera2/MiCamera2;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2;->access$1300(Lcom/android/camera2/MiCamera2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/android/camera2/MiCamera2;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigured: id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", session = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", reprocessable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->isReprocessable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCaptureSession@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 8
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/performance/PerformanceManager;->isProfilingStartPreview()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    const-string v2, "captureSessionReady2startPreview"

    invoke-virtual {v1, v2}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v1, p1}, Lcom/android/camera2/MiCamera2;->access$1402(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 11
    iget-object p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2;->access$1400(Lcom/android/camera2/MiCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->isReprocessable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2;->access$400(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2;->access$1400(Lcom/android/camera2/MiCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/camera2/MiCamera2;->access$1500(Lcom/android/camera2/MiCamera2;Lcom/android/camera/CameraSize;Landroid/view/Surface;)V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/camera2/MiCamera2;->access$1602(Lcom/android/camera2/MiCamera2;Z)Z

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    iget-object p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2;->access$1700(Lcom/android/camera2/MiCamera2;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->mId:I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2;->access$1800(Lcom/android/camera2/MiCamera2;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 16
    iget-object p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->notifyVideoStreamEnd()V

    .line 17
    iget-object p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {p1, v1}, Lcom/android/camera2/MiCamera2;->access$1702(Lcom/android/camera2/MiCamera2;Z)Z

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2;->access$1300(Lcom/android/camera2/MiCamera2;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 19
    :try_start_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2;->access$1900(Lcom/android/camera2/MiCamera2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 20
    invoke-static {}, Lcom/android/camera2/MiCamera2;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigured: is mDeferOutputConfigurations null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->onPreviewSessionSuccess()V

    goto :goto_0

    .line 23
    :cond_3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2;->access$2000(Lcom/android/camera2/MiCamera2;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 24
    iget-object p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 25
    :cond_4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2;->access$2100(Lcom/android/camera2/MiCamera2;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera2/MiCamera2;->updateDeferPreviewSession(Landroid/view/Surface;)Z

    .line 26
    :goto_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000oo0()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    .line 27
    invoke-static {p1}, Lcom/android/camera2/MiCamera2;->access$2200(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isSupportParallelCameraDevice()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    .line 28
    invoke-static {p1}, Lcom/android/camera2/MiCamera2;->access$2300(Lcom/android/camera2/MiCamera2;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    .line 29
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 30
    :cond_5
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder(Z)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 31
    invoke-static {}, Lcom/android/camera2/MiCamera2;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepareParallelCapture"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->prepareParallelCapture()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 33
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 34
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_6
    :goto_1
    return-void
.end method

.method public onPreviewRelease(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->mId:I

    iget-object v1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2;->access$1200(Lcom/android/camera2/MiCamera2;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->mClientCb:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;->onPreviewRelease(II)V

    :cond_0
    return-void
.end method

.method public onPreviewSessionSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2;->access$1300(Lcom/android/camera2/MiCamera2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2;->access$1900(Lcom/android/camera2/MiCamera2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    iget v0, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->mId:I

    iget-object v1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2;->access$1200(Lcom/android/camera2/MiCamera2;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->mClientCb:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2;->access$1400(Lcom/android/camera2/MiCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;->onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setClientCb(Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->mClientCb:Ljava/lang/ref/WeakReference;

    return-void
.end method
