.class public Lcom/xiaomi/camera/core/PostProcessor$7;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;


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
    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private startRaw2YuvBottomHalf(Lcom/xiaomi/camera/core/ParallelTaskData;J)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRaw2YuvBottomHalf: E. timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRaw2YuvDone(Z)V

    .line 3
    new-instance v10, Lcom/xiaomi/camera/core/CaptureData;

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureId()Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getOriginalProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v1, v10

    move-wide v5, p2

    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/camera/core/CaptureData;-><init>(IIIJLjava/lang/String;ZLcom/xiaomi/camera/core/ImageProcessor;)V

    .line 6
    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$900(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    move-result-object p2

    invoke-virtual {v10, p2}, Lcom/xiaomi/camera/core/CaptureData;->setDataListener(Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;)V

    .line 7
    invoke-virtual {v10, v0}, Lcom/xiaomi/camera/core/CaptureData;->setRequireTuningData(Z)V

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p2

    invoke-virtual {p2, v10}, Lcom/xiaomi/camera/core/ParallelDataZipper;->postStartTask(Lcom/xiaomi/camera/core/CaptureData;)V

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p2

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/xiaomi/camera/core/ParallelDataZipper;->join(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    .line 10
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "startRaw2YuvBottomHalf: X"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onEarlyMetaAvailable(Lcom/xiaomi/camera/isp/ISPResult;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$400(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/isp/ISPResult;->getAnchorTimestamp()J

    move-result-wide v0

    .line 3
    new-instance p1, Lcom/xiaomi/engine/ResultData;

    invoke-direct {p1}, Lcom/xiaomi/engine/ResultData;-><init>()V

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/engine/ResultData;->setTimeStamp(J)V

    .line 5
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$400(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/IResultDataCallbackListener;

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    const-string v2, "earlyMeta"

    .line 6
    invoke-interface {v0, v1, v2, p1}, Lcom/xiaomi/camera/core/IResultDataCallbackListener;->onResultDataReceived(ILjava/lang/String;Ljava/lang/Object;)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onResultDataCallback received"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 2
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    .line 3
    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[3] onError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {p2, v2}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackJpegReprocess(II)V

    .line 6
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$500(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTuningImage()Landroid/media/Image;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$2800(Lcom/xiaomi/camera/core/PostProcessor;Landroid/media/Image;)V

    .line 8
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    .line 9
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$1700(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 10
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[3] onError: remove task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$1500(Lcom/xiaomi/camera/core/PostProcessor;)V

    return-void
.end method

.method public onJpegAvailable([BLjava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v1, 0x1

    .line 3
    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[3] onJpegAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "algo_reprocess_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 6
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "algo_image_save_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-static {p2, v1}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackJpegReprocess(II)V

    .line 8
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1, v8, v9}, Lcom/xiaomi/camera/core/PostProcessor;->access$500(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    const-string p2, "JPEG"

    .line 10
    invoke-virtual {v1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->isJpegDataReady(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-boolean p2, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    if-eqz p2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[3] onJpegAvailable: jpeg data isn\'t ready, save action has been ignored."

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 12
    :cond_2
    :goto_0
    sget-boolean p2, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    invoke-virtual {v1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setMemDebug(Z)V

    .line 13
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p2

    const/4 v2, -0x1

    .line 14
    invoke-static {p2, v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p2

    .line 15
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[3] onJpegAvailable: save image start. dataLen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    move-wide v2, v8

    invoke-static/range {v2 .. v7}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(JIJLjava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2, v2}, Lcom/android/camera/storage/ImageSaver;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z

    move-result p1

    .line 18
    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTuningImage()Landroid/media/Image;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$2800(Lcom/xiaomi/camera/core/PostProcessor;Landroid/media/Image;)V

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1, v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2900(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 21
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;->onImagePostProcessEnd(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 22
    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[3] onJpegAvailable: parallelTaskHashMap remove "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$3008(Lcom/xiaomi/camera/core/PostProcessor;)I

    .line 24
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1, v8, v9}, Lcom/xiaomi/camera/core/PostProcessor;->access$1700(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$3000(Lcom/xiaomi/camera/core/PostProcessor;)I

    move-result v1

    invoke-static {p2, p1, v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$3100(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 26
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$3200(Lcom/xiaomi/camera/core/PostProcessor;)V

    .line 27
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1, v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$3002(Lcom/xiaomi/camera/core/PostProcessor;I)I

    goto :goto_1

    .line 28
    :cond_5
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[3] onJpegAvailable: null task data. timestamp="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$3300(Lcom/xiaomi/camera/core/PostProcessor;)V

    .line 30
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$1500(Lcom/xiaomi/camera/core/PostProcessor;)V

    return-void
.end method

.method public onJpegImageAvailable(Landroid/media/Image;Ljava/lang/String;Z)V
    .locals 10

    .line 1
    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 2
    aget-object v0, p2, p3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v0, 0x1

    .line 3
    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[3] onJpegImageAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 5
    invoke-static {p2, v0}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackJpegReprocess(II)V

    .line 6
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algo_reprocess_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 7
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algo_image_save_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1, v7, v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$500(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 9
    invoke-static {p1}, Lcom/android/camera/JpegUtil;->getPlanesExtra(Landroid/media/Image;)[Landroid/media/Image$Plane;

    move-result-object v1

    .line 10
    invoke-static {v1, p3}, Lcom/android/camera/JpegUtil;->getJpegData([Landroid/media/Image$Plane;I)[B

    move-result-object v2

    if-nez v2, :cond_1

    .line 11
    invoke-static {p1}, Lcom/android/camera/Util;->getFirstPlane(Landroid/media/Image;)[B

    move-result-object v2

    .line 12
    :cond_1
    invoke-virtual {v9, v2, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    .line 13
    invoke-static {v1, v0}, Lcom/android/camera/JpegUtil;->getJpegData([Landroid/media/Image$Plane;I)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {v9, p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setDataOfTheRegionUnderWatermarks([B)V

    .line 15
    invoke-virtual {v9}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 17
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 18
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v3

    .line 19
    invoke-static {v0, v1, v3}, Lcom/android/camera/Util;->getVendorWatermarkRange(III)[I

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[3] onJpegImageAvailable: rotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", watermarkRange = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {v9, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCoordinatesOfTheRegionUnderWatermarks([I)V

    .line 24
    sget-boolean p2, Lcom/android/camera/Util;->WATER_MARK_DUMP:Z

    if-eqz p2, :cond_2

    .line 25
    invoke-virtual {v9}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object p2

    .line 26
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[3] onJpegImageAvailable: dump_water_mark watermarkRange: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", name = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", rect = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-static {v3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/Util;->saveBlobToFile([BLjava/lang/String;)V

    :cond_2
    const-string p1, "JPEG"

    .line 32
    invoke-virtual {v9, p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isJpegDataReady(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-boolean p2, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    if-eqz p2, :cond_3

    goto :goto_0

    .line 33
    :cond_3
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[3] onJpegImageAvailable: jpeg data isn\'t ready, save action has been ignored."

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 34
    :cond_4
    :goto_0
    sget-boolean p2, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    invoke-virtual {v9, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setMemDebug(Z)V

    .line 35
    invoke-virtual {v9}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p2

    const/4 v0, -0x1

    .line 36
    invoke-static {p2, v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p2

    .line 37
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[3] onJpegImageAvailable: save image start. dataLen="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start save image, timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move-wide v1, v7

    invoke-static/range {v1 .. v6}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(JIJLjava/lang/String;)V

    .line 40
    invoke-virtual {v9}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    .line 41
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0, v9, p2, v2, p1}, Lcom/android/camera/storage/ImageSaver;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    .line 42
    :cond_5
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object p1

    invoke-virtual {p1, v9, p2, v2, v2}, Lcom/android/camera/storage/ImageSaver;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z

    move-result p1

    .line 43
    :goto_1
    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v9}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTuningImage()Landroid/media/Image;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2800(Lcom/xiaomi/camera/core/PostProcessor;Landroid/media/Image;)V

    if-eqz p1, :cond_6

    .line 44
    invoke-virtual {v9}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    .line 45
    :cond_6
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1, v9}, Lcom/xiaomi/camera/core/PostProcessor;->access$2900(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 46
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    move-result-object p1

    invoke-interface {p1, v9}, Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;->onImagePostProcessEnd(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 47
    :cond_7
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[3] onJpegImageAvailable: parallelTaskHashMap remove "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$3008(Lcom/xiaomi/camera/core/PostProcessor;)I

    .line 49
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1, v7, v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$1700(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$3000(Lcom/xiaomi/camera/core/PostProcessor;)I

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$3100(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 51
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$3200(Lcom/xiaomi/camera/core/PostProcessor;)V

    .line 52
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1, p3}, Lcom/xiaomi/camera/core/PostProcessor;->access$3002(Lcom/xiaomi/camera/core/PostProcessor;I)I

    goto :goto_2

    .line 53
    :cond_8
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[3] onJpegImageAvailable: null task data. timestamp="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$3300(Lcom/xiaomi/camera/core/PostProcessor;)V

    .line 55
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$1500(Lcom/xiaomi/camera/core/PostProcessor;)V

    return-void
.end method

.method public onTuningImageAvailable(Landroid/media/Image;Ljava/lang/String;Z)V
    .locals 10

    .line 1
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 3
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[z] onTuningAvailable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x4

    invoke-static {v5, v4, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$500(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    cmp-long v0, v1, v6

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/media/Image;->setTimestamp(J)V

    .line 8
    :cond_0
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v0

    .line 9
    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->isRaw2YuvDone()Z

    move-result p2

    if-nez p2, :cond_1

    .line 11
    invoke-direct {p0, v5, v1, v2}, Lcom/xiaomi/camera/core/PostProcessor$7;->startRaw2YuvBottomHalf(Lcom/xiaomi/camera/core/ParallelTaskData;J)V

    .line 12
    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0, v3, p3}, Lcom/xiaomi/camera/core/ParallelDataZipper;->join(Landroid/media/Image;IIZ)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v4, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    const/4 v8, 0x2

    move-object v6, p1

    move-object v7, p2

    move v9, p3

    invoke-static/range {v4 .. v9}, Lcom/xiaomi/camera/core/PostProcessor;->access$3400(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)V

    :goto_0
    return-void

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "[z] onTuningAvailable: could not get parallel data"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onYuvAvailable(Landroid/media/Image;Ljava/lang/String;Z)V
    .locals 11

    .line 1
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 3
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[z] onYuvAvailable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v6, v4, v5}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/media/Image;->setTimestamp(J)V

    .line 7
    :cond_0
    iget-object v4, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v4, v1, v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$500(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 8
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v4

    .line 9
    invoke-static {v4}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 10
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/ParallelTaskData;->isRaw2YuvDone()Z

    move-result p2

    if-nez p2, :cond_1

    .line 11
    invoke-direct {p0, v6, v1, v2}, Lcom/xiaomi/camera/core/PostProcessor$7;->startRaw2YuvBottomHalf(Lcom/xiaomi/camera/core/ParallelTaskData;J)V

    .line 12
    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v3, p3}, Lcom/xiaomi/camera/core/ParallelDataZipper;->join(Landroid/media/Image;IIZ)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v5, p0, Lcom/xiaomi/camera/core/PostProcessor$7;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    const/4 v9, 0x0

    move-object v7, p1

    move-object v8, p2

    move v10, p3

    invoke-static/range {v5 .. v10}, Lcom/xiaomi/camera/core/PostProcessor;->access$3400(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)V

    :goto_0
    return-void

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "[z] onYuvAvailable: could not get parallel data"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
