.class public interface abstract Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;
.super Ljava/lang/Object;
.source "ParallelDataZipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/ParallelDataZipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataListener"
.end annotation


# virtual methods
.method public abstract onParallelDataAbandoned(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onParallelDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V
.end method

.method public abstract onParallelDataFailed(JILjava/util/List;Lcom/xiaomi/camera/core/ImageProcessor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;",
            "Lcom/xiaomi/camera/core/ImageProcessor;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onParallelDataTimeout(JILjava/util/List;Lcom/xiaomi/camera/core/ImageProcessor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;",
            "Lcom/xiaomi/camera/core/ImageProcessor;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onPartialDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V
.end method
