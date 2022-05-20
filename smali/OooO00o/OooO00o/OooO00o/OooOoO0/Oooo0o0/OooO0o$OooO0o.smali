.class public abstract LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OooO0o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public OooO0OO:I

.field public final synthetic OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;)V
    .locals 1

    .line 1
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;

    iget-object v0, p1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    iget-object v0, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 4
    iget p1, p1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;->OooO0o0:I

    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final OooO00o()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 2
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;

    iget-object v2, v1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    if-eq v0, v2, :cond_1

    .line 3
    iget v1, v1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;->OooO0o0:I

    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO0OO:I

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    iput-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 5
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;

    iget-object v1, v1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;

    iget v0, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;->OooO0o0:I

    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0o;->OooO0OO:I

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
