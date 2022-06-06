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

.field public mMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;


# direct methods
.method public constructor <init>(IILcom/xiaomi/camera/core/ImageMemoryManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mImageFlag:I

    iput p2, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mCameraType:I

    iput-object p3, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x6

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[0] onImageAvailable: null imageReader!"

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/core/ImageMemoryManager;->waitImageCloseIfNeeded(I)V

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[0] onImageAvailable: timestamp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", target = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mImageFlag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mCameraType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", format = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/camera/core/ImageMemoryManager;->holdAnImage(ILandroid/media/Image;)V

    invoke-static {}, Lcom/android/camera/Util;->isDumpImageEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "hal"

    invoke-static {v1, p1}, Lcom/xiaomi/camera/base/ImageUtil;->dumpImage(Landroid/media/Image;Ljava/lang/String;)Z

    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p1

    iget v0, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mImageFlag:I

    iget v2, p0, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;->mCameraType:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/xiaomi/camera/core/ParallelDataZipper;->join(Landroid/media/Image;IIZ)V

    return-void
.end method
