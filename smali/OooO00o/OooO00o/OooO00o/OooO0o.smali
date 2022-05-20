.class public LOooO00o/OooO00o/OooO00o/OooO0o;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO00o/OooO00o/OooO0o$OooO0O0;
    }
.end annotation


# instance fields
.field public OooO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO00o:LOooO00o/OooO00o/OooO00o/OooOOo0;

.field public final OooO0O0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0OO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;",
            ">;>;"
        }
    .end annotation
.end field

.field public OooO0Oo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO00o/OooO00o/OooO00o/OooO;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0o0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0OO;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0oO:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0oo:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;",
            ">;"
        }
    .end annotation
.end field

.field public OooOO0:Landroid/graphics/Rect;

.field public OooOO0O:F

.field public OooOO0o:F

.field public OooOOO:Z

.field public OooOOO0:F

.field public OooOOOO:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOOo0;

    invoke-direct {v0}, LOooO00o/OooO00o/OooO00o/OooOOo0;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOOo0;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0O0:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOOO:I

    return-void
.end method


# virtual methods
.method public OooO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO:Ljava/util/List;

    return-object v0
.end method

.method public OooO00o(J)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;
    .locals 1

    .line 16
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0oo:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    return-object p1
.end method

.method public OooO00o()Landroid/graphics/Rect;
    .locals 1

    .line 17
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOO0:Landroid/graphics/Rect;

    return-object v0
.end method

.method public OooO00o(I)V
    .locals 1

    .line 15
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOOO:I

    add-int/2addr v0, p1

    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOOO:I

    return-void
.end method

.method public OooO00o(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO00o/OooO00o/OooO00o/OooO;",
            ">;",
            "Landroidx/collection/SparseArrayCompat<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0OO;",
            ">;",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOO0:Landroid/graphics/Rect;

    .line 2
    iput p2, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOO0O:F

    .line 3
    iput p3, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOO0o:F

    .line 4
    iput p4, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO0:F

    .line 5
    iput-object p5, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO:Ljava/util/List;

    .line 6
    iput-object p6, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0oo:Landroidx/collection/LongSparseArray;

    .line 7
    iput-object p7, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0OO:Ljava/util/Map;

    .line 8
    iput-object p8, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0Oo:Ljava/util/Map;

    .line 9
    iput-object p9, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0oO:Landroidx/collection/SparseArrayCompat;

    .line 10
    iput-object p10, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o0:Ljava/util/Map;

    .line 11
    iput-object p11, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o:Ljava/util/List;

    return-void
.end method

.method public OooO00o(Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO0O0(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0O0:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO00o(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO:Z

    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;
    .locals 3

    .line 3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;

    .line 6
    invoke-virtual {v1, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;->OooO00o(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public OooO0O0()Landroidx/collection/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0oO:Landroidx/collection/SparseArrayCompat;

    return-object v0
.end method

.method public OooO0O0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOOo0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOOo0;->OooO00o(Z)V

    return-void
.end method

.method public OooO0OO()F
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0Oo()F

    move-result v0

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO0:F

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    return v0
.end method

.method public OooO0OO(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public OooO0Oo()F
    .locals 2

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOO0o:F

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOO0O:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public OooO0o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0OO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o0:Ljava/util/Map;

    return-object v0
.end method

.method public OooO0o0()F
    .locals 1

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOO0o:F

    return v0
.end method

.method public OooO0oO()F
    .locals 1

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO0:F

    return v0
.end method

.method public OooO0oo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO00o/OooO00o/OooO00o/OooO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0Oo:Ljava/util/Map;

    return-object v0
.end method

.method public OooOO0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0o:Ljava/util/List;

    return-object v0
.end method

.method public OooOO0O()I
    .locals 1

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOOO:I

    return v0
.end method

.method public OooOO0o()LOooO00o/OooO00o/OooO00o/OooOOo0;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOOo0;

    return-object v0
.end method

.method public OooOOO()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0O0:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public OooOOO0()F
    .locals 1

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOO0O:F

    return v0
.end method

.method public OooOOOO()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOOO:Z

    return v0
.end method

.method public OooOOOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    const-string v3, "\t"

    .line 3
    invoke-virtual {v2, v3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
