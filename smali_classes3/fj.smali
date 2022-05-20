.class public final Lfj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final a:Ljava/util/ListIterator;

.field public final synthetic b:I

.field public final synthetic c:Lfl;


# direct methods
.method public constructor <init>(Lfl;I)V
    .locals 0

    iput-object p1, p0, Lfj;->c:Lfl;

    iput p2, p0, Lfj;->b:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lfj;->c:Lfl;

    .line 2
    iget-object p1, p1, Lfl;->a:Lds;

    iget p2, p0, Lfj;->b:I

    .line 3
    invoke-interface {p1, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lfj;->a:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lfj;->a:Ljava/util/ListIterator;

    .line 1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lfj;->a:Ljava/util/ListIterator;

    .line 1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfj;->a:Ljava/util/ListIterator;

    .line 1
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    iget-object v0, p0, Lfj;->a:Ljava/util/ListIterator;

    .line 1
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfj;->a:Ljava/util/ListIterator;

    .line 1
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    iget-object v0, p0, Lfj;->a:Ljava/util/ListIterator;

    .line 1
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
