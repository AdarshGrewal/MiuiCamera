.class public Lorg/jcodec/codecs/h264/mp4/AvcCBox;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "AvcCBox.java"


# instance fields
.field public level:I

.field public nalLengthSize:I

.field public ppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public profile:I

.field public profileCompat:I

.field public spsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->spsList:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->ppsList:Ljava/util/List;

    return-void
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "avcC"

    return-object v0
.end method


# virtual methods
.method public doWrite(Ljava/nio/ByteBuffer;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2
    iget v1, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->profile:I

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3
    iget v1, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->profileCompat:I

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 4
    iget v1, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->level:I

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6
    iget-object v1, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->spsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 7
    iget-object v1, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->spsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v3, v0

    int-to-short v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v3, 0x67

    .line 9
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10
    invoke-static {p1, v2}, Lorg/jcodec/common/io/NIOUtils;->write(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->ppsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 12
    iget-object v1, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->ppsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v3, v0

    int-to-byte v3, v3

    int-to-short v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v3, 0x68

    .line 14
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 15
    invoke-static {p1, v2}, Lorg/jcodec/common/io/NIOUtils;->write(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public estimateSize()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->spsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x11

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->ppsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lorg/jcodec/common/io/NIOUtils;->skip(Ljava/nio/ByteBuffer;I)I

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->profile:I

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->profileCompat:I

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->level:I

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    .line 6
    iput v1, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->nalLengthSize:I

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const/16 v5, 0x27

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit8 v6, v6, 0x3f

    if-ne v5, v6, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    invoke-static {v5}, Lorg/jcodec/common/Preconditions;->checkState(Z)V

    .line 10
    iget-object v5, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->spsList:Ljava/util/List;

    sub-int/2addr v4, v0

    invoke-static {p1, v4}, Lorg/jcodec/common/io/NIOUtils;->read(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_3

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const/16 v5, 0x28

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit8 v6, v6, 0x3f

    if-ne v5, v6, :cond_2

    move v5, v0

    goto :goto_3

    :cond_2
    move v5, v2

    :goto_3
    invoke-static {v5}, Lorg/jcodec/common/Preconditions;->checkState(Z)V

    .line 14
    iget-object v5, p0, Lorg/jcodec/codecs/h264/mp4/AvcCBox;->ppsList:Ljava/util/List;

    sub-int/2addr v4, v0

    invoke-static {p1, v4}, Lorg/jcodec/common/io/NIOUtils;->read(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
