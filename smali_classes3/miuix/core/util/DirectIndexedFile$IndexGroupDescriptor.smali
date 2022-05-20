.class public Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexGroupDescriptor"
.end annotation


# instance fields
.field public mMaxIndex:I

.field public mMinIndex:I

.field public mOffset:J


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    .line 4
    iput p2, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    .line 5
    iput-wide p3, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    return-void
.end method

.method public synthetic constructor <init>(IIJLmiuix/core/util/DirectIndexedFile$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJ)V

    return-void
.end method

.method public static synthetic access$3800(Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;Ljava/io/DataOutput;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->write(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 4
    new-instance p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJ)V

    return-object p0
.end method

.method private write(Ljava/io/DataOutput;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2
    iget v0, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 3
    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_0
    const/16 p1, 0x10

    return p1
.end method
