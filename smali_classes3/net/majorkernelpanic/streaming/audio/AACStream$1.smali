.class public Lnet/majorkernelpanic/streaming/audio/AACStream$1;
.super Ljava/lang/Object;
.source "AACStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/majorkernelpanic/streaming/audio/AACStream;->encodeWithMediaCodec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lnet/majorkernelpanic/streaming/audio/AACStream;

.field public final synthetic val$bufferSize:I

.field public final synthetic val$inputBuffers:[Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lnet/majorkernelpanic/streaming/audio/AACStream;[Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/audio/AACStream$1;->this$0:Lnet/majorkernelpanic/streaming/audio/AACStream;

    iput-object p2, p0, Lnet/majorkernelpanic/streaming/audio/AACStream$1;->val$inputBuffers:[Ljava/nio/ByteBuffer;

    iput p3, p0, Lnet/majorkernelpanic/streaming/audio/AACStream$1;->val$bufferSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream$1;->this$0:Lnet/majorkernelpanic/streaming/audio/AACStream;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/audio/AACStream;->access$000(Lnet/majorkernelpanic/streaming/audio/AACStream;)Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_0

    .line 3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream$1;->val$inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream$1;->this$0:Lnet/majorkernelpanic/streaming/audio/AACStream;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/audio/AACStream;->access$100(Lnet/majorkernelpanic/streaming/audio/AACStream;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/audio/AACStream$1;->val$inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v4

    iget v2, p0, Lnet/majorkernelpanic/streaming/audio/AACStream$1;->val$bufferSize:I

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v6

    const/4 v0, -0x3

    if-eq v6, v0, :cond_2

    const/4 v0, -0x2

    if-ne v6, v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AACStream$1;->this$0:Lnet/majorkernelpanic/streaming/audio/AACStream;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/audio/AACStream;->access$200(Lnet/majorkernelpanic/streaming/audio/AACStream;)Landroid/media/MediaCodec;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v7, 0x3e8

    div-long v7, v0, v7

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_2
    :goto_1
    const-string v0, "AACStream"

    const-string v1, "An error occured with the AudioRecord API !"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_3
    return-void
.end method
