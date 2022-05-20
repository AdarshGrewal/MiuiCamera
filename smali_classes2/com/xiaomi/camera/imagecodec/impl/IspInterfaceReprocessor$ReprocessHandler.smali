.class public Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;
.super Landroid/os/Handler;
.source "IspInterfaceReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReprocessHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/camera/isp/ISPResult;

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->onEarlyMetadataCallback(Lcom/xiaomi/camera/isp/ISPResult;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {p1, v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$1600(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "recv MSG_DESTROY_ENCODER"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$300(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$1400(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    .line 9
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$402(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/isp/IspInterface;)Lcom/xiaomi/camera/isp/IspInterface;

    .line 10
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$1500(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 13
    :cond_3
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "recv MSG_REPROCESS_IMAGE"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$1200(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$1300(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    :cond_4
    :goto_0
    return-void
.end method
