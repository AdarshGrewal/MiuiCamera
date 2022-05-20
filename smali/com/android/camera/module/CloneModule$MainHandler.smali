.class public Lcom/android/camera/module/CloneModule$MainHandler;
.super Landroid/os/Handler;
.source "CloneModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CloneModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# static fields
.field public static final MSG_NEW_PREVIEW_IMAGE_ARRIVING:I = 0x101

.field public static final MSG_WAIT_SHUTTER_SOUND_FINISH:I = 0x100


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/CloneModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CloneModule;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/CloneModule$MainHandler;->this$0:Lcom/android/camera/module/CloneModule;

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

    if-eq p1, v1, :cond_7

    const/4 v2, 0x4

    if-eq p1, v2, :cond_6

    const/16 v2, 0x9

    if-eq p1, v2, :cond_5

    const/16 v2, 0x11

    if-eq p1, v2, :cond_4

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_3

    const/16 v0, 0x33

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x101

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/CloneModule$MainHandler;->this$0:Lcom/android/camera/module/CloneModule;

    iget-boolean v0, p1, Lcom/android/camera/module/CloneModule;->mInRecording:Z

    if-eqz v0, :cond_8

    .line 3
    iget v0, p1, Lcom/android/camera/module/CloneModule;->mFrameCount:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/camera/module/CloneModule;->mFrameCount:I

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/CloneModule$MainHandler;->this$0:Lcom/android/camera/module/CloneModule;

    invoke-virtual {p1}, Lcom/android/camera/module/CloneModule;->startVideoRecording()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/CloneModule$MainHandler;->this$0:Lcom/android/camera/module/CloneModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_8

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/CloneModule$MainHandler;->this$0:Lcom/android/camera/module/CloneModule;

    iput-boolean v1, p1, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/CloneModule$MainHandler;->this$0:Lcom/android/camera/module/CloneModule;

    invoke-static {p1}, Lcom/android/camera/module/CloneModule;->access$000(Lcom/android/camera/module/CloneModule;)V

    goto :goto_0

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/CloneModule$MainHandler;->this$0:Lcom/android/camera/module/CloneModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/CloneModule$MainHandler;->this$0:Lcom/android/camera/module/CloneModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/CloneModule$MainHandler;->this$0:Lcom/android/camera/module/CloneModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/CloneModule$MainHandler;->this$0:Lcom/android/camera/module/CloneModule;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/CloneModule$MainHandler;->this$0:Lcom/android/camera/module/CloneModule;

    invoke-static {p1}, Lcom/android/camera/module/CloneModule;->access$100(Lcom/android/camera/module/CloneModule;)V

    goto :goto_0

    .line 14
    :cond_6
    iget-object p1, p0, Lcom/android/camera/module/CloneModule$MainHandler;->this$0:Lcom/android/camera/module/CloneModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/camera/module/CloneModule$MainHandler;->this$0:Lcom/android/camera/module/CloneModule;

    iget-wide v3, p1, Lcom/android/camera/module/CloneModule;->mOnResumeTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x1388

    cmp-long v0, v0, v3

    if-gez v0, :cond_8

    .line 16
    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 17
    :cond_7
    iget-object p1, p0, Lcom/android/camera/module/CloneModule$MainHandler;->this$0:Lcom/android/camera/module/CloneModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_8
    :goto_0
    return-void
.end method
