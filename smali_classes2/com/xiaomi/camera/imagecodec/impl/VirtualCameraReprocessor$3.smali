.class public Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "VirtualCameraReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->openVTCamera(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$600(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClosed>>id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$1002(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Z)Z

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$700(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 5
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClosed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v3}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$700(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$702(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$1100(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$500(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V

    .line 9
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p1, v2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$1102(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Z)Z

    .line 10
    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onClosed<<"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected>>id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$600(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$700(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p1, v2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$1002(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Z)Z

    const/4 p1, 0x0

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v4}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$700(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v2, p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$702(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 8
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$300(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$400(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$400(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnected: clear task with timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$402(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 14
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDisconnected<<"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError>>id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$600(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$700(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p1, v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$1002(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Z)Z

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v3}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$700(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v1, p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$702(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 8
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    iget-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$300(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 10
    :try_start_1
    iget-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$400(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object p2

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 11
    iget-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$400(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p2

    .line 12
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError: clear task with timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p2, p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$402(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 14
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$500(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V

    .line 15
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onError<<"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 18
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$600(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpened>>id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v1, p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$702(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpened: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$700(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$802(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;I)I

    .line 6
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$902(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 7
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$1002(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Z)Z

    .line 8
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$500(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onOpened<<"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
