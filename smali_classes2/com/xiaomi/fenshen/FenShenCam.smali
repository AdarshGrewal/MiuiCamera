.class public Lcom/xiaomi/fenshen/FenShenCam;
.super Ljava/lang/Object;
.source "FenShenCam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/fenshen/FenShenCam$Listener;,
        Lcom/xiaomi/fenshen/FenShenCam$Message;,
        Lcom/xiaomi/fenshen/FenShenCam$TEventType;,
        Lcom/xiaomi/fenshen/FenShenCam$Mode;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static IS_MTK_PLATFORM:Z = false

.field public static final MAX_PHOTO_SUBJECT_COUNT:I = 0x4

.field public static final MAX_VIDEO_SUBJECT_COUNT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CloneSDK"

.field public static listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

.field public static mCurrentPlayPos:F

.field public static mTimeFreezeStartPos:I

.field public static mTimeFreezeStopPos:I

.field public static mTimeFreezeTotalFrames:I

.field public static sIsEdit:Z

.field public static volatile sReleased:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "CloneSDK"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->DEBUG:Z

    const/4 v1, 0x0

    .line 2
    sput v1, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeStartPos:I

    .line 3
    sput v1, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeStopPos:I

    .line 4
    sput v1, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeTotalFrames:I

    const/4 v1, 0x0

    .line 5
    sput v1, Lcom/xiaomi/fenshen/FenShenCam;->mCurrentPlayPos:F

    :try_start_0
    const-string v1, "ro.board.platform"

    .line 6
    invoke-static {v1}, Lcom/xiaomi/fenshen/Utils;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "platform is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 9
    sput-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->IS_MTK_PLATFORM:Z

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "clone_c++_shared"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;)V

    .line 11
    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->IS_MTK_PLATFORM:Z

    if-eqz v1, :cond_1

    .line 12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "fenshen_apu"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "fenshen_snpe"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load native library failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPhoto(Landroid/media/Image;)V
    .locals 12

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeGetCurrentSubjectCount()I

    move-result v0

    const-string v1, "CloneSDK"

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    const-string p0, "AddPhoto: reached max subjects count, ignore"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPhoto "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    .line 5
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 7
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .line 8
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 9
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    .line 10
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 11
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    .line 12
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v11

    invoke-static/range {v2 .. v11}, Lcom/xiaomi/fenshen/FenShenCam;->nativeAddPhoto(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 13
    :goto_0
    sget-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz p0, :cond_1

    .line 14
    invoke-interface {p0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_1
    return-void

    .line 15
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "illegal image format, expect YUV image"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized addPreviewFrame(Landroid/media/Image;)V
    .locals 11

    const-class v0, Lcom/xiaomi/fenshen/FenShenCam;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->sReleased:Z

    if-eqz v1, :cond_0

    const-string p0, "CloneSDK"

    const-string v1, "ignore render, released"

    .line 2
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CloneSDK"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPreviewFrame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    .line 7
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 9
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    aget-object v4, v5, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    .line 10
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 11
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v6, v7, v6

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    .line 12
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 13
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    aget-object v8, v9, v8

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    .line 14
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v10

    invoke-static/range {v1 .. v10}, Lcom/xiaomi/fenshen/FenShenCam;->nativeAddPreviewFrame(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 15
    sget-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz p0, :cond_2

    .line 16
    sget-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {p0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    goto :goto_0

    :cond_2
    const-string p0, "CloneSDK"

    const-string v1, "addPreviewFrame, can\'t requestRender since listener is null"

    .line 17
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :goto_0
    monitor-exit v0

    return-void

    .line 19
    :cond_3
    :try_start_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "illegal image format, expect YUV image"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static cancelEdit()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "cancelEdit"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeCancelEdit()V

    .line 3
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    return-void
.end method

.method public static cancelPhoto()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "cancelPhoto"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeCancelPhoto()V

    .line 3
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void
.end method

.method public static cancelVideo()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "cancelVideo"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeCancelVideo()V

    .line 3
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void
.end method

.method public static editMultiCopy()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "editMultiCopy"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeEditMultiCopy()V

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    return-void
.end method

.method public static finishPhoto()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeFinishPhoto()V

    return-void
.end method

.method public static generateThumbnails(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateThumbnails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeGenerateThumbnails(I)V

    return-void
.end method

.method public static getCurrentSubjectCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeGetCurrentSubjectCount()I

    move-result v0

    return v0
.end method

.method public static getThumbnailByIndex(II)[B
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThumbnailByIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/fenshen/FenShenCam;->nativeGetThumbnailByIndex(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static init(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sReleased:Z

    .line 2
    sput-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init previewWidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", previewHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/fenshen/FenShenCam;->nativeInit(IILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isPlaying()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeIsPlaying()Z

    move-result v0

    return v0
.end method

.method public static native nativeAddPhoto(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
.end method

.method public static native nativeAddPreviewFrame(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
.end method

.method public static native nativeCancelEdit()V
.end method

.method public static native nativeCancelPhoto()V
.end method

.method public static native nativeCancelVideo()V
.end method

.method public static native nativeEditMultiCopy()V
.end method

.method public static native nativeFinishPhoto()V
.end method

.method public static native nativeGenerateThumbnails(I)V
.end method

.method public static native nativeGetCurrentSubjectCount()I
.end method

.method public static native nativeGetResultJpeg()[B
.end method

.method public static native nativeGetThumbnailByIndex(II)[B
.end method

.method public static native nativeInit(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native nativeIsPlaying()Z
.end method

.method public static native nativeMoveDoubleSeekBar(FF)V
.end method

.method public static native nativePausePlayEffect()V
.end method

.method public static native nativePlayPreview()V
.end method

.method public static native nativePullCmd()Ljava/lang/String;
.end method

.method public static native nativeRelease()V
.end method

.method public static native nativeRender()I
.end method

.method public static native nativeRenderInit(IIIIII)I
.end method

.method public static native nativeResetEdit()V
.end method

.method public static native nativeResumePlayEffect()V
.end method

.method public static native nativeSaveEdit()V
.end method

.method public static native nativeSaveVideo(Ljava/lang/String;)V
.end method

.method public static native nativeSaveVideoFd(Ljava/io/FileDescriptor;)V
.end method

.method public static native nativeSendTouchEvent(IFFFFF)V
.end method

.method public static native nativeSetFilmFormat(Z)V
.end method

.method public static native nativeSetMode(I)V
.end method

.method public static native nativeSetPhotoQuality(I)V
.end method

.method public static native nativeSetPreviewFrameIndex(I)V
.end method

.method public static native nativeSetThumbnailPath(Ljava/lang/String;)V
.end method

.method public static native nativeSetVideoCodec(Ljava/lang/String;)V
.end method

.method public static native nativeStart()V
.end method

.method public static native nativeStartRecordVideo()V
.end method

.method public static native nativeStartTimeFreeze()V
.end method

.method public static native nativeStopRecordVideo()V
.end method

.method public static native nativeStopTimeFreeze()V
.end method

.method public static onMoveDoubleSeekBar(FF)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xiaomi/fenshen/FenShenCam;->nativeMoveDoubleSeekBar(FF)V

    return-void
.end method

.method public static pausePlayEffect()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativePausePlayEffect()V

    return-void
.end method

.method public static playPreview()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativePlayPreview()V

    .line 2
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized release()V
    .locals 3

    const-class v0, Lcom/xiaomi/fenshen/FenShenCam;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->sReleased:Z

    if-eqz v1, :cond_0

    const-string v1, "CloneSDK"

    const-string v2, "ignore release twice"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "CloneSDK"

    const-string v2, "release"

    .line 4
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 5
    sput-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->sReleased:Z

    .line 6
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeRelease()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized render()V
    .locals 6

    const-class v0, Lcom/xiaomi/fenshen/FenShenCam;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->sReleased:Z

    if-eqz v1, :cond_0

    const-string v1, "CloneSDK"

    const-string v2, "ignore render, released"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeRender()I

    .line 5
    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CloneSDK"

    const-string v2, "nativeRender "

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v1, :cond_2

    .line 8
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeGetCurrentSubjectCount()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onSubjectCount(I)V

    .line 9
    :cond_2
    :goto_0
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativePullCmd()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    sget-boolean v2, Lcom/xiaomi/fenshen/FenShenCam;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "CloneSDK"

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "render cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_4
    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const-string v2, "dexcam_nullptr"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_6

    .line 14
    :goto_1
    monitor-exit v0

    return-void

    :cond_6
    :try_start_2
    const-string v2, "request_render"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 16
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    goto :goto_0

    :cond_7
    const-string v2, "start_preview"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 18
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onStartPreview()V

    goto :goto_0

    :cond_8
    const-string v2, "stop_preview"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 20
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onStopPreview()V

    goto :goto_0

    :cond_9
    const-string v2, "stop_record"

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 22
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onStopRecord()V

    goto :goto_0

    :cond_a
    const-string v2, "jpg_available"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 24
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeGetResultJpeg()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onPhotoResult([B)V

    goto :goto_0

    :cond_b
    const-string v2, "video_saved"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0xc

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 27
    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v2, v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onVideoSaved(I)V

    goto/16 :goto_0

    :cond_c
    const-string v2, "msg_start"

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 29
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->START:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_d
    const-string v2, "align_ok"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 31
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_OK:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_e
    const-string v2, "align_warning"

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 33
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_WARNING:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_f
    const-string v2, "align_fail"

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 35
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_TOO_LARGE_OR_FAILED:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_10
    const-string v2, "preview_no_person"

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 37
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_11
    const-string v2, "no_person"

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 39
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_12
    const-string v2, "move_outside"

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 41
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->MOVE_OUTSIDE:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_13
    const-string v2, "dynamic_scene"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 43
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->DYNAMIC_SCENE:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_14
    const-string v2, "init_error"

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 45
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ERROR_INIT:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_15
    const-string v2, "runtime_error"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 47
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ERROR_RUNTIME:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_16
    const-string v2, "success_target_detect"

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 49
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_17
    const-string v2, "failed_target_detect"

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 51
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_18
    const-string v2, "save_video_success"

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 53
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->SAVE_VIDEO_SUCCESS:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_19
    const-string v2, "edit_done"

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 55
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->EDIT_DONE:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_1a
    const-string v2, "paused"

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 57
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->PAUSED:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_1b
    const-string v2, "noperson_inclickpos"

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 59
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->NOPERSON_INCLICKPOS:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_1c
    const-string v2, "edit_pos"

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_1d

    const-string v2, " "

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 62
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeStartPos:I

    .line 63
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeStopPos:I

    .line 64
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeTotalFrames:I

    .line 65
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->EDIT_POS:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_1d
    const-string v2, "thumbnail_success"

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 67
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->THUMBNAIL_SUCCESS:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_1e
    const-string v2, "get_one_thumbnail"

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, " "

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 70
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 71
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 72
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 73
    sget-object v3, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    mul-int v5, v4, v1

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v2, v5}, Lcom/xiaomi/fenshen/FenShenCam;->getThumbnailByIndex(II)[B

    move-result-object v5

    invoke-interface {v3, v5, v2, v4, v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onThumbnailResult([BIII)V

    goto/16 :goto_0

    :cond_1f
    const-string v2, "play_one_time"

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 75
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->PLAY_ONE_TIME:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_20
    const-string v2, "current_pos"

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, " "

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 78
    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sput v1, Lcom/xiaomi/fenshen/FenShenCam;->mCurrentPlayPos:F

    .line 79
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->PLAY_CURRENT_POS:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static renderInit(IIIIII)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renderInit screenW "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drawX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drawY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drawW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drawH = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static/range {p0 .. p5}, Lcom/xiaomi/fenshen/FenShenCam;->nativeRenderInit(IIIIII)I

    return-void
.end method

.method public static resetEdit()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "resetEdit"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeResetEdit()V

    .line 3
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void
.end method

.method public static resumePlayEffect()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeResumePlayEffect()V

    return-void
.end method

.method public static saveDraft()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "saveDraft"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSaveEdit()V

    .line 3
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void
.end method

.method public static saveEdit()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "saveEdit"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSaveEdit()V

    .line 3
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    return-void
.end method

.method public static saveVideo(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "saveVideo"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSaveVideo(Ljava/lang/String;)V

    .line 3
    sget-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void
.end method

.method public static saveVideoFd(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSaveVideoFd(Ljava/io/FileDescriptor;)V

    .line 2
    sget-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void
.end method

.method public static sendTouchEvent(Lcom/xiaomi/fenshen/FenShenCam$TEventType;FFFFF)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSendTouchEvent(IFFFFF)V

    return-void
.end method

.method public static setFilmFormat(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSetFilmFormat(Z)V

    return-void
.end method

.method public static setListener(Lcom/xiaomi/fenshen/FenShenCam$Listener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sput-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    return-void
.end method

.method public static setMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSetMode(I)V

    return-void
.end method

.method public static setPhotoQuality(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSetPhotoQuality(I)V

    return-void
.end method

.method public static setPreviewFrameIndex(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSetPreviewFrameIndex(I)V

    return-void
.end method

.method public static setThumbnailPath(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setThumbnailPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSetThumbnailPath(Ljava/lang/String;)V

    return-void
.end method

.method public static setVideoCodec(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSetVideoCodec(Ljava/lang/String;)V

    return-void
.end method

.method public static start()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStart()V

    return-void
.end method

.method public static startRecordVideo()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "startRecordVideo"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStartRecordVideo()V

    return-void
.end method

.method public static startTimeFreeze()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStartTimeFreeze()V

    return-void
.end method

.method public static stopRecordVideo()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "stopRecordVideo"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStopRecordVideo()V

    return-void
.end method

.method public static stopTimeFreeze()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStopTimeFreeze()V

    return-void
.end method
