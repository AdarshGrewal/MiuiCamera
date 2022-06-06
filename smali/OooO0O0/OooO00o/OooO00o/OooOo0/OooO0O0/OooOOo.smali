.class public LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;
.super Ljava/lang/Object;
.source "ShapeContent.java"

# interfaces
.implements LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOO;
.implements LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;


# instance fields
.field public final OooO00o:Landroid/graphics/Path;

.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:Z

.field public final OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooO0oo;

.field public OooO0o:Z

.field public final OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0oO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;


# direct methods
.method public constructor <init>(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOO;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO00o:Landroid/graphics/Path;

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;

    invoke-direct {v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0oO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;

    invoke-virtual {p3}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOO;->OooO00o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0O0:Ljava/lang/String;

    invoke-virtual {p3}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOO;->OooO0OO()Z

    move-result v0

    iput-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0OO:Z

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p3}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOO;->OooO0O0()LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oo;->OooO00o()LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object p1

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p2, p1}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    return-void
.end method

.method private OooO0O0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0o:Z

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    invoke-direct {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0O0()V

    return-void
.end method

.method public OooO00o(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;",
            ">;",
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;

    instance-of v1, v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;

    if-eqz v1, :cond_0

    check-cast v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0o0()LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    move-result-object v1

    sget-object v2, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0oO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;

    invoke-virtual {v1, v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;)V

    invoke-virtual {v0, p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    iget-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO00o:Landroid/graphics/Path;

    return-object v0

    :cond_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0OO:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0o:Z

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO00o:Landroid/graphics/Path;

    return-object v0

    :cond_1
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO00o:Landroid/graphics/Path;

    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {v2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO00o:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0oO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;

    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;->OooO00o(Landroid/graphics/Path;)V

    iput-boolean v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO0o:Z

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;->OooO00o:Landroid/graphics/Path;

    return-object v0
.end method
