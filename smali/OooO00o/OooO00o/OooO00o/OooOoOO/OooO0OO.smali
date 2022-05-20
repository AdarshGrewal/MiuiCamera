.class public LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0OO;
.super LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o;
.source "LottieInterpolatedFloatValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Float;Ljava/lang/Float;F)Ljava/lang/Float;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO0OO(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO00o(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0OO;->OooO00o(Ljava/lang/Float;Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
