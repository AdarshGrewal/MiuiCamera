.class public Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;
.super Ljava/lang/Object;
.source "SplitElfFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;,
        Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ProgramHeader;,
        Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_ELF:I = 0x1

.field public static final FILE_TYPE_ODEX:I = 0x0

.field public static final FILE_TYPE_OTHERS:I = -0x1


# instance fields
.field public elfHeader:Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;

.field public final fis:Ljava/io/FileInputStream;

.field public programHeaders:[Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ProgramHeader;

.field public sectionHeaders:[Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;

.field public final sectionNameToHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->sectionNameToHeaderMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->fis:Ljava/io/FileInputStream;

    .line 4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;-><init>(Ljava/nio/channels/FileChannel;Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$1;)V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->elfHeader:Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;

    const/16 v0, 0x80

    .line 6
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->elfHeader:Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;

    iget-short v2, v2, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->ePhEntSize:S

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->elfHeader:Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;

    iget-object v2, v2, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 9
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->elfHeader:Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;

    iget-wide v2, v2, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->ePhOff:J

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 10
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->elfHeader:Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;

    iget-short v2, v2, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->ePhNum:S

    new-array v2, v2, [Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ProgramHeader;

    iput-object v2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->programHeaders:[Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ProgramHeader;

    const/4 v2, 0x0

    move v3, v2

    .line 11
    :goto_1
    iget-object v4, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->programHeaders:[Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ProgramHeader;

    array-length v4, v4

    const/4 v5, 0x4

    if-ge v3, v4, :cond_1

    const-string v4, "failed to read phdr."

    .line 12
    invoke-static {p1, v0, v4}, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->readUntilLimit(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 13
    iget-object v4, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->programHeaders:[Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ProgramHeader;

    new-instance v6, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ProgramHeader;

    iget-object v7, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->elfHeader:Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;

    iget-object v7, v7, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    aget-byte v5, v7, v5

    invoke-direct {v6, v0, v5, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ProgramHeader;-><init>(Ljava/nio/ByteBuffer;ILcom/iqiyi/android/qigsaw/core/common/SplitElfFile$1;)V

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 14
    :cond_1
    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->elfHeader:Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;

    iget-wide v3, v3, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eShOff:J

    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 15
    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->elfHeader:Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;

    iget-short v3, v3, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eShEntSize:S

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 16
    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->elfHeader:Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;

    iget-short v3, v3, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eShNum:S

    new-array v3, v3, [Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;

    iput-object v3, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->sectionHeaders:[Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;

    move v3, v2

    .line 17
    :goto_2
    iget-object v4, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->sectionHeaders:[Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;

    array-length v6, v4

    if-ge v3, v6, :cond_2

    const-string v4, "failed to read shdr."

    .line 18
    invoke-static {p1, v0, v4}, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->readUntilLimit(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 19
    iget-object v4, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->sectionHeaders:[Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;

    new-instance v6, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;

    iget-object v7, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->elfHeader:Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;

    iget-object v7, v7, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    aget-byte v7, v7, v5

    invoke-direct {v6, v0, v7, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;-><init>(Ljava/nio/ByteBuffer;ILcom/iqiyi/android/qigsaw/core/common/SplitElfFile$1;)V

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->elfHeader:Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;

    iget-short p1, p1, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eShStrNdx:S

    if-lez p1, :cond_3

    .line 21
    aget-object p1, v4, p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->getSection(Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->sectionHeaders:[Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;

    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 24
    iget v4, v3, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shName:I

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 25
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->readCString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shNameStr:Ljava/lang/String;

    .line 26
    iget-object v5, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->sectionNameToHeaderMap:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static synthetic access$300(IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->assertInRange(IIILjava/lang/String;)V

    return-void
.end method

.method public static assertInRange(IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFileTypeByMagic(Ljava/io/File;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    .line 1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 2
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    const/4 p0, 0x0

    .line 3
    aget-byte v1, v0, p0

    const/16 v3, 0x64

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v1, v3, :cond_0

    aget-byte v1, v0, v6

    const/16 v3, 0x65

    if-ne v1, v3, :cond_0

    aget-byte v1, v0, v5

    const/16 v3, 0x79

    if-ne v1, v3, :cond_0

    aget-byte v1, v0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    .line 4
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return p0

    .line 5
    :cond_0
    :try_start_3
    aget-byte p0, v0, p0

    const/16 v1, 0x7f

    if-ne p0, v1, :cond_1

    aget-byte p0, v0, v6

    const/16 v1, 0x45

    if-ne p0, v1, :cond_1

    aget-byte p0, v0, v5

    const/16 v1, 0x4c

    if-ne p0, v1, :cond_1

    aget-byte p0, v0, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v0, 0x46

    if-ne p0, v0, :cond_1

    .line 6
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    return v6

    :cond_1
    const/4 p0, -0x1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    return p0

    :catchall_3
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_4
    move-exception p0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 7
    :catchall_5
    :cond_2
    throw p0
.end method

.method public static readCString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    aget-byte v2, v0, v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    const-string v3, "ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v1, p0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2
.end method

.method public static readUntilLimit(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2
    invoke-virtual {p0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Rest bytes insufficient, expect to read "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes but only "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes were read."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->sectionNameToHeaderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->programHeaders:[Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ProgramHeader;

    .line 4
    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->sectionHeaders:[Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;

    return-void
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public getDataOrder()Ljava/nio/ByteOrder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->elfHeader:Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;

    iget-object v0, v0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    return-object v0
.end method

.method public getSection(Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shSize:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iget-wide v2, p1, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 3
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to read section: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shNameStr:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->readUntilLimit(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSectionHeaderByName(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->sectionNameToHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;

    return-object p1
.end method

.method public getSegment(Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ProgramHeader;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ProgramHeader;->pFileSize:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iget-wide v2, p1, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ProgramHeader;->pOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 3
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to read segment (type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ProgramHeader;->pType:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->readUntilLimit(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-object v0
.end method

.method public is32BitElf()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->elfHeader:Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;

    iget-object v0, v0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
