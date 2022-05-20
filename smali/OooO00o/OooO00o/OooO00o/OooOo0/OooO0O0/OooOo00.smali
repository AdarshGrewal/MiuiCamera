.class public LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;
.super Ljava/lang/Object;
.source "TrimPathContent.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:Z

.field public final OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

.field public final OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0o0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0OO:Ljava/util/List;

    .line 3
    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0;->OooO0O0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO00o:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0;->OooO0o()Z

    move-result v0

    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0O0:Z

    .line 5
    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0;->OooO0o0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    .line 6
    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0;->OooO0Oo()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0o0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 7
    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 8
    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0;->OooO0OO()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object p2

    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 9
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0o0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 10
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 11
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 12
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0o0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 13
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 14
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0OO:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0OO:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;

    invoke-interface {v1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;->OooO00o()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V
    .locals 1

    .line 3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0OO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO00o(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;",
            ">;",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public OooO0O0()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    return-object v0
.end method

.method public OooO0OO()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0oO:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    return-object v0
.end method

.method public OooO0Oo()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0o0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    return-object v0
.end method

.method public OooO0o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0O0:Z

    return v0
.end method

.method public OooO0o0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO00o:Ljava/lang/String;

    return-object v0
.end method
