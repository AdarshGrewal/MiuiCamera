.class public Lcom/android/camera/module/VideoBase$MainHandler;
.super Landroid/os/Handler;
.source "VideoBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoBase;
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
            "Lcom/android/camera/module/VideoBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoBase;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/module/VideoBase$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/VideoBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x80

    const/4 v4, 0x2

    if-eq v1, v4, :cond_17

    const-wide/16 v5, 0x1388

    const/4 v7, 0x4

    if-eq v1, v7, :cond_15

    const/16 v7, 0x11

    if-eq v1, v7, :cond_14

    const/16 v4, 0x23

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v4, :cond_11

    const/16 v4, 0x2a

    if-eq v1, v4, :cond_10

    const/16 v4, 0x37

    if-eq v1, v4, :cond_f

    const/16 v4, 0x3c

    if-eq v1, v4, :cond_e

    const/16 v4, 0x9

    if-eq v1, v4, :cond_d

    const/16 v4, 0xa

    if-eq v1, v4, :cond_c

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_b

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_a

    const/16 v2, 0x33

    if-eq v1, v2, :cond_9

    const/16 v2, 0x34

    if-eq v1, v2, :cond_8

    const/16 v2, 0x46

    if-eq v1, v2, :cond_6

    const/16 v2, 0x47

    if-eq v1, v2, :cond_5

    packed-switch v1, :pswitch_data_0

    sget-boolean v1, Lcom/android/camera/module/BaseModule;->DEBUG:Z

    const-string/jumbo v2, "no consumer for this message: "

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->enterAutoHibernation()V

    goto/16 :goto_2

    :pswitch_1
    const/16 p1, 0x42

    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->showAutoHibernationTip()V

    goto/16 :goto_2

    :pswitch_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0x3a5

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz p1, :cond_18

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->silenceOuterAudio()V

    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->startBluetoothSco(I)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->startVideoRecording()V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string/jumbo v1, "video_cover_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "video_path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/module/BaseModule;->onVideoCoverCreated([BLjava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "bundle data is NULL!!!!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->enterSavePowerMode()V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v0, v7}, Lcom/android/camera/module/VideoBase;->stopVideoRecording(Z)V

    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_18

    iput-boolean v8, v0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->onWaitStopCallbackTimeout()V

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v0, v2}, Lcom/android/camera/module/VideoBase;->setActivity(Lcom/android/camera/Camera;)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v0, v7}, Lcom/android/camera/module/VideoBase;->stopVideoRecording(Z)V

    iput-boolean v8, v0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->onPreviewStart()V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result p1

    if-eq p1, v8, :cond_18

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/app/Activity;->setVolumeControlStream(I)V

    goto/16 :goto_2

    :cond_e
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "fallback timeout"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, v0, Lcom/android/camera/module/BaseModule;->mIsSatFallback:I

    iput-boolean v7, v0, Lcom/android/camera/module/BaseModule;->mFallbackProcessed:Z

    const/4 p1, -0x1

    iput p1, v0, Lcom/android/camera/module/BaseModule;->mLastSatFallbackRequestId:I

    goto :goto_2

    :cond_f
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus timeout!"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocused()V

    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->onWaitingFocusFinished()Z

    goto :goto_2

    :cond_10
    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->updateRecordingTime()V

    goto :goto_2

    :cond_11
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_12

    move v1, v8

    goto :goto_0

    :cond_12
    move v1, v7

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_13

    move v7, v8

    :cond_13
    invoke-static {v0, v1, v7}, Lcom/android/camera/module/VideoBase;->access$000(Lcom/android/camera/module/VideoBase;ZZ)V

    goto :goto_2

    :cond_14
    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_15
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p1

    iget v1, v0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    if-eq p1, v1, :cond_16

    iget-object p1, v0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean p1, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-nez p1, :cond_16

    invoke-interface {v0}, Lcom/android/camera/module/Module;->startPreview()V

    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/camera/module/VideoBase;->mOnResumeTime:J

    sub-long/2addr v1, v3

    cmp-long p1, v1, v5

    if-gez p1, :cond_18

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_17
    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    :cond_18
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
