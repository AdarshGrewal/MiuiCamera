.class public LOooO00o/OooO0o0/OooO00o/OooO0o0;
.super Ljava/lang/Object;
.source "G.java"

# interfaces
.implements LOooO00o/OooO0o0/OooO00o/OooO00o;


# instance fields
.field public final OooO00o:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static OooO00o(II)I
    .locals 0

    .line 158
    invoke-static {p0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0O0(I)I

    move-result p0

    .line 159
    invoke-static {p1}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0O0(I)I

    move-result p1

    .line 160
    invoke-static {p0, p1}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0O0(II)I

    move-result p0

    return p0
.end method

.method public static OooO00o(J)J
    .locals 4

    const-wide/32 v0, 0x100000

    add-long/2addr p0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr p0, v2

    .line 157
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static OooO00o(Ljava/nio/ByteBuffer;I)J
    .locals 2

    .line 18
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static OooO00o(Ljava/nio/ByteBuffer;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO00o/OooO0o0/OooO00o/OooO0Oo;
        }
    .end annotation

    .line 151
    invoke-static {p0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(Ljava/nio/ByteBuffer;)V

    .line 152
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-static {p0, v0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 153
    invoke-static {p0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(Ljava/nio/ByteBuffer;)V

    .line 154
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-static {p0, v2}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    add-long/2addr v2, v0

    cmp-long p0, v2, p1

    if-nez p0, :cond_0

    return-wide v0

    .line 155
    :cond_0
    new-instance p0, LOooO00o/OooO0o0/OooO00o/OooO0Oo;

    const-string p1, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {p0, p1}, LOooO00o/OooO0o0/OooO00o/OooO0Oo;-><init>(Ljava/lang/String;)V

    throw p0

    .line 156
    :cond_1
    new-instance p0, LOooO00o/OooO0o0/OooO00o/OooO0Oo;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x7a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ZIP Central Directory offset out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ". ZIP End of Central Directory offset: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LOooO00o/OooO0o0/OooO00o/OooO0Oo;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static OooO00o(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_4

    const v0, 0xffff

    if-gt p1, v0, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x16

    cmp-long v5, v1, v3

    const/4 v6, 0x0

    if-gez v5, :cond_0

    return-object v6

    :cond_0
    int-to-long v7, p1

    sub-long v3, v1, v3

    .line 2
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p1, v3

    const/16 v3, 0x16

    add-int/2addr p1, v3

    .line 3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v1, v4

    .line 5
    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {p0, v4, v5, v7}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 7
    invoke-static {p1}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(Ljava/nio/ByteBuffer;)V

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    const/4 v4, -0x1

    if-lt p0, v3, :cond_2

    sub-int/2addr p0, v3

    .line 9
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    sub-int v7, p0, v5

    .line 10
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    const v9, 0x6054b50

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v7, 0x14

    .line 11
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v8

    and-int/2addr v8, v0

    if-ne v8, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v7, v4

    :goto_1
    if-ne v7, v4, :cond_3

    return-object v6

    .line 12
    :cond_3
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    int-to-long v3, v7

    add-long/2addr v1, v3

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 15
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "maxCommentSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static OooO00o(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO00o/OooO0o0/OooO00o/OooO0Oo;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x20

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    const/16 v0, 0x18

    .line 182
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 184
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/16 v1, 0x8

    .line 185
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, 0x20676953204b5041L

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    const-wide/32 v4, 0x7ffffff7

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    const-wide/16 v4, 0x8

    add-long/2addr v4, v2

    long-to-int v0, v4

    int-to-long v4, v0

    sub-long/2addr p1, v4

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-ltz v4, :cond_1

    .line 187
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 188
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 189
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 190
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    cmp-long p0, v4, v2

    if-nez p0, :cond_0

    .line 191
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 192
    :cond_0
    new-instance p0, LOooO00o/OooO0o0/OooO00o/OooO0Oo;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x67

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "APK Signing Block sizes in header and footer do not match: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " vs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LOooO00o/OooO0o0/OooO00o/OooO0Oo;-><init>(Ljava/lang/String;)V

    throw p0

    .line 193
    :cond_1
    new-instance p0, LOooO00o/OooO0o0/OooO00o/OooO0Oo;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "APK Signing Block offset out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LOooO00o/OooO0o0/OooO00o/OooO0Oo;-><init>(Ljava/lang/String;)V

    throw p0

    .line 194
    :cond_2
    new-instance p0, LOooO00o/OooO0o0/OooO00o/OooO0Oo;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x39

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "APK Signing Block size out of range: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LOooO00o/OooO0o0/OooO00o/OooO0Oo;-><init>(Ljava/lang/String;)V

    throw p0

    .line 195
    :cond_3
    new-instance p0, LOooO00o/OooO0o0/OooO00o/OooO0Oo;

    const-string p1, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {p0, p1}, LOooO00o/OooO0o0/OooO00o/OooO0Oo;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_4
    new-instance p0, LOooO00o/OooO0o0/OooO00o/OooO0Oo;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x57

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LOooO00o/OooO0o0/OooO00o/OooO0Oo;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static OooO00o(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 p1, 0x8

    if-lt p2, p1, :cond_1

    .line 161
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 162
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 163
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 164
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v2, 0x0

    .line 165
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 166
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 167
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 171
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1

    :catchall_0
    move-exception p1

    .line 172
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 173
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 174
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 175
    throw p1

    .line 176
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "end > capacity: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x26

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "end < start: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " < 8"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static OooO00o(I[BI)V
    .locals 1

    int-to-byte p2, p0

    const/4 v0, 0x1

    .line 178
    aput-byte p2, p1, v0

    ushr-int/lit8 p2, p0, 0x8

    int-to-byte p2, p2

    const/4 v0, 0x2

    .line 179
    aput-byte p2, p1, v0

    ushr-int/lit8 p2, p0, 0x10

    int-to-byte p2, p2

    const/4 v0, 0x3

    .line 180
    aput-byte p2, p1, v0

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 p2, 0x4

    .line 181
    aput-byte p0, p1, p2

    return-void
.end method

.method public static OooO00o(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_0

    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer byte order must be little endian"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static OooO00o(Ljava/util/Map;Ljava/nio/channels/FileChannel;JJJLjava/nio/ByteBuffer;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/nio/channels/FileChannel;",
            "JJJ",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    move-wide/from16 v7, p2

    .line 92
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 93
    new-instance v0, LOooO00o/OooO0o0/OooO00o/OooO0O0;

    const-wide/16 v3, 0x0

    move-object v1, v0

    move-object/from16 v2, p1

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v6}, LOooO00o/OooO0o0/OooO00o/OooO0O0;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 94
    new-instance v1, LOooO00o/OooO0o0/OooO00o/OooO0O0;

    sub-long v13, p6, p4

    move-object v9, v1

    move-object/from16 v10, p1

    move-wide/from16 v11, p4

    invoke-direct/range {v9 .. v14}, LOooO00o/OooO0o0/OooO00o/OooO0O0;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 95
    invoke-virtual/range {p8 .. p8}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 96
    invoke-static {v2}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(Ljava/nio/ByteBuffer;)V

    .line 97
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    const-wide/16 v4, 0x0

    cmp-long v4, v7, v4

    if-ltz v4, :cond_3

    const-wide v4, 0xffffffffL

    cmp-long v4, v7, v4

    if-gtz v4, :cond_3

    .line 98
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    long-to-int v3, v7

    invoke-virtual {v2, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 99
    new-instance v3, LOooO00o/OooO0o0/OooO00o/OooO0o0;

    invoke-direct {v3, v2}, LOooO00o/OooO0o0/OooO00o/OooO0o0;-><init>(Ljava/nio/ByteBuffer;)V

    .line 100
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    new-array v4, v2, [I

    .line 101
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    .line 102
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 103
    aput v8, v4, v7

    add-int/2addr v7, v9

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    :try_start_0
    new-array v5, v5, [LOooO00o/OooO0o0/OooO00o/OooO00o;

    aput-object v0, v5, v6

    aput-object v1, v5, v9

    const/4 v0, 0x2

    aput-object v3, v5, v0

    .line 104
    invoke-static {v4, v5}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o([I[LOooO00o/OooO0o0/OooO00o/OooO00o;)[[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v6, v2, :cond_2

    .line 105
    aget v1, v4, v6

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v5, p0

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 107
    aget-object v7, v0, v6

    .line 108
    invoke-static {v3, v7}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {v1}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0OO(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " digest of contents did not verify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to compute digest(s) of contents"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "uint32 value of out range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No digests provided"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static OooO00o(I)Z
    .locals 1

    const/16 v0, 0x201

    if-eq p0, v0, :cond_0

    const/16 v0, 0x202

    if-eq p0, v0, :cond_0

    const/16 v0, 0x301

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static OooO00o(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-static {p0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0O0(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    invoke-static {p0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0O0(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 41
    invoke-static {p0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0OO(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v8, v3

    move v6, v4

    move v7, v5

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    const/16 v10, 0x8

    if-eqz v9, :cond_3

    add-int/lit8 v7, v7, 0x1

    .line 44
    :try_start_0
    invoke-static {v1}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0O0(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-lt v11, v10, :cond_2

    .line 45
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 46
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {v10}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(I)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eq v6, v4, :cond_1

    invoke-static {v10, v6}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(II)I

    move-result v11

    if-lez v11, :cond_0

    .line 48
    :cond_1
    invoke-static {v9}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0OO(Ljava/nio/ByteBuffer;)[B

    move-result-object v8

    move v6, v10

    goto :goto_0

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Signature record too short"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 50
    :goto_1
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to parse signature record #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    if-ne v6, v4, :cond_5

    if-nez v7, :cond_4

    .line 51
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No signatures found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No supported signatures found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_5
    invoke-static {v6}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0o0(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v6}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0o(I)Landroid/util/Pair;

    move-result-object v4

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 55
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/security/spec/AlgorithmParameterSpec;

    .line 56
    :try_start_1
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v9, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v9, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 57
    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v4, :cond_6

    .line 58
    invoke-virtual {v9, v4}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 59
    :cond_6
    invoke-virtual {v9, v0}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 60
    invoke-virtual {v9, v8}, Ljava/security/Signature;->verify([B)Z

    move-result v1
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v1, :cond_10

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 62
    invoke-static {v0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0O0(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v7, v5

    .line 64
    :cond_7
    :goto_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v7, v7, 0x1

    .line 65
    :try_start_2
    invoke-static {v1}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0O0(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-lt v9, v10, :cond_8

    .line 66
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 67
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v9, v6, :cond_7

    .line 68
    invoke-static {v8}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0OO(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    goto :goto_2

    .line 69
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Record too short"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    .line 70
    :goto_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x2a

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to parse digest record #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 71
    :cond_9
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 72
    invoke-static {v6}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0O0(I)I

    move-result v1

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_b

    invoke-static {p1, v3}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    .line 74
    :cond_a
    new-instance p0, Ljava/lang/SecurityException;

    invoke-static {v1}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0OO(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_b
    :goto_4
    invoke-static {v0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0O0(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v5

    .line 77
    :goto_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    .line 78
    invoke-static {p1}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0OO(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 79
    :try_start_3
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_4

    .line 80
    new-instance v4, LOooO00o/OooO0o0/OooO00o/OooO0o;

    invoke-direct {v4, v3, v2}, LOooO00o/OooO0o0/OooO00o/OooO0o;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 81
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catch_4
    move-exception p0

    .line 82
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to decode certificate #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 83
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    .line 84
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    .line 85
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/X509Certificate;

    return-object p0

    .line 87
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Public key mismatch between certificate and signature record"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No certificates listed"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " signature did not verify"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_5
    move-exception p0

    goto :goto_6

    :catch_6
    move-exception p0

    goto :goto_6

    :catch_7
    move-exception p0

    goto :goto_6

    :catch_8
    move-exception p0

    goto :goto_6

    :catch_9
    move-exception p0

    .line 91
    :goto_6
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1b

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to verify "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " signature"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static OooO00o([I[LOooO00o/OooO0o0/OooO00o/OooO00o;)[[B
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 113
    array-length v2, v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v7, v3

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_0

    .line 114
    aget-object v9, v1, v6

    .line 115
    invoke-interface {v9}, LOooO00o/OooO0o0/OooO00o/OooO00o;->a()J

    move-result-wide v9

    invoke-static {v9, v10}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v9, 0x1fffff

    cmp-long v2, v7, v9

    if-gez v2, :cond_9

    long-to-int v2, v7

    .line 116
    array-length v6, v0

    new-array v6, v6, [[B

    move v7, v5

    .line 117
    :goto_1
    array-length v8, v0

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-ge v7, v8, :cond_1

    .line 118
    aget v8, v0, v7

    invoke-static {v8}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0Oo(I)I

    move-result v8

    mul-int/2addr v8, v2

    add-int/2addr v8, v9

    .line 119
    new-array v8, v8, [B

    const/16 v9, 0x5a

    aput-byte v9, v8, v5

    .line 120
    invoke-static {v2, v8, v10}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(I[BI)V

    .line 121
    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    new-array v2, v9, [B

    const/16 v7, -0x5b

    aput-byte v7, v2, v5

    .line 122
    array-length v7, v0

    new-array v8, v7, [Ljava/security/MessageDigest;

    move v11, v5

    .line 123
    :goto_2
    array-length v12, v0

    const-string v13, " digest not supported"

    if-ge v11, v12, :cond_2

    .line 124
    aget v12, v0, v11

    invoke-static {v12}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0OO(I)Ljava/lang/String;

    move-result-object v12

    .line 125
    :try_start_0
    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    aput-object v14, v8, v11
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 127
    :cond_2
    array-length v11, v1

    move v12, v5

    move v14, v12

    move v15, v14

    :goto_3
    if-ge v12, v11, :cond_7

    .line 128
    aget-object v5, v1, v12

    .line 129
    invoke-interface {v5}, LOooO00o/OooO0o0/OooO00o/OooO00o;->a()J

    move-result-wide v16

    move/from16 v18, v11

    move/from16 v19, v12

    move-wide/from16 v9, v16

    move-wide v11, v3

    :goto_4
    cmp-long v20, v9, v3

    if-lez v20, :cond_6

    const-wide/32 v3, 0x100000

    .line 130
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(I[BI)V

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v7, :cond_3

    .line 131
    aget-object v1, v8, v4

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    goto :goto_5

    .line 132
    :cond_3
    :try_start_1
    invoke-interface {v5, v8, v11, v12, v3}, LOooO00o/OooO0o0/OooO00o/OooO00o;->OooO00o([Ljava/security/MessageDigest;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x0

    .line 133
    :goto_6
    array-length v4, v0

    if-ge v1, v4, :cond_5

    .line 134
    aget v4, v0, v1

    move-object/from16 v21, v2

    .line 135
    aget-object v2, v6, v1

    .line 136
    invoke-static {v4}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0Oo(I)I

    move-result v4

    move-object/from16 v22, v5

    .line 137
    aget-object v5, v8, v1

    mul-int v23, v14, v4

    move/from16 v24, v7

    const/16 v16, 0x5

    add-int/lit8 v7, v23, 0x5

    invoke-virtual {v5, v2, v7, v4}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v2

    if-ne v2, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v21

    move-object/from16 v5, v22

    move/from16 v7, v24

    goto :goto_6

    .line 138
    :cond_4
    invoke-virtual {v5}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected output size of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " digest: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object/from16 v21, v2

    move-object/from16 v22, v5

    move/from16 v24, v7

    const/16 v16, 0x5

    int-to-long v1, v3

    add-long/2addr v11, v1

    sub-long/2addr v9, v1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    const-wide/16 v3, 0x0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 140
    new-instance v0, Ljava/security/DigestException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to digest chunk #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of section #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    move-object/from16 v21, v2

    move/from16 v24, v7

    const/16 v16, 0x5

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v12, v19, 0x1

    move-object/from16 v1, p1

    move/from16 v9, v16

    move/from16 v11, v18

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    goto/16 :goto_3

    .line 141
    :cond_7
    array-length v1, v0

    new-array v1, v1, [[B

    const/4 v5, 0x0

    .line 142
    :goto_7
    array-length v2, v0

    if-ge v5, v2, :cond_8

    .line 143
    aget v2, v0, v5

    .line 144
    aget-object v3, v6, v5

    .line 145
    invoke-static {v2}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0OO(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    :try_start_2
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 147
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 148
    aput-object v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    return-object v1

    .line 150
    :cond_9
    new-instance v0, Ljava/security/DigestException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Too many chunks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static OooO00o(Ljava/io/RandomAccessFile;)[[Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            LOooO00o/OooO0o0/OooO00o/OooO0Oo;
        }
    .end annotation

    .line 24
    invoke-static {p0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0O0(Ljava/io/RandomAccessFile;)LOooO00o/OooO0o0/OooO00o/OooO0OO;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-static {p0, v0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(Ljava/nio/channels/FileChannel;LOooO00o/OooO0o0/OooO00o/OooO0OO;)[[Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            LOooO00o/OooO0o0/OooO00o/OooO0Oo;
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :try_start_0
    invoke-static {v0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(Ljava/io/RandomAccessFile;)[[Ljava/security/cert/X509Certificate;

    move-result-object p0

    .line 21
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 23
    :catch_1
    throw p0
.end method

.method public static OooO00o(Ljava/nio/channels/FileChannel;LOooO00o/OooO0o0/OooO00o/OooO0OO;)[[Ljava/security/cert/X509Certificate;
    .locals 10

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "X.509"

    .line 28
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    iget-object v2, p1, LOooO00o/OooO0o0/OooO00o/OooO0OO;->OooO00o:Ljava/nio/ByteBuffer;

    invoke-static {v2}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0O0(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    .line 30
    :catch_0
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 31
    :try_start_2
    invoke-static {v2}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0O0(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4, v0, v1}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-lez v3, :cond_2

    .line 32
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    iget-wide v2, p1, LOooO00o/OooO0o0/OooO00o/OooO0OO;->OooO0O0:J

    iget-wide v4, p1, LOooO00o/OooO0o0/OooO00o/OooO0OO;->OooO0OO:J

    iget-wide v6, p1, LOooO00o/OooO0o0/OooO00o/OooO0OO;->OooO0Oo:J

    iget-object v8, p1, LOooO00o/OooO0o0/OooO00o/OooO0OO;->OooO0o0:Ljava/nio/ByteBuffer;

    move-object v1, p0

    invoke-static/range {v0 .. v8}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(Ljava/util/Map;Ljava/nio/channels/FileChannel;JJJLjava/nio/ByteBuffer;)V

    .line 34
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [[Ljava/security/cert/X509Certificate;

    invoke-interface {v9, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/security/cert/X509Certificate;

    return-object p0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No content digests found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No signers found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 37
    :try_start_4
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Failed to read list of signers"

    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 38
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static OooO0O0(I)I
    .locals 3

    const/16 v0, 0x201

    if-eq p0, v0, :cond_2

    const/16 v0, 0x202

    if-eq p0, v0, :cond_1

    const/16 v0, 0x301

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    const-string v0, "Unknown signature algorithm: 0x"

    int-to-long v1, p0

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :pswitch_0
    const/4 p0, 0x2

    return p0

    :cond_2
    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static OooO0O0(II)I
    .locals 5

    const-string v0, "Unknown digestAlgorithm2: "

    const/4 v1, 0x0

    const/16 v2, 0x25

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, v4, :cond_3

    if-ne p0, v3, :cond_2

    if-eq p1, v4, :cond_1

    if-ne p1, v3, :cond_0

    return v1

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v4

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown digestAlgorithm1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-eq p1, v4, :cond_5

    if-ne p1, v3, :cond_4

    const/4 p0, -0x1

    return p0

    .line 13
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return v1
.end method

.method public static OooO0O0(Ljava/io/RandomAccessFile;)LOooO00o/OooO0o0/OooO00o/OooO0OO;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            LOooO00o/OooO0o0/OooO00o/OooO0Oo;
        }
    .end annotation

    .line 1
    invoke-static {p0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0OO(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 2
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v0, 0x14

    sub-long v0, v8, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    const v1, 0x504b0607

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    invoke-static {v10, v8, v9}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    .line 6
    invoke-static {p0, v6, v7}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;

    move-result-object p0

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 7
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 8
    invoke-static {v0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0Oo(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 9
    new-instance p0, LOooO00o/OooO0o0/OooO00o/OooO0OO;

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, LOooO00o/OooO0o0/OooO00o/OooO0OO;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V

    return-object p0

    .line 10
    :cond_1
    new-instance p0, LOooO00o/OooO0o0/OooO00o/OooO0Oo;

    const-string v0, "ZIP64 APK not supported"

    invoke-direct {p0, v0}, LOooO00o/OooO0o0/OooO00o/OooO0Oo;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static OooO0O0(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 26
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 27
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 28
    invoke-static {p0, v0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0O0(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    .line 30
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x65

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Length-prefixed field longer than remaining buffer. Field length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remaining: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Negative length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    .line 33
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static OooO0O0(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3

    if-ltz p1, :cond_1

    .line 16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr p1, v1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 19
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 22
    throw p1

    .line 23
    :cond_0
    new-instance p0, Ljava/nio/BufferUnderflowException;

    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p0

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static OooO0OO(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            LOooO00o/OooO0o0/OooO00o/OooO0Oo;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0xffff

    invoke-static {p0, v0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    .line 2
    :cond_2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 3
    new-instance p0, LOooO00o/OooO0o0/OooO00o/OooO0Oo;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x66

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Not an APK file: ZIP End of Central Directory record not found in file with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LOooO00o/OooO0o0/OooO00o/OooO0Oo;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static OooO0OO(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "SHA-512"

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown content digest algorthm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "SHA-256"

    return-object p0
.end method

.method public static OooO0OO(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 7
    new-array v0, v0, [B

    .line 8
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    .line 10
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x5a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Underflow while reading length-prefixed value. Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", available: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Negative length"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static OooO0Oo(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/16 p0, 0x40

    return p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown content digest algorthm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0x20

    return p0
.end method

.method public static OooO0Oo(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO00o/OooO0o0/OooO00o/OooO0Oo;
        }
    .end annotation

    .line 2
    invoke-static {p0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0o0(Ljava/nio/ByteBuffer;)V

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    const/16 v1, 0x8

    invoke-static {p0, v1, v0}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v1, :cond_3

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v4, v2, v4

    const-string v5, " size out of range: "

    const-string v6, "APK Signing Block entry #"

    if-ltz v4, :cond_2

    const-wide/32 v7, 0x7fffffff

    cmp-long v4, v2, v7

    if-gtz v4, :cond_2

    long-to-int v2, v2

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-gt v2, v4, :cond_1

    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    const v5, 0x7109871a

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v2, -0x4

    .line 10
    invoke-static {p0, v2}, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO0O0(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    .line 13
    new-instance v1, LOooO00o/OooO0o0/OooO00o/OooO0Oo;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x5b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", available: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, LOooO00o/OooO0o0/OooO00o/OooO0Oo;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_2
    new-instance p0, LOooO00o/OooO0o0/OooO00o/OooO0Oo;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x4c

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LOooO00o/OooO0o0/OooO00o/OooO0Oo;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_3
    new-instance p0, LOooO00o/OooO0o0/OooO00o/OooO0Oo;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x46

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LOooO00o/OooO0o0/OooO00o/OooO0Oo;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_4
    new-instance p0, LOooO00o/OooO0o0/OooO00o/OooO0Oo;

    const-string v0, "No APK Signature Scheme v2 block in APK Signing Block"

    invoke-direct {p0, v0}, LOooO00o/OooO0o0/OooO00o/OooO0Oo;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static OooO0o(I)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x201

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x202

    if-eq p0, v0, :cond_2

    const/16 v0, 0x301

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    const-string v0, "Unknown signature algorithm: 0x"

    int-to-long v1, p0

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string p0, "SHA512withRSA"

    .line 3
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "SHA256withRSA"

    .line 4
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_2
    new-instance p0, Ljava/security/spec/PSSParameterSpec;

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v4, 0x40

    const/4 v5, 0x1

    const-string v1, "SHA-512"

    const-string v2, "MGF1"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v0, "SHA512withRSA/PSS"

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_3
    new-instance p0, Ljava/security/spec/PSSParameterSpec;

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v4, 0x20

    const/4 v5, 0x1

    const-string v1, "SHA-256"

    const-string v2, "MGF1"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v0, "SHA256withRSA/PSS"

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "SHA256withDSA"

    .line 7
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "SHA512withECDSA"

    .line 8
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "SHA256withECDSA"

    .line 9
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static OooO0o0(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x201

    if-eq p0, v0, :cond_2

    const/16 v0, 0x202

    if-eq p0, v0, :cond_2

    const/16 v0, 0x301

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    const-string v0, "Unknown signature algorithm: 0x"

    int-to-long v1, p0

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string p0, "RSA"

    return-object p0

    :cond_1
    const-string p0, "DSA"

    return-object p0

    :cond_2
    const-string p0, "EC"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static OooO0o0(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer byte order must be little endian"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public OooO00o([Ljava/security/MessageDigest;JI)V
    .locals 2

    .line 197
    iget-object v0, p0, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/nio/ByteBuffer;

    .line 198
    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/nio/ByteBuffer;

    long-to-int p2, p2

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 200
    iget-object p3, p0, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/nio/ByteBuffer;

    add-int/2addr p2, p4

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 201
    iget-object p2, p0, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 202
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    array-length p3, p1

    const/4 p4, 0x0

    move v0, p4

    :goto_0
    if-ge v0, p3, :cond_0

    .line 204
    aget-object v1, p1, v0

    .line 205
    invoke-virtual {p2, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 206
    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 207
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
