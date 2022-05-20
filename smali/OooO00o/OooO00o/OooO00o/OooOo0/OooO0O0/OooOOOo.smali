.class public LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;
.super Ljava/lang/Object;
.source "RectangleContent.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0O;
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;


# instance fields
.field public OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;

.field public final OooO00o:Landroid/graphics/Path;

.field public final OooO0O0:Landroid/graphics/RectF;

.field public final OooO0OO:Ljava/lang/String;

.field public final OooO0Oo:Z

.field public final OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0o0:LOooO00o/OooO00o/OooO00o/OooO0oo;

.field public final OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public OooOO0:Z


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO00o:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0O0:Landroid/graphics/RectF;

    .line 4
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;

    invoke-direct {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;

    .line 5
    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0;->OooO0O0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0OO:Ljava/lang/String;

    .line 6
    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0;->OooO0o0()Z

    move-result v0

    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0Oo:Z

    .line 7
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0o0:LOooO00o/OooO00o/OooO00o/OooO0oo;

    .line 8
    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0;->OooO0OO()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO0;

    move-result-object p1

    invoke-interface {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 9
    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0;->OooO0Oo()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 10
    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 11
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p2, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 12
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p2, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 13
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p2, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 14
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 15
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 16
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    return-void
.end method

.method private OooO0O0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooOO0:Z

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0o0:LOooO00o/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0O0()V

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

    .line 8
    invoke-static {p1, p2, p3, p4, p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;ILjava/util/List;LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0O;)V

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

    .line 9
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooO0oo:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    .line 10
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooOO0:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 12
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooO:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    .line 14
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public OooO00o(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    const/4 p2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;

    .line 4
    instance-of v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;

    if-eqz v1, :cond_0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;

    .line 5
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0o0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    move-result-object v1

    sget-object v2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    if-ne v1, v2, :cond_0

    .line 6
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;

    invoke-virtual {v1, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;)V

    .line 7
    invoke-virtual {v0, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooOO0:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO00o:Landroid/graphics/Path;

    return-object v1

    .line 3
    :cond_0
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-boolean v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0Oo:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    iput-boolean v2, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooOO0:Z

    .line 6
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO00o:Landroid/graphics/Path;

    return-object v1

    .line 7
    :cond_1
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 8
    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 9
    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    .line 10
    iget-object v5, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_0

    .line 11
    :cond_2
    check-cast v5, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    invoke-virtual {v5}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;->OooOO0()F

    move-result v5

    .line 12
    :goto_0
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    cmpl-float v8, v5, v7

    if-lez v8, :cond_3

    move v5, v7

    .line 13
    :cond_3
    iget-object v7, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {v7}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 14
    iget-object v8, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO00o:Landroid/graphics/Path;

    iget v9, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v3

    iget v10, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v1

    add-float/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 15
    iget-object v8, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO00o:Landroid/graphics/Path;

    iget v9, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v3

    iget v10, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v1

    sub-float/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v8, v5, v6

    const/4 v9, 0x0

    const/high16 v10, 0x42b40000    # 90.0f

    if-lez v8, :cond_4

    .line 16
    iget-object v11, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0O0:Landroid/graphics/RectF;

    iget v12, v7, Landroid/graphics/PointF;->x:F

    add-float v13, v12, v3

    mul-float v14, v5, v4

    sub-float/2addr v13, v14

    iget v15, v7, Landroid/graphics/PointF;->y:F

    add-float v16, v15, v1

    sub-float v14, v16, v14

    add-float/2addr v12, v3

    add-float/2addr v15, v1

    invoke-virtual {v11, v13, v14, v12, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 17
    iget-object v11, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO00o:Landroid/graphics/Path;

    iget-object v12, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0O0:Landroid/graphics/RectF;

    invoke-virtual {v11, v12, v6, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 18
    :cond_4
    iget-object v6, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO00o:Landroid/graphics/Path;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v3

    add-float/2addr v11, v5

    iget v12, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v1

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_5

    .line 19
    iget-object v6, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0O0:Landroid/graphics/RectF;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float v12, v11, v3

    iget v13, v7, Landroid/graphics/PointF;->y:F

    add-float v14, v13, v1

    mul-float v15, v5, v4

    sub-float/2addr v14, v15

    sub-float/2addr v11, v3

    add-float/2addr v11, v15

    add-float/2addr v13, v1

    invoke-virtual {v6, v12, v14, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20
    iget-object v6, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO00o:Landroid/graphics/Path;

    iget-object v11, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0O0:Landroid/graphics/RectF;

    invoke-virtual {v6, v11, v10, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 21
    :cond_5
    iget-object v6, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO00o:Landroid/graphics/Path;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v3

    iget v12, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v1

    add-float/2addr v12, v5

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_6

    .line 22
    iget-object v6, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0O0:Landroid/graphics/RectF;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float v12, v11, v3

    iget v13, v7, Landroid/graphics/PointF;->y:F

    sub-float v14, v13, v1

    sub-float/2addr v11, v3

    mul-float v15, v5, v4

    add-float/2addr v11, v15

    sub-float/2addr v13, v1

    add-float/2addr v13, v15

    invoke-virtual {v6, v12, v14, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    iget-object v6, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO00o:Landroid/graphics/Path;

    iget-object v11, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0O0:Landroid/graphics/RectF;

    const/high16 v12, 0x43340000    # 180.0f

    invoke-virtual {v6, v11, v12, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 24
    :cond_6
    iget-object v6, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO00o:Landroid/graphics/Path;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v3

    sub-float/2addr v11, v5

    iget v12, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v1

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_7

    .line 25
    iget-object v6, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0O0:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    add-float v11, v8, v3

    mul-float/2addr v5, v4

    sub-float/2addr v11, v5

    iget v4, v7, Landroid/graphics/PointF;->y:F

    sub-float v7, v4, v1

    add-float/2addr v8, v3

    sub-float/2addr v4, v1

    add-float/2addr v4, v5

    invoke-virtual {v6, v11, v7, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 26
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO00o:Landroid/graphics/Path;

    iget-object v3, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO0O0:Landroid/graphics/RectF;

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v1, v3, v4, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 27
    :cond_7
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 28
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;

    iget-object v3, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;->OooO00o(Landroid/graphics/Path;)V

    .line 29
    iput-boolean v2, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooOO0:Z

    .line 30
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOo;->OooO00o:Landroid/graphics/Path;

    return-object v1
.end method
