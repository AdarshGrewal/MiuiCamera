.class public LOooO00o/OooO00o/OooO00o/OooO0oo;
.super Landroid/graphics/drawable/Drawable;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOo;,
        LOooO00o/OooO00o/OooO00o/OooO0oo$OooOo00;,
        LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOoo;
    }
.end annotation


# static fields
.field public static final OooOo:Ljava/lang/String;

.field public static final OooOoO:I = 0x2

.field public static final OooOoO0:I = 0x1

.field public static final OooOoOO:I = -0x1


# instance fields
.field public final OooO:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public final OooO00o:Landroid/graphics/Matrix;

.field public OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

.field public final OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

.field public OooO0Oo:F

.field public OooO0o:Z

.field public OooO0o0:Z

.field public final OooO0oO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOo;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0oo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOoo;",
            ">;"
        }
    .end annotation
.end field

.field public OooOO0:Landroid/widget/ImageView$ScaleType;

.field public OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;

.field public OooOO0o:Ljava/lang/String;

.field public OooOOO:LOooO00o/OooO00o/OooO00o/OooOo0O/OooO00o;

.field public OooOOO0:LOooO00o/OooO00o/OooO00o/OooO0Oo;

.field public OooOOOO:LOooO00o/OooO00o/OooO00o/OooO0OO;

.field public OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo00;

.field public OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

.field public OooOOo0:Z

.field public OooOOoo:I

.field public OooOo0:Z

.field public OooOo00:Z

.field public OooOo0O:Z

.field public OooOo0o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LOooO00o/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO00o:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-direct {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0Oo:F

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0o0:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0o:Z

    .line 7
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oO:Ljava/util/Set;

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    .line 9
    new-instance v2, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO;

    invoke-direct {v2, p0}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;)V

    iput-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v3, 0xff

    .line 10
    iput v3, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOoo:I

    .line 11
    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOo0O:Z

    .line 12
    iput-boolean v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOo0o:Z

    .line 13
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0, v2}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public static synthetic OooO00o(LOooO00o/OooO00o/OooO00o/OooO0oo;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;
    .locals 0

    .line 1
    iget-object p0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    return-object p0
.end method

.method private OooO00o(Landroid/graphics/Canvas;)V
    .locals 2

    .line 24
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOO0:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_0

    .line 25
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public static synthetic OooO0O0(LOooO00o/OooO00o/OooO00o/OooO0oo;)LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;
    .locals 0

    .line 1
    iget-object p0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    return-object p0
.end method

.method private OooO0O0(Landroid/graphics/Canvas;)V
    .locals 8

    .line 19
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v3}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO00o()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 22
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v4}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO00o()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 23
    iget-boolean v4, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOo0O:Z

    if-eqz v4, :cond_2

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    div-float v6, v5, v4

    div-float/2addr v2, v6

    div-float/2addr v3, v6

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    cmpl-float v5, v6, v5

    if-lez v5, :cond_2

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 26
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    .line 27
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    mul-float v7, v5, v4

    mul-float/2addr v4, v1

    sub-float/2addr v5, v7

    sub-float/2addr v1, v4

    .line 28
    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 29
    invoke-virtual {p1, v6, v6, v7, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 30
    :cond_2
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 31
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 32
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO00o:Landroid/graphics/Matrix;

    iget v3, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOoo:I

    invoke-virtual {v1, p1, v2, v3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v0, :cond_3

    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method private OooO0OO(Landroid/graphics/Canvas;)V
    .locals 8

    .line 16
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    if-nez v0, :cond_0

    return-void

    .line 17
    :cond_0
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0Oo:F

    .line 18
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0Oo(Landroid/graphics/Canvas;)F

    move-result v1

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    .line 19
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0Oo:F

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    move v0, v3

    :goto_0
    const/4 v2, -0x1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 21
    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v3}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO00o()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 22
    iget-object v5, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v5}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO00o()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    mul-float v4, v3, v1

    mul-float v6, v5, v1

    .line 23
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOOO()F

    move-result v7

    mul-float/2addr v7, v3

    sub-float/2addr v7, v4

    .line 24
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOOO()F

    move-result v3

    mul-float/2addr v3, v5

    sub-float/2addr v3, v6

    .line 25
    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 26
    invoke-virtual {p1, v0, v0, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 27
    :cond_2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 28
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO00o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 29
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO00o:Landroid/graphics/Matrix;

    iget v3, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOoo:I

    invoke-virtual {v0, p1, v1, v3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v2, :cond_3

    .line 30
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method private OooO0Oo(Landroid/graphics/Canvas;)F
    .locals 2

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO00o()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO00o()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 16
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private OooOooo()V
    .locals 4

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    .line 2
    invoke-static {v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOOoo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    move-result-object v1

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-direct {v0, p0, v1, v2, v3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;Ljava/util/List;LOooO00o/OooO00o/OooO00o/OooO0o;)V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    return-void
.end method

.method private Oooo0()V
    .locals 3

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOOO()F

    move-result v0

    .line 3
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO00o()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    .line 4
    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO00o()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private Oooo000()Landroid/content/Context;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private Oooo00O()LOooO00o/OooO00o/OooO00o/OooOo0O/OooO00o;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOO:LOooO00o/OooO00o/OooO00o/OooOo0O/OooO00o;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0O/OooO00o;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooO0OO;

    invoke-direct {v0, v1, v2}, LOooO00o/OooO00o/OooO00o/OooOo0O/OooO00o;-><init>(Landroid/graphics/drawable/Drawable$Callback;LOooO00o/OooO00o/OooO00o/OooO0OO;)V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOO:LOooO00o/OooO00o/OooO00o/OooOo0O/OooO00o;

    .line 4
    :cond_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOO:LOooO00o/OooO00o/OooO00o/OooOo0O/OooO00o;

    return-object v0
.end method

.method private Oooo00o()LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;

    if-eqz v0, :cond_1

    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->Oooo000()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO00o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iput-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;

    .line 4
    :cond_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOO0o:Ljava/lang/String;

    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOO0:LOooO00o/OooO00o/OooO00o/OooO0Oo;

    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    .line 6
    invoke-virtual {v4}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0oo()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;LOooO00o/OooO00o/OooO00o/OooO0Oo;Ljava/util/Map;)V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;

    .line 7
    :cond_2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;

    return-object v0
.end method


# virtual methods
.method public OooO()F
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0()F

    move-result v0

    return v0
.end method

.method public OooO00o(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 83
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->Oooo00o()LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO00o(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public OooO00o(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 79
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->Oooo00o()LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    .line 80
    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO0O0(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 81
    :cond_0
    invoke-virtual {v0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO00o(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 82
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->invalidateSelf()V

    return-object p1
.end method

.method public OooO00o(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    .line 85
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->Oooo00O()LOooO00o/OooO00o/OooO00o/OooOo0O/OooO00o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0O/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            ")",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    if-nez v0, :cond_0

    const-string p1, "Cannot resolve KeyPath. Composition is not set yet."

    .line 63
    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO0O0(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    new-instance v2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {v2, v4}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3, v0, v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;ILjava/util/List;LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;)V

    return-object v0
.end method

.method public OooO00o()V
    .locals 1

    .line 60
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->cancel()V

    return-void
.end method

.method public OooO00o(F)V
    .locals 2

    .line 27
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOOO;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOOO;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 29
    :cond_0
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO0()F

    move-result v0

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o0()F

    move-result v1

    invoke-static {v0, v1, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO0OO(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0(I)V

    return-void
.end method

.method public OooO00o(FF)V
    .locals 2

    .line 42
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO0Oo;

    invoke-direct {v1, p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO0Oo;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 44
    :cond_0
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO0()F

    move-result v0

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o0()F

    move-result v1

    invoke-static {v0, v1, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO0OO(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    .line 45
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO0()F

    move-result v0

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o0()F

    move-result v1

    invoke-static {v0, v1, p2}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO0OO(FFF)F

    move-result p2

    float-to-int p2, p2

    .line 46
    invoke-virtual {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO00o(II)V

    return-void
.end method

.method public OooO00o(I)V
    .locals 2

    .line 49
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO0o0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO0o0;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO00o(F)V

    return-void
.end method

.method public OooO00o(II)V
    .locals 2

    .line 39
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO0OO;

    invoke-direct {v1, p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO0OO;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    int-to-float p1, p1

    int-to-float p2, p2

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO00o(FF)V

    return-void
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO0OO;)V
    .locals 1

    .line 56
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooO0OO;

    .line 57
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOO:LOooO00o/OooO00o/OooO00o/OooOo0O/OooO00o;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0O/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO0OO;)V

    :cond_0
    return-void
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO0Oo;)V
    .locals 1

    .line 53
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOO0:LOooO00o/OooO00o/OooO00o/OooO0Oo;

    .line 54
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO0Oo;)V

    :cond_0
    return-void
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOo00;)V
    .locals 0

    .line 59
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo00;

    return-void
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            "TT;",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0<",
            "TT;>;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO0oO;

    invoke-direct {v1, p0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO0oO;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o;

    move-result-object p1

    invoke-interface {p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o;->OooO00o(Ljava/lang/Object;LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 72
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 73
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o;

    move-result-object v2

    invoke-interface {v2, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o;->OooO00o(Ljava/lang/Object;LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v1, p1

    :goto_1
    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->invalidateSelf()V

    .line 76
    sget-object p1, LOooO00o/OooO00o/OooO00o/OooOOO0;->OooOoOO:Ljava/lang/Float;

    if-ne p2, p1, :cond_3

    .line 77
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOO0o()F

    move-result p1

    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO(F)V

    :cond_3
    return-void
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            "TT;",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0o<",
            "TT;>;)V"
        }
    .end annotation

    .line 78
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO0oo;

    invoke-direct {v0, p0, p3}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO0oo;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0o;)V

    invoke-virtual {p0, p1, p2, v0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    return-void
.end method

.method public OooO00o(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 48
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public OooO00o(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 47
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public OooO00o(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 87
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOO0:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public OooO00o(Ljava/lang/Boolean;)V
    .locals 0

    .line 52
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0o0:Z

    return-void
.end method

.method public OooO00o(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 30
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO0O0;

    invoke-direct {v1, p0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO0O0;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 32
    :cond_0
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0O0(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;

    move-result-object v0

    const-string v1, "."

    const-string v2, "Cannot find marker with name "

    if-eqz v0, :cond_3

    .line 33
    iget p1, v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;->OooO0O0:F

    float-to-int p1, p1

    .line 34
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v0, p2}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0O0(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 35
    iget p2, v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;->OooO0O0:F

    if-eqz p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 36
    invoke-virtual {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO00o(II)V

    return-void

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public OooO00o(Z)V
    .locals 2

    .line 2
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo0:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    const-string p1, "Merge paths are not supported pre-Kit Kat."

    .line 4
    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO0O0(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iput-boolean p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo0:Z

    .line 6
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-eqz p1, :cond_2

    .line 7
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOooo()V

    :cond_2
    return-void
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO0o;)Z
    .locals 2

    .line 8
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 9
    :cond_0
    iput-boolean v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOo0o:Z

    .line 10
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0()V

    .line 11
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    .line 12
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOooo()V

    .line 13
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO0o;)V

    .line 14
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO(F)V

    .line 15
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0Oo:F

    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0Oo(F)V

    .line 16
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->Oooo0()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOoo;

    .line 20
    invoke-interface {v1, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOoo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO0o;)V

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOo00:Z

    invoke-virtual {p1, v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0O0(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public OooO0O0()V
    .locals 1

    .line 3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    .line 6
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    .line 7
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOO0O:LOooO00o/OooO00o/OooO00o/OooOo0O/OooO0O0;

    .line 8
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o()V

    .line 9
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->invalidateSelf()V

    return-void
.end method

.method public OooO0O0(F)V
    .locals 2

    .line 10
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOO0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOO0;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO0()F

    move-result v0

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o0()F

    move-result v1

    invoke-static {v0, v1, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO0OO(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO(I)V

    return-void
.end method

.method public OooO0O0(I)V
    .locals 2

    .line 13
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOO;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOO;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    int-to-float p1, p1

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0O0(F)V

    return-void
.end method

.method public OooO0O0(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 17
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public OooO0O0(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 16
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOO0o:Ljava/lang/String;

    return-void
.end method

.method public OooO0O0(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public OooO0OO()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOo0O:Z

    return-void
.end method

.method public OooO0OO(F)V
    .locals 4

    .line 11
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO0o;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO0o;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "Drawable#setProgress"

    .line 13
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO0()F

    move-result v2

    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v3}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o0()F

    move-result v3

    invoke-static {v2, v3, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO0OO(FFF)F

    move-result p1

    invoke-virtual {v1, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO00o(F)V

    .line 15
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method public OooO0OO(I)V
    .locals 2

    .line 3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOO0o;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOO0o;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO00o(I)V

    return-void
.end method

.method public OooO0OO(Ljava/lang/String;)V
    .locals 3

    .line 6
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOo0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOo0;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0O0(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget p1, v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;->OooO0O0:F

    iget v0, v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;->OooO0OO:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0(I)V

    return-void

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0OO(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOo0:Z

    return-void
.end method

.method public OooO0Oo(F)V
    .locals 0

    .line 12
    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0Oo:F

    .line 13
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->Oooo0()V

    return-void
.end method

.method public OooO0Oo(I)V
    .locals 1

    .line 11
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public OooO0Oo(Ljava/lang/String;)V
    .locals 3

    .line 5
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO00o;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooO00o;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0O0(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget p1, v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;->OooO0O0:F

    float-to-int p1, p1

    .line 9
    iget v0, v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;->OooO0OO:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO00o(II)V

    return-void

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0Oo(Z)V
    .locals 1

    .line 2
    iput-boolean p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOo00:Z

    .line 3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0O0(Z)V

    :cond_0
    return-void
.end method

.method public OooO0Oo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo0:Z

    return v0
.end method

.method public OooO0o()LOooO00o/OooO00o/OooO00o/OooO0o;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    return-object v0
.end method

.method public OooO0o0()V
    .locals 1

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oO()V

    return-void
.end method

.method public OooO0o0(F)V
    .locals 1

    .line 9
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0OO(F)V

    return-void
.end method

.method public OooO0o0(I)V
    .locals 1

    .line 10
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->setRepeatMode(I)V

    return-void
.end method

.method public OooO0o0(Ljava/lang/String;)V
    .locals 3

    .line 4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOOo;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOOo;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0O0(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget p1, v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;->OooO0O0:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO(I)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0o0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0o:Z

    return-void
.end method

.method public OooO0oO()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public OooO0oo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOO0o:Ljava/lang/String;

    return-object v0
.end method

.method public OooOO0()F
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O()F

    move-result v0

    return v0
.end method

.method public OooOO0O()LOooO00o/OooO00o/OooO00o/OooOOo0;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOO0o()LOooO00o/OooO00o/OooO00o/OooOOo0;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public OooOO0o()F
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oo()F

    move-result v0

    return v0
.end method

.method public OooOOO()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public OooOOO0()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public OooOOOO()F
    .locals 1

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0Oo:F

    return v0
.end method

.method public OooOOOo()F
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0o()F

    move-result v0

    return v0
.end method

.method public OooOOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooOOo0()LOooO00o/OooO00o/OooO00o/OooOo00;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo00;

    return-object v0
.end method

.method public OooOOoo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;->OooOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooOo()V
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOOO0()V

    return-void
.end method

.method public OooOo0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOo0:Z

    return v0
.end method

.method public OooOo00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->isRunning()Z

    move-result v0

    return v0
.end method

.method public OooOo0O()Z
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooOo0o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo0:Z

    return v0
.end method

.method public OooOoO()V
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;->removeAllListeners()V

    return-void
.end method

.method public OooOoO0()V
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOO0;

    invoke-direct {v1, p0}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOO0;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0o0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOO0()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOOO()V

    .line 5
    :cond_2
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0o0:Z

    if-nez v0, :cond_4

    .line 6
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOOo()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOO0()F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO00o(I)V

    .line 7
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oO()V

    :cond_4
    return-void
.end method

.method public OooOoOO()V
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;->removeAllUpdateListeners()V

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public OooOoo()V
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOOo()V

    return-void
.end method

.method public OooOoo0()V
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0oo:Ljava/util/ArrayList;

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOO0O;

    invoke-direct {v1, p0}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOO0O;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0o0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOO0()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOOo0()V

    .line 5
    :cond_2
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0o0:Z

    if-nez v0, :cond_4

    .line 6
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOOo()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOO0()F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO00o(I)V

    .line 7
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oO()V

    :cond_4
    return-void
.end method

.method public OooOooO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo00;

    if-nez v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0O0()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOo0o:Z

    const-string v0, "Drawable#draw"

    .line 2
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 3
    iget-boolean v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0o:Z

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO00o(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "Lottie crashed in draw!"

    .line 5
    invoke-static {v1, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO0O0(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO00o(Landroid/graphics/Canvas;)V

    .line 7
    :goto_0
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOoo:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO00o()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOOO()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO00o()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOOO()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOo0o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOo0o:Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOo00()Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOOoo:I

    .line 2
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p1, "Use addColorFilter instead."

    .line 1
    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO0O0(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooOoO0()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0o0()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
