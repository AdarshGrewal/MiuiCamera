.class public Lmiuix/core/util/Utf8TextUtils;
.super Ljava/lang/Object;
.source "Utf8TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/Utf8TextUtils$CharRange;
    }
.end annotation


# static fields
.field public static final MAX_LENGTH:I = 0x6

.field public static final MIN_LENGTH:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Utf8TextUtils"

.field public static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findRange([BII)Lmiuix/core/util/Utf8TextUtils$CharRange;
    .locals 1

    .line 1
    new-instance v0, Lmiuix/core/util/Utf8TextUtils$CharRange;

    invoke-direct {v0}, Lmiuix/core/util/Utf8TextUtils$CharRange;-><init>()V

    .line 2
    invoke-static {p0, p1, p2}, Lmiuix/core/util/Utf8TextUtils;->isValidCharacter([BII)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    iput p1, v0, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    .line 4
    iput p2, v0, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

    :cond_0
    return-object v0
.end method

.method public static getByteCount(B)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x7

    :goto_0
    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    shr-int v3, p0, v1

    int-to-byte v3, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static getCharRangeAt([BI)Lmiuix/core/util/Utf8TextUtils$CharRange;
    .locals 1

    .line 1
    aget-byte v0, p0, p1

    invoke-static {v0}, Lmiuix/core/util/Utf8TextUtils;->getByteCount(B)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Lmiuix/core/util/Utf8TextUtils$CharRange;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiuix/core/util/Utf8TextUtils$CharRange;-><init>(II)V

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0, p1, v0}, Lmiuix/core/util/Utf8TextUtils;->findRange([BII)Lmiuix/core/util/Utf8TextUtils$CharRange;

    move-result-object p0

    return-object p0
.end method

.method public static getUtf8CharList([B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lmiuix/core/util/Utf8TextUtils$CharRange;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 3
    invoke-static {p0, v1}, Lmiuix/core/util/Utf8TextUtils;->getCharRangeAt([BI)Lmiuix/core/util/Utf8TextUtils$CharRange;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lmiuix/core/util/Utf8TextUtils$CharRange;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget v2, v2, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static isValidCharacter([BII)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_3

    const/4 v2, 0x6

    if-le p2, v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_2

    add-int v3, p1, v2

    .line 1
    aget-byte v3, p0, v3

    invoke-static {v3}, Lmiuix/core/util/Utf8TextUtils;->getByteCount(B)I

    move-result v3

    if-eq v3, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method public static subString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_4

    if-gt p2, p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3
    invoke-static {v0}, Lmiuix/core/util/Utf8TextUtils;->getUtf8CharList([B)Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ltz p1, :cond_4

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-lt p1, p0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    .line 8
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/core/util/Utf8TextUtils$CharRange;

    iget p1, p1, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    if-lt p2, p0, :cond_3

    .line 9
    array-length p0, v0

    goto :goto_0

    :cond_3
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/core/util/Utf8TextUtils$CharRange;

    iget p0, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    :goto_0
    sub-int/2addr p0, p1

    .line 10
    new-array p2, p0, [B

    const/4 v2, 0x0

    .line 11
    invoke-static {v0, p1, p2, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p1, "UTF-8"

    invoke-direct {p0, p2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_4
    :goto_1
    return-object v1
.end method

.method public static truncateByte(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2
    invoke-static {v0}, Lmiuix/core/util/Utf8TextUtils;->getUtf8CharList([B)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-ge v1, p1, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, p1, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    array-length v2, v0

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_5

    .line 12
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/core/util/Utf8TextUtils$CharRange;

    .line 13
    iget v5, v4, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    if-lt v5, p1, :cond_3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v4}, Lmiuix/core/util/Utf8TextUtils$CharRange;->getEndIndex()I

    move-result v2

    if-gt v2, p1, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    iget v2, v4, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    .line 16
    :cond_5
    :goto_2
    array-length p1, v0

    if-ge v2, p1, :cond_6

    .line 17
    new-array p1, v2, [B

    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_6
    return-object p0

    :catch_0
    move-exception p1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to get bytes of UTF-8 from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Utf8TextUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
