.class public final LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o;
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
    name = "OooO0o"
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
.field public final OooO00o:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public OooO0O0:F


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

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o;->OooO0O0:F

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    return-void
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
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    return-object v0
.end method

.method public OooO00o(F)Z
    .locals 1

    .line 2
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o;->OooO0O0:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o;->OooO0O0:F

    const/4 p1, 0x0

    return p1
.end method

.method public OooO0O0()F
    .locals 1

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO00o()F

    move-result v0

    return v0
.end method

.method public OooO0O0(F)Z
    .locals 0

    .line 1
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0oO()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public OooO0OO()F
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0Oo()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
