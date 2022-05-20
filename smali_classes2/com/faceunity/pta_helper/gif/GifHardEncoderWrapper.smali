.class public Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;
.super Ljava/lang/Object;
.source "GifHardEncoderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;,
        Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "GifHardEncoderWrapper"


# instance fields
.field public b:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

.field public c:Landroid/os/HandlerThread;

.field public d:Landroid/os/Handler;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:J

.field public i:J

.field public j:I

.field public k:[I

.field public l:D

.field public m:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p2

    move v7, p3

    move v8, p4

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 12

    move-object v0, p0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x1

    .line 4
    iput-wide v1, v0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->i:J

    const/4 v1, -0x1

    .line 5
    iput v1, v0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->j:I

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->k:[I

    .line 7
    new-instance v2, Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    invoke-direct {v2}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;-><init>()V

    iput-object v2, v0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->b:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    move v1, p2

    .line 8
    iput v1, v0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->f:I

    move v4, p3

    iput v4, v0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->g:I

    move-object v9, p1

    iput-object v9, v0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->e:Ljava/lang/String;

    sget-object v10, Lcom/faceunity/pta_helper/gif/EncodingType;->ENCODING_TYPE_SIMPLE_FAST:Lcom/faceunity/pta_helper/gif/EncodingType;

    move v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->init(IIIIIILjava/lang/String;Lcom/faceunity/pta_helper/gif/EncodingType;I)V

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, v0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->h:J

    .line 10
    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->c:Landroid/os/HandlerThread;

    .line 11
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance v1, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;

    iget-object v2, v0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->c:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;-><init>(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->d:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->h:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoder;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->b:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->b:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    return-object v0
.end method

.method public static synthetic c(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic d(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->c:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static synthetic e(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->m:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;

    return-object p0
.end method

.method public static synthetic f(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->l:D

    return-wide v0
.end method

.method public static synthetic g(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->h:J

    return-wide v0
.end method


# virtual methods
.method public encodeFrame(I[F[F)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->i:J

    .line 2
    iget-object v2, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->b:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->k:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 4
    iget v2, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->j:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    if-eqz v2, :cond_2

    int-to-long v5, v2

    .line 5
    rem-long/2addr v0, v5

    sub-int/2addr v2, v3

    int-to-long v5, v2

    cmp-long v0, v0, v5

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_1
    array-length v5, v2

    int-to-long v5, v5

    rem-long/2addr v0, v5

    long-to-int v0, v0

    .line 7
    aget v0, v2, v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    if-eqz v3, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->b:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->updateTexture(I[F[F)J

    move-result-wide p1

    .line 9
    iget-object p3, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->d:Landroid/os/Handler;

    invoke-virtual {p3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object p3, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->d:Landroid/os/Handler;

    invoke-virtual {p3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data_key_img"

    .line 12
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 13
    invoke-virtual {p3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 14
    iget-object p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->d:Landroid/os/Handler;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->j:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->k:[I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->i:J

    .line 4
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->b:Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->d:Landroid/os/Handler;

    new-instance v1, Lcom/faceunity/pta_helper/gif/b;

    invoke-direct {v1, p0}, Lcom/faceunity/pta_helper/gif/b;-><init>(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDiscardAFraction(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->j:I

    return-void
.end method

.method public setDiscardAFraction([I)V
    .locals 8

    if-eqz p1, :cond_8

    .line 2
    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    array-length v0, p1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v6, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_6

    aget v7, p1, v4

    if-eqz v7, :cond_2

    if-ne v7, v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The array can only contain 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-ne v6, v2, :cond_3

    move v6, v7

    :cond_3
    if-nez v5, :cond_5

    if-ne v6, v7, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, v3

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_7

    .line 5
    iput-object p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->k:[I

    return-void

    .line 6
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The array contains only one type of element, and the array must contain both 0 and 1 elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    return-void
.end method

.method public setFps(D)V
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v0

    .line 1
    iput-wide p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->l:D

    return-void
.end method

.method public setListener(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->m:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;

    return-void
.end method
