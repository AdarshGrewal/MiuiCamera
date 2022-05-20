.class public final LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0Oo;
.super Ljava/util/AbstractSet;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO0Oo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0Oo;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0Oo;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0Oo;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;->OooO00o(Ljava/util/Map$Entry;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0Oo$OooO00o;

    invoke-direct {v0, p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0Oo$OooO00o;-><init>(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0Oo;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0Oo;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;->OooO00o(Ljava/util/Map$Entry;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0Oo;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;Z)V

    return v1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0Oo;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;

    iget v0, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;->OooO0Oo:I

    return v0
.end method
