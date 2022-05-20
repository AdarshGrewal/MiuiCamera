.class public Lcom/android/camera/module/AmbilightModule$BackgroundHandler;
.super Landroid/os/Handler;
.source "AmbilightModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/AmbilightModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundHandler"
.end annotation


# static fields
.field public static final MSG_NEW_IMAGE_ARRIVE:I = 0x0

.field public static final MSG_START_CAPTURE:I = 0x2

.field public static final MSG_STOP_CAPTURE:I = 0x1


# instance fields
.field public mCaptureStarted:Z

.field public mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/AmbilightModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;->mCaptureStarted:Z

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private processImage(Lcom/android/camera/module/AmbilightModule;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$2700(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/ambilight/AmbilightEngine;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/camera/ambilight/AmbilightEngine;->prepareData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 2
    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$2700(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/ambilight/AmbilightEngine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/ambilight/AmbilightEngine;->frameProc()I

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p3, 0x64

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$2800(Lcom/android/camera/module/AmbilightModule;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 5
    :try_start_0
    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$2900(Lcom/android/camera/module/AmbilightModule;)I

    move-result p3

    const/4 p4, 0x4

    if-gt p3, p4, :cond_1

    .line 6
    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$2908(Lcom/android/camera/module/AmbilightModule;)I

    .line 7
    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;->mCaptureStarted:Z

    goto/16 :goto_1

    .line 3
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;->mCaptureStarted:Z

    .line 4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/AmbilightModule;

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$3000(Lcom/android/camera/module/AmbilightModule;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$3000(Lcom/android/camera/module/AmbilightModule;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 8
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera/ambilight/AmbilightEngine;

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/ambilight/AmbilightEngine;->postProc()I

    move-result v1

    .line 10
    sget-object v2, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "on PostProc done."

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 11
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$3000(Lcom/android/camera/module/AmbilightModule;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$3000(Lcom/android/camera/module/AmbilightModule;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/ambilight/AmbilightEngine;->destroy()V

    goto/16 :goto_1

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/AmbilightModule;

    .line 15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/Image;

    .line 16
    iget-boolean v3, p0, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;->mCaptureStarted:Z

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    .line 17
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 18
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Ooooo00()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 19
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    aget-object v1, v4, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v5

    .line 20
    :goto_0
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v4, v6, v8

    if-nez v4, :cond_6

    .line 21
    sget-object v4, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stride: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$2700(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/ambilight/AmbilightEngine;

    move-result-object v4

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v2, v6, v2

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/android/camera/ambilight/AmbilightEngine;->initData(I)V

    .line 23
    :cond_6
    invoke-direct {p0, v0, v3, v1, v5}, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;->processImage(Lcom/android/camera/module/AmbilightModule;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 24
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 25
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$1000(Lcom/android/camera/module/AmbilightModule;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 26
    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$900(Lcom/android/camera/module/AmbilightModule;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$1000(Lcom/android/camera/module/AmbilightModule;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    goto :goto_1

    .line 27
    :cond_7
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_8
    :goto_1
    return-void
.end method
