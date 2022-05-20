.class public Lmiuix/core/util/DirectIndexedFile$FileHeader;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileHeader"
.end annotation


# static fields
.field public static final CURRENT_VERSION:I = 0x2

.field public static final FILE_TAG:[B


# instance fields
.field public mDataVersion:I

.field public mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x46t
        0x20t
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array p1, p1, [Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 4
    iput p2, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDataVersion:I

    return-void
.end method

.method public synthetic constructor <init>(IILmiuix/core/util/DirectIndexedFile$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/core/util/DirectIndexedFile$FileHeader;-><init>(II)V

    return-void
.end method

.method public static synthetic access$1600(Lmiuix/core/util/DirectIndexedFile$FileHeader;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDataVersion:I

    return p0
.end method

.method public static synthetic access$200(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$FileHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$FileHeader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    return-object p0
.end method

.method public static synthetic access$3700(Lmiuix/core/util/DirectIndexedFile$FileHeader;Ljava/io/DataOutput;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->write(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method public static read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$FileHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    array-length v0, v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 5
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 6
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 7
    new-instance v3, Lmiuix/core/util/DirectIndexedFile$FileHeader;

    invoke-direct {v3, v0, v1}, Lmiuix/core/util/DirectIndexedFile$FileHeader;-><init>(II)V

    :goto_1
    if-ge v2, v0, :cond_1

    .line 8
    iget-object v1, v3, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->access$000(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v3

    .line 9
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "File version unmatched, please upgrade your reader"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "File tag unmatched, file may be corrupt"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private write(Ljava/io/DataOutput;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    const/4 v0, 0x2

    .line 3
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 4
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 5
    iget v0, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDataVersion:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 7
    invoke-static {v4, p1}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->access$100(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;Ljava/io/DataOutput;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
