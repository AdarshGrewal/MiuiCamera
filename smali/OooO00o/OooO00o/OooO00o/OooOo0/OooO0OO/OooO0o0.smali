.class public LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o0;
.super LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o;
.source "IntegerKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;F)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "Ljava/lang/Integer;",
            ">;F)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o0;->OooO0O0(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;F)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    .line 1
    iget-object v0, p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0O0:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0OO:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0:LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;

    if-eqz v1, :cond_0

    .line 3
    iget v2, p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0o0:F

    iget-object v0, p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0o:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0O0:Ljava/lang/Object;

    iget-object v5, p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0OO:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0Oo()F

    move-result v7

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0()F

    move-result v8

    move v6, p2

    .line 5
    invoke-virtual/range {v1 .. v8}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO00o(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 7
    :cond_0
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0o()I

    move-result v0

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0OO()I

    move-result p1

    invoke-static {v0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(IIF)I

    move-result p1

    return p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOO0()I
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    move-result-object v0

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0OO()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o0;->OooO0O0(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;F)I

    move-result v0

    return v0
.end method
