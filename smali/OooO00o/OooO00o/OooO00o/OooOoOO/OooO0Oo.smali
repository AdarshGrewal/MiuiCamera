.class public LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0Oo;
.super LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o;
.source "LottieInterpolatedIntegerValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Integer;Ljava/lang/Integer;F)Ljava/lang/Integer;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(IIF)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO00o(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0Oo;->OooO00o(Ljava/lang/Integer;Ljava/lang/Integer;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
