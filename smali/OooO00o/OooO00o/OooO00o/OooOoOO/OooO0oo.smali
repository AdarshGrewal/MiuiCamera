.class public LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0oo;
.super LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;
.source "LottieRelativeIntegerValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0O0;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0O0<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0O0;->OooO0oO()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0O0;->OooO0O0()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0O0;->OooO0OO()F

    move-result v2

    .line 5
    invoke-static {v0, v1, v2}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(IIF)I

    move-result v0

    .line 6
    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0oo;->OooO0O0(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0O0;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v0, p1

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0O0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0O0;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0O0;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO0O0<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO0OO:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must provide a static value in the constructor , call setValue, or override getValue."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
