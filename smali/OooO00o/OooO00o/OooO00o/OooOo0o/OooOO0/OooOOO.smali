.class public abstract LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;
.super Ljava/lang/Object;
.source "BaseAnimatableValue.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO0<",
        "TV;TO;>;"
    }
.end annotation


# instance fields
.field public final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    invoke-direct {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->OooO00o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public OooO0O0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->OooO00o:Ljava/util/List;

    return-object v0
.end method

.method public OooO0OO()Z
    .locals 3

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->OooO00o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0oO()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->OooO00o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "values="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO;->OooO00o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
