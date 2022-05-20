.class public Lnet/majorkernelpanic/streaming/mp4/StsdBox;
.super Ljava/lang/Object;
.source "MP4Parser.java"


# instance fields
.field public buffer:[B

.field public fis:Ljava/io/RandomAccessFile;

.field public pos:J

.field public pps:[B

.field public ppsLength:I

.field public sps:[B

.field public spsLength:I


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->buffer:[B

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->pos:J

    .line 4
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->fis:Ljava/io/RandomAccessFile;

    .line 5
    iput-wide p2, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->pos:J

    .line 6
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->findBoxAvcc()Z

    .line 7
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->findSPSandPPS()Z

    return-void
.end method

.method private findBoxAvcc()Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->fis:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->pos:J

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->fis:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    const/16 v2, 0x61

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->fis:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->buffer:[B

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->buffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x76

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->buffer:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    const/16 v3, 0x63

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->buffer:[B

    const/4 v3, 0x2

    aget-byte v1, v1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x43

    if-ne v1, v3, :cond_0

    return v2

    :catch_0
    return v0
.end method

.method private findSPSandPPS()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->fis:Ljava/io/RandomAccessFile;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 2
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->fis:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->spsLength:I

    .line 3
    new-array v2, v1, [B

    iput-object v2, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->sps:[B

    .line 4
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->fis:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 5
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->fis:Ljava/io/RandomAccessFile;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 6
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->fis:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->ppsLength:I

    .line 7
    new-array v2, v1, [B

    iput-object v2, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->pps:[B

    .line 8
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->fis:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method


# virtual methods
.method public getB64PPS()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->pps:[B

    iget v1, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->ppsLength:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getB64SPS()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->sps:[B

    iget v1, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->spsLength:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfileLevel()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->sps:[B

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
