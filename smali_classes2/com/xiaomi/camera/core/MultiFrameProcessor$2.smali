.class public Lcom/xiaomi/camera/core/MultiFrameProcessor$2;
.super Ljava/lang/Object;
.source "MultiFrameProcessor.java"

# interfaces
.implements Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/MultiFrameProcessor;->reprocessImage(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/core/MultiFrameProcessor;

.field public final synthetic val$captureDataBean:Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

.field public final synthetic val$imageType:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/MultiFrameProcessor;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$2;->this$0:Lcom/xiaomi/camera/core/MultiFrameProcessor;

    iput-object p2, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$2;->val$captureDataBean:Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    iput p3, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$2;->val$imageType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEarlyMetaAvailable(Lcom/xiaomi/camera/isp/ISPResult;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onEarlyMetaAvailable"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$2;->this$0:Lcom/xiaomi/camera/core/MultiFrameProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$300(Lcom/xiaomi/camera/core/MultiFrameProcessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError>>tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0O0:Z

    if-nez v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$2;->this$0:Lcom/xiaomi/camera/core/MultiFrameProcessor;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$402(Lcom/xiaomi/camera/core/MultiFrameProcessor;Z)Z

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$2;->this$0:Lcom/xiaomi/camera/core/MultiFrameProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$300(Lcom/xiaomi/camera/core/MultiFrameProcessor;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 6
    invoke-static {}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError<<cost="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$2;->this$0:Lcom/xiaomi/camera/core/MultiFrameProcessor;

    invoke-static {v3}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$500(Lcom/xiaomi/camera/core/MultiFrameProcessor;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reprocessImage failed image = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " reason = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onJpegAvailable([BLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onJpegAvailable: unexpected. imageTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onJpegImageAvailable(Landroid/media/Image;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onJpegImageAvailable: unexpected. imageTag = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTuningImageAvailable(Landroid/media/Image;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onYuvAvailable(Landroid/media/Image;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$2;->this$0:Lcom/xiaomi/camera/core/MultiFrameProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$300(Lcom/xiaomi/camera/core/MultiFrameProcessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onYuvAvailable>>tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p2, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$2;->this$0:Lcom/xiaomi/camera/core/MultiFrameProcessor;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$402(Lcom/xiaomi/camera/core/MultiFrameProcessor;Z)Z

    .line 4
    iget-object p2, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$2;->val$captureDataBean:Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    iget v1, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$2;->val$imageType:I

    invoke-virtual {p2, p1, v1, p3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$2;->this$0:Lcom/xiaomi/camera/core/MultiFrameProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$300(Lcom/xiaomi/camera/core/MultiFrameProcessor;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 6
    invoke-static {}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onYuvAvailable<<cost="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p3, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$2;->this$0:Lcom/xiaomi/camera/core/MultiFrameProcessor;

    invoke-static {p3}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$500(Lcom/xiaomi/camera/core/MultiFrameProcessor;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
