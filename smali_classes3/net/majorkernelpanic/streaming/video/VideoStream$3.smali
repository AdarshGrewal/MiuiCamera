.class public Lnet/majorkernelpanic/streaming/video/VideoStream$3;
.super Ljava/lang/Object;
.source "VideoStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/majorkernelpanic/streaming/video/VideoStream;->openCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

.field public final synthetic val$exception:[Ljava/lang/RuntimeException;

.field public final synthetic val$lock:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Lnet/majorkernelpanic/streaming/video/VideoStream;[Ljava/lang/RuntimeException;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$3;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    iput-object p2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$3;->val$exception:[Ljava/lang/RuntimeException;

    iput-object p3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$3;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$3;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraLooper:Landroid/os/Looper;

    .line 3
    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$3;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$3;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    iget v1, v1, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraId:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, v0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$3;->val$exception:[Ljava/lang/RuntimeException;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$3;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 6
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    .line 7
    :goto_1
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$3;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 8
    invoke-static {}, Landroid/os/Looper;->loop()V

    throw v0
.end method
