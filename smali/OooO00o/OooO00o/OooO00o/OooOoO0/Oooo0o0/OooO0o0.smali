.class public final LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;
.super LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;
.source "JsonUtf8Reader.java"


# static fields
.field public static final OooOOO:J = -0xcccccccccccccccL

.field public static final OooOOOO:Lokio/ByteString;

.field public static final OooOOOo:Lokio/ByteString;

.field public static final OooOOo:Lokio/ByteString;

.field public static final OooOOo0:Lokio/ByteString;

.field public static final OooOOoo:Lokio/ByteString;

.field public static final OooOo:I = 0x4

.field public static final OooOo0:I = 0x1

.field public static final OooOo00:I = 0x0

.field public static final OooOo0O:I = 0x2

.field public static final OooOo0o:I = 0x3

.field public static final OooOoO:I = 0x6

.field public static final OooOoO0:I = 0x5

.field public static final OooOoOO:I = 0x7

.field public static final OooOoo:I = 0x9

.field public static final OooOoo0:I = 0x8

.field public static final OooOooO:I = 0xa

.field public static final OooOooo:I = 0xb

.field public static final Oooo:I = 0x3

.field public static final Oooo0:I = 0xf

.field public static final Oooo000:I = 0xc

.field public static final Oooo00O:I = 0xd

.field public static final Oooo00o:I = 0xe

.field public static final Oooo0O0:I = 0x10

.field public static final Oooo0OO:I = 0x11

.field public static final Oooo0o:I = 0x0

.field public static final Oooo0o0:I = 0x12

.field public static final Oooo0oO:I = 0x1

.field public static final Oooo0oo:I = 0x2

.field public static final OoooO:I = 0x7

.field public static final OoooO0:I = 0x5

.field public static final OoooO00:I = 0x4

.field public static final OoooO0O:I = 0x6


# instance fields
.field public final OooO:Lokio/Buffer;

.field public final OooO0oo:Lokio/BufferedSource;

.field public OooOO0:I

.field public OooOO0O:J

.field public OooOO0o:I

.field public OooOOO0:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\'\\"

    .line 1
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO:Lokio/ByteString;

    const-string v0, "\"\\"

    .line 2
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOo:Lokio/ByteString;

    const-string/jumbo v0, "{}[]:, \n\t\r\u000c/\\;#="

    .line 3
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOo0:Lokio/ByteString;

    const-string v0, "\n\r"

    .line 4
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOo:Lokio/ByteString;

    const-string v0, "*/"

    .line 5
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOoo:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    .line 4
    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    const/4 p1, 0x6

    .line 5
    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(I)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private OooO00o(Ljava/lang/String;LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;)I
    .locals 4

    .line 20
    iget-object v0, p2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO00o:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 21
    iget-object v3, p2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO00o:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 23
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0OO:[Ljava/lang/String;

    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v0, v0, -0x1

    aput-object p1, p2, v0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private OooO00o(Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 36
    :goto_1
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    add-int/lit8 v3, v1, 0x1

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lokio/BufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 37
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_7

    const/16 v2, 0x20

    if-eq v1, v2, :cond_7

    const/16 v2, 0xd

    if-eq v1, v2, :cond_7

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 38
    :cond_0
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    add-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->skip(J)V

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_5

    .line 39
    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    const-wide/16 v4, 0x2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->request(J)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 40
    :cond_1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO()V

    .line 41
    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_3

    if-eq v3, v2, :cond_2

    return v1

    .line 42
    :cond_2
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 43
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 44
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOo0()V

    goto :goto_0

    .line 45
    :cond_3
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 46
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 47
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOo00()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated comment"

    .line 48
    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;

    move-result-object p1

    throw p1

    :cond_5
    const/16 v2, 0x23

    if-ne v1, v2, :cond_6

    .line 49
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO()V

    .line 50
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOo0()V

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_2
    move v1, v3

    goto :goto_1

    :cond_8
    if-nez p1, :cond_9

    const/4 p1, -0x1

    return p1

    .line 51
    :cond_9
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "End of input"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private OooO00o(Lokio/ByteString;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 24
    :goto_0
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    invoke-interface {v1, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    .line 25
    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    :cond_0
    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 29
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOoo()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 30
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {p1, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    .line 31
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    return-object p1

    .line 32
    :cond_2
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {p1, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->readByte()B

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "Unterminated string"

    .line 35
    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;

    move-result-object p1

    throw p1
.end method

.method private OooO0O0(Ljava/lang/String;LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;)I
    .locals 4

    .line 8
    iget-object v0, p2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO00o:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    iget-object v3, p2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO00o:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 11
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    iget p2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private OooO0O0(Lokio/ByteString;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    :goto_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    invoke-interface {v0, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 13
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x5c

    const-wide/16 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 14
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 15
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOoo()C

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    add-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void

    :cond_1
    const-string p1, "Unterminated string"

    .line 17
    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;

    move-result-object p1

    throw p1
.end method

.method private OooO0O0(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_0
    :pswitch_0
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO()V

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private OooOOO()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 2
    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;

    move-result-object v0

    throw v0
.end method

.method private OooOOOO()I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0O0:[I

    iget v2, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v3, v2, -0x1

    aget v3, v1, v3

    const-wide/16 v4, 0x0

    const/16 v6, 0x8

    const/16 v8, 0x22

    const/16 v9, 0x5d

    const/4 v10, 0x3

    const/4 v11, 0x7

    const/16 v12, 0x3b

    const/16 v13, 0x2c

    const/4 v14, 0x4

    const/4 v15, 0x2

    const/4 v7, 0x1

    if-ne v3, v7, :cond_0

    sub-int/2addr v2, v7

    .line 2
    aput v15, v1, v2

    goto/16 :goto_0

    :cond_0
    if-ne v3, v15, :cond_3

    .line 3
    invoke-direct {v0, v7}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO00o(Z)I

    move-result v1

    .line 4
    iget-object v2, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    if-eq v1, v13, :cond_a

    if-eq v1, v12, :cond_2

    if-ne v1, v9, :cond_1

    .line 5
    iput v14, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v14

    :cond_1
    const-string v1, "Unterminated array"

    .line 6
    invoke-virtual {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;

    move-result-object v1

    throw v1

    .line 7
    :cond_2
    invoke-direct/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO()V

    goto :goto_0

    :cond_3
    const/4 v15, 0x5

    if-eq v3, v10, :cond_17

    if-ne v3, v15, :cond_4

    goto/16 :goto_2

    :cond_4
    if-ne v3, v14, :cond_6

    sub-int/2addr v2, v7

    .line 8
    aput v15, v1, v2

    .line 9
    invoke-direct {v0, v7}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO00o(Z)I

    move-result v1

    .line 10
    iget-object v2, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_a

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_5

    .line 11
    invoke-direct/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO()V

    .line 12
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    const-wide/16 v14, 0x1

    invoke-interface {v1, v14, v15}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_a

    .line 13
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    goto :goto_0

    :cond_5
    const-string v1, "Expected \':\'"

    .line 14
    invoke-virtual {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;

    move-result-object v1

    throw v1

    :cond_6
    const/4 v14, 0x6

    if-ne v3, v14, :cond_7

    sub-int/2addr v2, v7

    .line 15
    aput v11, v1, v2

    goto :goto_0

    :cond_7
    if-ne v3, v11, :cond_9

    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO00o(Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    const/16 v1, 0x12

    .line 17
    iput v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v1

    .line 18
    :cond_8
    invoke-direct/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO()V

    goto :goto_0

    :cond_9
    if-eq v3, v6, :cond_16

    .line 19
    :cond_a
    :goto_0
    invoke-direct {v0, v7}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO00o(Z)I

    move-result v1

    if-eq v1, v8, :cond_15

    const/16 v2, 0x27

    if-eq v1, v2, :cond_14

    if-eq v1, v13, :cond_11

    if-eq v1, v12, :cond_11

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_10

    if-eq v1, v9, :cond_f

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_e

    .line 20
    invoke-direct/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOo0()I

    move-result v1

    if-eqz v1, :cond_b

    return v1

    .line 21
    :cond_b
    invoke-direct/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOo()I

    move-result v1

    if-eqz v1, :cond_c

    return v1

    .line 22
    :cond_c
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0O0(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 23
    invoke-direct/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO()V

    const/16 v1, 0xa

    .line 24
    iput v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v1

    :cond_d
    const-string v1, "Expected value"

    .line 25
    invoke-virtual {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;

    move-result-object v1

    throw v1

    .line 26
    :cond_e
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 27
    iput v7, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v7

    :cond_f
    if-ne v3, v7, :cond_11

    .line 28
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/4 v1, 0x4

    .line 29
    iput v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v1

    .line 30
    :cond_10
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 31
    iput v10, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v10

    :cond_11
    if-eq v3, v7, :cond_13

    const/4 v1, 0x2

    if-ne v3, v1, :cond_12

    goto :goto_1

    :cond_12
    const-string v1, "Unexpected value"

    .line 32
    invoke-virtual {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;

    move-result-object v1

    throw v1

    .line 33
    :cond_13
    :goto_1
    invoke-direct/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO()V

    .line 34
    iput v11, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v11

    .line 35
    :cond_14
    invoke-direct/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO()V

    .line 36
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 37
    iput v6, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v6

    .line 38
    :cond_15
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/16 v1, 0x9

    .line 39
    iput v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v1

    .line 40
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_17
    :goto_2
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0O0:[I

    iget v2, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    sub-int/2addr v2, v7

    const/4 v4, 0x4

    aput v4, v1, v2

    const/16 v1, 0x7d

    if-ne v3, v15, :cond_1a

    .line 42
    invoke-direct {v0, v7}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO00o(Z)I

    move-result v2

    .line 43
    iget-object v4, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    if-eq v2, v13, :cond_1a

    if-eq v2, v12, :cond_19

    if-ne v2, v1, :cond_18

    const/4 v1, 0x2

    .line 44
    iput v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v1

    :cond_18
    const-string v1, "Unterminated object"

    .line 45
    invoke-virtual {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;

    move-result-object v1

    throw v1

    .line 46
    :cond_19
    invoke-direct/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO()V

    .line 47
    :cond_1a
    invoke-direct {v0, v7}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO00o(Z)I

    move-result v2

    if-eq v2, v8, :cond_1f

    const/16 v4, 0x27

    if-eq v2, v4, :cond_1e

    const-string v4, "Expected name"

    if-eq v2, v1, :cond_1c

    .line 48
    invoke-direct/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO()V

    int-to-char v1, v2

    .line 49
    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0O0(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 v1, 0xe

    .line 50
    iput v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v1

    .line 51
    :cond_1b
    invoke-virtual {v0, v4}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;

    move-result-object v1

    throw v1

    :cond_1c
    if-eq v3, v15, :cond_1d

    .line 52
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/4 v1, 0x2

    .line 53
    iput v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v1

    .line 54
    :cond_1d
    invoke-virtual {v0, v4}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;

    move-result-object v1

    throw v1

    .line 55
    :cond_1e
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 56
    invoke-direct/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO()V

    const/16 v1, 0xc

    .line 57
    iput v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v1

    .line 58
    :cond_1f
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/16 v1, 0xd

    .line 59
    iput v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v1
.end method

.method private OooOOOo()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    sget-object v1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOo0:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private OooOOo()I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-wide v8, v1

    move v7, v3

    move v5, v4

    move v6, v5

    move v10, v6

    .line 1
    :goto_0
    iget-object v11, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    add-int/lit8 v12, v5, 0x1

    int-to-long v13, v12

    invoke-interface {v11, v13, v14}, Lokio/BufferedSource;->request(J)Z

    move-result v11

    const/4 v15, 0x2

    if-nez v11, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget-object v11, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    int-to-long v13, v5

    invoke-virtual {v11, v13, v14}, Lokio/Buffer;->getByte(J)B

    move-result v11

    const/16 v13, 0x2b

    const/4 v14, 0x5

    if-eq v11, v13, :cond_1b

    const/16 v13, 0x45

    if-eq v11, v13, :cond_18

    const/16 v13, 0x65

    if-eq v11, v13, :cond_18

    const/16 v13, 0x2d

    if-eq v11, v13, :cond_15

    const/16 v13, 0x2e

    if-eq v11, v13, :cond_13

    const/16 v13, 0x30

    if-lt v11, v13, :cond_b

    const/16 v13, 0x39

    if-le v11, v13, :cond_1

    goto :goto_5

    :cond_1
    if-eq v6, v3, :cond_9

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    if-ne v6, v15, :cond_6

    cmp-long v5, v8, v1

    if-nez v5, :cond_3

    return v4

    :cond_3
    const-wide/16 v13, 0xa

    mul-long/2addr v13, v8

    add-int/lit8 v11, v11, -0x30

    int-to-long v3, v11

    sub-long/2addr v13, v3

    const-wide v3, -0xcccccccccccccccL

    cmp-long v3, v8, v3

    if-gtz v3, :cond_5

    if-nez v3, :cond_4

    cmp-long v3, v13, v8

    if-gez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    :goto_2
    and-int/2addr v7, v3

    move-wide v8, v13

    goto :goto_4

    :cond_6
    const/4 v3, 0x3

    if-ne v6, v3, :cond_7

    const/4 v4, 0x0

    const/4 v6, 0x4

    goto/16 :goto_b

    :cond_7
    if-eq v6, v14, :cond_8

    const/4 v3, 0x6

    if-ne v6, v3, :cond_a

    :cond_8
    const/4 v4, 0x0

    const/4 v6, 0x7

    goto/16 :goto_b

    :cond_9
    :goto_3
    add-int/lit8 v11, v11, -0x30

    neg-int v3, v11

    int-to-long v8, v3

    move v6, v15

    :cond_a
    :goto_4
    const/4 v4, 0x0

    goto :goto_b

    .line 3
    :cond_b
    :goto_5
    invoke-direct {v0, v11}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0O0(I)Z

    move-result v3

    if-nez v3, :cond_12

    :goto_6
    if-ne v6, v15, :cond_f

    if-eqz v7, :cond_f

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v8, v3

    if-nez v3, :cond_c

    if-eqz v10, :cond_f

    :cond_c
    cmp-long v1, v8, v1

    if-nez v1, :cond_d

    if-nez v10, :cond_f

    :cond_d
    if-eqz v10, :cond_e

    goto :goto_7

    :cond_e
    neg-long v8, v8

    .line 4
    :goto_7
    iput-wide v8, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0O:J

    .line 5
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    int-to-long v2, v5

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->skip(J)V

    const/16 v1, 0x10

    .line 6
    iput v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v1

    :cond_f
    if-eq v6, v15, :cond_11

    const/4 v1, 0x4

    if-eq v6, v1, :cond_11

    const/4 v1, 0x7

    if-ne v6, v1, :cond_10

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    return v4

    .line 7
    :cond_11
    :goto_8
    iput v5, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0o:I

    const/16 v1, 0x11

    .line 8
    iput v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v1

    :cond_12
    const/4 v4, 0x0

    return v4

    :cond_13
    const/4 v3, 0x3

    if-ne v6, v15, :cond_14

    goto :goto_a

    :cond_14
    return v4

    :cond_15
    const/4 v3, 0x6

    if-nez v6, :cond_16

    const/4 v6, 0x1

    const/4 v10, 0x1

    goto :goto_b

    :cond_16
    if-ne v6, v14, :cond_17

    goto :goto_a

    :cond_17
    return v4

    :cond_18
    if-eq v6, v15, :cond_1a

    const/4 v3, 0x4

    if-ne v6, v3, :cond_19

    goto :goto_9

    :cond_19
    return v4

    :cond_1a
    :goto_9
    move v6, v14

    goto :goto_b

    :cond_1b
    const/4 v3, 0x6

    if-ne v6, v14, :cond_1c

    :goto_a
    move v6, v3

    :goto_b
    move v5, v12

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_1c
    return v4
.end method

.method private OooOOo0()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_5

    const/16 v2, 0x54

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v2, 0x66

    if-eq v0, v2, :cond_4

    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x7

    const-string v2, "null"

    const-string v3, "NULL"

    goto :goto_3

    :cond_4
    :goto_1
    const/4 v0, 0x6

    const-string v2, "false"

    const-string v3, "FALSE"

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x5

    const-string/jumbo v2, "true"

    const-string v3, "TRUE"

    .line 2
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    :goto_4
    if-ge v5, v4, :cond_8

    .line 3
    iget-object v6, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    add-int/lit8 v7, v5, 0x1

    int-to-long v8, v7

    invoke-interface {v6, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v6

    if-nez v6, :cond_6

    return v1

    .line 4
    :cond_6
    iget-object v6, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    int-to-long v8, v5

    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v6

    .line 5
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v6, v8, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v6, v5, :cond_7

    return v1

    :cond_7
    move v5, v7

    goto :goto_4

    .line 6
    :cond_8
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    add-int/lit8 v3, v4, 0x1

    int-to-long v5, v3

    invoke-interface {v2, v5, v6}, Lokio/BufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    int-to-long v5, v4

    invoke-virtual {v2, v5, v6}, Lokio/Buffer;->getByte(J)B

    move-result v2

    invoke-direct {p0, v2}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0O0(I)Z

    move-result v2

    if-eqz v2, :cond_9

    return v1

    .line 7
    :cond_9
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    int-to-long v2, v4

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 8
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return v0
.end method

.method private OooOOoo()C
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_c

    const/16 v2, 0x22

    if-eq v0, v2, :cond_c

    const/16 v2, 0x27

    if-eq v0, v2, :cond_c

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_c

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_c

    const/16 v2, 0x62

    if-eq v0, v2, :cond_b

    const/16 v2, 0x66

    if-eq v0, v2, :cond_a

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_9

    const/16 v3, 0x72

    if-eq v0, v3, :cond_8

    const/16 v3, 0x74

    if-eq v0, v3, :cond_7

    const/16 v3, 0x75

    if-eq v0, v3, :cond_1

    .line 3
    iget-boolean v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0:Z

    if-eqz v1, :cond_0

    int-to-char v0, v0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid escape sequence: \\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;

    move-result-object v0

    throw v0

    .line 4
    :cond_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    const-wide/16 v3, 0x4

    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    const/4 v6, 0x4

    if-ge v0, v6, :cond_5

    .line 5
    iget-object v6, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v6

    shl-int/lit8 v5, v5, 0x4

    int-to-char v5, v5

    const/16 v7, 0x30

    if-lt v6, v7, :cond_2

    const/16 v7, 0x39

    if-gt v6, v7, :cond_2

    add-int/lit8 v6, v6, -0x30

    :goto_1
    add-int/2addr v5, v6

    int-to-char v5, v5

    goto :goto_3

    :cond_2
    const/16 v7, 0x61

    if-lt v6, v7, :cond_3

    if-gt v6, v2, :cond_3

    add-int/lit8 v6, v6, -0x61

    :goto_2
    add-int/2addr v6, v1

    goto :goto_1

    :cond_3
    const/16 v7, 0x41

    if-lt v6, v7, :cond_4

    const/16 v7, 0x46

    if-gt v6, v7, :cond_4

    add-int/lit8 v6, v6, -0x41

    goto :goto_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;

    move-result-object v0

    throw v0

    .line 7
    :cond_5
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->skip(J)V

    return v5

    .line 8
    :cond_6
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unterminated escape sequence at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v0, 0x9

    return v0

    :cond_8
    const/16 v0, 0xd

    return v0

    :cond_9
    return v1

    :cond_a
    const/16 v0, 0xc

    return v0

    :cond_b
    const/16 v0, 0x8

    return v0

    :cond_c
    int-to-char v0, v0

    return v0

    :cond_d
    const-string v0, "Unterminated escape sequence"

    .line 9
    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;

    move-result-object v0

    throw v0
.end method

.method private OooOo0()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    sget-object v1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOo:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void
.end method

.method private OooOo00()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    sget-object v1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOoo:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOf(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    if-eqz v2, :cond_1

    sget-object v4, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOoo:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v0

    :goto_1
    invoke-virtual {v3, v0, v1}, Lokio/Buffer;->skip(J)V

    return v2
.end method

.method private OooOo0O()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    sget-object v1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOo0:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void
.end method


# virtual methods
.method public OooO()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, " at path "

    const-string v4, "Expected an int but was "

    if-ne v0, v1, :cond_2

    .line 3
    iget-wide v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0O:J

    long-to-int v5, v0

    int-to-long v6, v5

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    .line 4
    iput v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 5
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    .line 6
    :cond_1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0O:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x11

    const/16 v5, 0xb

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0o:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v6, 0x8

    if-ne v0, v6, :cond_4

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    .line 10
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOo:Lokio/ByteString;

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO00o(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 11
    :cond_7
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO:Lokio/ByteString;

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO00o(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    .line 12
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 13
    iput v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 14
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    iget v6, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 15
    :catch_0
    :goto_2
    iput v5, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 16
    :try_start_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    double-to-int v5, v0

    int-to-double v6, v5

    cmpl-double v0, v6, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    .line 18
    iput v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 19
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    .line 20
    :cond_8
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :catch_1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    if-nez v0, :cond_0

    .line 9
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO()I

    move-result v0

    :cond_0
    const/16 v1, 0xc

    const/4 v2, -0x1

    if-lt v0, v1, :cond_5

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 10
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO00o(Ljava/lang/String;LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;)I

    move-result p1

    return p1

    .line 11
    :cond_2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    iget-object v3, p1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO0O0:Lokio/Options;

    invoke-interface {v0, v3}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x0

    .line 12
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 13
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0OO:[Ljava/lang/String;

    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v2, v2, -0x1

    iget-object p1, p1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO00o:[Ljava/lang/String;

    aget-object p1, p1, v0

    aput-object p1, v1, v2

    return v0

    .line 14
    :cond_3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0OO:[Ljava/lang/String;

    iget v3, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    .line 15
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-direct {p0, v3, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO00o(Ljava/lang/String;LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 17
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 18
    iput-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    .line 19
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0OO:[Ljava/lang/String;

    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    :cond_4
    return p1

    :cond_5
    :goto_0
    return v2
.end method

.method public OooO00o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(I)V

    .line 4
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    .line 5
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return-void

    .line 6
    :cond_1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0O0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return-void

    .line 5
    :cond_1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0OO()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    .line 4
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 5
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return-void

    .line 6
    :cond_1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0Oo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    .line 4
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0OO:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 5
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 6
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    return-void

    .line 7
    :cond_1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0o()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO0oO()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iput v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 5
    iput v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 6
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    .line 7
    :cond_2
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0oo()D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iput v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 5
    iget-wide v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0O:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x11

    const-string v3, "Expected a double but was "

    const/16 v4, 0xb

    const-string v5, " at path "

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0o:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 7
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOo:Lokio/ByteString;

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO00o(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 8
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO:Lokio/ByteString;

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO00o(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 9
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-ne v0, v4, :cond_8

    .line 10
    :goto_0
    iput v4, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 11
    :try_start_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iget-boolean v3, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0:Z

    if-nez v3, :cond_7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    .line 13
    :cond_6
    new-instance v2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_1
    const/4 v3, 0x0

    .line 15
    iput-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    .line 16
    iput v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 17
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    iget v3, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0

    .line 18
    :catch_0
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_8
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooOO0()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 4
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOo:Lokio/ByteString;

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO00o(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 5
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO:Lokio/ByteString;

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO00o(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 6
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    .line 7
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 8
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0OO:[Ljava/lang/String;

    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    .line 9
    :cond_4
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooOO0O()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 4
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOo:Lokio/ByteString;

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO00o(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 5
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO:Lokio/ByteString;

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO00o(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 6
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOO0:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 8
    iget-wide v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0O:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x11

    if-ne v0, v1, :cond_6

    .line 9
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0o:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 10
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 11
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    .line 12
    :cond_6
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooOO0o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o:Z

    if-nez v0, :cond_5

    .line 2
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOo0O()V

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 5
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOo:Lokio/ByteString;

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0O0(Lokio/ByteString;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 6
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO:Lokio/ByteString;

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0O0(Lokio/ByteString;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    :goto_0
    const/4 v0, 0x0

    .line 7
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 8
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0OO:[Ljava/lang/String;

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    .line 9
    :cond_4
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_5
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot skip unexpected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooOOO0()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o:Z

    if-nez v0, :cond_10

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :cond_0
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    if-nez v2, :cond_1

    .line 3
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO()I

    move-result v2

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 4
    invoke-virtual {p0, v4}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(I)V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_2
    if-ne v2, v4, :cond_3

    .line 5
    invoke-virtual {p0, v3}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    const-string v5, " at path "

    const-string v6, "Expected a value but was "

    if-ne v2, v3, :cond_5

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 6
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    sub-int/2addr v2, v4

    iput v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    goto/16 :goto_4

    .line 7
    :cond_4
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    .line 9
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    sub-int/2addr v2, v4

    iput v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    goto/16 :goto_4

    .line 10
    :cond_6
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v3, 0xe

    if-eq v2, v3, :cond_f

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    goto :goto_3

    :cond_8
    const/16 v3, 0x9

    if-eq v2, v3, :cond_e

    const/16 v3, 0xd

    if-ne v2, v3, :cond_9

    goto :goto_2

    :cond_9
    const/16 v3, 0x8

    if-eq v2, v3, :cond_d

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a

    goto :goto_1

    :cond_a
    const/16 v3, 0x11

    if-ne v2, v3, :cond_b

    .line 12
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    iget v3, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0o:I

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Lokio/Buffer;->skip(J)V

    goto :goto_4

    :cond_b
    const/16 v3, 0x12

    if-eq v2, v3, :cond_c

    goto :goto_4

    .line 13
    :cond_c
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_d
    :goto_1
    sget-object v2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO:Lokio/ByteString;

    invoke-direct {p0, v2}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0O0(Lokio/ByteString;)V

    goto :goto_4

    .line 16
    :cond_e
    :goto_2
    sget-object v2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOo:Lokio/ByteString;

    invoke-direct {p0, v2}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0O0(Lokio/ByteString;)V

    goto :goto_4

    .line 17
    :cond_f
    :goto_3
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOo0O()V

    .line 18
    :goto_4
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    if-nez v1, :cond_0

    .line 19
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 20
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0OO:[Ljava/lang/String;

    sub-int/2addr v1, v4

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    .line 21
    :cond_10
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot skip unexpected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    .line 2
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0O0:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 3
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    .line 4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 5
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->close()V

    return-void
.end method

.method public peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOO0:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooOOOO()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :pswitch_0
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooOO0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    return-object v0

    .line 5
    :pswitch_1
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    return-object v0

    .line 6
    :pswitch_2
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooO0o0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    return-object v0

    .line 7
    :pswitch_3
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    return-object v0

    .line 8
    :pswitch_4
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooO:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    return-object v0

    .line 9
    :pswitch_5
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    return-object v0

    .line 10
    :pswitch_6
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    return-object v0

    .line 11
    :pswitch_7
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    return-object v0

    .line 12
    :pswitch_8
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    return-object v0

    .line 13
    :pswitch_9
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonReader("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;->OooO0oo:Lokio/BufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
