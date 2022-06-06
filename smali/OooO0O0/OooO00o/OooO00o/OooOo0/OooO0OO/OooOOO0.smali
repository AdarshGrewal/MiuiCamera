.class public LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOO0;
.super LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
.source "SplitDimensionPathKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO:Landroid/graphics/PointF;

.field public final OooOO0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final OooOO0O:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;-><init>(Ljava/util/List;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOO0;->OooO:Landroid/graphics/PointF;

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOO0;->OooOO0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    iput-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOO0;->OooOO0O:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0()F

    move-result p1

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOO0;->OooO00o(F)V

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;F)Landroid/graphics/PointF;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOO0;->OooO:Landroid/graphics/PointF;

    return-object p1
.end method

.method public bridge synthetic OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOO0;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public OooO00o(F)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOO0;->OooOO0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(F)V

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOO0;->OooOO0O:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(F)V

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOO0;->OooO:Landroid/graphics/PointF;

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOO0;->OooOO0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOO0;->OooOO0O:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {v1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;

    invoke-interface {v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;->OooO00o()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO0o()Landroid/graphics/PointF;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOO0;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooO0o()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOO0;->OooO0o()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
