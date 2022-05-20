.class public LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0Oo;
.super LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o;
.source "GradientColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o<",
        "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0o;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    iget-object p1, p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0O0:Ljava/lang/Object;

    check-cast p1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO0OO()I

    move-result v0

    .line 4
    :goto_0
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;-><init>([F[I)V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0Oo;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;F)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;",
            ">;F)",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0Oo;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;

    iget-object v1, p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0O0:Ljava/lang/Object;

    check-cast v1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;

    iget-object p1, p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0OO:Ljava/lang/Object;

    check-cast p1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;

    invoke-virtual {v0, v1, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;F)V

    .line 3
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0Oo;->OooO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;

    return-object p1
.end method

.method public bridge synthetic OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0Oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;F)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;

    move-result-object p1

    return-object p1
.end method
