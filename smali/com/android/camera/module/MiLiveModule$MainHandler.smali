.class public Lcom/android/camera/module/MiLiveModule$MainHandler;
.super Landroid/os/Handler;
.source "MiLiveModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MiLiveModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field public mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/MiLiveModule;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/camera/module/MiLiveModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/MiLiveModule;Landroid/os/Looper;Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/MiLiveModule;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

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

    const/16 v2, 0x80

    const/4 v3, 0x2

    if-eq v1, v3, :cond_e

    const/4 v4, 0x4

    if-eq v1, v4, :cond_d

    const/16 v4, 0x11

    if-eq v1, v4, :cond_c

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_b

    const/16 v2, 0x23

    const/4 v3, 0x1

    if-eq v1, v2, :cond_8

    const/16 p1, 0x33

    if-eq v1, p1, :cond_7

    const/16 p1, 0x40

    if-eq v1, p1, :cond_5

    const/16 p1, 0x100

    if-eq v1, p1, :cond_4

    const/16 p1, 0x101

    if-eq v1, p1, :cond_3

    goto/16 :goto_2

    .line 6
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;

    if-eqz p1, :cond_f

    .line 7
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;->onHibernate()V

    goto/16 :goto_2

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {p1}, Lcom/android/camera/module/MiLiveModule;->access$300(Lcom/android/camera/module/MiLiveModule;)V

    goto/16 :goto_2

    .line 9
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0x3a5

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz p1, :cond_f

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->silenceOuterAudio()V

    .line 12
    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->startBluetoothSco(I)V

    goto/16 :goto_2

    .line 13
    :cond_7
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_f

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    iput-boolean v3, p1, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    .line 15
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto :goto_2

    .line 16
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    if-lez v1, :cond_9

    move v1, v3

    goto :goto_0

    :cond_9
    move v1, v2

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_a

    goto :goto_1

    :cond_a
    move v3, v2

    :goto_1
    invoke-static {v0, v1, v3}, Lcom/android/camera/module/MiLiveModule;->access$200(Lcom/android/camera/module/MiLiveModule;ZZ)V

    goto :goto_2

    .line 17
    :cond_b
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {p1}, Lcom/android/camera/module/MiLiveModule;->access$100(Lcom/android/camera/module/MiLiveModule;)V

    goto :goto_2

    .line 18
    :cond_c
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 22
    :cond_d
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {p1}, Lcom/android/camera/module/MiLiveModule;->access$000(Lcom/android/camera/module/MiLiveModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long p1, v0, v2

    if-gez p1, :cond_f

    .line 24
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 25
    :cond_e
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$MainHandler;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_f
    :goto_2
    return-void
.end method
