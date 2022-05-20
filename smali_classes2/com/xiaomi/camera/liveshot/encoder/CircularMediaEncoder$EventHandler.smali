.class public Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$EventHandler;
.super Landroid/os/Handler;
.source "CircularMediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$EventHandler;->this$0:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$EventHandler;->this$0:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->doRelease()V

    .line 4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 5
    check-cast p1, Landroid/os/Handler;

    .line 6
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$EventHandler;->this$0:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->doStop()V

    .line 10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 11
    check-cast p1, Landroid/os/Handler;

    .line 12
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$EventHandler;->this$0:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->doQuit()V

    .line 16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 17
    check-cast p1, Landroid/os/Handler;

    .line 18
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$EventHandler;->this$0:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->doStart()V

    .line 22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    .line 23
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    :goto_0
    return-void
.end method
