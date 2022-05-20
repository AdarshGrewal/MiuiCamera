.class public LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;
.super Ljava/lang/Object;
.source "MergePathsContent.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0;


# instance fields
.field public final OooO00o:Landroid/graphics/Path;

.field public final OooO0O0:Landroid/graphics/Path;

.field public final OooO0OO:Landroid/graphics/Path;

.field public final OooO0Oo:Ljava/lang/String;

.field public final OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oo;

.field public final OooO0o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO00o:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0O0:Landroid/graphics/Path;

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0OO:Landroid/graphics/Path;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0o0:Ljava/util/List;

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 7
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oo;->OooO0O0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0Oo:Ljava/lang/String;

    .line 8
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oo;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Merge paths are not supported pre-KitKat."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private OooO00o()V
    .locals 3

    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0o0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 10
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0OO:Landroid/graphics/Path;

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0o0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;

    invoke-interface {v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private OooO00o(Landroid/graphics/Path$Op;)V
    .locals 7

    .line 11
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0O0:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 12
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 13
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lt v0, v1, :cond_2

    .line 14
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0o0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;

    .line 15
    instance-of v3, v2, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    if-eqz v3, :cond_0

    .line 16
    check-cast v2, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0O0()Ljava/util/List;

    move-result-object v3

    .line 17
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_1

    .line 18
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;

    invoke-interface {v5}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;->getPath()Landroid/graphics/Path;

    move-result-object v5

    .line 19
    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0OO()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 20
    iget-object v6, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0O0:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 21
    :cond_0
    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0O0:Landroid/graphics/Path;

    invoke-interface {v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0o0:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;

    .line 23
    instance-of v2, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    if-eqz v2, :cond_3

    .line 24
    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0O0()Ljava/util/List;

    move-result-object v2

    .line 25
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 26
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;

    invoke-interface {v3}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;->getPath()Landroid/graphics/Path;

    move-result-object v3

    .line 27
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0OO()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 28
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v4, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 29
    :cond_3
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO00o:Landroid/graphics/Path;

    invoke-interface {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 30
    :cond_4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0OO:Landroid/graphics/Path;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO00o:Landroid/graphics/Path;

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0O0:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;",
            ">;",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0o0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0o0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;

    invoke-interface {v1, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;->OooO00o(Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO00o(Ljava/util/ListIterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;

    .line 4
    instance-of v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0o0:Ljava/util/List;

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0Oo:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0OO:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oo;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0OO:Landroid/graphics/Path;

    return-object v0

    .line 4
    :cond_0
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o$OooO00o;->OooO00o:[I

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oo;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oo;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oo$OooO00o;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO00o(Landroid/graphics/Path$Op;)V

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO00o(Landroid/graphics/Path$Op;)V

    goto :goto_0

    .line 7
    :cond_3
    sget-object v0, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO00o(Landroid/graphics/Path$Op;)V

    goto :goto_0

    .line 8
    :cond_4
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO00o(Landroid/graphics/Path$Op;)V

    goto :goto_0

    .line 9
    :cond_5
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO00o()V

    .line 10
    :goto_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0o;->OooO0OO:Landroid/graphics/Path;

    return-object v0
.end method
