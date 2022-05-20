.class public final Lcom/xiaomi/camera/videocast/VideoCastService$ServiceHandler;
.super Landroid/os/Handler;
.source "VideoCastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/videocast/VideoCastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_PROMPT_AUTHORISE_DIALOG:I


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/videocast/VideoCastService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/videocast/VideoCastService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceHandler;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_3

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$800()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceHandler;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-static {v2, v1}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$900(Lcom/xiaomi/camera/videocast/VideoCastService;Ljava/lang/String;)Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->APPROVED:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->REJECTED:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v1, "Not authorised for video cast"

    invoke-direct {p1, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authorise result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v2, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->APPROVED:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    if-ne v1, v2, :cond_2

    .line 9
    iget-object v1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceHandler;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-static {v1}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$1000(Lcom/xiaomi/camera/videocast/VideoCastService;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    move-result-object v1

    const/16 v2, 0x105

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/camera/util/StateMachine;->sendMessage(II)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceHandler;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-static {v1}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$1000(Lcom/xiaomi/camera/videocast/VideoCastService;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    move-result-object v1

    const/16 v2, 0x106

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/camera/util/StateMachine;->sendMessage(II)V

    .line 11
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return-void
.end method
