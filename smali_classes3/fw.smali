.class public final Lfw;
.super Lft;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lft;-><init>()V

    return-void
.end method

.method public static OooO00o([BIJI)I
    .locals 2

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 27
    invoke-static {p0, p2, p3}, Lfr;->OooO00o([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lfr;->OooO00o([BJ)B

    move-result p0

    .line 28
    invoke-static {p1, p4, p0}, Lfx;->OooO00o(III)I

    move-result p0

    return p0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 30
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 31
    :cond_1
    invoke-static {p0, p2, p3}, Lfr;->OooO00o([BJ)B

    move-result p0

    .line 32
    invoke-static {p1, p0}, Lfx;->OooO00o(II)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p1}, Lfx;->OooO00o(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/CharSequence;[BII)I
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    .line 2
    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_0

    .line 3
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    add-long/2addr v11, v4

    int-to-byte v3, v13

    .line 4
    invoke-static {v1, v4, v5, v3}, Lfr;->OooO00o([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-eq v2, v8, :cond_b

    :goto_1
    if-ge v2, v8, :cond_a

    .line 5
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_1

    cmp-long v14, v4, v6

    if-gez v14, :cond_1

    add-long v14, v4, v11

    int-to-byte v13, v13

    .line 6
    invoke-static {v1, v4, v5, v13}, Lfr;->OooO00o([BJB)V

    move-wide v4, v11

    move-wide v12, v14

    move v11, v3

    goto/16 :goto_3

    :cond_1
    const/16 v14, 0x800

    if-ge v13, v14, :cond_2

    const-wide/16 v14, -0x2

    add-long/2addr v14, v6

    cmp-long v14, v4, v14

    if-gtz v14, :cond_2

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    .line 7
    invoke-static {v1, v4, v5, v3}, Lfr;->OooO00o([BJB)V

    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v5, v13

    int-to-byte v5, v5

    .line 8
    invoke-static {v1, v14, v15, v5}, Lfr;->OooO00o([BJB)V

    move-wide/from16 v19, v11

    const/16 v11, 0x80

    move-wide v12, v3

    move-wide/from16 v4, v19

    goto/16 :goto_3

    :cond_2
    const v3, 0xdfff

    const v14, 0xd800

    if-ge v13, v14, :cond_3

    goto :goto_2

    :cond_3
    if-le v13, v3, :cond_4

    :goto_2
    const-wide/16 v15, -0x3

    add-long/2addr v15, v6

    cmp-long v15, v4, v15

    if-gtz v15, :cond_4

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    .line 9
    invoke-static {v1, v4, v5, v3}, Lfr;->OooO00o([BJB)V

    add-long v3, v14, v11

    ushr-int/lit8 v5, v13, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v11, 0x80

    or-int/2addr v5, v11

    int-to-byte v5, v5

    .line 10
    invoke-static {v1, v14, v15, v5}, Lfr;->OooO00o([BJB)V

    const-wide/16 v14, 0x1

    add-long v17, v3, v14

    and-int/lit8 v5, v13, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    .line 11
    invoke-static {v1, v3, v4, v5}, Lfr;->OooO00o([BJB)V

    move-wide/from16 v12, v17

    const-wide/16 v4, 0x1

    const/16 v11, 0x80

    goto :goto_3

    :cond_4
    const-wide/16 v11, -0x4

    add-long/2addr v11, v6

    cmp-long v11, v4, v11

    if-gtz v11, :cond_7

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_6

    .line 12
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 13
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    .line 14
    invoke-static {v1, v4, v5, v15}, Lfr;->OooO00o([BJB)V

    add-long v4, v13, v11

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    .line 15
    invoke-static {v1, v13, v14, v12}, Lfr;->OooO00o([BJB)V

    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v2, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    .line 16
    invoke-static {v1, v4, v5, v12}, Lfr;->OooO00o([BJB)V

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v11

    int-to-byte v2, v2

    .line 17
    invoke-static {v1, v14, v15, v2}, Lfr;->OooO00o([BJB)V

    move v2, v3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v3, v11

    move-wide/from16 v19, v4

    move-wide v4, v12

    move-wide/from16 v11, v19

    goto/16 :goto_1

    :cond_5
    move v2, v3

    .line 18
    :cond_6
    new-instance v0, Lfv;

    add-int/lit8 v2, v2, -0x1

    .line 19
    invoke-direct {v0, v2, v8}, Lfv;-><init>(II)V

    throw v0

    :cond_7
    if-lt v13, v14, :cond_9

    if-gt v13, v3, :cond_9

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_8

    .line 20
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_9

    .line 21
    :cond_8
    new-instance v0, Lfv;

    .line 22
    invoke-direct {v0, v2, v8}, Lfv;-><init>(II)V

    throw v0

    .line 23
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    long-to-int v0, v4

    return v0

    :cond_b
    long-to-int v0, v4

    return v0

    .line 25
    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    .line 26
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x25

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final OooO0O0([BII)Ljava/lang/String;
    .locals 10

    .line 1
    array-length v0, p1

    or-int v1, p2, p3

    sub-int v2, v0, p2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    const/4 v2, 0x0

    if-ltz v1, :cond_8

    add-int v0, p2, p3

    .line 2
    new-array p3, p3, [C

    move v1, v2

    :goto_0
    if-ge p2, v0, :cond_0

    int-to-long v3, p2

    .line 3
    invoke-static {p1, v3, v4}, Lfr;->OooO00o([BJ)B

    move-result v3

    .line 4
    invoke-static {v3}, Lfs;->OooO00o(B)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, p3, v1}, Lfs;->OooO00o(B[CI)V

    move v1, v4

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p2, v0, :cond_7

    add-int/lit8 v3, p2, 0x1

    int-to-long v4, p2

    .line 5
    invoke-static {p1, v4, v5}, Lfr;->OooO00o([BJ)B

    move-result p2

    .line 6
    invoke-static {p2}, Lfs;->OooO00o(B)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    invoke-static {p2, p3, v1}, Lfs;->OooO00o(B[CI)V

    move p2, v3

    :goto_2
    move v1, v4

    if-ge p2, v0, :cond_0

    int-to-long v3, p2

    .line 7
    invoke-static {p1, v3, v4}, Lfr;->OooO00o([BJ)B

    move-result v3

    .line 8
    invoke-static {v3}, Lfs;->OooO00o(B)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, p3, v1}, Lfs;->OooO00o(B[CI)V

    goto :goto_2

    :cond_1
    invoke-static {p2}, Lfs;->OooO0O0(B)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p2}, Lfs;->OooO0OO(B)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v9, v5, 0x1

    int-to-long v6, v3

    .line 9
    invoke-static {p1, v6, v7}, Lfr;->OooO00o([BJ)B

    move-result v6

    int-to-long v3, v4

    .line 10
    invoke-static {p1, v3, v4}, Lfr;->OooO00o([BJ)B

    move-result v7

    int-to-long v3, v5

    .line 11
    invoke-static {p1, v3, v4}, Lfr;->OooO00o([BJ)B

    move-result v8

    move v3, p2

    move v4, v6

    move v5, v7

    move v6, v8

    move-object v7, p3

    move v8, v1

    .line 12
    invoke-static/range {v3 .. v8}, Lfs;->OooO00o(BBBB[CI)V

    add-int/lit8 v1, v1, 0x2

    move p2, v9

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {}, Ldl;->OooO0o()Ldl;

    move-result-object p1

    throw p1

    :cond_3
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v1, 0x1

    int-to-long v7, v3

    .line 14
    invoke-static {p1, v7, v8}, Lfr;->OooO00o([BJ)B

    move-result v3

    int-to-long v7, v4

    .line 15
    invoke-static {p1, v7, v8}, Lfr;->OooO00o([BJ)B

    move-result v4

    .line 16
    invoke-static {p2, v3, v4, p3, v1}, Lfs;->OooO00o(BBB[CI)V

    move p2, v5

    move v1, v6

    goto :goto_1

    .line 17
    :cond_4
    invoke-static {}, Ldl;->OooO0o()Ldl;

    move-result-object p1

    throw p1

    :cond_5
    if-ge v3, v0, :cond_6

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v1, 0x1

    int-to-long v6, v3

    .line 18
    invoke-static {p1, v6, v7}, Lfr;->OooO00o([BJ)B

    move-result v3

    .line 19
    invoke-static {p2, v3, p3, v1}, Lfs;->OooO00o(BB[CI)V

    move p2, v4

    move v1, v5

    goto/16 :goto_1

    .line 20
    :cond_6
    invoke-static {}, Ldl;->OooO0o()Ldl;

    move-result-object p1

    throw p1

    .line 21
    :cond_7
    new-instance p1, Ljava/lang/String;

    .line 22
    invoke-direct {p1, p3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 23
    :cond_8
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final OooO0OO([BII)I
    .locals 12

    .line 1
    array-length v0, p1

    or-int v1, p2, p3

    sub-int v2, v0, p3

    or-int/2addr v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ltz v1, :cond_12

    int-to-long v0, p2

    int-to-long p2, p3

    sub-long/2addr p2, v0

    long-to-int p2, p2

    const/16 p3, 0x10

    const-wide/16 v5, 0x1

    if-lt p2, p3, :cond_2

    move-wide v7, v0

    move p3, v4

    :goto_0
    if-ge p3, p2, :cond_1

    add-long v9, v7, v5

    .line 2
    invoke-static {p1, v7, v8}, Lfr;->OooO00o([BJ)B

    move-result v7

    if-gez v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    move-wide v7, v9

    goto :goto_0

    :cond_1
    move p3, p2

    goto :goto_1

    :cond_2
    move p3, v4

    :goto_1
    sub-int/2addr p2, p3

    int-to-long v7, p3

    add-long/2addr v0, v7

    :cond_3
    :goto_2
    move p3, v4

    :goto_3
    if-lez p2, :cond_5

    add-long v7, v0, v5

    .line 3
    invoke-static {p1, v0, v1}, Lfr;->OooO00o([BJ)B

    move-result p3

    if-ltz p3, :cond_4

    add-int/lit8 p2, p2, -0x1

    move-wide v0, v7

    goto :goto_3

    :cond_4
    move-wide v0, v7

    :cond_5
    const/4 v7, -0x1

    if-eqz p2, :cond_11

    add-int/lit8 p2, p2, -0x1

    const/16 v8, -0x20

    const/16 v9, -0x41

    if-lt p3, v8, :cond_d

    const/16 v10, -0x10

    if-lt p3, v10, :cond_7

    if-lt p2, v3, :cond_6

    add-int/lit8 p2, p2, -0x3

    add-long v10, v0, v5

    .line 4
    invoke-static {p1, v0, v1}, Lfr;->OooO00o([BJ)B

    move-result v0

    if-gt v0, v9, :cond_f

    shl-int/lit8 p3, p3, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p3, v0

    shr-int/lit8 p3, p3, 0x1e

    if-nez p3, :cond_f

    add-long v0, v10, v5

    .line 5
    invoke-static {p1, v10, v11}, Lfr;->OooO00o([BJ)B

    move-result p3

    if-gt p3, v9, :cond_f

    add-long v10, v0, v5

    .line 6
    invoke-static {p1, v0, v1}, Lfr;->OooO00o([BJ)B

    move-result p3

    if-gt p3, v9, :cond_f

    goto :goto_5

    .line 7
    :cond_6
    invoke-static {p1, p3, v0, v1, p2}, Lfw;->OooO00o([BIJI)I

    move-result v4

    goto :goto_7

    :cond_7
    if-lt p2, v2, :cond_c

    add-int/lit8 p2, p2, -0x2

    add-long v10, v0, v5

    .line 8
    invoke-static {p1, v0, v1}, Lfr;->OooO00o([BJ)B

    move-result v0

    if-le v0, v9, :cond_8

    goto :goto_6

    :cond_8
    const/16 v1, -0x60

    if-ne p3, v8, :cond_9

    if-ge v0, v1, :cond_9

    goto :goto_6

    :cond_9
    const/16 v8, -0x13

    if-eq p3, v8, :cond_a

    goto :goto_4

    :cond_a
    if-lt v0, v1, :cond_b

    goto :goto_6

    :cond_b
    :goto_4
    add-long v0, v10, v5

    .line 9
    invoke-static {p1, v10, v11}, Lfr;->OooO00o([BJ)B

    move-result p3

    if-le p3, v9, :cond_3

    goto :goto_6

    .line 10
    :cond_c
    invoke-static {p1, p3, v0, v1, p2}, Lfw;->OooO00o([BIJI)I

    move-result v4

    goto :goto_7

    :cond_d
    if-eqz p2, :cond_10

    add-int/lit8 p2, p2, -0x1

    const/16 v8, -0x3e

    if-lt p3, v8, :cond_f

    add-long v10, v0, v5

    .line 11
    invoke-static {p1, v0, v1}, Lfr;->OooO00o([BJ)B

    move-result p3

    if-le p3, v9, :cond_e

    goto :goto_6

    :cond_e
    :goto_5
    move-wide v0, v10

    goto/16 :goto_2

    :cond_f
    :goto_6
    move v4, v7

    goto :goto_7

    :cond_10
    move v4, p3

    :cond_11
    :goto_7
    return v4

    :cond_12
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-array v1, v3, [Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "Array length=%d, index=%d, limit=%d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
