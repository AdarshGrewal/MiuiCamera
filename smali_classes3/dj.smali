.class public final Ldj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ldj;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    sput-object v1, Ldj;->b:[B

    .line 4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    sget-object v1, Ldj;->b:[B

    .line 5
    array-length v1, v1

    new-instance v2, Lcl;

    .line 6
    invoke-direct {v2, v0, v1}, Lcl;-><init>(II)V

    :try_start_0
    iget v3, v2, Lcl;->e:I

    if-gt v1, v3, :cond_1

    iput v1, v2, Lcl;->e:I

    iget v3, v2, Lcl;->a:I

    iget v4, v2, Lcl;->b:I

    add-int/2addr v3, v4

    iput v3, v2, Lcl;->a:I

    if-le v3, v1, :cond_0

    sub-int v0, v3, v1

    iput v0, v2, Lcl;->b:I

    sub-int/2addr v3, v0

    iput v3, v2, Lcl;->a:I

    return-void

    .line 7
    :cond_0
    iput v0, v2, Lcl;->b:I

    return-void

    .line 8
    :cond_1
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ldl; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 9
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static OooO00o(I[BII)I
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    mul-int/lit8 p0, p0, 0x1f

    .line 7
    aget-byte v1, p1, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static OooO00o(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static OooO00o(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    return p0

    :cond_0
    const/16 p0, 0x4d5

    return p0
.end method

.method public static OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p0, Leh;

    invoke-interface {p0}, Leh;->b()Leg;

    move-result-object p0

    check-cast p1, Leh;

    invoke-interface {p0, p1}, Leg;->OooO00o(Leh;)Leg;

    move-result-object p0

    invoke-interface {p0}, Leg;->OooO0OO()Leh;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 1
    throw p0
.end method

.method public static OooO00o(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static OooO00o(Leh;)Z
    .locals 1

    .line 3
    instance-of v0, p0, Lbv;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p0, Lbv;

    const/4 p0, 0x0

    throw p0
.end method

.method public static OooO00o([B)Z
    .locals 3

    .line 4
    sget-object v0, Lfx;->a:Lft;

    .line 5
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lft;->OooO00o([BII)Z

    move-result p0

    return p0
.end method

.method public static OooO0O0([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ldj;->a:Ljava/nio/charset/Charset;

    .line 1
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static OooO0OO([B)I
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p0, v1, v0}, Ldj;->OooO00o(I[BII)I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
