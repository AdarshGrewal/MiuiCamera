.class public final Ljava8/util/ImmutableCollections$ListN;
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
    name = "ListN"
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
.field public final elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava8/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 2
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 4
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput-object v0, p0, Ljava8/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

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
    .locals 3

    .line 1
    new-instance v0, Ljava8/util/ColSer;

    iget-object v1, p0, Ljava8/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava8/util/ColSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ljava8/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Ljava8/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ljava8/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 2
    iget-object v0, p0, Ljava8/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v1, v0

    .line 3
    array-length v2, p1

    if-ge v2, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    array-length v0, p1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 7
    aput-object v0, p1, v1

    :cond_1
    return-object p1
.end method
