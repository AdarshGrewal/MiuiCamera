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
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x80

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    const/4 v3, 0x4

    if-eq v0, v3, :cond_9

    const/16 v3, 0x9

    if-eq v0, v3, :cond_8

    const/16 v3, 0x11

    if-eq v0, v3, :cond_7

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_6

    const/16 v1, 0x23

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x33

    if-eq v0, v1, :cond_2

    const/16 v1, 0x48

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZ)V

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$400(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1, v3}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$502(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;Z)Z

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$600(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v0, v1, v2}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$300(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;ZZ)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$200(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$800(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$900(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$1100(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$1000(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$700(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$000(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1388

    cmp-long p1, v0, v4

    if-gez p1, :cond_b

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$100(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_b
    :goto_1
    return-void
.end method
