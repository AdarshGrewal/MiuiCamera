.class public final Lcom/faceunity/pta_helper/gif/a;
.super Lcom/faceunity/pta_helper/gif/GifImageIterator;
.source "GifDecoder.java"


# instance fields
.field public a:Z

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Lcom/faceunity/pta_helper/gif/GifDecoder;


# direct methods
.method public constructor <init>(Lcom/faceunity/pta_helper/gif/GifDecoder;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/pta_helper/gif/a;->d:Lcom/faceunity/pta_helper/gif/GifDecoder;

    iput-wide p2, p0, Lcom/faceunity/pta_helper/gif/a;->b:J

    iput-wide p4, p0, Lcom/faceunity/pta_helper/gif/a;->c:J

    invoke-direct {p0}, Lcom/faceunity/pta_helper/gif/GifImageIterator;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/faceunity/pta_helper/gif/a;->a:Z

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/faceunity/pta_helper/gif/a;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/a;->d:Lcom/faceunity/pta_helper/gif/GifDecoder;

    iget-wide v1, p0, Lcom/faceunity/pta_helper/gif/a;->c:J

    invoke-static {v0, v1, v2}, Lcom/faceunity/pta_helper/gif/GifDecoder;->b(Lcom/faceunity/pta_helper/gif/GifDecoder;J)V

    .line 3
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/a;->d:Lcom/faceunity/pta_helper/gif/GifDecoder;

    invoke-static {v0}, Lcom/faceunity/pta_helper/gif/GifDecoder;->a(Lcom/faceunity/pta_helper/gif/GifDecoder;)Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/faceunity/pta_helper/gif/a;->a:Z

    :cond_0
    return-void
.end method

.method public final hasNext()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/a;->d:Lcom/faceunity/pta_helper/gif/GifDecoder;

    iget-wide v1, p0, Lcom/faceunity/pta_helper/gif/a;->b:J

    invoke-static {v0, v1, v2}, Lcom/faceunity/pta_helper/gif/GifDecoder;->a(Lcom/faceunity/pta_helper/gif/GifDecoder;J)Z

    move-result v0

    return v0
.end method

.method public final next()Lcom/faceunity/pta_helper/gif/GifImage;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/a;->d:Lcom/faceunity/pta_helper/gif/GifDecoder;

    iget-wide v1, p0, Lcom/faceunity/pta_helper/gif/a;->c:J

    iget-wide v3, p0, Lcom/faceunity/pta_helper/gif/a;->b:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/faceunity/pta_helper/gif/GifDecoder;->a(Lcom/faceunity/pta_helper/gif/GifDecoder;JJ)Lcom/faceunity/pta_helper/gif/GifImage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/faceunity/pta_helper/gif/a;->next()Lcom/faceunity/pta_helper/gif/GifImage;

    move-result-object v0

    return-object v0
.end method
