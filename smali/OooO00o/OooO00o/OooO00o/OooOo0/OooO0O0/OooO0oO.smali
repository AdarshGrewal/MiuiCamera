.class public LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;
.super Ljava/lang/Object;
.source "FillContent.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o0;
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0O;


# instance fields
.field public OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO00o:Landroid/graphics/Path;

.field public final OooO0O0:Landroid/graphics/Paint;

.field public final OooO0OO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

.field public final OooO0Oo:Ljava/lang/String;

.field public final OooO0o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0o0:Z

.field public final OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final OooOO0:LOooO00o/OooO00o/OooO00o/OooO0oo;


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO00o:Landroid/graphics/Path;

    .line 3
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO00o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO00o;-><init>(I)V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0O0:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0o:Ljava/util/List;

    .line 5
    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    .line 6
    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0OO()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0Oo:Ljava/lang/String;

    .line 7
    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0o0()Z

    move-result v0

    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0o0:Z

    .line 8
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0oo;

    .line 9
    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0Oo()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0O0()Landroid/graphics/Path$FillType;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 11
    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 12
    invoke-virtual {p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 13
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p2, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 14
    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0Oo()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 15
    invoke-virtual {p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 16
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p2, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 18
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->invalidateSelf()V

    return-void
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;ILjava/util/List;LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            "I",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            ">;",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-static {p1, p2, p3, p4, p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;ILjava/util/List;LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0O;)V

    return-void
.end method

.method public OooO00o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 6
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0o0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FillContent#draw"

    .line 7
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0O0:Landroid/graphics/Paint;

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    check-cast v2, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0O0;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0O0;->OooOO0()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    .line 9
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p3, v2

    mul-float/2addr p3, v1

    float-to-int p3, p3

    .line 10
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0O0:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {p3, v3, v2}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(III)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 11
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz p3, :cond_1

    .line 12
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0O0:Landroid/graphics/Paint;

    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 13
    :cond_1
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 14
    :goto_0
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0o:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_2

    .line 15
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO00o:Landroid/graphics/Path;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0o:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;

    invoke-interface {v1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_2
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO00o:Landroid/graphics/Path;

    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0O0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 17
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method public OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 18
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    .line 19
    :goto_0
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 20
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO00o:Landroid/graphics/Path;

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;

    invoke-interface {v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 22
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public OooO00o(Ljava/lang/Object;LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooO00o:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 25
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooO0Oo:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    .line 27
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    goto :goto_0

    .line 28
    :cond_1
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooOoo:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    goto :goto_0

    .line 30
    :cond_2
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;

    invoke-direct {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;-><init>(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 31
    invoke-virtual {p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 32
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    :cond_3
    :goto_0
    return-void
.end method

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

    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;

    .line 4
    instance-of v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0o:Ljava/util/List;

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;->OooO0Oo:Ljava/lang/String;

    return-object v0
.end method
