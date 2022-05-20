.class public LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;
.super Ljava/lang/Object;
.source "MaskKeyframeAnimation.java"


# instance fields
.field public final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;",
            "Landroid/graphics/Path;",
            ">;>;"
        }
    .end annotation
.end field

.field public final OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO0OO:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO00o:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO0O0:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO00o:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;->OooO0O0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oo;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oo;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;->OooO0OO()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;

    move-result-object v1

    .line 8
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO0O0:Ljava/util/List;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;",
            "Landroid/graphics/Path;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO00o:Ljava/util/List;

    return-object v0
.end method

.method public OooO0O0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO0OO:Ljava/util/List;

    return-object v0
.end method

.method public OooO0OO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO0O0:Ljava/util/List;

    return-object v0
.end method
