.class public final LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0o0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public OooO0Oo:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO0Oo:F

    .line 4
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO00o:Ljava/util/List;

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO0OO(F)LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    return-void
.end method

.method private OooO0OO(F)LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    .line 2
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0Oo()F

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-lt v0, v2, :cond_3

    .line 4
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO00o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    .line 5
    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    if-ne v3, v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v1, p1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO00o(F)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO00o:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    return-object p1
.end method


# virtual methods
.method public OooO00o()LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    return-object v0
.end method

.method public OooO00o(F)Z
    .locals 2

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    if-ne v0, v1, :cond_0

    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO0Oo:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    .line 4
    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO0Oo:F

    const/4 p1, 0x0

    return p1
.end method

.method public OooO0O0()F
    .locals 2

    .line 4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO00o()F

    move-result v0

    return v0
.end method

.method public OooO0O0(F)Z
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO00o(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0oO()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO0OO(F)LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    return v1
.end method

.method public OooO0OO()F
    .locals 2

    .line 8
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o0;->OooO00o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0Oo()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
