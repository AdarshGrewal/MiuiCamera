.class public LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oo;
.super LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;
.source "PathKeyframe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooOOo:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public OooOOo0:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO0o;LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v2, p2, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0O0:Ljava/lang/Object;

    iget-object v3, p2, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0OO:Ljava/lang/Object;

    iget-object v4, p2, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0Oo:Landroid/view/animation/Interpolator;

    iget v5, p2, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0o0:F

    iget-object v6, p2, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0o:Ljava/lang/Float;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;-><init>(LOooO00o/OooO00o/OooO00o/OooO0o;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 2
    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oo;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    .line 3
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oo;->OooO0oo()V

    return-void
.end method


# virtual methods
.method public OooO()Landroid/graphics/Path;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oo;->OooOOo0:Landroid/graphics/Path;

    return-object v0
.end method

.method public OooO0oo()V
    .locals 4

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0OO:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0O0:Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast v1, Landroid/graphics/PointF;

    move-object v2, v0

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 2
    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0OO:Ljava/lang/Object;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0O0:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oo;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    iget-object v3, v2, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooOOO0:Landroid/graphics/PointF;

    iget-object v2, v2, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooOOO:Landroid/graphics/PointF;

    invoke-static {v0, v1, v3, v2}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oo;->OooOOo0:Landroid/graphics/Path;

    :cond_1
    return-void
.end method
