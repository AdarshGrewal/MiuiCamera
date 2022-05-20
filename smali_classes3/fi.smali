.class public final Lfi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lfi;


# instance fields
.field public b:I

.field public c:[I

.field public d:[Ljava/lang/Object;

.field public e:Z

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lfi;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    .line 1
    invoke-direct {v0, v1, v2, v3, v1}, Lfi;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lfi;->a:Lfi;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    invoke-direct {p0, v2, v1, v0, v3}, Lfi;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lfi;->f:I

    iput p1, p0, Lfi;->b:I

    iput-object p2, p0, Lfi;->c:[I

    iput-object p3, p0, Lfi;->d:[Ljava/lang/Object;

    iput-boolean p4, p0, Lfi;->e:Z

    return-void
.end method

.method public static OooO00o(Lfi;Lfi;)Lfi;
    .locals 6

    .line 7
    iget v0, p0, Lfi;->b:I

    iget v1, p1, Lfi;->b:I

    add-int/2addr v0, v1

    .line 8
    iget-object v1, p0, Lfi;->c:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 9
    iget-object v2, p1, Lfi;->c:[I

    iget v3, p0, Lfi;->b:I

    iget v4, p1, Lfi;->b:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v2, p0, Lfi;->d:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 11
    iget-object v3, p1, Lfi;->d:[Ljava/lang/Object;

    iget p0, p0, Lfi;->b:I

    iget p1, p1, Lfi;->b:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lfi;

    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, v0, v1, v2, p1}, Lfi;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method public static OooO00o(ILjava/lang/Object;Lgb;)V
    .locals 2

    .line 23
    invoke-static {p0}, Lga;->OooO0O0(I)I

    move-result v0

    .line 24
    invoke-static {p0}, Lga;->OooO00o(I)I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    .line 25
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lgb;->OooO0O0(II)V

    return-void

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 27
    invoke-static {}, Ldl;->OooO0Oo()Ldk;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 28
    :cond_1
    invoke-interface {p2, v0}, Lgb;->a(I)V

    .line 29
    check-cast p1, Lfi;

    invoke-virtual {p1, p2}, Lfi;->OooO0O0(Lgb;)V

    .line 30
    invoke-interface {p2, v0}, Lgb;->OooO00o(I)V

    return-void

    .line 31
    :cond_2
    check-cast p1, Lck;

    invoke-interface {p2, v0, p1}, Lgb;->OooO00o(ILck;)V

    return-void

    .line 32
    :cond_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lgb;->OooO0O0(IJ)V

    return-void

    .line 33
    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lgb;->OooO0Oo(IJ)V

    return-void
.end method

.method public static OooO0OO()Lfi;
    .locals 5

    new-instance v0, Lfi;

    const/16 v1, 0x8

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1
    invoke-direct {v0, v3, v2, v1, v4}, Lfi;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public final OooO00o()I
    .locals 6

    iget v0, p0, Lfi;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lfi;->b:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lfi;->c:[I

    .line 1
    aget v2, v2, v0

    iget-object v3, p0, Lfi;->d:[Ljava/lang/Object;

    .line 2
    aget-object v3, v3, v0

    check-cast v3, Lck;

    const/4 v4, 0x1

    .line 3
    invoke-static {v4}, Lcn;->OooO0Oo(I)I

    move-result v4

    add-int/2addr v4, v4

    const/4 v5, 0x2

    .line 4
    invoke-static {v2}, Lga;->OooO0O0(I)I

    move-result v2

    .line 5
    invoke-static {v5, v2}, Lcn;->OooO0oO(II)I

    move-result v2

    add-int/2addr v4, v2

    const/4 v2, 0x3

    .line 6
    invoke-static {v2, v3}, Lcn;->OooO0OO(ILck;)I

    move-result v2

    add-int/2addr v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lfi;->f:I

    return v1

    :cond_1
    return v0
.end method

.method public final OooO00o(ILjava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lfi;->e:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lfi;->b:I

    iget-object v1, p0, Lfi;->c:[I

    .line 13
    array-length v2, v1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    shr-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    add-int/2addr v0, v2

    .line 14
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lfi;->c:[I

    iget-object v1, p0, Lfi;->d:[Ljava/lang/Object;

    .line 15
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lfi;->d:[Ljava/lang/Object;

    .line 16
    :goto_1
    iget-object v0, p0, Lfi;->c:[I

    iget v1, p0, Lfi;->b:I

    .line 17
    aput p1, v0, v1

    iget-object p1, p0, Lfi;->d:[Ljava/lang/Object;

    .line 18
    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfi;->b:I

    return-void

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 20
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final OooO00o(Lgb;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lfi;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lfi;->c:[I

    .line 21
    aget v1, v1, v0

    invoke-static {v1}, Lga;->OooO0O0(I)I

    move-result v1

    iget-object v2, p0, Lfi;->d:[Ljava/lang/Object;

    .line 22
    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lgb;->OooO00o(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final OooO0O0()I
    .locals 6

    iget v0, p0, Lfi;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lfi;->b:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lfi;->c:[I

    .line 1
    aget v2, v2, v0

    .line 2
    invoke-static {v2}, Lga;->OooO0O0(I)I

    move-result v3

    .line 3
    invoke-static {v2}, Lga;->OooO00o(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lfi;->d:[Ljava/lang/Object;

    .line 4
    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    invoke-static {v3}, Lcn;->OooOO0o(I)I

    move-result v2

    goto :goto_1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    invoke-static {}, Ldl;->OooO0Oo()Ldk;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_1
    invoke-static {v3}, Lcn;->OooO0Oo(I)I

    move-result v2

    add-int/2addr v2, v2

    iget-object v3, p0, Lfi;->d:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lfi;

    .line 8
    invoke-virtual {v3}, Lfi;->OooO0O0()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lfi;->d:[Ljava/lang/Object;

    .line 9
    aget-object v2, v2, v0

    check-cast v2, Lck;

    invoke-static {v3, v2}, Lcn;->OooO0OO(ILck;)I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lfi;->d:[Ljava/lang/Object;

    .line 10
    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    invoke-static {v3}, Lcn;->OooOOO0(I)I

    move-result v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lfi;->d:[Ljava/lang/Object;

    .line 11
    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcn;->OooO0o0(IJ)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iput v1, p0, Lfi;->f:I

    return v1

    :cond_6
    return v0
.end method

.method public final OooO0O0(Lgb;)V
    .locals 3

    iget v0, p0, Lfi;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lfi;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lfi;->c:[I

    .line 12
    aget v1, v1, v0

    iget-object v2, p0, Lfi;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lfi;->OooO00o(ILjava/lang/Object;Lgb;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    instance-of v2, p1, Lfi;

    if-eqz v2, :cond_2

    .line 2
    check-cast p1, Lfi;

    iget v2, p0, Lfi;->b:I

    iget v3, p1, Lfi;->b:I

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lfi;->c:[I

    iget-object v4, p1, Lfi;->c:[I

    move v5, v1

    :goto_0
    if-lt v5, v2, :cond_1

    iget-object v2, p0, Lfi;->d:[Ljava/lang/Object;

    iget-object p1, p1, Lfi;->d:[Ljava/lang/Object;

    iget v3, p0, Lfi;->b:I

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 3
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    return v0

    .line 4
    :cond_1
    aget v6, v3, v5

    aget v7, v4, v5

    if-ne v6, v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Lfi;->b:I

    add-int/lit16 v1, v0, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lfi;->c:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    move v5, v3

    move v6, v4

    :goto_0
    if-lt v5, v0, :cond_1

    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lfi;->d:[Ljava/lang/Object;

    iget v2, p0, Lfi;->b:I

    :goto_1
    if-ge v3, v2, :cond_0

    mul-int/lit8 v4, v4, 0x1f

    .line 1
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v1, v4

    return v1

    :cond_1
    mul-int/lit8 v6, v6, 0x1f

    .line 2
    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
