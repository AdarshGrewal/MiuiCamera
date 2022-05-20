.class public Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageAvailableListener"
.end annotation


# instance fields
.field public mCameraType:I

.field public mImageFlag:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mImageFlag:I

    .line 3
    iput p2, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mCameraType:I

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x6

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[0] onImageAvailable: null imageReader!"

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[0] onImageAvailable: timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mImageFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mCameraType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", format = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x4

    .line 5
    invoke-static {v2, v1, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onImageAvailable, queueImageToPool E"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;IZ)Landroid/media/Image;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImageAvailable, queueImageToPool X: image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImageAvailable, queueImageToPool X: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_0
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    if-eqz p1, :cond_2

    .line 11
    invoke-static {}, Lcom/android/camera/Util;->isDumpImageEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "hal"

    .line 12
    invoke-static {p1, v0}, Lcom/xiaomi/camera/base/ImageUtil;->dumpImage(Landroid/media/Image;Ljava/lang/String;)Z

    .line 13
    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mImageFlag:I

    iget v2, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mCameraType:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/xiaomi/camera/core/ParallelDataZipper;->join(Landroid/media/Image;IIZ)V

    :cond_2
    return-void
.end method
