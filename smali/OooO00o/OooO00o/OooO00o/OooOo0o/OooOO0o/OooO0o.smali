.class public LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0o;
.super LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;
.source "ShapeLayer.java"


# instance fields
.field public final OooOoOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;)V

    .line 2
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;

    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooOO0o()Ljava/util/List;

    move-result-object p2

    const-string v1, "__container"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 3
    new-instance p2, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    invoke-direct {p2, p1, p0, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;)V

    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0o;->OooOoOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO00o(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0o;->OooOoOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOO0:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0, p3}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public OooO0O0(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;ILjava/util/List;LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            "I",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            ">;",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0o;->OooOoOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    invoke-virtual {v0, p1, p2, p3, p4}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;ILjava/util/List;LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;)V

    return-void
.end method

.method public OooO0O0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0o;->OooOoOO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
