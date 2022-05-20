.class public Lcom/android/camera/features/mimojis/commen/state/VideoState$1;
.super Landroid/os/CountDownTimer;
.source "VideoState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/commen/state/VideoState;->updateRecordingTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/state/VideoState;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/state/VideoState;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState$1;->this$0:Lcom/android/camera/features/mimojis/commen/state/VideoState;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState$1;->this$0:Lcom/android/camera/features/mimojis/commen/state/VideoState;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->access$400(Lcom/android/camera/features/mimojis/commen/state/VideoState;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState$1;->this$0:Lcom/android/camera/features/mimojis/commen/state/VideoState;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->access$500(Lcom/android/camera/features/mimojis/commen/state/VideoState;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState$1;->this$0:Lcom/android/camera/features/mimojis/commen/state/VideoState;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->access$400(Lcom/android/camera/features/mimojis/commen/state/VideoState;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->stopVideoRecording(I)V

    return-void

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFinish: mStopRecordType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState$1;->this$0:Lcom/android/camera/features/mimojis/commen/state/VideoState;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->access$500(Lcom/android/camera/features/mimojis/commen/state/VideoState;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTick(J)V
    .locals 8

    const-wide/16 v0, 0x3e8

    add-long v2, p1, v0

    const-wide/16 v4, 0x384

    sub-long/2addr v2, v4

    const/4 v6, 0x0

    .line 1
    invoke-static {v2, v3, v6}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState$1;->this$0:Lcom/android/camera/features/mimojis/commen/state/VideoState;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->access$100(Lcom/android/camera/features/mimojis/commen/state/VideoState;)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v6, p1

    add-long/2addr v6, v4

    invoke-static {v3, v6, v7}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->access$002(Lcom/android/camera/features/mimojis/commen/state/VideoState;J)J

    .line 3
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTick:mTotalRecordingTime "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState$1;->this$0:Lcom/android/camera/features/mimojis/commen/state/VideoState;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->access$000(Lcom/android/camera/features/mimojis/commen/state/VideoState;)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState$1;->this$0:Lcom/android/camera/features/mimojis/commen/state/VideoState;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->access$000(Lcom/android/camera/features/mimojis/commen/state/VideoState;)J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState$1;->this$0:Lcom/android/camera/features/mimojis/commen/state/VideoState;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->access$300(Lcom/android/camera/features/mimojis/commen/state/VideoState;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xac

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
