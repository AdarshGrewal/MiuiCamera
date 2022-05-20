.class public Lci;
.super Lch;
.source "PG"


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lch;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lci;->a:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final OooO00o(II)I
    .locals 2

    iget-object v0, p0, Lci;->a:[B

    .line 1
    invoke-virtual {p0}, Lci;->b()I

    move-result v1

    invoke-static {p1, v0, v1, p2}, Ldj;->OooO00o(I[BII)I

    move-result p1

    return p1
.end method

.method public final OooO00o(I)Lck;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lci;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lck;->OooO00o(III)I

    move-result p1

    if-eqz p1, :cond_0

    new-instance v0, Lcd;

    iget-object v1, p0, Lci;->a:[B

    .line 3
    invoke-virtual {p0}, Lci;->b()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcd;-><init>([BII)V

    return-object v0

    :cond_0
    sget-object p1, Lck;->b:Lck;

    return-object p1
.end method

.method public final OooO00o(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lci;->a:[B

    .line 4
    invoke-virtual {p0}, Lci;->b()I

    move-result v2

    invoke-virtual {p0}, Lci;->a()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final OooO00o(Leb;)V
    .locals 3

    iget-object v0, p0, Lci;->a:[B

    .line 5
    invoke-virtual {p0}, Lci;->b()I

    move-result v1

    invoke-virtual {p0}, Lci;->a()I

    move-result v2

    check-cast p1, Lcn;

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Lcn;->OooO00o([BII)V

    return-void
.end method

.method public OooO00o([BI)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public OooO0O0(I)B
    .locals 1

    iget-object v0, p0, Lci;->a:[B

    .line 1
    aget-byte p1, v0, p1

    return p1
.end method

.method public final OooO0O0()Z
    .locals 3

    .line 2
    invoke-virtual {p0}, Lci;->b()I

    move-result v0

    iget-object v1, p0, Lci;->a:[B

    .line 3
    invoke-virtual {p0}, Lci;->a()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lfx;->OooO00o([BII)Z

    move-result v0

    return v0
.end method

.method public a(I)B
    .locals 1

    iget-object v0, p0, Lci;->a:[B

    .line 1
    aget-byte p1, v0, p1

    return p1
.end method

.method public a()I
    .locals 1

    iget-object v0, p0, Lci;->a:[B

    array-length v0, v0

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-eq p1, p0, :cond_a

    .line 1
    instance-of v1, p1, Lck;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 2
    invoke-virtual {p0}, Lci;->a()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lck;

    invoke-virtual {v3}, Lck;->a()I

    move-result v3

    if-ne v1, v3, :cond_9

    .line 3
    invoke-virtual {p0}, Lci;->a()I

    move-result v1

    if-eqz v1, :cond_8

    .line 4
    instance-of v1, p1, Lci;

    if-eqz v1, :cond_7

    .line 5
    check-cast p1, Lci;

    iget v1, p0, Lck;->c:I

    iget v3, p1, Lck;->c:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    if-eq v1, v3, :cond_1

    return v2

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lci;->a()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Lci;->a()I

    move-result v3

    if-gt v1, v3, :cond_6

    .line 8
    invoke-virtual {p1}, Lci;->a()I

    move-result v3

    if-gt v1, v3, :cond_5

    .line 9
    instance-of v3, p1, Lci;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lci;->a:[B

    .line 10
    iget-object v4, p1, Lci;->a:[B

    .line 11
    invoke-virtual {p0}, Lci;->b()I

    move-result v5

    add-int/2addr v5, v1

    .line 12
    invoke-virtual {p0}, Lci;->b()I

    move-result v1

    .line 13
    invoke-virtual {p1}, Lci;->b()I

    move-result p1

    :goto_1
    if-ge v1, v5, :cond_4

    .line 14
    aget-byte v6, v3, v1

    aget-byte v7, v4, p1

    if-ne v6, v7, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p1, v1}, Lci;->OooO00o(I)Lck;

    move-result-object p1

    invoke-virtual {p0, v1}, Lci;->OooO00o(I)Lck;

    move-result-object v0

    invoke-virtual {p1, v0}, Lck;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_4
    :goto_2
    return v0

    .line 16
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    invoke-virtual {p1}, Lci;->a()I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Ran off end of other: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    invoke-virtual {p0}, Lci;->a()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Length too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_7
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8
    return v0

    :cond_9
    return v2

    :cond_a
    return v0
.end method
