.class public Lcom/xiaomi/camera/core/MultiFrameProcessor$1;
.super Ljava/lang/Object;
.source "MultiFrameProcessor.java"

# interfaces
.implements Lcom/xiaomi/camera/processor/ProcessResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/MultiFrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/core/MultiFrameProcessor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/MultiFrameProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$1;->this$0:Lcom/xiaomi/camera/core/MultiFrameProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessFinished(Lcom/xiaomi/camera/core/CaptureData;Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessFinished: doReprocess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataListener()Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v0

    if-nez v0, :cond_5

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onProcessFinished: null CaptureDataListener!"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isHdrSR()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getHDRSRResult()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 7
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->close()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getMultiFrameProcessResult()Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->close()V

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->close()V

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    if-eqz p2, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getMultiFrameProcessResult()Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    move-result-object p2

    .line 14
    iget-object v1, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$1;->this$0:Lcom/xiaomi/camera/core/MultiFrameProcessor;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isCapturedByFrontCamera()Z

    move-result v3

    invoke-static {v1, p2, v2, v3}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$200(Lcom/xiaomi/camera/core/MultiFrameProcessor;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;IZ)V

    .line 15
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSatFusionType()I

    move-result v1

    if-eqz v1, :cond_6

    .line 16
    iget-object v1, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor$1;->this$0:Lcom/xiaomi/camera/core/MultiFrameProcessor;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isCapturedByFrontCamera()Z

    move-result v3

    invoke-static {v1, p2, v2, v3}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$200(Lcom/xiaomi/camera/core/MultiFrameProcessor;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;IZ)V

    .line 17
    :cond_6
    invoke-static {}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v1, "onProcessFinished: dispatch image to algorithm engine"

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-interface {v0, p1}, Lcom/xiaomi/camera/core/CaptureDataListener;->onCaptureDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method
