.class public LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;
.super Ljava/lang/Object;
.source "ContentGroup.java"

# interfaces
.implements LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o0;
.implements LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;
.implements LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;
.implements LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o;


# instance fields
.field public final OooO:LOooO0O0/OooO00o/OooO00o/OooO0oo;

.field public OooO00o:Landroid/graphics/Paint;

.field public OooO0O0:Landroid/graphics/RectF;

.field public final OooO0OO:Landroid/graphics/Matrix;

.field public final OooO0Oo:Landroid/graphics/Path;

.field public final OooO0o:Ljava/lang/String;

.field public final OooO0o0:Landroid/graphics/RectF;

.field public final OooO0oO:Z

.field public final OooO0oo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;",
            ">;"
        }
    .end annotation
.end field

.field public OooOO0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;",
            ">;"
        }
    .end annotation
.end field

.field public OooOO0O:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;


# direct methods
.method public constructor <init>(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;)V
    .locals 7

    invoke-virtual {p3}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;->OooO0O0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;->OooO0OO()Z

    move-result v4

    invoke-virtual {p3}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;->OooO00o()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p3}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;->OooO00o()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO00o(Ljava/util/List;)LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;-><init>(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;Ljava/lang/String;ZLjava/util/List;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;)V

    return-void
.end method

.method public constructor <init>(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;Ljava/lang/String;ZLjava/util/List;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooO0oo;",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;",
            ">;",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO00o;

    invoke-direct {v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO00o;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO00o:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0O0:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0OO:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0Oo:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0o0:Landroid/graphics/RectF;

    iput-object p3, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0o:Ljava/lang/String;

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    iput-boolean p4, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oO:Z

    iput-object p5, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    if-eqz p6, :cond_0

    invoke-virtual {p6}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO00o()LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    move-result-object p1

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooOO0O:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;)V

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooOO0O:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {p1, p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;

    instance-of p4, p3, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0;

    if-eqz p4, :cond_1

    check-cast p3, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {p5, p4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p4

    invoke-interface {p3, p4}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0;->OooO00o(Ljava/util/ListIterator;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static OooO00o(Ljava/util/List;)LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0O0;",
            ">;)",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0O0;

    instance-of v2, v1, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;

    if-eqz v2, :cond_0

    check-cast v1, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooO0oo;",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;",
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0O0;",
            ">;)",
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0O0;

    invoke-interface {v2, p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0O0;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;)LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private OooO0Oo()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o0;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->invalidateSelf()V

    return-void
.end method

.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;ILjava/util/List;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            "I",
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            ">;",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;->OooO0OO(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;->OooO00o(Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;

    move-result-object p4

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;->OooO00o(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4, p0}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o;)LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;->OooO0Oo(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;->OooO0O0(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;

    instance-of v2, v1, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o;

    if-eqz v2, :cond_2

    check-cast v1, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o;

    invoke-interface {v1, p1, p2, p3, p4}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;ILjava/util/List;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public OooO00o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    iget-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oO:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooOO0O:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    if-eqz p2, :cond_2

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0O0()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooOO0O:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0OO()LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object p2

    if-nez p2, :cond_1

    const/16 p2, 0x64

    goto :goto_0

    :cond_1
    iget-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooOO0O:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0OO()LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    int-to-float p3, p3

    mul-float/2addr p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    mul-float/2addr p2, p3

    float-to-int p3, p2

    :cond_2
    iget-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p2}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOo0()Z

    move-result p2

    const/16 v0, 0xff

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-direct {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0Oo()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eq p3, v0, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0O0:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0O0:Landroid/graphics/RectF;

    iget-object v3, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, v3, v1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO00o:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0O0:Landroid/graphics/RectF;

    iget-object v3, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO00o:Landroid/graphics/Paint;

    invoke-static {p1, v2, v3}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    if-eqz p2, :cond_5

    move p3, v0

    :cond_5
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_7

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o0;

    if-eqz v2, :cond_6

    check-cast v1, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o0;

    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0OO:Landroid/graphics/Matrix;

    invoke-interface {v1, p1, v2, p3}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o0;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method public OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooOO0O:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    if-eqz p2, :cond_0

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0O0()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    iget-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0o0:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;

    instance-of v1, v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o0;

    if-eqz v1, :cond_1

    check-cast v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o0;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0o0:Landroid/graphics/RectF;

    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0OO:Landroid/graphics/Matrix;

    invoke-interface {v0, v1, v2, p3}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o0;->OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0o0:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public OooO00o(Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooOO0O:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o(Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)Z

    :cond_0
    return-void
.end method

.method public OooO00o(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;",
            ">;",
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p2, v1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;->OooO00o(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO0O0()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooOO0:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooOO0:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;

    instance-of v2, v1, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;

    if-eqz v2, :cond_0

    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooOO0:Ljava/util/List;

    check-cast v1, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooOO0:Ljava/util/List;

    return-object v0
.end method

.method public OooO0OO()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooOO0O:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0O0()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0OO:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0o:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 4

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooOO0O:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    if-eqz v0, :cond_0

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0O0()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0Oo:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oO:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0Oo:Landroid/graphics/Path;

    return-object v0

    :cond_1
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0oo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;

    instance-of v2, v1, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;

    if-eqz v2, :cond_2

    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0Oo:Landroid/graphics/Path;

    check-cast v1, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;

    invoke-interface {v1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;->getPath()Landroid/graphics/Path;

    move-result-object v1

    iget-object v3, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO0Oo:Landroid/graphics/Path;

    return-object v0
.end method
