.class public abstract Lbt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Leg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract OooO00o(Lbu;)Lbt;
.end method

.method public final bridge synthetic OooO00o(Leh;)Leg;
    .locals 1

    .line 1
    invoke-interface {p0}, Lei;->OooO0o0()Leh;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lbu;

    invoke-virtual {p0, p1}, Lbt;->OooO00o(Lbu;)Lbt;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a()Lbt;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbt;->a()Lbt;

    move-result-object v0

    return-object v0
.end method
