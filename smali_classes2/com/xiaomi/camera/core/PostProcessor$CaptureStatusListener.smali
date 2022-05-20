.class public Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;
.super Ljava/lang/Object;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptureStatusListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/core/PostProcessor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$800(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/CaptureData;->setImageProcessor(Lcom/xiaomi/camera/core/ImageProcessor;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$800(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/camera/core/DualCameraProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/CaptureData;->setStreamNum(I)V

    .line 3
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->isAbandoned()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$800(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setOriginalProcessor(Lcom/xiaomi/camera/core/ImageProcessor;)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->doStartTask(Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method

.method public onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[0] onCaptureCompleted: timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " frameNo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->join(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    return-void
.end method

.method public onCaptureFailed(JI)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[0] onCaptureFailed: reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " firstTimestamp = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getCaptureDataByTimestamp(J)Lcom/xiaomi/camera/core/CaptureData;

    move-result-object p3

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$500(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCaptureFailed set result for ParallelTaskData"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p3}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoType()I

    move-result v2

    invoke-static {v1, p3, v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$1000(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData;I)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p3

    new-instance v0, Lcom/xiaomi/camera/core/ReleaseDataParameter;

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    .line 8
    invoke-static {v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$900(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/xiaomi/camera/core/ReleaseDataParameter;-><init>(JLcom/xiaomi/camera/core/ParallelDataZipper$DataListener;Z)V

    .line 9
    invoke-virtual {p3, v0}, Lcom/xiaomi/camera/core/ParallelDataZipper;->postCaptureFail(Lcom/xiaomi/camera/core/ReleaseDataParameter;)V

    return-void
.end method

.method public onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$600(Lcom/xiaomi/camera/core/PostProcessor;I)V

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v6

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSatFusionType()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[0] onCaptureStarted: timestamp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", savePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fusionType = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4, v3, v2}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isAbandoned()Z

    move-result v2

    const/4 v11, 0x1

    if-nez v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v2, v6, v7, p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$700(Lcom/xiaomi/camera/core/PostProcessor;JLcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 8
    iget-object v2, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mAddToProcessorCallback:Lcom/xiaomi/camera/core/ParallelTaskData$OnParallelTaskDataAddToProcessorListener;

    if-eqz v2, :cond_0

    .line 9
    invoke-interface {v2}, Lcom/xiaomi/camera/core/ParallelTaskData$OnParallelTaskDataAddToProcessorListener;->OnParallelTaskDataAddToProcessor()V

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 11
    iput-boolean v11, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$800(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setOriginalProcessor(Lcom/xiaomi/camera/core/ImageProcessor;)V

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$800(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaomi/camera/core/DualCameraProcessor;

    if-eqz v2, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v11

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getBurstNum()I

    move-result v5

    .line 15
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isAbandoned()Z

    move-result v9

    .line 16
    new-instance v1, Lcom/xiaomi/camera/core/CaptureData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v3

    .line 17
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureId()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$800(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v10

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/xiaomi/camera/core/CaptureData;-><init>(IIIJLjava/lang/String;ZLcom/xiaomi/camera/core/ImageProcessor;)V

    .line 18
    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$900(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/CaptureData;->setDataListener(Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;)V

    .line 19
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isRequireTuningData()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/CaptureData;->setRequireTuningData(Z)V

    .line 20
    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/core/CaptureData;->setSatFusionType(I)V

    .line 21
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isHdrSR()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/core/CaptureData;->setHdrSR(Z)V

    .line 22
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Oo00()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xa

    .line 23
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v2

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v1, v11}, Lcom/xiaomi/camera/core/CaptureData;->setPartialProcess(Z)V

    .line 24
    :cond_5
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 25
    new-instance v2, LOooO00o/OooO0o/OooO00o/OooO00o/OooO0oo;

    invoke-direct {v2, p0, v1, p1}, LOooO00o/OooO0o/OooO00o/OooO00o/OooO0oo;-><init>(Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/camera/core/ParallelTaskData;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 26
    :cond_6
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "error in zipper handler"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public onPreCapture(Lcom/xiaomi/engine/PreProcessData;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/engine/MiCameraAlgo;->getVersionCode()I

    move-result v0

    const v1, 0xc0bf124

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreCapture preProcessData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$800(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ImageProcessor;->getTaskSession()Lcom/xiaomi/engine/TaskSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/xiaomi/engine/TaskSession;->preProcess(Lcom/xiaomi/engine/PreProcessData;)V

    :cond_1
    return-void
.end method

.method public onRepeatingCaptureEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1100(Lcom/xiaomi/camera/core/PostProcessor;)V

    return-void
.end method
