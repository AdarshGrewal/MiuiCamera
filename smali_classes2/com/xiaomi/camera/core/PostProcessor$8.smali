.class public Lcom/xiaomi/camera/core/PostProcessor$8;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/PostProcessor;->init()V
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
    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$8;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveFinish(Landroid/media/Image;Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$8;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1300(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$8;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTuningImage()Landroid/media/Image;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2800(Lcom/xiaomi/camera/core/PostProcessor;Landroid/media/Image;)V

    .line 5
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    .line 6
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$8;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$2900(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$8;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$8;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;->onImagePostProcessEnd(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide p1

    .line 9
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$8;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$1700(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    const/4 v0, 0x4

    .line 10
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HEIF] onSaveFinish: parallelTaskHashMap remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
