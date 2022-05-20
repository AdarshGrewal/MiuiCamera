.class public Lcom/xiaomi/camera/core/PostProcessor$1;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/core/PostProcessor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionCallback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown result type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$400(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$400(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/IResultDataCallbackListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/camera/core/IResultDataCallbackListener;->onResultDataReceived(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onResultDataCallback received"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6
    :cond_2
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSessionCallback: session died"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$300(Lcom/xiaomi/camera/core/PostProcessor;)V

    goto :goto_1

    .line 8
    :cond_3
    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 9
    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onMetadataReceived(ILjava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_4
    check-cast p3, Lcom/xiaomi/engine/ResultData;

    .line 11
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$000(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    .line 12
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$1;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$000(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/protocol/ISessionStatusCallBackListener;

    if-eqz p1, :cond_5

    .line 13
    :try_start_0
    invoke-virtual {p3}, Lcom/xiaomi/engine/ResultData;->getResultId()I

    move-result p2

    invoke-virtual {p3}, Lcom/xiaomi/engine/ResultData;->getFlawResult()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/xiaomi/protocol/ISessionStatusCallBackListener;->onSessionStatusFlawResultData(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 15
    :cond_5
    :goto_0
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSessionCallback: FLAW getResultId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/xiaomi/engine/ResultData;->getResultId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", getFlawResult: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p3}, Lcom/xiaomi/engine/ResultData;->getFlawResult()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method
