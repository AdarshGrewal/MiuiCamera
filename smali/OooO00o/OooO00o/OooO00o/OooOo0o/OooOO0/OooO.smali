.class public LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO;
.super Ljava/lang/Object;
.source "AnimatableSplitDimensionPathValue.java"

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
.field public final OooO00o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

.field public final OooO0O0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    .line 3
    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    return-void
.end method


# virtual methods
.method public OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .locals 3
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
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOO0;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    .line 2
    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v1

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOO0;-><init>(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    return-object v0
.end method

.method public OooO0O0()Ljava/util/List;
    .locals 2
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
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0OO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
