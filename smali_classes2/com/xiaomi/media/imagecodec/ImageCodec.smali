.class public final Lcom/xiaomi/media/imagecodec/ImageCodec;
.super Ljava/lang/Object;
.source "ImageCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageCodec"


# instance fields
.field public final mContextLock:Ljava/lang/Object;

.field public mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

.field public mNativeContext:J

.field public mOutputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "camera_imagecodec_jni.xiaomi"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctor(): E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput-object p1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    .line 5
    sget-object p1, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ctor(): X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static create(III)Lcom/xiaomi/media/imagecodec/ImageCodec;
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    if-lt p1, v0, :cond_2

    const/16 v0, 0x23

    if-eq p2, v0, :cond_1

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The image format must be YUV_420_888 or NV21"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;-><init>(IIILcom/xiaomi/media/imagecodec/ImageCodec$1;)V

    .line 3
    new-instance p0, Lcom/xiaomi/media/imagecodec/ImageCodec;

    invoke-direct {p0, v0}, Lcom/xiaomi/media/imagecodec/ImageCodec;-><init>(Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;)V

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The image dimensions must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getImageOwner(Landroid/media/Image;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Landroid/media/Image;

    const-string v2, "getOwner"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 4
    :goto_0
    sget-object v1, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get the owner of the given image"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static getVersionCode()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeGetVersionCode()I

    move-result v0

    return v0
.end method

.method private isImageValid(Landroid/media/Image;)Z
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Landroid/media/Image;

    const-string v1, "mIsImageValid"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4
    :goto_0
    sget-object v0, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    const-string v1, "Failed to check if the given image is valid ot not"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method public static native nativeClassInit()V
.end method

.method private native nativeCreate(Ljava/lang/Object;IIILandroid/view/Surface;)J
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeDrainInputImage(JLandroid/media/Image;)V
.end method

.method private native nativeGetOutputSpec(JLcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;)V
.end method

.method public static native nativeGetVersionCode()I
.end method

.method private native nativeSetCodecQuality(JI)V
.end method

.method private native nativeSetFlipFlag(JI)V
.end method

.method public static postEventFromNative(Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    const-string v1, "postEventFromNative(): E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/media/imagecodec/ImageCodec;

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    const-string v0, "postEventFromNative(): X"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public drainInputImage(Landroid/media/Image;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    iget v1, v1, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->width:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    iget v1, v1, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->height:I

    if-ne v0, v1, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    iget v1, v1, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->format:I

    if-ne v0, v1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.ImageReader$SurfaceImage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->isImageValid(Landroid/media/Image;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 7
    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeDrainInputImage(JLandroid/media/Image;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 10
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 11
    throw v1

    :catchall_1
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Image is already closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only images from ImageReader can be fed to ImageCodec, other image source is not supported yet!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input image format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input image dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The input image must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInputSpec()Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    return-object v0
.end method

.method public getOutputSpec()Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mOutputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    if-nez v1, :cond_1

    .line 3
    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;-><init>(IIILcom/xiaomi/media/imagecodec/ImageCodec$1;)V

    iput-object v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mOutputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    .line 5
    iget-wide v2, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    invoke-direct {p0, v2, v3, v1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeGetOutputSpec(JLcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ImageCodec is not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mOutputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release(): E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeDestroy(J)V

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release(): X "

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

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setFlip(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 3
    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v1, v2, p1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeSetFlipFlag(JI)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageCodec is not initialized"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    iget v2, v0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->width:I

    iget v3, v0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->height:I

    iget v4, v0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->format:I

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeCreate(Ljava/lang/Object;IIILandroid/view/Surface;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given output surface must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setQuality(I)V
    .locals 5

    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 3
    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeSetCodecQuality(JI)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageCodec is not initialized"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "quality must be 0..100"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
