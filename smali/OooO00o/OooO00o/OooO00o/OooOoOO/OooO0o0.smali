.class public LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o0;
.super LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o;
.source "LottieInterpolatedPointValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO0oO:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o0;->OooO0oO:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;)V

    .line 4
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o0;->OooO0oO:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 3

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o0;->OooO0oO:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    .line 3
    invoke-static {v1, v2, p3}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO0OO(FFF)F

    move-result v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 4
    invoke-static {p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO0OO(FFF)F

    move-result p1

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 6
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o0;->OooO0oO:Landroid/graphics/PointF;

    return-object p1
.end method

.method public bridge synthetic OooO00o(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/PointF;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o0;->OooO00o(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
