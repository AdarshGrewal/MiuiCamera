.class public LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o0;
.super Ljava/lang/Object;
.source "AnimatablePathValue.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO0<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o0;->OooO00o:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o0;->OooO00o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o0;->OooO00o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0oO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o0;->OooO00o:Ljava/util/List;

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0;-><init>(Ljava/util/List;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o0;->OooO00o:Ljava/util/List;

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public OooO0O0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o0;->OooO00o:Ljava/util/List;

    return-object v0
.end method

.method public OooO0OO()Z
    .locals 3

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o0;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o0;->OooO00o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0oO()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method
