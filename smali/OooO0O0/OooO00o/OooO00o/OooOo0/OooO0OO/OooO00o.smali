.class public abstract LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;,
        LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o;,
        LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0OO;,
        LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;,
        LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0O0:Z

.field public final OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo<",
            "TK;>;"
        }
    .end annotation
.end field

.field public OooO0Oo:F

.field public OooO0o:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0<",
            "TA;>;"
        }
    .end annotation
.end field

.field public OooO0oO:F

.field public OooO0oo:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TK;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0O0:Z

    const/4 v0, 0x0

    iput v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0Oo:F

    const/4 v0, 0x0

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0oO:F

    iput v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0oo:F

    invoke-static {p1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(Ljava/util/List;)LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;

    move-result-object p1

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;

    return-void
.end method

.method private OooO()F
    .locals 2

    iget v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0oO:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;

    invoke-interface {v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;->OooO0OO()F

    move-result v0

    iput v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0oO:F

    :cond_0
    iget v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0oO:F

    return v0
.end method

.method public static OooO00o(Ljava/util/List;)LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TT;>;>;)",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0OO;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0OO;-><init>(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO00o;)V

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o;

    invoke-direct {v0, p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_1
    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;

    invoke-direct {v0, p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public OooO00o()LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TK;>;"
        }
    .end annotation

    const-string v0, "BaseKeyframeAnimation#getCurrentKeyframe"

    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;

    invoke-interface {v1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;->OooO00o()LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;

    move-result-object v1

    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-object v1
.end method

.method public abstract OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method public OooO00o(F)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;

    invoke-interface {v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    invoke-direct {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO()F

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0O0()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0O0()F

    move-result p1

    :cond_2
    :goto_0
    iget v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0Oo:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iput p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0Oo:F

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;

    invoke-interface {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;->OooO0O0(F)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0oO()V

    :cond_4
    return-void
.end method

.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0<",
            "TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    :cond_0
    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    :cond_1
    return-void
.end method

.method public OooO0O0()F
    .locals 2

    iget v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0oo:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;

    invoke-interface {v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;->OooO0O0()F

    move-result v0

    iput v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0oo:F

    :cond_0
    iget v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0oo:F

    return v0
.end method

.method public OooO0OO()F
    .locals 2

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o()LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0oO()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0Oo:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0Oo()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method public OooO0Oo()F
    .locals 3

    iget-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0O0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o()LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0oO()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0Oo:F

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0Oo()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO00o()F

    move-result v2

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0Oo()F

    move-result v0

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method public OooO0o()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0OO()F

    move-result v0

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;

    if-nez v1, :cond_0

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;

    invoke-interface {v1, v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;->OooO00o(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o:Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o()LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o:Ljava/lang/Object;

    return-object v0
.end method

.method public OooO0o0()F
    .locals 1

    iget v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0Oo:F

    return v0
.end method

.method public OooO0oO()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;

    invoke-interface {v1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;->OooO00o()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO0oo()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0O0:Z

    return-void
.end method
