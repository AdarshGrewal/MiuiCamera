.class public LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;
.super LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;
.source "LottieValueAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public OooO:F

.field public OooO0OO:F

.field public OooO0Oo:Z

.field public OooO0o:F

.field public OooO0o0:J

.field public OooO0oO:I

.field public OooO0oo:F

.field public OooOO0:LOooO00o/OooO00o/OooO00o/OooO0o;

.field public OooOO0O:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0OO:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0Oo:Z

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o0:J

    const/4 v1, 0x0

    .line 5
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    .line 6
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oO:I

    const/high16 v1, -0x31000000

    .line 7
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oo:F

    const/high16 v1, 0x4f000000

    .line 8
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO:F

    .line 9
    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O:Z

    return-void
.end method

.method private OooOOoo()F
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    :cond_0
    const v1, 0x4e6e6b28    # 1.0E9f

    .line 2
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0oO()F

    move-result v0

    div-float/2addr v1, v0

    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0OO:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v1, v0

    return v1
.end method

.method private OooOo0()V
    .locals 4

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oo:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oo:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Frame must be [%f,%f]. It is %f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private OooOo00()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0o()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public OooO()F
    .locals 1

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    return v0
.end method

.method public OooO00o(F)V
    .locals 2

    .line 11
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O()F

    move-result v0

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0()F

    move-result v1

    invoke-static {p1, v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(FFF)F

    move-result p1

    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o0:J

    .line 14
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;->OooO0o0()V

    return-void
.end method

.method public OooO00o(FF)V
    .locals 3

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    .line 16
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO0()F

    move-result v0

    .line 17
    :goto_0
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o0()F

    move-result v1

    .line 18
    :goto_1
    invoke-static {p1, v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(FFF)F

    move-result v2

    iput v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oo:F

    .line 19
    invoke-static {p2, v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(FFF)F

    move-result v0

    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO:F

    .line 20
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    invoke-static {v0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO00o(F)V

    return-void

    .line 21
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO00o(I)V
    .locals 1

    int-to-float p1, p1

    .line 15
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO00o(FF)V

    return-void
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO0o;)V
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oo:F

    .line 4
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO0()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO:F

    .line 5
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o0()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 6
    invoke-virtual {p0, v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO00o(FF)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO0()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o0()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO00o(FF)V

    .line 8
    :goto_1
    iget p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    const/4 v0, 0x0

    .line 9
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    float-to-int p1, p1

    int-to-float p1, p1

    .line 10
    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO00o(F)V

    return-void
.end method

.method public OooO0O0(F)V
    .locals 1

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oo:F

    invoke-virtual {p0, v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO00o(FF)V

    return-void
.end method

.method public OooO0OO(F)V
    .locals 0

    .line 1
    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0OO:F

    return-void
.end method

.method public OooO0OO(Z)V
    .locals 1

    .line 2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O:Z

    :cond_0
    return-void
.end method

.method public OooO0o()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0o;

    const/high16 v0, -0x31000000

    .line 2
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oo:F

    const/high16 v0, 0x4f000000

    .line 3
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO:F

    return-void
.end method

.method public OooO0oO()V
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOOOo()V

    .line 2
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOo00()Z

    move-result v0

    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;->OooO00o(Z)V

    return-void
.end method

.method public OooO0oo()F
    .locals 3

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO0()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o0()F

    move-result v0

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO0()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v1, v0

    return v1
.end method

.method public OooOO0()F
    .locals 3

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO:F

    const/high16 v2, 0x4f000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o0()F

    move-result v1

    :cond_1
    return v1
.end method

.method public OooOO0O()F
    .locals 3

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oo:F

    const/high16 v2, -0x31000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO0()F

    move-result v1

    :cond_1
    return v1
.end method

.method public OooOO0o()F
    .locals 1

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0OO:F

    return v0
.end method

.method public OooOOO()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O:Z

    .line 2
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOo00()Z

    move-result v0

    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;->OooO0O0(Z)V

    .line 3
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO00o(F)V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o0:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oO:I

    .line 6
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOOOO()V

    return-void
.end method

.method public OooOOO0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOOOo()V

    return-void
.end method

.method public OooOOOO()V
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0OO(Z)V

    .line 3
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public OooOOOo()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0OO(Z)V

    return-void
.end method

.method public OooOOo()V
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0o()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0OO(F)V

    return-void
.end method

.method public OooOOo0()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O:Z

    .line 2
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOOOO()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o0:J

    .line 4
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO()F

    move-result v0

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0()F

    move-result v0

    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOo00()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO()F

    move-result v0

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O()F

    move-result v0

    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    :cond_1
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;->OooO00o()V

    .line 2
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOOOo()V

    return-void
.end method

.method public doFrame(J)V
    .locals 6

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOOOO()V

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "LottieValueAnimator#doFrame"

    .line 3
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 4
    iget-wide v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o0:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    sub-long v3, p1, v1

    .line 5
    :goto_0
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOOoo()F

    move-result v1

    long-to-float v2, v3

    div-float/2addr v2, v1

    .line 6
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOo00()Z

    move-result v3

    if-eqz v3, :cond_2

    neg-float v2, v2

    :cond_2
    add-float/2addr v1, v2

    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    .line 7
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O()F

    move-result v2

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0()F

    move-result v3

    invoke-static {v1, v2, v3}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO0O0(FFF)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 8
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O()F

    move-result v3

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0()F

    move-result v4

    invoke-static {v2, v3, v4}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(FFF)F

    move-result v2

    iput v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    .line 9
    iput-wide p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o0:J

    .line 10
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;->OooO0o0()V

    if-eqz v1, :cond_7

    .line 11
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oO:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 12
    iget p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0OO:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O()F

    move-result p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0()F

    move-result p1

    :goto_1
    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    .line 13
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOOOo()V

    .line 14
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOo00()Z

    move-result p1

    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;->OooO00o(Z)V

    goto :goto_4

    .line 15
    :cond_4
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO00o;->OooO0O0()V

    .line 16
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oO:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oO:I

    .line 17
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 18
    iget-boolean v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0Oo:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0Oo:Z

    .line 19
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOOo()V

    goto :goto_3

    .line 20
    :cond_5
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOo00()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0()F

    move-result v1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O()F

    move-result v1

    :goto_2
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    .line 21
    :goto_3
    iput-wide p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o0:J

    .line 22
    :cond_7
    :goto_4
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOo0()V

    .line 23
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    :cond_8
    :goto_5
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 3

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0()F

    move-result v0

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0()F

    move-result v1

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O()F

    move-result v2

    :goto_0
    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0

    .line 4
    :cond_1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0o:F

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0()F

    move-result v1

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O()F

    move-result v2

    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0oo()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0:LOooO00o/OooO00o/OooO00o/OooO0o;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0OO()F

    move-result v0

    float-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOO0O:Z

    return v0
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2
    iget-boolean p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0Oo:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooO0Oo:Z

    .line 4
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0o0;->OooOOo()V

    :cond_0
    return-void
.end method
