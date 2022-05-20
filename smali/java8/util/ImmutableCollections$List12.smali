.class public final Ljava8/util/ImmutableCollections$List12;
.super Ljava8/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "List12"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/ImmutableCollections$AbstractImmutableList<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final e0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final e1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava8/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    .line 3
    sget-object p1, Ljava8/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    iput-object p1, p0, Ljava8/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava8/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 5
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "not serial proxy"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Ljava8/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava8/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava8/util/ColSer;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p0, Ljava8/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-direct {v0, v3, v1}, Ljava8/util/ColSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Ljava8/util/ColSer;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Ljava8/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v5, v4, v2

    aput-object v0, v4, v3

    invoke-direct {v1, v3, v4}, Ljava8/util/ColSer;-><init>(I[Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Ljava8/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Ljava8/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava8/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Ljava8/util/ImmutableCollections$AbstractImmutableList;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object p1

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Ljava8/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava8/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ljava8/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava8/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Ljava8/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v1, v0, v3

    return-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    iget-object v4, p0, Ljava8/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v4, v1, v3

    aput-object v0, v1, v2

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Ljava8/util/ImmutableCollections$List12;->size()I

    move-result v0

    .line 5
    array-length v1, p1

    if-lt v1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    .line 7
    iget-object v2, p0, Ljava8/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v2, p1, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Ljava8/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    aput-object v2, p1, v1

    .line 9
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_2

    const/4 v1, 0x0

    .line 10
    aput-object v1, p1, v0

    :cond_2
    return-object p1
.end method
