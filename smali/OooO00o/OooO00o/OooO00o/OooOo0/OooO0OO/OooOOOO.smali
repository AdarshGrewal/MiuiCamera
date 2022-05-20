.class public LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;
.super Ljava/lang/Object;
.source "TransformKeyframeAnimation.java"


# instance fields
.field public OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO00o:Landroid/graphics/Matrix;

.field public final OooO0O0:Landroid/graphics/Matrix;

.field public final OooO0OO:Landroid/graphics/Matrix;

.field public final OooO0Oo:Landroid/graphics/Matrix;

.field public OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0o0:[F

.field public OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;",
            ">;"
        }
    .end annotation
.end field

.field public OooOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

.field public OooOO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

.field public OooOOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public OooOOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o:Landroid/graphics/Matrix;

    .line 3
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO0O0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO0O0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v0

    :goto_0
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 4
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO0o0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO0;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO0o0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO0;

    move-result-object v0

    invoke-interface {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v0

    :goto_1
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 5
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO0oO()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oO;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO0oO()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oO;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oO;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v0

    :goto_2
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 6
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO0o()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO0o()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v0

    :goto_3
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 7
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO0oo()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO0oo()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    :goto_4
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    if-eqz v0, :cond_5

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0O0:Landroid/graphics/Matrix;

    .line 9
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0OO:Landroid/graphics/Matrix;

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0Oo:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 11
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o0:[F

    goto :goto_5

    .line 12
    :cond_5
    iput-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0O0:Landroid/graphics/Matrix;

    .line 13
    iput-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0OO:Landroid/graphics/Matrix;

    .line 14
    iput-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0Oo:Landroid/graphics/Matrix;

    .line 15
    iput-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o0:[F

    .line 16
    :goto_5
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    :goto_6
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    .line 17
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO0Oo()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO0Oo()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 19
    :cond_7
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooOO0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 20
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooOO0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    goto :goto_7

    .line 21
    :cond_8
    iput-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 22
    :goto_7
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO0OO()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 23
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO0OO()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    goto :goto_8

    .line 24
    :cond_9
    iput-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    :goto_8
    return-void
.end method

.method private OooO0o0()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 1
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o0:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    return-object v0
.end method

.method public OooO00o(F)Landroid/graphics/Matrix;
    .locals 9

    .line 29
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 30
    :goto_0
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;

    .line 31
    :goto_1
    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2

    .line 32
    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o:Landroid/graphics/Matrix;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    if-eqz v2, :cond_3

    .line 33
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o:Landroid/graphics/Matrix;

    .line 34
    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO00o()F

    move-result v3

    float-to-double v3, v3

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 35
    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO0O0()F

    move-result v2

    float-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 36
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 37
    :cond_3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_7

    .line 38
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 39
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 40
    :goto_2
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o:Landroid/graphics/Matrix;

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    if-nez v1, :cond_5

    move v3, p1

    goto :goto_3

    :cond_5
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget p1, v1, Landroid/graphics/PointF;->y:F

    :goto_4
    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 41
    :cond_7
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o:Landroid/graphics/Matrix;

    return-object p1
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V
    .locals 1

    .line 10
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 12
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 14
    :cond_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 16
    :cond_2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 18
    :cond_3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 20
    :cond_4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 22
    :cond_5
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 24
    :cond_6
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 26
    :cond_7
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    if-eqz v0, :cond_8

    .line 27
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    :cond_8
    return-void
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;)V
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 5
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 6
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 7
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 8
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    invoke-virtual {p1, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 9
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    invoke-virtual {p1, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    return-void
.end method

.method public OooO00o(Ljava/lang/Object;LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0<",
            "TT;>;)Z"
        }
    .end annotation

    .line 42
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooO0o0:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 43
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-nez p1, :cond_0

    .line 44
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;-><init>(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;Ljava/lang/Object;)V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    goto/16 :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    goto/16 :goto_0

    .line 46
    :cond_1
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooO0o:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_3

    .line 47
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-nez p1, :cond_2

    .line 48
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;-><init>(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;Ljava/lang/Object;)V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    goto/16 :goto_0

    .line 49
    :cond_2
    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    goto/16 :goto_0

    .line 50
    :cond_3
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;

    if-ne p1, v0, :cond_5

    .line 51
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-nez p1, :cond_4

    .line 52
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;

    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;

    invoke-direct {v0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;-><init>()V

    invoke-direct {p1, p2, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;-><init>(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;Ljava/lang/Object;)V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    goto/16 :goto_0

    .line 53
    :cond_4
    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    goto/16 :goto_0

    .line 54
    :cond_5
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooOO0o:Ljava/lang/Float;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    .line 55
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-nez p1, :cond_6

    .line 56
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;-><init>(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;Ljava/lang/Object;)V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    goto/16 :goto_0

    .line 57
    :cond_6
    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    goto/16 :goto_0

    .line 58
    :cond_7
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooO0OO:Ljava/lang/Integer;

    const/16 v2, 0x64

    if-ne p1, v0, :cond_9

    .line 59
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-nez p1, :cond_8

    .line 60
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;-><init>(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;Ljava/lang/Object;)V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    goto/16 :goto_0

    .line 61
    :cond_8
    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    goto/16 :goto_0

    .line 62
    :cond_9
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooOoO0:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_b

    if-nez v0, :cond_a

    .line 63
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;-><init>(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;Ljava/lang/Object;)V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    goto :goto_0

    .line 64
    :cond_a
    invoke-virtual {v0, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    goto :goto_0

    .line 65
    :cond_b
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooOoO:Ljava/lang/Float;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_d

    if-nez v0, :cond_c

    .line 66
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;-><init>(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;Ljava/lang/Object;)V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    goto :goto_0

    .line 67
    :cond_c
    invoke-virtual {v0, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    goto :goto_0

    .line 68
    :cond_d
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooOOO0:Ljava/lang/Float;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    if-eqz v0, :cond_f

    if-nez v0, :cond_e

    .line 69
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;-><init>(Ljava/util/List;)V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    .line 70
    :cond_e
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    goto :goto_0

    .line 71
    :cond_f
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooOOO:Ljava/lang/Float;

    if-ne p1, v0, :cond_11

    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    if-eqz p1, :cond_11

    if-nez p1, :cond_10

    .line 72
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;-><init>(Ljava/util/List;)V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    .line 73
    :cond_10
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public OooO0O0()Landroid/graphics/Matrix;
    .locals 13

    .line 19
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 20
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 22
    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    .line 23
    :cond_0
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o:Landroid/graphics/Matrix;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 24
    :cond_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_3

    .line 25
    instance-of v2, v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;

    if-eqz v2, :cond_2

    .line 26
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 27
    :cond_2
    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;->OooOO0()F

    move-result v0

    :goto_0
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    .line 28
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 29
    :cond_3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    .line 30
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    const/high16 v3, 0x42b40000    # 90.0f

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;->OooOO0()F

    move-result v0

    neg-float v0, v0

    add-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 31
    :goto_1
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    if-nez v4, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;->OooOO0()F

    move-result v4

    neg-float v4, v4

    add-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 32
    :goto_2
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    invoke-virtual {v4}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;->OooOO0()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 33
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o0()V

    .line 34
    iget-object v5, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o0:[F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v7, 0x1

    .line 35
    aput v3, v5, v7

    neg-float v8, v3

    const/4 v9, 0x3

    .line 36
    aput v8, v5, v9

    const/4 v10, 0x4

    .line 37
    aput v0, v5, v10

    const/16 v11, 0x8

    .line 38
    aput v2, v5, v11

    .line 39
    iget-object v12, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0O0:Landroid/graphics/Matrix;

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 40
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o0()V

    .line 41
    iget-object v5, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o0:[F

    aput v2, v5, v6

    .line 42
    aput v4, v5, v9

    .line 43
    aput v2, v5, v10

    .line 44
    aput v2, v5, v11

    .line 45
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 46
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o0()V

    .line 47
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o0:[F

    aput v0, v4, v6

    .line 48
    aput v8, v4, v7

    .line 49
    aput v3, v4, v9

    .line 50
    aput v0, v4, v10

    .line 51
    aput v2, v4, v11

    .line 52
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0Oo:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 53
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0OO:Landroid/graphics/Matrix;

    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0O0:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 54
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0Oo:Landroid/graphics/Matrix;

    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 55
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o:Landroid/graphics/Matrix;

    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0Oo:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 56
    :cond_6
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_8

    .line 57
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;

    .line 58
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO00o()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_7

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO0O0()F

    move-result v3

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_8

    .line 59
    :cond_7
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO00o()F

    move-result v3

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO0O0()F

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 60
    :cond_8
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_a

    .line 61
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 62
    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_9

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_a

    .line 63
    :cond_9
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 64
    :cond_a
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public OooO0O0(F)V
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(F)V

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(F)V

    .line 5
    :cond_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(F)V

    .line 7
    :cond_2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(F)V

    .line 9
    :cond_3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(F)V

    .line 11
    :cond_4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0oo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(F)V

    .line 13
    :cond_5
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(F)V

    .line 15
    :cond_6
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(F)V

    .line 17
    :cond_7
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    if-eqz v0, :cond_8

    .line 18
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(F)V

    :cond_8
    return-void
.end method

.method public OooO0OO()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    return-object v0
.end method

.method public OooO0Oo()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooOOO0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    return-object v0
.end method
