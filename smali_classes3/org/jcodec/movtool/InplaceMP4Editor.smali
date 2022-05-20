.class public Lorg/jcodec/movtool/InplaceMP4Editor;
.super Ljava/lang/Object;
.source "InplaceMP4Editor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doTheFix(Lorg/jcodec/common/io/SeekableByteChannel;Lorg/jcodec/movtool/MP4Edit;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jcodec/common/io/SeekableByteChannel;",
            "Lorg/jcodec/movtool/MP4Edit;",
            ")",
            "Ljava/util/List<",
            "Lorg/jcodec/common/Tuple$_2<",
            "Lorg/jcodec/containers/mp4/MP4Util$Atom;",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/jcodec/movtool/InplaceMP4Editor;->getMoov(Lorg/jcodec/common/io/SeekableByteChannel;)Lorg/jcodec/containers/mp4/MP4Util$Atom;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lorg/jcodec/common/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/jcodec/movtool/InplaceMP4Editor;->fetchBox(Lorg/jcodec/common/io/SeekableByteChannel;Lorg/jcodec/containers/mp4/MP4Util$Atom;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4
    invoke-direct {p0, v1}, Lorg/jcodec/movtool/InplaceMP4Editor;->parseBox(Ljava/nio/ByteBuffer;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v2

    check-cast v2, Lorg/jcodec/containers/mp4/boxes/MovieBox;

    .line 5
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const-string v4, "mvex"

    .line 6
    invoke-static {v2, v4}, Lorg/jcodec/containers/mp4/BoxUtil;->containsBox(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 7
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 8
    invoke-direct {p0, p1}, Lorg/jcodec/movtool/InplaceMP4Editor;->getFragments(Lorg/jcodec/common/io/SeekableByteChannel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jcodec/containers/mp4/MP4Util$Atom;

    .line 9
    invoke-direct {p0, p1, v7}, Lorg/jcodec/movtool/InplaceMP4Editor;->fetchBox(Lorg/jcodec/common/io/SeekableByteChannel;Lorg/jcodec/containers/mp4/MP4Util$Atom;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 10
    invoke-static {v7, v8}, Lorg/jcodec/common/Tuple;->pair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/jcodec/common/Tuple$_2;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-direct {p0, v8}, Lorg/jcodec/movtool/InplaceMP4Editor;->parseBox(Ljava/nio/ByteBuffer;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v7

    check-cast v7, Lorg/jcodec/containers/mp4/boxes/MovieFragmentBox;

    .line 12
    invoke-virtual {v7, v2}, Lorg/jcodec/containers/mp4/boxes/MovieFragmentBox;->setMovie(Lorg/jcodec/containers/mp4/boxes/MovieBox;)V

    .line 13
    invoke-static {v8, v7}, Lorg/jcodec/common/Tuple;->pair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/jcodec/common/Tuple$_2;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v4}, Lorg/jcodec/common/Tuple;->_2_project1(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v6, 0x0

    new-array v6, v6, [Lorg/jcodec/containers/mp4/boxes/MovieFragmentBox;

    invoke-interface {p1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/jcodec/containers/mp4/boxes/MovieFragmentBox;

    invoke-interface {p2, v2, p1}, Lorg/jcodec/movtool/MP4Edit;->applyToFragment(Lorg/jcodec/containers/mp4/boxes/MovieBox;[Lorg/jcodec/containers/mp4/boxes/MovieFragmentBox;)V

    .line 15
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jcodec/common/Tuple$_2;

    .line 16
    iget-object v4, p2, Lorg/jcodec/common/Tuple$_2;->v0:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget-object p2, p2, Lorg/jcodec/common/Tuple$_2;->v1:Ljava/lang/Object;

    check-cast p2, Lorg/jcodec/containers/mp4/boxes/Box;

    invoke-direct {p0, v4, p2}, Lorg/jcodec/movtool/InplaceMP4Editor;->rewriteBox(Ljava/nio/ByteBuffer;Lorg/jcodec/containers/mp4/boxes/Box;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v5

    .line 17
    :cond_2
    invoke-interface {p2, v2}, Lorg/jcodec/movtool/MP4Edit;->apply(Lorg/jcodec/containers/mp4/boxes/MovieBox;)V

    .line 18
    :cond_3
    invoke-direct {p0, v1, v2}, Lorg/jcodec/movtool/InplaceMP4Editor;->rewriteBox(Ljava/nio/ByteBuffer;Lorg/jcodec/containers/mp4/boxes/Box;)Z

    move-result p1

    if-nez p1, :cond_4

    return-object v5

    .line 19
    :cond_4
    invoke-static {v0, v1}, Lorg/jcodec/common/Tuple;->pair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/jcodec/common/Tuple$_2;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method private fetchBox(Lorg/jcodec/common/io/SeekableByteChannel;Lorg/jcodec/containers/mp4/MP4Util$Atom;)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getOffset()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/jcodec/common/io/SeekableByteChannel;->setPosition(J)Lorg/jcodec/common/io/SeekableByteChannel;

    .line 2
    invoke-virtual {p2}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jcodec/containers/mp4/boxes/Header;->getSize()J

    move-result-wide v0

    long-to-int p2, v0

    invoke-static {p1, p2}, Lorg/jcodec/common/io/NIOUtils;->fetchFromChannel(Ljava/nio/channels/ReadableByteChannel;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private getFragments(Lorg/jcodec/common/io/SeekableByteChannel;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jcodec/common/io/SeekableByteChannel;",
            ")",
            "Ljava/util/List<",
            "Lorg/jcodec/containers/mp4/MP4Util$Atom;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/jcodec/containers/mp4/MP4Util;->getRootAtoms(Lorg/jcodec/common/io/SeekableByteChannel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jcodec/containers/mp4/MP4Util$Atom;

    .line 3
    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jcodec/containers/mp4/boxes/Header;->getFourcc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "moof"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getMoov(Lorg/jcodec/common/io/SeekableByteChannel;)Lorg/jcodec/containers/mp4/MP4Util$Atom;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jcodec/containers/mp4/MP4Util;->getRootAtoms(Lorg/jcodec/common/io/SeekableByteChannel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/MP4Util$Atom;

    .line 2
    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/boxes/Header;->getFourcc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "moov"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseBox(Ljava/nio/ByteBuffer;)Lorg/jcodec/containers/mp4/boxes/Box;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jcodec/containers/mp4/boxes/Header;->read(Ljava/nio/ByteBuffer;)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v0

    .line 2
    invoke-static {}, Lorg/jcodec/containers/mp4/BoxFactory;->getDefault()Lorg/jcodec/containers/mp4/IBoxFactory;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/jcodec/containers/mp4/BoxUtil;->parseBox(Ljava/nio/ByteBuffer;Lorg/jcodec/containers/mp4/boxes/Header;Lorg/jcodec/containers/mp4/IBoxFactory;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object p1

    return-object p1
.end method

.method private replaceBox(Lorg/jcodec/common/io/SeekableByteChannel;Lorg/jcodec/containers/mp4/MP4Util$Atom;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getOffset()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/jcodec/common/io/SeekableByteChannel;->setPosition(J)Lorg/jcodec/common/io/SeekableByteChannel;

    .line 2
    invoke-interface {p1, p3}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private rewriteBox(Ljava/nio/ByteBuffer;Lorg/jcodec/containers/mp4/boxes/Box;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2
    invoke-virtual {p2, p1}, Lorg/jcodec/containers/mp4/boxes/Box;->write(Ljava/nio/ByteBuffer;)V

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    const/16 v2, 0x8

    if-ge p2, v2, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p2, 0x4

    new-array p2, p2, [B

    const/16 v2, 0x66

    aput-byte v2, p2, v0

    const/16 v2, 0x72

    aput-byte v2, p2, v1

    const/4 v2, 0x2

    const/16 v3, 0x65

    aput-byte v3, p2, v2

    const/4 v2, 0x3

    aput-byte v3, p2, v2

    .line 6
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v0
.end method


# virtual methods
.method public copy(Ljava/io/File;Ljava/io/File;Lorg/jcodec/movtool/MP4Edit;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->readableChannel(Ljava/io/File;)Lorg/jcodec/common/io/FileChannelWrapper;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {p2}, Lorg/jcodec/common/io/NIOUtils;->writableChannel(Ljava/io/File;)Lorg/jcodec/common/io/FileChannelWrapper;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, p3}, Lorg/jcodec/movtool/InplaceMP4Editor;->doTheFix(Lorg/jcodec/common/io/SeekableByteChannel;Lorg/jcodec/movtool/MP4Edit;)Ljava/util/List;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 4
    :goto_0
    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 5
    invoke-static {v0}, Lorg/jcodec/common/io/NIOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return p2

    .line 6
    :cond_0
    :try_start_2
    new-instance p3, Lorg/jcodec/movtool/InplaceMP4Editor$1;

    invoke-direct {p3, p0}, Lorg/jcodec/movtool/InplaceMP4Editor$1;-><init>(Lorg/jcodec/movtool/InplaceMP4Editor;)V

    invoke-static {p2, p3}, Lorg/jcodec/common/Tuple;->_2map0(Ljava/util/List;Lorg/jcodec/common/Tuple$Mapper;)Ljava/util/List;

    move-result-object p2

    .line 7
    invoke-static {p2}, Lorg/jcodec/common/Tuple;->asMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p2

    .line 8
    invoke-static {p1}, Lorg/jcodec/containers/mp4/MP4Util;->getRootAtoms(Lorg/jcodec/common/io/SeekableByteChannel;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jcodec/containers/mp4/MP4Util$Atom;

    .line 9
    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getOffset()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    .line 10
    invoke-interface {v0, v2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v1, p1, v0}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->copy(Lorg/jcodec/common/io/SeekableByteChannel;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object p1, v0

    .line 12
    :goto_2
    invoke-static {v0}, Lorg/jcodec/common/io/NIOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 13
    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method public modify(Ljava/io/File;Lorg/jcodec/movtool/MP4Edit;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->rwChannel(Ljava/io/File;)Lorg/jcodec/common/io/FileChannelWrapper;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/jcodec/movtool/InplaceMP4Editor;->doTheFix(Lorg/jcodec/common/io/SeekableByteChannel;Lorg/jcodec/movtool/MP4Edit;)Ljava/util/List;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return p2

    .line 4
    :cond_0
    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jcodec/common/Tuple$_2;

    .line 5
    iget-object v1, v0, Lorg/jcodec/common/Tuple$_2;->v0:Ljava/lang/Object;

    check-cast v1, Lorg/jcodec/containers/mp4/MP4Util$Atom;

    iget-object v0, v0, Lorg/jcodec/common/Tuple$_2;->v1:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, v1, v0}, Lorg/jcodec/movtool/InplaceMP4Editor;->replaceBox(Lorg/jcodec/common/io/SeekableByteChannel;Lorg/jcodec/containers/mp4/MP4Util$Atom;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    const/4 p1, 0x0

    .line 6
    :goto_2
    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method public replace(Ljava/io/File;Lorg/jcodec/movtool/MP4Edit;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lorg/jcodec/movtool/InplaceMP4Editor;->copy(Ljava/io/File;Ljava/io/File;Lorg/jcodec/movtool/MP4Edit;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
