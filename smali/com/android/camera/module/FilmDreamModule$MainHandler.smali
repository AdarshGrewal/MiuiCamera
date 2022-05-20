.class public Lcom/android/camera/module/FilmDreamModule$MainHandler;
.super Landroid/os/Handler;
.source "FilmDreamModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/FilmDreamModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/FilmDreamModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/FilmDreamModule;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/FilmDreamModule$MainHandler;->this$0:Lcom/android/camera/module/FilmDreamModule;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x80

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    const/16 v2, 0x11

    if-eq p1, v2, :cond_3

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x33

    if-eq p1, v0, :cond_1

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/FilmDreamModule$MainHandler;->this$0:Lcom/android/camera/module/FilmDreamModule;

    invoke-static {p1}, Lcom/android/camera/module/FilmDreamModule;->access$200(Lcom/android/camera/module/FilmDreamModule;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/FilmDreamModule$MainHandler;->this$0:Lcom/android/camera/module/FilmDreamModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_6

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/FilmDreamModule$MainHandler;->this$0:Lcom/android/camera/module/FilmDreamModule;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/FilmDreamModule$MainHandler;->this$0:Lcom/android/camera/module/FilmDreamModule;

    invoke-static {p1}, Lcom/android/camera/module/FilmDreamModule;->access$100(Lcom/android/camera/module/FilmDreamModule;)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/FilmDreamModule$MainHandler;->this$0:Lcom/android/camera/module/FilmDreamModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/FilmDreamModule$MainHandler;->this$0:Lcom/android/camera/module/FilmDreamModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/FilmDreamModule$MainHandler;->this$0:Lcom/android/camera/module/FilmDreamModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/FilmDreamModule$MainHandler;->this$0:Lcom/android/camera/module/FilmDreamModule;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/FilmDreamModule$MainHandler;->this$0:Lcom/android/camera/module/FilmDreamModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/camera/module/FilmDreamModule$MainHandler;->this$0:Lcom/android/camera/module/FilmDreamModule;

    invoke-static {p1}, Lcom/android/camera/module/FilmDreamModule;->access$000(Lcom/android/camera/module/FilmDreamModule;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x1388

    cmp-long p1, v0, v3

    if-gez p1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/android/camera/module/FilmDreamModule$MainHandler;->this$0:Lcom/android/camera/module/FilmDreamModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/FilmDreamModule$MainHandler;->this$0:Lcom/android/camera/module/FilmDreamModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_6
    :goto_0
    return-void
.end method
