.class public final Landroidx/heifwriter/HeifWriter;
.super Ljava/lang/Object;
.source "HeifWriter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/heifwriter/HeifWriter$ResultWaiter;,
        Landroidx/heifwriter/HeifWriter$HeifCallback;,
        Landroidx/heifwriter/HeifWriter$Builder;,
        Landroidx/heifwriter/HeifWriter$InputMode;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final INPUT_MODE_BITMAP:I = 0x2

.field public static final INPUT_MODE_BUFFER:I = 0x0

.field public static final INPUT_MODE_SURFACE:I = 0x1

.field public static final MUXER_DATA_FLAG:I = 0x10

.field public static final TAG:Ljava/lang/String; = "HeifWriter"


# instance fields
.field public final mExifList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

.field public final mInputMode:I

.field public final mMaxImages:I

.field public mMuxer:Landroid/media/MediaMuxer;

.field public final mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mNumTiles:I

.field public mOutputIndex:I

.field public final mPrimaryIndex:I

.field public final mResultWaiter:Landroidx/heifwriter/HeifWriter$ResultWaiter;

.field public final mRotation:I

.field public mStarted:Z

.field public mTrackIndexArray:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/FileDescriptor;IIIZIIIILandroid/os/Handler;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p8

    move/from16 v3, p9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v4, Landroidx/heifwriter/HeifWriter$ResultWaiter;

    invoke-direct {v4}, Landroidx/heifwriter/HeifWriter$ResultWaiter;-><init>()V

    iput-object v4, v0, Landroidx/heifwriter/HeifWriter;->mResultWaiter:Landroidx/heifwriter/HeifWriter$ResultWaiter;

    .line 3
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v0, Landroidx/heifwriter/HeifWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroidx/heifwriter/HeifWriter;->mExifList:Ljava/util/List;

    if-ge v3, v2, :cond_3

    const-string v4, "image/vnd.android.heic"

    move/from16 v6, p3

    move/from16 v7, p4

    .line 5
    invoke-static {v4, v6, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    const/4 v4, 0x1

    .line 6
    iput v4, v0, Landroidx/heifwriter/HeifWriter;->mNumTiles:I

    move/from16 v4, p5

    .line 7
    iput v4, v0, Landroidx/heifwriter/HeifWriter;->mRotation:I

    move/from16 v4, p10

    .line 8
    iput v4, v0, Landroidx/heifwriter/HeifWriter;->mInputMode:I

    .line 9
    iput v2, v0, Landroidx/heifwriter/HeifWriter;->mMaxImages:I

    .line 10
    iput v3, v0, Landroidx/heifwriter/HeifWriter;->mPrimaryIndex:I

    const/4 v2, 0x0

    if-eqz p11, :cond_0

    .line 11
    invoke-virtual/range {p11 .. p11}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    .line 12
    new-instance v2, Landroid/os/HandlerThread;

    const/4 v3, -0x2

    const-string v4, "HeifEncoderThread"

    invoke-direct {v2, v4, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Landroidx/heifwriter/HeifWriter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 13
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 14
    iget-object v2, v0, Landroidx/heifwriter/HeifWriter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_1

    .line 15
    :cond_1
    iput-object v2, v0, Landroidx/heifwriter/HeifWriter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 16
    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Landroidx/heifwriter/HeifWriter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    .line 17
    new-instance v3, Landroid/media/MediaMuxer;

    if-eqz v1, :cond_2

    invoke-direct {v3, p1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    move-object v1, p2

    invoke-direct {v3, p2, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    :goto_2
    iput-object v3, v0, Landroidx/heifwriter/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    .line 18
    new-instance v1, Landroidx/heifwriter/HeifEncoder;

    iget v10, v0, Landroidx/heifwriter/HeifWriter;->mInputMode:I

    iget-object v11, v0, Landroidx/heifwriter/HeifWriter;->mHandler:Landroid/os/Handler;

    new-instance v12, Landroidx/heifwriter/HeifWriter$HeifCallback;

    invoke-direct {v12, p0}, Landroidx/heifwriter/HeifWriter$HeifCallback;-><init>(Landroidx/heifwriter/HeifWriter;)V

    move-object v5, v1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v5 .. v12}, Landroidx/heifwriter/HeifEncoder;-><init>(IIZIILandroid/os/Handler;Landroidx/heifwriter/HeifEncoder$Callback;)V

    iput-object v1, v0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    return-void

    .line 19
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid maxImages ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") or primaryIndex ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkMode(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/heifwriter/HeifWriter;->mInputMode:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not valid in input mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/heifwriter/HeifWriter;->mInputMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkStarted(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/heifwriter/HeifWriter;->mStarted:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkStartedAndMode(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkStarted(Z)V

    .line 2
    invoke-direct {p0, p1}, Landroidx/heifwriter/HeifWriter;->checkMode(I)V

    return-void
.end method


# virtual methods
.method public addBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkStartedAndMode(I)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    invoke-virtual {v0, p1}, Landroidx/heifwriter/HeifEncoder;->addBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addExifData(I[BII)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkStarted(Z)V

    .line 2
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 5
    iget-object p2, p0, Landroidx/heifwriter/HeifWriter;->mExifList:Ljava/util/List;

    monitor-enter p2

    .line 6
    :try_start_0
    iget-object p3, p0, Landroidx/heifwriter/HeifWriter;->mExifList:Ljava/util/List;

    new-instance p4, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p4, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Landroidx/heifwriter/HeifWriter;->processExifData()V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addYuvBuffer(I[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkStartedAndMode(I)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    invoke-virtual {v0, p1, p2}, Landroidx/heifwriter/HeifEncoder;->addYuvBuffer(I[B)V

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/heifwriter/HeifWriter$1;

    invoke-direct {v1, p0}, Landroidx/heifwriter/HeifWriter$1;-><init>(Landroidx/heifwriter/HeifWriter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public closeInternal()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 3
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 4
    iput-object v1, p0, Landroidx/heifwriter/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroidx/heifwriter/HeifEncoder;->close()V

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iput-object v1, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    .line 9
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkStarted(Z)V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkMode(I)V

    .line 3
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    invoke-virtual {v0}, Landroidx/heifwriter/HeifEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public processExifData()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mExifList:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/heifwriter/HeifWriter;->mExifList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Landroidx/heifwriter/HeifWriter;->mExifList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 8
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const-wide/16 v5, 0x0

    const/16 v7, 0x10

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 9
    iget-object v2, p0, Landroidx/heifwriter/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v3, p0, Landroidx/heifwriter/HeifWriter;->mTrackIndexArray:[I

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v3, v3, v4

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setInputEndOfStreamTimestamp(J)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkStartedAndMode(I)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    invoke-virtual {v0, p1, p2}, Landroidx/heifwriter/HeifEncoder;->setEndOfInputStreamTimestamp(J)V

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkStarted(Z)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/heifwriter/HeifWriter;->mStarted:Z

    .line 3
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    invoke-virtual {v0}, Landroidx/heifwriter/HeifEncoder;->start()V

    return-void
.end method

.method public stop(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkStarted(Z)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    invoke-virtual {v0}, Landroidx/heifwriter/HeifEncoder;->stopAsync()V

    .line 5
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mResultWaiter:Landroidx/heifwriter/HeifWriter$ResultWaiter;

    invoke-virtual {v0, p1, p2}, Landroidx/heifwriter/HeifWriter$ResultWaiter;->waitForResult(J)V

    .line 7
    invoke-virtual {p0}, Landroidx/heifwriter/HeifWriter;->processExifData()V

    .line 8
    invoke-virtual {p0}, Landroidx/heifwriter/HeifWriter;->closeInternal()V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
