.class public abstract LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0o;
.super LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;
.source "LottieInterpolatedValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final OooO0Oo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final OooO0o:Landroid/view/animation/Interpolator;

.field public final OooO0o0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {p0, p1, p2, v0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0o;->OooO0Oo:Ljava/lang/Object;

    iput-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0o;->OooO0o0:Ljava/lang/Object;

    iput-object p3, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0o;->OooO0o:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0o;->OooO0o:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;->OooO0o0()F

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0o;->OooO0Oo:Ljava/lang/Object;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0o;->OooO0o0:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p1}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0o;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract OooO00o(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;F)TT;"
        }
    .end annotation
.end method
