.class public LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO;
.super LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;
.source "LottieRelativePointValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO0Oo:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO;->OooO0Oo:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;-><init>(Ljava/lang/Object;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO;->OooO0Oo:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;)Landroid/graphics/PointF;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO;->OooO0Oo:Landroid/graphics/PointF;

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;->OooO0oO()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;->OooO0O0()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;->OooO0OO()F

    move-result v3

    invoke-static {v1, v2, v3}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO0OO(FFF)F

    move-result v1

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;->OooO0oO()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;->OooO0O0()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;->OooO0OO()F

    move-result v4

    invoke-static {v2, v3, v4}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO0OO(FFF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO;->OooO0O0(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO;->OooO0Oo:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->offset(FF)V

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO;->OooO0Oo:Landroid/graphics/PointF;

    return-object p1
.end method

.method public bridge synthetic OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;)Landroid/graphics/PointF;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO0OO:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Landroid/graphics/PointF;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must provide a static value in the constructor , call setValue, or override getValue."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
