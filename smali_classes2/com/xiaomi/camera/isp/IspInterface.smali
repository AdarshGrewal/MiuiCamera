.class public Lcom/xiaomi/camera/isp/IspInterface;
.super Ljava/lang/Object;
.source "IspInterface.java"


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "IspInterface"


# instance fields
.field public final mContextLock:Ljava/lang/Object;

.field public mEventHandler:Landroid/os/Handler;

.field public mInputStreamList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/camera/isp/IspStream;",
            ">;"
        }
    .end annotation
.end field

.field public mNativeContext:J

.field public mPicOutputSurface:Landroid/view/Surface;

.field public mSettings:Landroid/os/Parcelable;

.field public mTuningOutputSurface:Landroid/view/Surface;

.field public mYuvOutputSurface:Landroid/view/Surface;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "1"

    const-string v1, "camera.debug.enable"

    .line 1
    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/camera/isp/IspInterface;->DEBUG:Z

    :try_start_0
    const-string v0, "camera_ispinterface_jni.xiaomi"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    const-string v2, "load library libcamera_ispinterface_jni.xiaomi.so failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :goto_0
    invoke-static {}, Lcom/xiaomi/camera/isp/IspInterface;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;Landroid/os/Handler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/camera/isp/IspStream;",
            ">;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "I",
            "Landroid/os/Parcelable;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, Lcom/xiaomi/camera/isp/IspInterface;->mContextLock:Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctor: E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 4
    iput-object v0, v8, Lcom/xiaomi/camera/isp/IspInterface;->mInputStreamList:Ljava/util/ArrayList;

    move-object v0, p2

    .line 5
    iput-object v0, v8, Lcom/xiaomi/camera/isp/IspInterface;->mPicOutputSurface:Landroid/view/Surface;

    move-object v0, p3

    .line 6
    iput-object v0, v8, Lcom/xiaomi/camera/isp/IspInterface;->mYuvOutputSurface:Landroid/view/Surface;

    move-object v0, p4

    .line 7
    iput-object v0, v8, Lcom/xiaomi/camera/isp/IspInterface;->mTuningOutputSurface:Landroid/view/Surface;

    move-object v0, p6

    .line 8
    iput-object v0, v8, Lcom/xiaomi/camera/isp/IspInterface;->mSettings:Landroid/os/Parcelable;

    move-object/from16 v0, p7

    .line 9
    iput-object v0, v8, Lcom/xiaomi/camera/isp/IspInterface;->mEventHandler:Landroid/os/Handler;

    .line 10
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, v8, Lcom/xiaomi/camera/isp/IspInterface;->mInputStreamList:Ljava/util/ArrayList;

    iget-object v3, v8, Lcom/xiaomi/camera/isp/IspInterface;->mPicOutputSurface:Landroid/view/Surface;

    iget-object v4, v8, Lcom/xiaomi/camera/isp/IspInterface;->mYuvOutputSurface:Landroid/view/Surface;

    iget-object v5, v8, Lcom/xiaomi/camera/isp/IspInterface;->mTuningOutputSurface:Landroid/view/Surface;

    iget-object v7, v8, Lcom/xiaomi/camera/isp/IspInterface;->mSettings:Landroid/os/Parcelable;

    move-object v0, p0

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/camera/isp/IspInterface;->nativeCreate(Ljava/lang/Object;Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;)V

    .line 11
    sget-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctor: X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static create(Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;Landroid/os/Handler;)Lcom/xiaomi/camera/isp/IspInterface;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/camera/isp/IspStream;",
            ">;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "I",
            "Landroid/os/Parcelable;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/xiaomi/camera/isp/IspInterface;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/xiaomi/camera/isp/IspInterface;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/xiaomi/camera/isp/IspInterface;-><init>(Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;Landroid/os/Handler;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The inputStreamList is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getVersionCode()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/isp/IspInterface;->nativeGetVersionCode()I

    move-result v0

    return v0
.end method

.method public static native nativeClassInit()V
.end method

.method private native nativeCreate(Ljava/lang/Object;Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/camera/isp/IspStream;",
            ">;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "I",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation
.end method

.method private native nativeDestroy()V
.end method

.method public static native nativeGetVersionCode()I
.end method

.method private native nativeQueryFeatureSetting(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;)Lcom/xiaomi/camera/imagecodec/FeatureSetting;
.end method

.method private native nativeRawToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V
.end method

.method private native nativeRawToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V
.end method

.method private native nativeSetFlipFlag(I)V
.end method

.method private native nativeYuvToHeif(Lcom/xiaomi/camera/isp/IspRequest;)V
.end method

.method private native nativeYuvToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V
.end method

.method private native nativeYuvToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V
.end method

.method public static postEventFromNative(Ljava/lang/Object;I)V
    .locals 3

    .line 1
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/isp/IspInterface;

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postEventFromNative: skip message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventFromNative: send message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public static postEventFromNativeWithAttachment(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/isp/IspInterface;

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "postEventFromNativeWithAttachment: skip message "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventFromNativeWithAttachment: send message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7
    iput p1, v0, Landroid/os/Message;->what:I

    .line 8
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getInputStreamId(III)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mInputStreamList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/isp/IspStream;

    .line 3
    iget v2, v1, Lcom/xiaomi/camera/isp/IspStream;->width:I

    if-ne p1, v2, :cond_0

    iget v2, v1, Lcom/xiaomi/camera/isp/IspStream;->height:I

    if-ne p2, v2, :cond_0

    iget v2, v1, Lcom/xiaomi/camera/isp/IspStream;->format:I

    if-ne p3, v2, :cond_0

    .line 4
    iget-wide p1, v1, Lcom/xiaomi/camera/isp/IspStream;->streamId:J

    return-wide p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mInputStreamList:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    const-string p1, "getInputStreamId: input stream has not been initialized"

    .line 6
    sget-object p2, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-boolean p2, Lcom/xiaomi/camera/isp/IspInterface;->DEBUG:Z

    if-nez p2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "getInputStreamId: no stream found with [width=%d height=%d format=%d]"

    .line 11
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-object p2, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    sget-boolean p2, Lcom/xiaomi/camera/isp/IspInterface;->DEBUG:Z

    if-nez p2, :cond_4

    :goto_0
    const-wide/16 p1, 0x0

    return-wide p1

    .line 14
    :cond_4
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public queryFeatureSetting(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;)Lcom/xiaomi/camera/imagecodec/FeatureSetting;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeQueryFeatureSetting(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;)Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    move-result-object p1

    return-object p1
.end method

.method public rawToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeRawToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V

    return-void
.end method

.method public rawToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeRawToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V

    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/camera/isp/IspInterface;->nativeDestroy()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setFlip(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeSetFlipFlag(I)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public yuvToHeif(Lcom/xiaomi/camera/isp/IspRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeYuvToHeif(Lcom/xiaomi/camera/isp/IspRequest;)V

    return-void
.end method

.method public yuvToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeYuvToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V

    return-void
.end method

.method public yuvToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeYuvToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V

    return-void
.end method
