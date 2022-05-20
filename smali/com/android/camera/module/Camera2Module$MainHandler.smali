.class public Lcom/android/camera/module/Camera2Module$MainHandler;
.super Landroid/os/Handler;
.source "Camera2Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainHandler"
.end annotation


# instance fields
.field public mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/camera/module/Camera2Module$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x80

    const/4 v4, 0x2

    if-eq v1, v4, :cond_12

    const-wide/16 v5, 0x1388

    const/4 v7, 0x4

    if-eq v1, v7, :cond_11

    const/16 v8, 0x11

    if-eq v1, v8, :cond_10

    const/16 v3, 0x1f

    if-eq v1, v3, :cond_f

    const/16 v3, 0x21

    if-eq v1, v3, :cond_e

    const/16 v3, 0x23

    const/4 v4, 0x0

    const/4 v8, 0x1

    if-eq v1, v3, :cond_b

    const/16 v3, 0x48

    if-eq v1, v3, :cond_9

    const/16 v3, 0x4b

    if-eq v1, v3, :cond_8

    const/16 v3, 0x1001

    if-eq v1, v3, :cond_7

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_6

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_5

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no consumer for this message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->enterAutoHibernation()V

    goto/16 :goto_2

    :pswitch_1
    const/16 p1, 0x42

    .line 8
    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->showAutoHibernationTip()V

    goto/16 :goto_2

    .line 10
    :pswitch_2
    invoke-virtual {v0, v8}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 11
    invoke-virtual {v0, v8}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 12
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X:resetStatusToIdle"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 13
    :pswitch_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa1

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p1, :cond_13

    const/16 v0, 0x78

    .line 15
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    goto/16 :goto_2

    .line 16
    :pswitch_4
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->onWaitingFocusFinished()Z

    goto/16 :goto_2

    .line 17
    :pswitch_5
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "wait save finish timeout"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {v0, v4}, Lcom/android/camera/module/Camera2Module;->access$5102(Lcom/android/camera/module/Camera2Module;Z)Z

    .line 19
    invoke-static {v0, v4, v8}, Lcom/android/camera/module/Camera2Module;->access$5200(Lcom/android/camera/module/Camera2Module;ZZ)V

    goto/16 :goto_2

    .line 20
    :pswitch_6
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v1, "fallback timeout"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iput v4, v0, Lcom/android/camera/module/BaseModule;->mIsSatFallback:I

    .line 22
    iput-boolean v4, v0, Lcom/android/camera/module/BaseModule;->mFallbackProcessed:Z

    const/4 p1, -0x1

    .line 23
    iput p1, v0, Lcom/android/camera/module/BaseModule;->mLastSatFallbackRequestId:I

    .line 24
    iget-boolean p1, v0, Lcom/android/camera/module/BaseModule;->mWaitingSnapshot:Z

    if-eqz p1, :cond_13

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result p1

    if-ne p1, v8, :cond_13

    .line 25
    iput-boolean v4, v0, Lcom/android/camera/module/BaseModule;->mWaitingSnapshot:Z

    const/16 p1, 0x3e

    .line 26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 27
    :pswitch_7
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "receive MSG_FIXED_SHOT2SHOT_TIME_OUT"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->resetStatusToIdle()V

    goto/16 :goto_2

    .line 29
    :pswitch_8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v1, :cond_13

    .line 30
    iget v0, v0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-ltz v0, :cond_3

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    :cond_3
    rem-int/lit16 v0, v0, 0x168

    add-int/lit16 v0, v0, 0x168

    :goto_0
    rsub-int v0, v0, 0x168

    .line 31
    rem-int/lit16 v0, v0, 0x168

    .line 32
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configRotationChange(II)V

    goto/16 :goto_2

    .line 33
    :pswitch_9
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/zxing/PreviewDecodeManager;->reset()V

    goto/16 :goto_2

    .line 34
    :pswitch_a
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p1, :cond_13

    .line 35
    invoke-interface {p1, v8}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFaceExists(I)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 36
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFocusViewVisible()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p1, :cond_13

    .line 37
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getFocusMode()I

    move-result p1

    if-ne v7, p1, :cond_13

    .line 38
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    goto/16 :goto_2

    .line 39
    :pswitch_b
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/module/Camera2Module;->onShutterButtonClick(I)V

    goto/16 :goto_2

    .line 40
    :pswitch_c
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Oops, capture timeout later release timeout!"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 41
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/camera/module/Camera2Module;->onPictureTakenFinished(ZJ)V

    goto/16 :goto_2

    .line 42
    :pswitch_d
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 43
    :cond_4
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$3600(Lcom/android/camera/module/Camera2Module;)V

    .line 44
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$600(Lcom/android/camera/module/Camera2Module;)Lio/reactivex/ObservableEmitter;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    goto/16 :goto_2

    .line 45
    :pswitch_e
    invoke-virtual {v0, v8}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    goto/16 :goto_2

    .line 46
    :pswitch_f
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_13

    .line 47
    iput-boolean v8, v0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    .line 48
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto/16 :goto_2

    .line 49
    :cond_5
    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->setActivity(Lcom/android/camera/Camera;)V

    goto/16 :goto_2

    .line 50
    :cond_6
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v0, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, v0}, Lcom/android/camera/ActivityBase;->restartModule(I)V

    goto/16 :goto_2

    .line 51
    :cond_7
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->startVideoRecording()V

    goto/16 :goto_2

    .line 52
    :cond_8
    invoke-static {v0, v8}, Lcom/android/camera/module/Camera2Module;->access$4902(Lcom/android/camera/module/Camera2Module;Z)Z

    .line 53
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "receive MSG_FIXED_SNAP_SHOT_DELAY_TIME"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$5000(Lcom/android/camera/module/Camera2Module;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 55
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->resetStatusToIdle()V

    goto :goto_2

    .line 56
    :cond_9
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v8, :cond_a

    move v4, v8

    :cond_a
    invoke-virtual {v0, v1, v8, v4, v8}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZ)V

    goto :goto_2

    .line 57
    :cond_b
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_c

    move v1, v8

    goto :goto_1

    :cond_c
    move v1, v4

    :goto_1
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_d

    move v4, v8

    :cond_d
    invoke-static {v0, v1, v4}, Lcom/android/camera/module/Camera2Module;->access$4800(Lcom/android/camera/module/Camera2Module;ZZ)V

    goto :goto_2

    .line 58
    :cond_e
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/android/camera/module/Camera2Module;->access$4600(Lcom/android/camera/module/Camera2Module;II)V

    goto :goto_2

    .line 59
    :cond_f
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$4700(Lcom/android/camera/module/Camera2Module;)V

    goto :goto_2

    .line 60
    :cond_10
    invoke-virtual {p0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 61
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 63
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 64
    :cond_11
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$4500(Lcom/android/camera/module/Camera2Module;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    cmp-long p1, v1, v5

    if-gez p1, :cond_13

    const-wide/16 v0, 0x64

    .line 66
    invoke-virtual {p0, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 67
    :cond_12
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    :cond_13
    :goto_2
    :pswitch_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_10
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_f
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
