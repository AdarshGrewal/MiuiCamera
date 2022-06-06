.class public LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oO;
.super LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;
.source "AnimatableScaleValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO<",
        "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;",
        "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;-><init>(FF)V

    invoke-direct {p0, v0}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oO;-><init>(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;)V

    return-void
.end method

.method public constructor <init>(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;)V
    .locals 0

    invoke-direct {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public OooO00o()LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;",
            ">;"
        }
    .end annotation

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0O;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->OooO00o:Ljava/util/List;

    invoke-direct {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0O;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic OooO0O0()Ljava/util/List;
    .locals 1

    invoke-super {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->OooO0O0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooO0OO()Z
    .locals 1

    invoke-super {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->OooO0OO()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
