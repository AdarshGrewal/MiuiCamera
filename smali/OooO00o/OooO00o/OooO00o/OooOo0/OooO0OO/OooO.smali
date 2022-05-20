.class public LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO;
.super LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o;
.source "PathKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO:Landroid/graphics/PointF;

.field public final OooOO0:[F

.field public OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oo;

.field public OooOO0o:Landroid/graphics/PathMeasure;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO;->OooO:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO;->OooOO0:[F

    .line 4
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO;->OooOO0o:Landroid/graphics/PathMeasure;

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;F)Landroid/graphics/PointF;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 2
    move-object v0, p1

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oo;

    .line 3
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oo;->OooO()Landroid/graphics/Path;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iget-object p1, p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0O0:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    return-object p1

    .line 5
    :cond_0
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0:LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;

    if-eqz v2, :cond_1

    .line 6
    iget v3, v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0o0:F

    iget-object p1, v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0o:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0O0:Ljava/lang/Object;

    iget-object v6, v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0OO:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0Oo()F

    move-result v7

    .line 8
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0()F

    move-result v9

    move v8, p2

    .line 9
    invoke-virtual/range {v2 .. v9}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO00o(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_1

    return-object p1

    .line 10
    :cond_1
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oo;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    .line 11
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO;->OooOO0o:Landroid/graphics/PathMeasure;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 12
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oo;

    .line 13
    :cond_2
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO;->OooOO0o:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    mul-float/2addr p2, v0

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO;->OooOO0:[F

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 14
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO;->OooO:Landroid/graphics/PointF;

    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO;->OooOO0:[F

    aget v0, p2, v2

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 15
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO;->OooO:Landroid/graphics/PointF;

    return-object p1
.end method

.method public bridge synthetic OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
