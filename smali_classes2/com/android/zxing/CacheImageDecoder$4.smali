.class public Lcom/android/zxing/CacheImageDecoder$4;
.super Ljava/lang/Object;
.source "CacheImageDecoder.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/zxing/CacheImageDecoder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/android/zxing/CacheImageDecoder$FrameInfo;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/zxing/CacheImageDecoder;


# direct methods
.method public constructor <init>(Lcom/android/zxing/CacheImageDecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/zxing/CacheImageDecoder$4;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/zxing/CacheImageDecoder$FrameInfo;)Ljava/lang/Long;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CacheImage"

    .line 2
    iget-object v1, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/CacheImageDecoder$ImageWrapper;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/android/zxing/CacheImageDecoder$ImageWrapper;->mImage:Landroid/media/Image;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-static {v1}, Lcom/xiaomi/camera/base/ImageUtil;->getYUVFromPreviewImage(Landroid/media/Image;)[B

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/zxing/CacheImageDecoder$4;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-static {v1}, Lcom/android/zxing/CacheImageDecoder;->access$000(Lcom/android/zxing/CacheImageDecoder;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;

    if-eqz v1, :cond_1

    .line 5
    new-instance v8, Landroid/graphics/YuvImage;

    const/16 v4, 0x11

    iget v5, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mWidth:I

    iget v6, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mHeight:I

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 6
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mWidth:I

    iget v5, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mHeight:I

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v4, 0x50

    invoke-virtual {v8, v3, v4, v2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget v6, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mWidth:I

    iget v7, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mHeight:I

    const/4 v8, 0x1

    iget-object v3, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/CacheImageDecoder$ImageWrapper;

    iget-boolean v9, v3, Lcom/android/zxing/CacheImageDecoder$ImageWrapper;->noGaussian:Z

    move-object v4, v1

    invoke-interface/range {v4 .. v9}, Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;->saveJpegAsThumbnail([BIIZZ)V

    .line 9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_1

    :cond_1
    const-string v1, "only camera module could anchor frame"

    .line 10
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    iget-object v0, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/CacheImageDecoder$ImageWrapper;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/zxing/CacheImageDecoder$ImageWrapper;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_4

    goto :goto_2

    :goto_0
    iget-object p1, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/CacheImageDecoder$ImageWrapper;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/zxing/CacheImageDecoder$ImageWrapper;->mImage:Landroid/media/Image;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 14
    iget-object p1, p0, Lcom/android/zxing/CacheImageDecoder$4;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-static {p1}, Lcom/android/zxing/CacheImageDecoder;->access$100(Lcom/android/zxing/CacheImageDecoder;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_2
    throw v0

    .line 15
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/CacheImageDecoder$ImageWrapper;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/zxing/CacheImageDecoder$ImageWrapper;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_4

    .line 16
    :goto_2
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 17
    iget-object v0, p0, Lcom/android/zxing/CacheImageDecoder$4;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-static {v0}, Lcom/android/zxing/CacheImageDecoder;->access$100(Lcom/android/zxing/CacheImageDecoder;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 18
    :cond_4
    iget-wide v0, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_3
    const-wide/16 v0, 0x0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;

    invoke-virtual {p0, p1}, Lcom/android/zxing/CacheImageDecoder$4;->apply(Lcom/android/zxing/CacheImageDecoder$FrameInfo;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
