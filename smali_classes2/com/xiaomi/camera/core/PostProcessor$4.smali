.class public Lcom/xiaomi/camera/core/PostProcessor$4;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Lcom/xiaomi/camera/core/CaptureDataListener;


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
    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processCaptureData(Lcom/xiaomi/camera/core/CaptureData;Ljava/lang/String;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getNextDispatchTaskData()Lcom/xiaomi/camera/core/TaskData;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_d

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0OoOoOo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getSatFusionType()I

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$1800(Lcom/xiaomi/camera/core/CaptureData;)V

    .line 8
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isPartialProcess()Z

    move-result v8

    if-nez v8, :cond_4

    .line 10
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isFirstResult()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 11
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v8

    .line 12
    iget-object v4, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v4, v8, v9}, Lcom/xiaomi/camera/core/PostProcessor;->access$500(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 13
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v8, "set result for reprocess"

    invoke-static {v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v6, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoType()I

    move-result v8

    invoke-static {v6, p1, v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$1000(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData;I)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    goto/16 :goto_1

    .line 15
    :cond_3
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p2, v6, v2

    .line 16
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v3

    const-string v8, "[1] %s: no task data with timestamp %d"

    .line 17
    invoke-static {v5, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4, v5, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v3

    goto :goto_1

    .line 18
    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v10, v7, [Ljava/lang/Object;

    aput-object p2, v10, v2

    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTimestamp()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v3

    const-string v6, "[1] %s: partial data. ts = %d"

    invoke-static {v9, v6, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isDataReady()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 20
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v8

    .line 21
    iget-object v6, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v6, v8, v9}, Lcom/xiaomi/camera/core/PostProcessor;->access$500(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 22
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "partial set result for reprocess"

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v7, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoType()I

    move-result v8

    invoke-static {v7, p1, v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$1000(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData;I)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    goto/16 :goto_0

    .line 24
    :cond_5
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v2

    .line 25
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "[1] %s: no partial task data with timestamp %d"

    .line 26
    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v5, v6, v7}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v3

    goto/16 :goto_0

    :cond_6
    :goto_1
    if-eqz v5, :cond_8

    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 28
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0, p2, p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1600(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;Lcom/xiaomi/camera/core/CaptureDataListener;)V

    goto :goto_2

    .line 29
    :cond_7
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "noTaskFound = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",return."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 30
    :cond_8
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isPartialProcess()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/TaskData;->containsFirstFrame()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 32
    iget-object v4, v1, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 33
    :cond_9
    iget-object v4, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v4}, Lcom/xiaomi/camera/core/PostProcessor;->access$800(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v4

    if-eq v1, v4, :cond_a

    .line 34
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p2, v6, v2

    const-string v8, "[1] %s: image processor switched"

    invoke-static {v5, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_a
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoType()I

    move-result p1

    invoke-static {p1}, Lcom/xiaomi/camera/base/Constants;->isMTIKRawSuperNightEngine2ND(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 36
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p2, v5, v2

    const-string v6, "[1] %s: resend to algoengine"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v0, v3}, Lcom/xiaomi/camera/core/TaskData;->setProcessSessionType(I)V

    :cond_b
    if-eqz v1, :cond_c

    .line 38
    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchTask(Lcom/xiaomi/camera/core/TaskData;)I

    move-result p1

    .line 39
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "[1] %s: dispatchTask status is %d"

    invoke-static {v1, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 40
    :cond_c
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "imageProcessor NULL."

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    .line 41
    :cond_d
    :goto_4
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    const-string p2, "[1] %s: no result to process!"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCaptureDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoType()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v7, v4, :cond_1

    if-ne v6, v4, :cond_0

    .line 3
    iget-object v9, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    .line 4
    invoke-virtual {v9}, Lcom/xiaomi/camera/core/PostProcessor;->isSRRequireReprocess()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    if-ne v5, v4, :cond_8

    .line 5
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getMultiFrameProcessResult()Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 6
    iget-object v10, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v10, v2, v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$500(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v10

    .line 7
    invoke-virtual {v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v11

    invoke-virtual {v11}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v11

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[1] onCaptureDataAvailable: timestamp: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " | "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v13, v11, v2

    if-eqz v13, :cond_2

    .line 9
    invoke-virtual {v10, v11, v12}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTimestamp(J)V

    .line 10
    iget-object v13, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v13, v2, v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$1700(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 11
    iget-object v13, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v13, v11, v12, v10}, Lcom/xiaomi/camera/core/PostProcessor;->access$700(Lcom/xiaomi/camera/core/PostProcessor;JLcom/xiaomi/camera/core/ParallelTaskData;)V

    :cond_2
    if-ne v5, v4, :cond_4

    .line 12
    invoke-virtual {v10}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isSaveGroupshotPrimitive()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    .line 13
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_4

    .line 14
    invoke-virtual {v10, v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->cloneTaskData(I)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v13

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 16
    invoke-virtual {v14}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v14

    invoke-virtual {v14}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v14

    cmp-long v16, v14, v11

    if-nez v16, :cond_3

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    .line 17
    :cond_3
    invoke-virtual {v13, v14, v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTimestamp(J)V

    .line 18
    iget-object v7, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v7, v14, v15, v13}, Lcom/xiaomi/camera/core/PostProcessor;->access$700(Lcom/xiaomi/camera/core/PostProcessor;JLcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 19
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[1] onCaptureDataAvailable: add "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x2

    goto :goto_0

    :cond_4
    if-ne v6, v4, :cond_7

    .line 20
    iget-object v5, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/PostProcessor;->isSRRequireReprocess()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->isHdrSR()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getHDRSRResult()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getHDRSRResult()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getHDRSRResult()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 25
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne v5, v4, :cond_d

    .line 28
    sget-boolean v4, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0O0:Z

    if-eqz v4, :cond_9

    .line 29
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[1] onCaptureDataAvailable: start process multi-shot image..."

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 31
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v5

    .line 32
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v4

    .line 33
    iget-object v7, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v7, v2, v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$500(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 34
    invoke-virtual {v7, v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    .line 35
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->shouldReprocessBurstShotPicture()Z

    move-result v5

    const-string v7, "algo_process_"

    if-eqz v5, :cond_b

    .line 36
    new-instance v4, Lcom/xiaomi/camera/core/TaskData;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5, v6, v2, v3}, Lcom/xiaomi/camera/core/TaskData;-><init>(Ljava/util/List;ZJ)V

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v1

    .line 38
    sget-boolean v5, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    if-nez v5, :cond_a

    .line 39
    iget-object v5, v1, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 40
    :cond_a
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "algo_device_multi_capture_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 41
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v4}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchTask(Lcom/xiaomi/camera/core/TaskData;)I

    goto/16 :goto_2

    .line 43
    :cond_b
    iget-object v1, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessStart(J)V

    .line 44
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 45
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "algo_reprocess_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 46
    iget-object v1, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2, v2}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessed(Landroid/media/Image;IZ)V

    .line 47
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 48
    invoke-virtual {v0, v4}, Lcom/xiaomi/camera/core/PostProcessor$4;->onOriginalImageClosed(Landroid/media/Image;)V

    goto/16 :goto_2

    .line 49
    :cond_c
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[1] onCaptureDataAvailable: no captureResult "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 51
    invoke-virtual {v0, v4}, Lcom/xiaomi/camera/core/PostProcessor$4;->onOriginalImageClosed(Landroid/media/Image;)V

    goto :goto_2

    .line 52
    :cond_d
    iget-object v4, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v4, v2, v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$500(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v2

    const-string v3, "onCaptureDataAvailable"

    if-eqz v2, :cond_f

    .line 53
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->isUltraPixel()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 55
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v7

    .line 56
    invoke-static {v7, v5}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v8

    .line 57
    invoke-static {v8}, Lcom/android/camera2/CaptureResultParser;->isMiviAlgoBypassRequired(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v5

    .line 58
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[1] onCaptureDataAvailable: isAlgoBypassRequired "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_e

    .line 59
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v3

    .line 60
    invoke-virtual {v2, v7}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v1

    .line 62
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;I)Landroid/media/Image;

    move-result-object v2

    .line 63
    new-instance v4, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v6}, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;-><init>(Landroid/media/Image;IZ)V

    .line 64
    invoke-virtual {v1, v4}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchFilterTask(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V

    .line 65
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 66
    invoke-virtual {v0, v3}, Lcom/xiaomi/camera/core/PostProcessor$4;->onOriginalImageClosed(Landroid/media/Image;)V

    goto :goto_2

    .line 67
    :cond_e
    invoke-direct {v0, v1, v3}, Lcom/xiaomi/camera/core/PostProcessor$4;->processCaptureData(Lcom/xiaomi/camera/core/CaptureData;Ljava/lang/String;)V

    goto :goto_2

    .line 68
    :cond_f
    invoke-direct {v0, v1, v3}, Lcom/xiaomi/camera/core/PostProcessor$4;->processCaptureData(Lcom/xiaomi/camera/core/CaptureData;Ljava/lang/String;)V

    :goto_2
    return-void

    .line 69
    :cond_10
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No multi-frame process result!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onOriginalImageClosed(Landroid/media/Image;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOriginalImageClosed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_0
    return-void
.end method

.method public onPartialDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 1

    const-string v0, "onPartialDataAvailable"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/camera/core/PostProcessor$4;->processCaptureData(Lcom/xiaomi/camera/core/CaptureData;Ljava/lang/String;)V

    return-void
.end method
