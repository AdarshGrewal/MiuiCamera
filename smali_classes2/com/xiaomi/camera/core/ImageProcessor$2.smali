.class public Lcom/xiaomi/camera/core/ImageProcessor$2;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/ImageProcessor;->configOutputConfigurations2(Lcom/xiaomi/engine/BufferFormat;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/core/ImageProcessor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/ImageProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$2;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    const/4 v2, 0x1

    const-string v3, "[  EFFECT2]"

    .line 3
    invoke-static {v3, v2}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackAlgorithmProcess(Ljava/lang/String;I)V

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/core/ImageProcessor;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImageAvailable: effectImage2 received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor$2;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;)Landroid/media/Image;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 7
    new-instance p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;

    const/4 v4, 0x0

    invoke-direct {p1, v3, v4, v2}, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;-><init>(Landroid/media/Image;IZ)V

    .line 8
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor$2;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {v2, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchFilterTask(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V

    .line 9
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$2;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->onProcessImageDone(J)V

    return-void
.end method
