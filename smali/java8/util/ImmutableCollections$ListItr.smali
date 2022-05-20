.class public final Ljava8/util/ImmutableCollections$ListItr;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public cursor:I

.field public final isListIterator:Z

.field public final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final size:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljava8/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    .line 3
    iput p2, p0, Ljava8/util/ImmutableCollections$ListItr;->size:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Ljava8/util/ImmutableCollections$ListItr;->cursor:I

    .line 5
    iput-boolean p1, p0, Ljava8/util/ImmutableCollections$ListItr;->isListIterator:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;II)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Ljava8/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    .line 8
    iput p2, p0, Ljava8/util/ImmutableCollections$ListItr;->size:I

    .line 9
    iput p3, p0, Ljava8/util/ImmutableCollections$ListItr;->cursor:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Ljava8/util/ImmutableCollections$ListItr;->isListIterator:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava8/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Ljava8/util/ImmutableCollections$ListItr;->cursor:I

    iget v1, p0, Ljava8/util/ImmutableCollections$ListItr;->size:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ljava8/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Ljava8/util/ImmutableCollections$ListItr;->cursor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    invoke-static {}, Ljava8/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Ljava8/util/ImmutableCollections$ListItr;->cursor:I

    .line 2
    iget-object v1, p0, Ljava8/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p0, Ljava8/util/ImmutableCollections$ListItr;->cursor:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 4
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ljava8/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Ljava8/util/ImmutableCollections$ListItr;->cursor:I

    return v0

    .line 3
    :cond_0
    invoke-static {}, Ljava8/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ljava8/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v0, p0, Ljava8/util/ImmutableCollections$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    .line 3
    iget-object v1, p0, Ljava8/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    iput v0, p0, Ljava8/util/ImmutableCollections$ListItr;->cursor:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 5
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 6
    :cond_0
    invoke-static {}, Ljava8/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ljava8/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Ljava8/util/ImmutableCollections$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 3
    :cond_0
    invoke-static {}, Ljava8/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 1
    invoke-static {}, Ljava8/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava8/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method
