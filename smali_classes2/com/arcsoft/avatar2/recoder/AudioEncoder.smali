.class public Lcom/arcsoft/avatar2/recoder/AudioEncoder;
.super Lcom/arcsoft/avatar2/recoder/BaseEncoder;
.source "AudioEncoder.java"


# static fields
.field public static final u:Ljava/lang/String; = "Arc_BaseEncoder"

.field public static final v:Ljava/lang/String; = "Arc_Audio_Encoder"


# instance fields
.field public final A:I

.field public final B:I

.field public final C:Ljava/lang/String;

.field public final D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:Ljava/lang/Object;

.field public M:J

.field public N:Z

.field public final NAME:Ljava/lang/String;

.field public w:Landroid/media/AudioRecord;

.field public x:Ljava/lang/Thread;

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Lcom/arcsoft/avatar2/recoder/MuxerWrapper;Ljava/lang/Object;Lcom/arcsoft/avatar2/recoder/RecordingListener;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;-><init>(Lcom/arcsoft/avatar2/recoder/MuxerWrapper;Ljava/lang/Object;Lcom/arcsoft/avatar2/recoder/RecordingListener;)V

    const-string p1, "ARC_S"

    .line 2
    iput-object p1, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->NAME:Ljava/lang/String;

    const p1, 0xac44

    .line 3
    iput p1, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->y:I

    const/16 p2, 0x10

    .line 4
    iput p2, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->z:I

    const/4 p3, 0x2

    .line 5
    iput p3, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->A:I

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->B:I

    const-string v1, "audio/mp4a-latm"

    .line 7
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->C:Ljava/lang/String;

    const v1, 0x1e8480

    .line 8
    iput v1, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->D:I

    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-le v2, v3, :cond_0

    const/16 p1, 0x5622

    :cond_0
    iput p1, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->E:I

    .line 10
    iput p2, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->F:I

    .line 11
    iput p3, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->G:I

    .line 12
    iput v0, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->H:I

    .line 13
    iput v1, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->I:I

    .line 14
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->L:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->c:Z

    const-wide/16 p1, 0x0

    .line 16
    iput-wide p1, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->M:J

    return-void
.end method

.method public static synthetic a(Lcom/arcsoft/avatar2/recoder/AudioEncoder;)Landroid/media/AudioRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->w:Landroid/media/AudioRecord;

    return-object p0
.end method

.method public static synthetic b(Lcom/arcsoft/avatar2/recoder/AudioEncoder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->K:I

    return p0
.end method

.method private b()Z
    .locals 8

    .line 2
    iget v0, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->E:I

    iget v1, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->F:I

    iget v2, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->G:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->J:I

    const/4 v0, 0x0

    .line 3
    :try_start_0
    new-instance v7, Landroid/media/AudioRecord;

    iget v2, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->H:I

    iget v3, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->E:I

    iget v4, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->F:I

    iget v5, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->G:I

    iget v6, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->J:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v7, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->w:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    iget-object v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->o:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz v2, :cond_0

    const/16 v3, 0x271

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->w:Landroid/media/AudioRecord;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget v0, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->J:I

    iput v0, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->K:I

    return v2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->w:Landroid/media/AudioRecord;

    return v0
.end method

.method private c()Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->E:I

    iget v1, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->F:I

    const-string v2, "audio/mp4a-latm"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "aac-profile"

    const/4 v3, 0x2

    .line 2
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->d()I

    move-result v1

    const-string v3, "channel-count"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4
    iget v1, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->I:I

    const-string v3, "bitrate"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 6
    iput-object v3, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    .line 7
    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->o:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz v4, :cond_0

    const/16 v5, 0x221

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    .line 9
    :cond_0
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v4, 0x1

    .line 11
    :try_start_1
    invoke-virtual {v2, v0, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->o:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz v0, :cond_2

    const/16 v2, 0x222

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return v4
.end method

.method private d()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->G:I

    const/16 v1, 0xc

    if-ne v1, v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public notifyNewFrameAvailable()V
    .locals 0

    return-void
.end method

.method public prepare(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->b()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->c()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->N:Z

    return-void
.end method

.method public release(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->x:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->x:Ljava/lang/Thread;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :goto_1
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->x:Ljava/lang/Thread;

    throw p1

    .line 6
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->w:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->N:Z

    .line 8
    invoke-super {p0, p1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->release(Z)V

    return-void
.end method

.method public startRecording()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->N:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->x:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 3
    invoke-super {p0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->startRecording()V

    .line 4
    new-instance v0, Lcom/arcsoft/avatar2/recoder/AudioEncoder$1;

    const-string v1, "Arc_Audio_Encoder"

    invoke-direct {v0, p0, v1}, Lcom/arcsoft/avatar2/recoder/AudioEncoder$1;-><init>(Lcom/arcsoft/avatar2/recoder/AudioEncoder;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;->x:Ljava/lang/Thread;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Audio encoder thread has been started already, can not start twice."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
