.class public Lcom/xiaomi/camera/core/ParallelDataZipper$3;
.super Ljava/lang/Object;
.source "ParallelDataZipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/ParallelDataZipper;->join(Landroid/media/Image;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

.field public final synthetic val$cameraType:I

.field public final synthetic val$image:Landroid/media/Image;

.field public final synthetic val$imageType:I

.field public final synthetic val$isPoolImage:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/ParallelDataZipper;Landroid/media/Image;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    iput-object p2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    iput p3, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$cameraType:I

    iput p4, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$imageType:I

    iput-boolean p5, p0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$isPoolImage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/util/Map$Entry;)Lcom/xiaomi/camera/core/CaptureData;
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/CaptureData;

    return-object p0
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    if-eqz p0, :cond_0

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

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v5}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$700(Lcom/xiaomi/camera/core/ParallelDataZipper;)Landroid/util/LongSparseArray;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    iget-object v6, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v6, v3, v4}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$500(Lcom/xiaomi/camera/core/ParallelDataZipper;J)J

    move-result-wide v6

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getCaptureId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getCaptureId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v9}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$600(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0OO;

    invoke-direct {v10, v8}, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0OO;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v8

    sget-object v9, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0Oo;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0Oo;

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaomi/camera/core/CaptureData;

    goto :goto_0

    :cond_0
    iget-object v8, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v8}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$600(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaomi/camera/core/CaptureData;

    goto :goto_0

    :cond_1
    iget-object v8, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v8}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$600(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaomi/camera/core/CaptureData;

    :goto_0
    if-nez v8, :cond_2

    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setImage: no capture data with timestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v2

    move v9, v8

    move v10, v9

    move-wide v11, v6

    move v6, v10

    move v7, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Lcom/xiaomi/camera/core/CaptureData;->getStreamNum()I

    move-result v6

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/CaptureData;->isRequireTuningData()Z

    move-result v7

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/CaptureData;->getSatFusionType()I

    move-result v9

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/CaptureData;->isHdrSR()Z

    move-result v10

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v11

    move v8, v1

    :goto_1
    if-nez v5, :cond_3

    new-instance v5, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    move-object v13, v5

    move v14, v6

    move v15, v7

    move/from16 v16, v9

    move/from16 v17, v8

    move/from16 v18, v10

    invoke-direct/range {v13 .. v18}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;-><init>(IZIZZ)V

    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$700(Lcom/xiaomi/camera/core/ParallelDataZipper;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    move v1, v2

    :cond_3
    if-nez v1, :cond_8

    invoke-virtual {v5, v11, v12}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setFirstTimestamp(J)V

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getStreamNum()I

    move-result v1

    if-eq v1, v6, :cond_4

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setImage: update stream number with: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setStreamNum(I)V

    :cond_4
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isRequireTuningData()Z

    move-result v1

    if-eq v1, v7, :cond_5

    invoke-virtual {v5, v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setRequireTuningData(Z)V

    :cond_5
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSatFusionType()I

    move-result v1

    if-eq v1, v9, :cond_6

    invoke-virtual {v5, v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setSatFusionType(I)V

    :cond_6
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isHdrSrShot()Z

    move-result v1

    if-eq v1, v10, :cond_7

    invoke-virtual {v5, v10}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setIsHdrSrShot(Z)V

    :cond_7
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setImage: timestamp = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", streamNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getStreamNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fusionType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", hasCaptureData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isHdrSr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v8}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setHasCaptureData(Z)V

    :cond_8
    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    iget v2, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$cameraType:I

    iget v3, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$imageType:I

    iget-boolean v4, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$isPoolImage:Z

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IIZ)V

    iget-object v1, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->this$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-static {v1, v5}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$800(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    return-void

    :catch_0
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->access$300()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/xiaomi/camera/core/ParallelDataZipper$3;->val$image:Landroid/media/Image;

    aput-object v5, v1, v2

    const-string v2, "setImage: %s is closed!"

    invoke-static {v4, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
