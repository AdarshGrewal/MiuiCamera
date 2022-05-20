.class public Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;
.super Landroid/os/Handler;
.source "MimojiModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/commen/module/MimojiModule;
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
            "Lcom/android/camera/features/mimojis/commen/module/MimojiModule;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;Landroid/os/Looper;Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

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

    if-eq v1, v3, :cond_f

    const/4 v4, 0x4

    if-eq v1, v4, :cond_e

    const/16 v4, 0x9

    if-eq v1, v4, :cond_d

    const/16 v4, 0x11

    if-eq v1, v4, :cond_c

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_b

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_8

    const/16 v2, 0x33

    if-eq v1, v2, :cond_7

    const/16 v2, 0x40

    if-eq v1, v2, :cond_5

    const/16 v0, 0x48

    if-eq v1, v0, :cond_3

    goto/16 :goto_1

    .line 6
    :cond_3
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v4, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {v0, v1, v4, v3, v4}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZ)V

    goto/16 :goto_1

    .line 7
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0x3a5

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz p1, :cond_10

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9
    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$1300(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V

    .line 10
    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->startBluetoothSco(I)V

    goto/16 :goto_1

    .line 11
    :cond_7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$400(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_10

    .line 12
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1, v4}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$502(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;Z)Z

    .line 13
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$600(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V

    goto/16 :goto_1

    .line 14
    :cond_8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_9

    move v1, v4

    goto :goto_0

    :cond_9
    move v1, v3

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_a

    move v3, v4

    :cond_a
    invoke-static {v0, v1, v3}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$300(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;ZZ)V

    goto :goto_1

    .line 15
    :cond_b
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$200(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V

    goto :goto_1

    .line 16
    :cond_c
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$900(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$1000(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$1200(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$1100(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 20
    :cond_d
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$800(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$700(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->initPreview(ZLcom/android/camera/CameraSize;)V

    goto :goto_1

    .line 21
    :cond_e
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$000(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long p1, v0, v2

    if-gez p1, :cond_10

    .line 23
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$100(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 24
    :cond_f
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_10
    :goto_1
    return-void
.end method
