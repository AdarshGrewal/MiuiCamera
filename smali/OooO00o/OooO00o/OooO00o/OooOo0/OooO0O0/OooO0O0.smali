.class public LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;
.super Ljava/lang/Object;
.source "CompoundTrimPathContent.java"


# instance fields
.field public OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;->OooO00o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;)V
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;->OooO00o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO00o(Landroid/graphics/Path;)V
    .locals 2

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0O0;->OooO00o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;

    invoke-static {p1, v1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/graphics/Path;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
