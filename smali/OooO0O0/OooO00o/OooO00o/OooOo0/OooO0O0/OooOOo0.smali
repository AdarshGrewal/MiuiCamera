.class public LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;
.super Ljava/lang/Object;
.source "RepeaterContent.java"

# interfaces
.implements LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o0;
.implements LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;
.implements LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0;
.implements LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;
.implements LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0O;


# instance fields
.field public final OooO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

.field public final OooO00o:Landroid/graphics/Matrix;

.field public final OooO0O0:Landroid/graphics/Path;

.field public final OooO0OO:LOooO0O0/OooO00o/OooO00o/OooO0oo;

.field public final OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

.field public final OooO0o:Z

.field public final OooO0o0:Ljava/lang/String;

.field public final OooO0oO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0oo:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public OooOO0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;


# direct methods
.method public constructor <init>(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0O;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO00o:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0O0:Landroid/graphics/Path;

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    iput-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    invoke-virtual {p3}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0O;->OooO0O0()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0o0:Ljava/lang/String;

    invoke-virtual {p3}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0O;->OooO0o0()Z

    move-result p1

    iput-boolean p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0o:Z

    invoke-virtual {p3}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0O;->OooO00o()LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;->OooO00o()LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object p1

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0oO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p2, p1}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0oO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    invoke-virtual {p3}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0O;->OooO0OO()LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;->OooO00o()LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object p1

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0oo:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p2, p1}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0oo:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    invoke-virtual {p3}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0O;->OooO0Oo()LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO00o()LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    move-result-object p1

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;)V

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {p1, p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->invalidateSelf()V

    return-void
.end method

.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;ILjava/util/List;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;)V
    .locals 0
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

    invoke-static {p1, p2, p3, p4, p0}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;ILjava/util/List;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0O;)V

    return-void
.end method

.method public OooO00o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0oO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0oo:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {v1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {v2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0Oo()LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget-object v4, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {v4}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o()LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO00o:Landroid/graphics/Matrix;

    iget-object v6, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    invoke-static {v2, v4, v7}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO0OO(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooOO0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    iget-object v7, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO00o:Landroid/graphics/Matrix;

    float-to-int v5, v5

    invoke-virtual {v6, p1, v7, v5}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooOO0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    invoke-virtual {v0, p1, p2, p3}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

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

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {v0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o(Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOOO0;->OooOOo0:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0oO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    goto :goto_0

    :cond_1
    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOOO0;->OooOOo:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0oo:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public OooO00o(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooOO0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    invoke-virtual {v0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO00o(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public OooO00o(Ljava/util/ListIterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooOO0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p1, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    iget-object v3, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    iget-boolean v5, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0o:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;-><init>(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;Ljava/lang/String;ZLjava/util/List;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;)V

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooOO0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0o0:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 6

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooOO0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0O0:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0oO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {v1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0oo:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {v2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO00o:Landroid/graphics/Matrix;

    iget-object v4, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0O0:Landroid/graphics/Path;

    iget-object v4, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo0;->OooO0O0:Landroid/graphics/Path;

    return-object v0
.end method
