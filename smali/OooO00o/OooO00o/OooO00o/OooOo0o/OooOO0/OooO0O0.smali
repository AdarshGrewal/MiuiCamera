.class public LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;
.super LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;
.source "AnimatableFloatValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->OooO00o:Ljava/util/List;

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic OooO0O0()Ljava/util/List;
    .locals 1

    .line 1
    invoke-super {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->OooO0O0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooO0OO()Z
    .locals 1

    .line 1
    invoke-super {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->OooO0OO()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
