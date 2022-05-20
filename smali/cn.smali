.class public final Lcn;
.super Leb;
.source "PG"


# static fields
.field public static final a:Z

.field public static final c:Ljava/util/logging/Logger;


# instance fields
.field public b:Lco;

.field public final d:[B

.field public final e:I

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcn;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcn;->c:Ljava/util/logging/Logger;

    .line 2
    sget-boolean v0, Lfr;->b:Z

    sput-boolean v0, Lcn;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Leb;-><init>()V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn;-><init>()V

    if-eqz p1, :cond_1

    array-length v0, p1

    sub-int v1, v0, p2

    or-int/2addr v1, p2

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    .line 2
    iput-object p1, p0, Lcn;->d:[B

    iput v2, p0, Lcn;->f:I

    iput p2, p0, Lcn;->e:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 5
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    .line 6
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static OooO(I)I
    .locals 1

    add-int v0, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static OooO(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcn;->OooO0o0(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static OooO00o(ILdq;)I
    .locals 0

    .line 51
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    invoke-static {p1}, Lcn;->OooO00o(Ldq;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static OooO00o(Lck;)I
    .locals 0

    .line 50
    invoke-virtual {p0}, Lck;->a()I

    move-result p0

    invoke-static {p0}, Lcn;->OooO0oo(I)I

    move-result p0

    return p0
.end method

.method public static OooO00o(Ldq;)I
    .locals 1

    iget-object v0, p0, Ldq;->b:Lck;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ldq;->b:Lck;

    .line 52
    invoke-virtual {p0}, Lck;->a()I

    move-result p0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Ldq;->a:Leh;

    if-eqz v0, :cond_1

    iget-object p0, p0, Ldq;->a:Leh;

    .line 54
    invoke-interface {p0}, Leh;->OooO0O0()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 55
    :goto_0
    invoke-static {p0}, Lcn;->OooO0oo(I)I

    move-result p0

    return p0
.end method

.method public static OooO00o(Leh;Les;)I
    .locals 2

    .line 56
    check-cast p0, Lbu;

    .line 57
    invoke-virtual {p0}, Lbu;->OooO0o()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 58
    invoke-interface {p1, p0}, Les;->OooO00o(Ljava/lang/Object;)I

    move-result v0

    .line 59
    invoke-virtual {p0, v0}, Lbu;->OooO00o(I)V

    .line 60
    :cond_0
    invoke-static {v0}, Lcn;->OooO0oo(I)I

    move-result p0

    return p0
.end method

.method public static OooO00o([B)Lcn;
    .locals 2

    .line 67
    array-length v0, p0

    new-instance v1, Lcn;

    .line 68
    invoke-direct {v1, p0, v0}, Lcn;-><init>([BI)V

    return-object v1
.end method

.method public static OooO0O0(ILeh;Les;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    add-int/2addr p0, p0

    .line 41
    check-cast p1, Lbu;

    .line 42
    invoke-virtual {p1}, Lbu;->OooO0o()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 43
    invoke-interface {p2, p1}, Les;->OooO00o(Ljava/lang/Object;)I

    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Lbu;->OooO00o(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static OooO0O0(ILjava/lang/String;)I
    .locals 0

    .line 46
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    invoke-static {p1}, Lcn;->OooO0O0(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static OooO0O0(Leh;)I
    .locals 0

    .line 45
    invoke-interface {p0}, Leh;->OooO0O0()I

    move-result p0

    invoke-static {p0}, Lcn;->OooO0oo(I)I

    move-result p0

    return p0
.end method

.method public static OooO0O0(Ljava/lang/String;)I
    .locals 1

    .line 47
    :try_start_0
    invoke-static {p0}, Lfx;->OooO00o(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lfv; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    sget-object v0, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 49
    array-length p0, p0

    .line 50
    :goto_0
    invoke-static {p0}, Lcn;->OooO0oo(I)I

    move-result p0

    return p0
.end method

.method public static OooO0O0([B)I
    .locals 0

    .line 39
    array-length p0, p0

    invoke-static {p0}, Lcn;->OooO0oo(I)I

    move-result p0

    return p0
.end method

.method public static OooO0OO(ILck;)I
    .locals 0

    .line 12
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    invoke-static {p1}, Lcn;->OooO00o(Lck;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static OooO0OO(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    cmp-long v0, p0, v2

    if-ltz v0, :cond_3

    const-wide v4, -0x800000000L

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x2

    const/16 v4, 0xe

    ushr-long/2addr p0, v4

    :cond_1
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2

    add-int/2addr v0, v1

    :cond_2
    return v0

    :cond_3
    const/16 p0, 0xa

    return p0

    :cond_4
    return v1
.end method

.method public static OooO0OO(Leh;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13
    invoke-interface {p0}, Leh;->OooO0O0()I

    move-result p0

    return p0
.end method

.method public static OooO0Oo(I)I
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Lga;->OooO00o(II)I

    move-result p0

    invoke-static {p0}, Lcn;->OooO0o(I)I

    move-result p0

    return p0
.end method

.method public static OooO0Oo(IJ)I
    .locals 0

    .line 3
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    .line 4
    invoke-static {p1, p2}, Lcn;->OooO0OO(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static OooO0Oo(J)I
    .locals 0

    .line 5
    invoke-static {p0, p1}, Lcn;->OooO0o0(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcn;->OooO0OO(J)I

    move-result p0

    return p0
.end method

.method public static OooO0o(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-eqz v0, :cond_3

    and-int/lit16 v0, p0, -0x4000

    if-eqz v0, :cond_2

    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static OooO0o(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    invoke-static {p1}, Lcn;->OooO0o0(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static OooO0o(IJ)I
    .locals 0

    .line 2
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    invoke-static {p1, p2}, Lcn;->OooO0Oo(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static OooO0o0(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 3
    invoke-static {p0}, Lcn;->OooO0o(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static OooO0o0(IJ)I
    .locals 0

    .line 4
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    invoke-static {p1, p2}, Lcn;->OooO0OO(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static OooO0o0(J)J
    .locals 3

    add-long v0, p0, p0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static OooO0oO(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcn;->OooO(I)I

    move-result p0

    invoke-static {p0}, Lcn;->OooO0o(I)I

    move-result p0

    return p0
.end method

.method public static OooO0oO(II)I
    .locals 0

    .line 2
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    invoke-static {p1}, Lcn;->OooO0o(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static OooO0oo(I)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcn;->OooO0o(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static OooO0oo(II)I
    .locals 0

    .line 2
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    invoke-static {p1}, Lcn;->OooO0oO(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static OooOO0(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static OooOO0O(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static OooOO0o(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static OooOOO(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static OooOOO0(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static OooOOOO(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static OooOOOo(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method


# virtual methods
.method public OooO00o(B)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    .line 2
    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcm;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcn;->f:I

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcn;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public OooO00o(I)V
    .locals 2

    if-gez p1, :cond_0

    int-to-long v0, p1

    .line 14
    invoke-virtual {p0, v0, v1}, Lcn;->OooO00o(J)V

    return-void

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcn;->OooO0O0(I)V

    return-void
.end method

.method public final OooO00o(ID)V
    .locals 0

    .line 69
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcn;->OooO0OO(IJ)V

    return-void
.end method

.method public final OooO00o(IF)V
    .locals 0

    .line 70
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcn;->OooO0o0(II)V

    return-void
.end method

.method public final OooO00o(II)V
    .locals 0

    .line 72
    invoke-static {p2}, Lcn;->OooO(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcn;->OooO0Oo(II)V

    return-void
.end method

.method public final OooO00o(IJ)V
    .locals 0

    .line 73
    invoke-static {p2, p3}, Lcn;->OooO0o0(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcn;->OooO0O0(IJ)V

    return-void
.end method

.method public OooO00o(ILck;)V
    .locals 1

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, p1, v0}, Lcn;->OooO0O0(II)V

    .line 12
    invoke-virtual {p2}, Lck;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn;->OooO0O0(I)V

    .line 13
    invoke-virtual {p2, p0}, Lck;->OooO00o(Leb;)V

    return-void
.end method

.method public OooO00o(ILeh;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, v1, v0}, Lcn;->OooO0O0(II)V

    const/4 v2, 0x2

    .line 24
    invoke-virtual {p0, v2, p1}, Lcn;->OooO0Oo(II)V

    .line 25
    invoke-virtual {p0, v0, v2}, Lcn;->OooO0O0(II)V

    .line 26
    invoke-interface {p2}, Leh;->OooO0O0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn;->OooO0O0(I)V

    .line 27
    invoke-interface {p2, p0}, Leh;->OooO00o(Lcn;)V

    const/4 p1, 0x4

    .line 28
    invoke-virtual {p0, v1, p1}, Lcn;->OooO0O0(II)V

    return-void
.end method

.method public OooO00o(ILeh;Les;)V
    .locals 2

    const/4 v0, 0x2

    .line 16
    invoke-virtual {p0, p1, v0}, Lcn;->OooO0O0(II)V

    .line 17
    move-object p1, p2

    check-cast p1, Lbu;

    .line 18
    invoke-virtual {p1}, Lbu;->OooO0o()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 19
    invoke-interface {p3, p1}, Les;->OooO00o(Ljava/lang/Object;)I

    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Lbu;->OooO00o(I)V

    .line 21
    :cond_0
    invoke-virtual {p0, v0}, Lcn;->OooO0O0(I)V

    iget-object p1, p0, Lcn;->b:Lco;

    .line 22
    invoke-interface {p3, p2, p1}, Les;->OooO00o(Ljava/lang/Object;Lgb;)V

    return-void
.end method

.method public OooO00o(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 29
    invoke-virtual {p0, p1, v0}, Lcn;->OooO0O0(II)V

    .line 30
    invoke-virtual {p0, p2}, Lcn;->OooO00o(Ljava/lang/String;)V

    return-void
.end method

.method public OooO00o(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcn;->OooO0O0(II)V

    .line 10
    invoke-virtual {p0, p2}, Lcn;->OooO00o(B)V

    return-void
.end method

.method public OooO00o(J)V
    .locals 9

    sget-boolean v0, Lcn;->a:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {p0}, Lcn;->OooO0OO()I

    move-result v0

    const/16 v6, 0xa

    if-ge v0, v6, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcn;->d:[B

    iget v6, p0, Lcn;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcn;->f:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 43
    invoke-static {v0, v6, v7, v8}, Lfr;->OooO00o([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 44
    invoke-static {v0, v1, v2, p1}, Lfr;->OooO00o([BJB)V

    return-void

    :cond_2
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_3

    .line 45
    :try_start_0
    iget-object v0, p0, Lcn;->d:[B

    iget v6, p0, Lcn;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcn;->f:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 46
    aput-byte v7, v0, v6

    ushr-long/2addr p1, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 47
    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 48
    new-instance p2, Lcm;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcn;->f:I

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcn;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final OooO00o(Leh;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    invoke-interface {p1, p0}, Leh;->OooO00o(Lcn;)V

    return-void
.end method

.method public OooO00o(Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lcn;->f:I

    .line 31
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 32
    invoke-static {v1}, Lcn;->OooO0o(I)I

    move-result v1

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcn;->OooO0o(I)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 34
    invoke-static {p1}, Lfx;->OooO00o(Ljava/lang/CharSequence;)I

    move-result v1

    .line 35
    invoke-virtual {p0, v1}, Lcn;->OooO0O0(I)V

    iget-object v1, p0, Lcn;->d:[B

    iget v2, p0, Lcn;->f:I

    .line 36
    invoke-virtual {p0}, Lcn;->OooO0OO()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lfx;->OooO00o(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcn;->f:I

    return-void

    :cond_0
    add-int v1, v0, v2

    iput v1, p0, Lcn;->f:I

    iget-object v3, p0, Lcn;->d:[B

    .line 37
    invoke-virtual {p0}, Lcn;->OooO0OO()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Lfx;->OooO00o(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Lcn;->f:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 38
    invoke-virtual {p0, v3}, Lcn;->OooO0O0(I)V

    iput v1, p0, Lcn;->f:I
    :try_end_0
    .catch Lfv; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcm;

    .line 39
    invoke-direct {v0, p1}, Lcm;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    iput v0, p0, Lcn;->f:I

    .line 40
    invoke-virtual {p0, p1, v1}, Lcn;->OooO00o(Ljava/lang/String;Lfv;)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Lfv;)V
    .locals 6

    sget-object v0, Lcn;->c:Ljava/util/logging/Logger;

    .line 61
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    sget-object p2, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 63
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcn;->OooO0O0(I)V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, v0, p2}, Lcn;->OooO0O0([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcm; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 65
    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Lcm;

    .line 66
    invoke-direct {p2, p1}, Lcm;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public OooO00o([BII)V
    .locals 3

    .line 5
    :try_start_0
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    .line 6
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcn;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcn;->f:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Lcm;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcn;->f:I

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcn;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final OooO0O0()V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcn;->OooO0OO()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0O0(I)V
    .locals 4

    sget-boolean v0, Lcn;->a:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lbx;->OooO00o()Z

    move-result v0

    if-nez v0, :cond_5

    .line 19
    invoke-virtual {p0}, Lcn;->OooO0OO()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    .line 20
    invoke-static {v0, v1, v2, v3}, Lfr;->OooO00o([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    int-to-byte p1, p1

    .line 21
    invoke-static {v0, v1, v2, p1}, Lfr;->OooO00o([BJB)V

    return-void

    :cond_1
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    .line 22
    invoke-static {v0, v1, v2, v3}, Lfr;->OooO00o([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    int-to-byte p1, p1

    .line 23
    invoke-static {v0, v1, v2, p1}, Lfr;->OooO00o([BJB)V

    return-void

    :cond_2
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    .line 24
    invoke-static {v0, v1, v2, v3}, Lfr;->OooO00o([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    int-to-byte p1, p1

    .line 25
    invoke-static {v0, v1, v2, p1}, Lfr;->OooO00o([BJB)V

    return-void

    :cond_3
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    .line 26
    invoke-static {v0, v1, v2, v3}, Lfr;->OooO00o([BJB)V

    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    ushr-int/lit8 p1, p1, 0x7

    int-to-byte p1, p1

    .line 27
    invoke-static {v0, v1, v2, p1}, Lfr;->OooO00o([BJB)V

    return-void

    .line 28
    :cond_4
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    int-to-byte p1, p1

    .line 29
    invoke-static {v0, v1, v2, p1}, Lfr;->OooO00o([BJB)V

    return-void

    :cond_5
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_6

    .line 30
    :try_start_0
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 31
    aput-byte v2, v0, v1

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-byte p1, p1

    .line 32
    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 33
    new-instance v0, Lcm;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcn;->f:I

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcn;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public OooO0O0(II)V
    .locals 0

    .line 17
    invoke-static {p1, p2}, Lga;->OooO00o(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcn;->OooO0O0(I)V

    return-void
.end method

.method public OooO0O0(IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, p1, v0}, Lcn;->OooO0O0(II)V

    .line 36
    invoke-virtual {p0, p2, p3}, Lcn;->OooO00o(J)V

    return-void
.end method

.method public OooO0O0(ILck;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v1, v0}, Lcn;->OooO0O0(II)V

    const/4 v2, 0x2

    .line 14
    invoke-virtual {p0, v2, p1}, Lcn;->OooO0Oo(II)V

    .line 15
    invoke-virtual {p0, v0, p2}, Lcn;->OooO00o(ILck;)V

    const/4 p1, 0x4

    .line 16
    invoke-virtual {p0, v1, p1}, Lcn;->OooO0O0(II)V

    return-void
.end method

.method public OooO0O0(J)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 1
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcn;->f:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 2
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 3
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcn;->f:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 4
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 5
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcn;->f:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 6
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 7
    iput v2, p0, Lcn;->f:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 8
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcn;->f:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 9
    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lcm;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcn;->f:I

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcn;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public OooO0O0([BII)V
    .locals 0

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcn;->OooO00o([BII)V

    return-void
.end method

.method public OooO0OO()I
    .locals 2

    iget v0, p0, Lcn;->e:I

    iget v1, p0, Lcn;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public OooO0OO(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    .line 1
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcn;->f:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 2
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 3
    iput v2, p0, Lcn;->f:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 4
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcn;->f:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 5
    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Lcm;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcn;->f:I

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcn;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public OooO0OO(II)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcn;->OooO0O0(II)V

    .line 11
    invoke-virtual {p0, p2}, Lcn;->OooO00o(I)V

    return-void
.end method

.method public OooO0OO(IJ)V
    .locals 1

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, v0}, Lcn;->OooO0O0(II)V

    .line 9
    invoke-virtual {p0, p2, p3}, Lcn;->OooO0O0(J)V

    return-void
.end method

.method public OooO0Oo(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn;->OooO0O0(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcn;->OooO0O0(I)V

    return-void
.end method

.method public OooO0o0(II)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn;->OooO0O0(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcn;->OooO0OO(I)V

    return-void
.end method
