.class public LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;
.super Ljava/lang/Object;
.source "EllipseContent.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOO0O;


# static fields
.field public static final OooO:F = 0.55228f


# instance fields
.field public final OooO00o:Landroid/graphics/Path;

.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:LOooO00o/OooO00o/OooO00o/OooO0oo;

.field public final OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO00o;

.field public final OooO0o0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;

.field public OooO0oo:Z


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO00o;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    .line 3
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;

    invoke-direct {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;

    .line 4
    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO00o;->OooO00o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0O0:Ljava/lang/String;

    .line 5
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooO0oo;

    .line 6
    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO00o;->OooO0OO()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 7
    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO00o;->OooO0O0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO0;

    move-result-object p1

    invoke-interface {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0o0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 8
    iput-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO00o;

    .line 9
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p2, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 10
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0o0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p2, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 11
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 12
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0o0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    return-void
.end method

.method private OooO0O0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0oo:Z

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0O0()V

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

    .line 7
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

    .line 8
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooO0oO:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    .line 9
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooOO0:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 11
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0o0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    :cond_1
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

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0o0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    move-result-object v1

    sget-object v2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;

    invoke-virtual {v1, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;)V

    .line 6
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
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0oo:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    return-object v1

    .line 3
    :cond_0
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO00o;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO00o;->OooO0Oo()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    iput-boolean v2, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0oo:Z

    .line 6
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    return-object v1

    .line 7
    :cond_1
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

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

    const v4, 0x3f0d6239    # 0.55228f

    mul-float v12, v3, v4

    mul-float/2addr v4, v1

    .line 10
    iget-object v5, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 11
    iget-object v5, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO00o;

    invoke-virtual {v5}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO00o;->OooO0o0()Z

    move-result v5

    const/4 v13, 0x0

    if-eqz v5, :cond_2

    .line 12
    iget-object v5, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    neg-float v11, v1

    invoke-virtual {v5, v13, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 13
    iget-object v14, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    sub-float v8, v13, v12

    neg-float v6, v3

    sub-float v21, v13, v4

    const/16 v20, 0x0

    move v15, v8

    move/from16 v16, v11

    move/from16 v17, v6

    move/from16 v18, v21

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 14
    iget-object v5, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v7, v4

    move v9, v1

    move v14, v11

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 15
    iget-object v5, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    add-float/2addr v12, v13

    const/4 v11, 0x0

    move v6, v12

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 16
    iget-object v5, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    const/4 v10, 0x0

    move v6, v3

    move/from16 v7, v21

    move v8, v12

    move v9, v14

    move v11, v14

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v5, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    neg-float v15, v1

    invoke-virtual {v5, v13, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 18
    iget-object v5, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    add-float v14, v12, v13

    sub-float v16, v13, v4

    const/4 v11, 0x0

    move v6, v14

    move v7, v15

    move v8, v3

    move/from16 v9, v16

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 19
    iget-object v5, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v6, v3

    move v7, v4

    move v8, v14

    move v9, v1

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 20
    iget-object v5, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    sub-float v17, v13, v12

    neg-float v3, v3

    const/4 v11, 0x0

    move/from16 v6, v17

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 21
    iget-object v14, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    const/16 v19, 0x0

    move v1, v15

    move v15, v3

    move/from16 v18, v1

    move/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 22
    :goto_0
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0o0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 23
    iget-object v3, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 24
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 25
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;

    iget-object v3, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;->OooO00o(Landroid/graphics/Path;)V

    .line 26
    iput-boolean v2, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO0oo:Z

    .line 27
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Path;

    return-object v1
.end method
