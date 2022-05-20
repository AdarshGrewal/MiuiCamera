.class public final Ljava8/util/ImmutableCollections$SubList;
.super Ljava8/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/ImmutableCollections$AbstractImmutableList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final offset:I

.field public final root:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final size:I


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava8/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 2
    iput-object p1, p0, Ljava8/util/ImmutableCollections$SubList;->root:Ljava/util/List;

    .line 3
    iput p2, p0, Ljava8/util/ImmutableCollections$SubList;->offset:I

    .line 4
    iput p3, p0, Ljava8/util/ImmutableCollections$SubList;->size:I

    return-void
.end method

.method public static fromList(Ljava/util/List;II)Ljava8/util/ImmutableCollections$SubList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;II)",
            "Ljava8/util/ImmutableCollections$SubList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava8/util/ImmutableCollections$SubList;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/ImmutableCollections$SubList;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method public static fromSubList(Ljava8/util/ImmutableCollections$SubList;II)Ljava8/util/ImmutableCollections$SubList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/ImmutableCollections$SubList<",
            "TE;>;II)",
            "Ljava8/util/ImmutableCollections$SubList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava8/util/ImmutableCollections$SubList;

    iget-object v1, p0, Ljava8/util/ImmutableCollections$SubList;->root:Ljava/util/List;

    iget p0, p0, Ljava8/util/ImmutableCollections$SubList;->offset:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p0, p2}, Ljava8/util/ImmutableCollections$SubList;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method private rangeCheck(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Ljava8/util/ImmutableCollections$SubList;->size:I

    if-gt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Ljava8/util/ImmutableCollections$AbstractImmutableList;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Ljava8/util/ImmutableCollections$SubList;->size:I

    invoke-static {p1, v0}, Ljava8/util/Objects;->checkIndex(II)I

    .line 2
    iget-object v0, p0, Ljava8/util/ImmutableCollections$SubList;->root:Ljava/util/List;

    iget v1, p0, Ljava8/util/ImmutableCollections$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava8/util/ImmutableCollections$ListItr;

    invoke-virtual {p0}, Ljava8/util/ImmutableCollections$SubList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljava8/util/ImmutableCollections$ListItr;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava8/util/ImmutableCollections$SubList;->rangeCheck(I)V

    .line 2
    new-instance v0, Ljava8/util/ImmutableCollections$ListItr;

    invoke-virtual {p0}, Ljava8/util/ImmutableCollections$SubList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava8/util/ImmutableCollections$ListItr;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Ljava8/util/ImmutableCollections$SubList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Ljava8/util/ImmutableCollections$SubList;->size:I

    invoke-static {p1, p2, v0}, Ljava8/util/ImmutableCollections$AbstractImmutableList;->subListRangeCheck(III)V

    .line 2
    invoke-static {p0, p1, p2}, Ljava8/util/ImmutableCollections$SubList;->fromSubList(Ljava8/util/ImmutableCollections$SubList;II)Ljava8/util/ImmutableCollections$SubList;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ljava8/util/ImmutableCollections$SubList;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Ljava8/util/ImmutableCollections$SubList;->size:I

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Ljava8/util/ImmutableCollections$SubList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 4
    array-length v0, p1

    iget v1, p0, Ljava8/util/ImmutableCollections$SubList;->size:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Ljava8/util/ImmutableCollections$SubList;->size:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    .line 6
    :goto_1
    iget v1, p0, Ljava8/util/ImmutableCollections$SubList;->size:I

    if-ge v0, v1, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Ljava8/util/ImmutableCollections$SubList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_1
    array-length v0, p1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    .line 9
    aput-object v0, p1, v1

    :cond_2
    return-object p1
.end method
