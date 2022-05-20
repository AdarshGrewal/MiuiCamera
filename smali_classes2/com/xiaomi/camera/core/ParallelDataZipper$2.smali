.class public Lcom/xiaomi/camera/core/ParallelDataZipper$2;
.super Ljava/lang/Object;
.source "ParallelDataZipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/ParallelDataZipper;->join(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

.field public final synthetic val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

.field public final synthetic val$isFirst:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    iput-object p2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    iput-boolean p3, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$isFirst:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/util/Map$Entry;)Lcom/xiaomi/camera/core/CaptureData;
    .locals 0

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/CaptureData;

    return-object p0
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/CaptureData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    invoke-virtual {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v1

    .line 2
    iget-object v3, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    invoke-virtual {v3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSequenceId()I

    move-result v3

    .line 3
    iget-object v4, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    invoke-virtual {v4}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getCaptureId()Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v5, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v5, v1, v2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$500(Lcom/xiaomi/camera/core/ParallelDataZipper;J)J

    move-result-wide v5

    .line 5
    iget-object v7, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v7}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$600(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, LOooO00o/OooO0o/OooO00o/OooO00o/OooO00o;

    invoke-direct {v8, v4}, LOooO00o/OooO0o/OooO00o/OooO00o/OooO00o;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    sget-object v8, LOooO00o/OooO0o/OooO00o/OooO00o/OooO0O0;->OooO00o:LOooO00o/OooO0o/OooO00o/OooO00o/OooO0O0;

    .line 7
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 8
    invoke-interface {v7}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v7

    const/4 v8, 0x0

    .line 9
    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaomi/camera/core/CaptureData;

    if-nez v7, :cond_0

    .line 10
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v8, "could not find capture data using captureId"

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v7, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v7}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$600(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaomi/camera/core/CaptureData;

    :cond_0
    const/4 v8, 0x0

    if-nez v7, :cond_1

    .line 12
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setResult: no capture data with timestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v8

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData;->getStreamNum()I

    move-result v8

    .line 14
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData;->isRequireTuningData()Z

    move-result v5

    .line 15
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData;->getSatFusionType()I

    move-result v6

    const/4 v9, 0x1

    .line 16
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData;->isHdrSR()Z

    move-result v10

    .line 17
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v11

    move v14, v5

    move v15, v6

    move v13, v8

    move-wide v5, v11

    move v12, v9

    move v11, v10

    .line 18
    :goto_0
    iget-object v7, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v7}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$700(Lcom/xiaomi/camera/core/ParallelDataZipper;)Landroid/util/LongSparseArray;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    if-nez v7, :cond_2

    .line 19
    new-instance v10, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    move-object v7, v10

    move v8, v13

    move v9, v14

    move/from16 v16, v3

    move-object v3, v10

    move v10, v15

    move/from16 v17, v11

    move v11, v12

    move/from16 v18, v12

    move/from16 v12, v17

    invoke-direct/range {v7 .. v12}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;-><init>(IZIZZ)V

    .line 20
    invoke-virtual {v3, v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setCaptureId(Ljava/lang/String;)V

    .line 21
    iget-object v4, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v4}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$700(Lcom/xiaomi/camera/core/ParallelDataZipper;)Landroid/util/LongSparseArray;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    move-object v7, v3

    goto :goto_1

    :cond_2
    move/from16 v16, v3

    move/from16 v17, v11

    move/from16 v18, v12

    .line 22
    invoke-virtual {v7, v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setCaptureId(Ljava/lang/String;)V

    .line 23
    :goto_1
    invoke-virtual {v7, v5, v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setFirstTimestamp(J)V

    .line 24
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getStreamNum()I

    move-result v3

    if-eq v3, v13, :cond_3

    if-eqz v13, :cond_3

    .line 25
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setResult: update stream number with: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {v7, v13}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setStreamNum(I)V

    .line 27
    :cond_3
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isRequireTuningData()Z

    move-result v3

    if-eq v3, v14, :cond_4

    .line 28
    invoke-virtual {v7, v14}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setRequireTuningData(Z)V

    .line 29
    :cond_4
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSatFusionType()I

    move-result v3

    if-eq v3, v15, :cond_5

    .line 30
    invoke-virtual {v7, v15}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setSatFusionType(I)V

    .line 31
    :cond_5
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isHdrSrShot()Z

    move-result v3

    move/from16 v8, v17

    if-eq v3, v8, :cond_6

    .line 32
    invoke-virtual {v7, v8}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setIsHdrSrShot(Z)V

    .line 33
    :cond_6
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setResult: timestamp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sequenceId = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamNum = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getStreamNum()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFirst = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$isFirst:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fusionType = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasCaptureData = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v18

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHdrSr = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v7, v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setHasCaptureData(Z)V

    .line 37
    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$captureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    iget-boolean v2, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->val$isFirst:Z

    invoke-virtual {v7, v1, v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    .line 38
    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v1, v7}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$800(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    return-void
.end method
