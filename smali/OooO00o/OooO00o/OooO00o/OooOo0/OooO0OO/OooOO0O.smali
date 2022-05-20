.class public LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0O;
.super LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o;
.source "ScaleKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o<",
        "LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO:LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;

    invoke-direct {p1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;-><init>()V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0O;->OooO:LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;F)LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;",
            ">;F)",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;"
        }
    .end annotation

    .line 2
    iget-object v0, p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0O0:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0OO:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;

    .line 4
    check-cast v1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;

    .line 5
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0:LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;

    if-eqz v2, :cond_0

    .line 6
    iget v3, p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0o0:F

    iget-object p1, p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0o:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 7
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0Oo()F

    move-result v8

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0()F

    move-result v9

    move-object v5, v0

    move-object v6, v1

    move v7, p2

    .line 8
    invoke-virtual/range {v2 .. v9}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO00o(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;

    if-eqz p1, :cond_0

    return-object p1

    .line 9
    :cond_0
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0O;->OooO:LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;

    .line 10
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO00o()F

    move-result v2

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO00o()F

    move-result v3

    invoke-static {v2, v3, p2}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO0OO(FFF)F

    move-result v2

    .line 11
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO0O0()F

    move-result v0

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO0O0()F

    move-result v1

    invoke-static {v0, v1, p2}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO0OO(FFF)F

    move-result p2

    .line 12
    invoke-virtual {p1, v2, p2}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO0O0(FF)V

    .line 13
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0O;->OooO:LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;

    return-object p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0O;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;F)LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0O;

    move-result-object p1

    return-object p1
.end method
