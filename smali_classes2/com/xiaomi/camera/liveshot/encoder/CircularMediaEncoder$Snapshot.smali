.class public final Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;
.super Ljava/lang/Object;
.source "CircularMediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field public filterId:I

.field public forceEos:Z

.field public final format:Landroid/media/MediaFormat;

.field public final head:J

.field public offset:J

.field public position:J

.field public volatile samples:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Sample;",
            ">;"
        }
    .end annotation
.end field

.field public final tail:J

.field public time:J


# direct methods
.method public constructor <init>(JJJILandroid/media/MediaFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->head:J

    .line 3
    iput-wide p3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->tail:J

    .line 4
    iput-wide p5, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->time:J

    .line 5
    iput-object p8, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->format:Landroid/media/MediaFormat;

    .line 6
    iput p7, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->filterId:I

    .line 7
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->samples:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 p1, -0x1

    .line 8
    iput-wide p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->position:J

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->forceEos:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->samples:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->samples:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Sample;

    .line 3
    iget-object v0, v0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Sample;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public eos()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->forceEos:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->position:J

    iget-wide v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->tail:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public put(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Lcom/xiaomi/camera/liveshot/LivePhotoResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->eos()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->samples:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1, p2, p3}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Sample;->create(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Lcom/xiaomi/camera/liveshot/LivePhotoResult;)Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Sample;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 3
    iget-wide p1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->position:J

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->eos()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->format:Landroid/media/MediaFormat;

    const-string p2, "mime"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": max range has reached: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->head:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->tail:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->position:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Snapshot"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->putEos()V

    :cond_1
    return-void
.end method

.method public putEos()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->samples:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Sample;->EOS_SAMPLE_ENTRY:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Sample;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->forceEos:Z

    return-void
.end method
