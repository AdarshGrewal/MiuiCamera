.class public LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;
.super LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;
.source "CompositionLayer.java"


# instance fields
.field public OooOoOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final OooOoo:Landroid/graphics/RectF;

.field public final OooOoo0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;",
            ">;"
        }
    .end annotation
.end field

.field public final OooOooO:Landroid/graphics/RectF;

.field public OooOooo:Landroid/graphics/Paint;

.field public Oooo000:Ljava/lang/Boolean;

.field public Oooo00O:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;Ljava/util/List;LOooO00o/OooO00o/OooO00o/OooO0o;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooO0oo;",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;",
            ">;",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo0:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOooO:Landroid/graphics/RectF;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOooo:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooOOoo()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object p2

    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 8
    invoke-virtual {p0, p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 9
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p2, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    goto :goto_0

    .line 10
    :cond_0
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 11
    :goto_0
    new-instance p2, Landroidx/collection/LongSparseArray;

    .line 12
    invoke-virtual {p4}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, v1}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 13
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move-object v3, v0

    :goto_1
    const/4 v4, 0x0

    if-ltz v1, :cond_4

    .line 14
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    .line 15
    invoke-static {v5, p1, p4}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {v6}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    move-result-object v7

    invoke-virtual {v7}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO0O0()J

    move-result-wide v7

    invoke-virtual {p2, v7, v8, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz v3, :cond_2

    .line 17
    invoke-virtual {v3, v6}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;)V

    move-object v3, v0

    goto :goto_2

    .line 18
    :cond_2
    iget-object v7, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo0:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19
    sget-object v4, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0$OooO00o;->OooO00o:[I

    invoke-virtual {v5}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO0o()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo$OooO0O0;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v6

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 20
    :cond_4
    :goto_3
    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    if-ge v4, p1, :cond_7

    .line 21
    invoke-virtual {p2, v4}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide p3

    .line 22
    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    if-nez p1, :cond_5

    goto :goto_4

    .line 23
    :cond_5
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    move-result-object p3

    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO0oo()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    if-eqz p3, :cond_6

    .line 24
    invoke-virtual {p1, p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;)V

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method public OooO()Z
    .locals 4

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->Oooo00O:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 3
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    .line 4
    instance-of v3, v2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0o;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->Oooo00O:Ljava/lang/Boolean;

    return v1

    .line 7
    :cond_0
    instance-of v3, v2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    if-eqz v3, :cond_1

    check-cast v2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooO()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->Oooo00O:Ljava/lang/Boolean;

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->Oooo00O:Ljava/lang/Boolean;

    .line 10
    :cond_3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->Oooo00O:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public OooO00o(F)V
    .locals 3

    .line 6
    invoke-super {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(F)V

    .line 7
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_0

    .line 8
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOO:LOooO00o/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0o()LOooO00o/OooO00o/OooO00o/OooO0o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0Oo()F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    add-float/2addr p1, v0

    .line 9
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO00o()LOooO00o/OooO00o/OooO00o/OooO0o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO0()F

    move-result v0

    .line 10
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO00o()LOooO00o/OooO00o/OooO00o/OooO0o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0oO()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    div-float p1, v1, p1

    .line 11
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooOo00()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooOo00()F

    move-result v0

    div-float/2addr p1, v0

    .line 13
    :cond_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooOOOo()F

    move-result v0

    sub-float/2addr p1, v0

    .line 15
    :cond_2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 16
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    invoke-virtual {v1, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_0

    .line 3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo0:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo:Landroid/graphics/RectF;

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOO0:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 5
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
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

    .line 17
    invoke-super {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Ljava/lang/Object;LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    .line 18
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooOoOO:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;

    invoke-direct {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;-><init>(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 21
    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public OooO0O0(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;ILjava/util/List;LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;)V
    .locals 2
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

    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 16
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    invoke-virtual {v1, p1, p2, p3, p4}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;ILjava/util/List;LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO0O0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    const-string v0, "CompositionLayer#draw"

    .line 1
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOooO:Landroid/graphics/RectF;

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooOO0()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    invoke-virtual {v3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOooO:Landroid/graphics/RectF;

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOO:LOooO00o/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOo0()Z

    move-result v1

    const/16 v2, 0xff

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    if-eq p3, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOooo:Landroid/graphics/Paint;

    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOooO:Landroid/graphics/RectF;

    iget-object v5, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOooo:Landroid/graphics/Paint;

    invoke-static {p1, v4, v5}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_1
    if-eqz v1, :cond_2

    move p3, v2

    .line 8
    :cond_2
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_2
    if-ltz v1, :cond_5

    .line 9
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOooO:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOooO:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    if-eqz v2, :cond_4

    .line 11
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    .line 12
    invoke-virtual {v2, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 13
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 14
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method public OooOO0()Z
    .locals 3

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->Oooo000:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0Oo()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->Oooo000:Ljava/lang/Boolean;

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 5
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOoo0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0Oo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->Oooo000:Ljava/lang/Boolean;

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->Oooo000:Ljava/lang/Boolean;

    .line 8
    :cond_3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->Oooo000:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
