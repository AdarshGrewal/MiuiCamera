.class public final Lca;
.super Lbw;
.source "PG"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ldi;
.implements Leo;


# static fields
.field public static final b:Lca;


# instance fields
.field public c:[Z

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lca;

    const/4 v1, 0x0

    new-array v2, v1, [Z

    .line 1
    invoke-direct {v0, v2, v1}, Lca;-><init>([ZI)V

    sput-object v0, Lca;->b:Lca;

    .line 2
    invoke-virtual {v0}, Lbw;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lca;-><init>([ZI)V

    return-void
.end method

.method public constructor <init>([ZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lbw;-><init>()V

    iput-object p1, p0, Lca;->c:[Z

    iput p2, p0, Lca;->d:I

    return-void
.end method

.method private final OooO00o(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lca;->d:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final OooO0O0(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lca;->d:I

    if-ge p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 3
    invoke-direct {p0, p1}, Lca;->OooO00o(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final OooO00o(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lbw;->OooO0O0()V

    iget v0, p0, Lca;->d:I

    iget-object v1, p0, Lca;->c:[Z

    .line 2
    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 3
    new-array v2, v2, [Z

    const/4 v3, 0x0

    .line 4
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lca;->c:[Z

    :cond_0
    iget-object v0, p0, Lca;->c:[Z

    iget v1, p0, Lca;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lca;->d:I

    .line 5
    aput-boolean p1, v0, v1

    return-void
.end method

.method public final bridge synthetic a(I)Ldi;
    .locals 2

    iget v0, p0, Lca;->d:I

    if-lt p1, v0, :cond_0

    .line 1
    new-instance v0, Lca;

    iget-object v1, p0, Lca;->c:[Z

    .line 2
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iget v1, p0, Lca;->d:I

    invoke-direct {v0, p1, v1}, Lca;-><init>([ZI)V

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 3
    invoke-virtual {p0}, Lbw;->OooO0O0()V

    if-ltz p1, :cond_1

    .line 4
    iget v0, p0, Lca;->d:I

    if-gt p1, v0, :cond_1

    iget-object v1, p0, Lca;->c:[Z

    .line 5
    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 6
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 7
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 8
    new-array v0, v0, [Z

    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lca;->c:[Z

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lca;->d:I

    sub-int/2addr v3, p1

    .line 10
    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lca;->c:[Z

    .line 11
    :goto_0
    iget-object v0, p0, Lca;->c:[Z

    .line 12
    aput-boolean p2, v0, p1

    iget p1, p0, Lca;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lca;->d:I

    .line 13
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 14
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 15
    invoke-direct {p0, p1}, Lca;->OooO00o(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lca;->OooO00o(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lbw;->OooO0O0()V

    .line 2
    invoke-static {p1}, Ldj;->OooO00o(Ljava/lang/Object;)V

    .line 3
    instance-of v0, p1, Lca;

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Lbw;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    check-cast p1, Lca;

    .line 6
    iget v0, p1, Lca;->d:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v2, p0, Lca;->d:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    if-lt v3, v0, :cond_2

    add-int/2addr v2, v0

    iget-object v0, p0, Lca;->c:[Z

    .line 7
    array-length v3, v0

    if-le v2, v3, :cond_1

    .line 8
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lca;->c:[Z

    .line 9
    :cond_1
    iget-object v0, p1, Lca;->c:[Z

    iget-object v3, p0, Lca;->c:[Z

    iget v4, p0, Lca;->d:I

    iget p1, p1, Lca;->d:I

    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lca;->d:I

    .line 10
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    :cond_2
    new-instance p1, Ljava/lang/OutOfMemoryError;

    .line 11
    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1

    :cond_3
    return v1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lca;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    .line 1
    instance-of v1, p1, Lca;

    if-nez v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lbw;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    check-cast p1, Lca;

    iget v1, p0, Lca;->d:I

    .line 4
    iget v2, p1, Lca;->d:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 5
    iget-object p1, p1, Lca;->c:[Z

    move v1, v3

    :goto_0
    iget v2, p0, Lca;->d:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lca;->c:[Z

    .line 6
    aget-boolean v2, v2, v1

    aget-boolean v4, p1, v1

    if-ne v2, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    return v0

    :cond_3
    return v3

    :cond_4
    return v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lca;->OooO0O0(I)V

    iget-object v0, p0, Lca;->c:[Z

    .line 2
    aget-boolean p1, v0, p1

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lca;->d:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lca;->c:[Z

    .line 1
    aget-boolean v2, v2, v1

    invoke-static {v2}, Ldj;->OooO00o(Z)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget v0, p0, Lca;->d:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lca;->c:[Z

    .line 3
    aget-boolean v3, v3, v2

    if-eq v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lbw;->OooO0O0()V

    .line 2
    invoke-direct {p0, p1}, Lca;->OooO0O0(I)V

    iget-object v0, p0, Lca;->c:[Z

    .line 3
    aget-boolean v1, v0, p1

    iget v2, p0, Lca;->d:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 4
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Lca;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lca;->d:I

    .line 5
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    .line 7
    invoke-virtual {p0}, Lbw;->OooO0O0()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lca;->d:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lca;->c:[Z

    .line 8
    aget-boolean v2, v2, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lca;->c:[Z

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lca;->d:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 9
    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lca;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lca;->d:I

    .line 10
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final removeRange(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lbw;->OooO0O0()V

    if-lt p2, p1, :cond_0

    .line 2
    iget-object v0, p0, Lca;->c:[Z

    iget v1, p0, Lca;->d:I

    sub-int/2addr v1, p2

    .line 3
    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lca;->d:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lca;->d:I

    .line 4
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p2, "toIndex < fromIndex"

    .line 6
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 3
    invoke-virtual {p0}, Lbw;->OooO0O0()V

    .line 4
    invoke-direct {p0, p1}, Lca;->OooO0O0(I)V

    iget-object v0, p0, Lca;->c:[Z

    .line 5
    aget-boolean v1, v0, p1

    .line 6
    aput-boolean p2, v0, p1

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lca;->d:I

    return v0
.end method
