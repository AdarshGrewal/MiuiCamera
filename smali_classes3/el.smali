.class public final Lel;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Les;


# instance fields
.field public final a:Leh;

.field public final b:Lfh;

.field public final c:Z

.field public final d:Lej;


# direct methods
.method public constructor <init>(Lfh;Lej;Leh;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lel;->b:Lfh;

    .line 2
    invoke-static {p3}, Lej;->OooO00o(Leh;)Z

    move-result p1

    iput-boolean p1, p0, Lel;->c:Z

    iput-object p2, p0, Lel;->d:Lej;

    iput-object p3, p0, Lel;->a:Leh;

    return-void
.end method

.method public static OooO00o(Lfh;Lej;Leh;)Lel;
    .locals 2

    new-instance v0, Lel;

    const/4 v1, 0x0

    .line 45
    invoke-direct {v0, p0, p1, p2, v1}, Lel;-><init>(Lfh;Lej;Leh;[B)V

    return-object v0
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/Object;)I
    .locals 4

    iget-object v0, p0, Lel;->b:Lfh;

    .line 1
    invoke-virtual {v0, p1}, Lfh;->OooO0O0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lfh;->OooO0o0(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lel;->c:Z

    if-eqz v1, :cond_2

    .line 3
    invoke-static {p1}, Lej;->OooO0O0(Ljava/lang/Object;)Lcu;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p1, Lcu;->a:Lfc;

    .line 4
    invoke-virtual {v3}, Lfc;->OooO00o()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p1, Lcu;->a:Lfc;

    .line 5
    invoke-virtual {v3, v1}, Lfc;->OooO00o(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcu;->OooO0O0(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcu;->a:Lfc;

    .line 6
    invoke-virtual {v1}, Lfc;->OooO0O0()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 7
    invoke-virtual {p1, v3}, Lcu;->OooO0O0(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    :cond_2
    return v0
.end method

.method public final OooO00o(Ljava/lang/Object;Lgb;)V
    .locals 5

    .line 46
    invoke-static {p1}, Lej;->OooO0O0(Ljava/lang/Object;)Lcu;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcu;->OooO0Oo()Ljava/util/Iterator;

    move-result-object v0

    .line 48
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd;

    .line 51
    invoke-virtual {v2}, Ldd;->OooO0OO()Lfz;

    move-result-object v3

    sget-object v4, Lfz;->i:Lfz;

    if-ne v3, v4, :cond_1

    .line 52
    instance-of v3, v1, Ldn;

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {v2}, Ldd;->OooO00o()I

    move-result v2

    check-cast v1, Ldn;

    iget-object v1, v1, Ldn;->a:Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldp;

    .line 55
    invoke-virtual {v1}, Ldq;->OooO00o()Lck;

    move-result-object v1

    .line 56
    invoke-interface {p2, v2, v1}, Lgb;->OooO00o(ILjava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v2}, Ldd;->OooO00o()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lgb;->OooO00o(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lel;->b:Lfh;

    .line 59
    invoke-virtual {v0, p1}, Lfh;->OooO0O0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lfh;->OooO00o(Ljava/lang/Object;Lgb;)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lel;->b:Lfh;

    .line 8
    invoke-static {v0, p1, p2}, Leu;->OooO00o(Lfh;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lel;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lel;->d:Lej;

    .line 9
    invoke-static {v0, p1, p2}, Leu;->OooO00o(Lej;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final OooO00o(Ljava/lang/Object;[BIILby;)V
    .locals 10

    .line 10
    move-object v0, p1

    check-cast v0, Lde;

    iget-object v1, v0, Lde;->h:Lfi;

    .line 11
    sget-object v2, Lfi;->a:Lfi;

    if-ne v1, v2, :cond_0

    .line 12
    invoke-static {}, Lfi;->OooO0OO()Lfi;

    move-result-object v1

    iput-object v1, v0, Lde;->h:Lfi;

    .line 13
    :cond_0
    check-cast p1, Ldc;

    .line 14
    invoke-virtual {p1}, Ldc;->d()Lcu;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_a

    .line 15
    invoke-static {p2, p3, p5}, Leb;->OooO00o([BILby;)I

    move-result v4

    iget p3, p5, Lby;->a:I

    sget v3, Lga;->a:I

    const/4 v5, 0x2

    if-ne p3, v3, :cond_7

    const/4 p3, 0x0

    move-object v3, v0

    :goto_1
    if-ge v4, p4, :cond_5

    .line 16
    invoke-static {p2, v4, p5}, Leb;->OooO00o([BILby;)I

    move-result v4

    iget v6, p5, Lby;->a:I

    .line 17
    invoke-static {v6}, Lga;->OooO00o(I)I

    move-result v7

    .line 18
    invoke-static {v6}, Lga;->OooO0O0(I)I

    move-result v8

    if-eq v8, v5, :cond_3

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    .line 19
    sget-object v6, Lep;->a:Lep;

    move-object v7, v2

    check-cast v7, Lcq;

    iget-object v8, v7, Lcq;->c:Leh;

    .line 20
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 21
    invoke-virtual {v6, v8}, Lep;->OooO00o(Ljava/lang/Class;)Les;

    move-result-object v6

    .line 22
    invoke-static {v6, p2, v4, p4, p5}, Leb;->OooO00o(Les;[BIILby;)I

    move-result v4

    .line 23
    iget-object v6, v7, Lcq;->d:Ldd;

    iget-object v7, p5, Lby;->c:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcu;->OooO00o(Ldd;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-ne v7, v5, :cond_4

    .line 24
    invoke-static {p2, v4, p5}, Leb;->OooO0o0([BILby;)I

    move-result v4

    iget-object v3, p5, Lby;->c:Ljava/lang/Object;

    .line 25
    check-cast v3, Lck;

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    .line 26
    invoke-static {p2, v4, p5}, Leb;->OooO00o([BILby;)I

    move-result v4

    iget p3, p5, Lby;->a:I

    iget-object v2, p5, Lby;->d:Lcs;

    iget-object v6, p0, Lel;->a:Leh;

    .line 27
    invoke-static {v2, v6, p3}, Lej;->OooO00o(Lcs;Leh;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 28
    :cond_4
    :goto_2
    sget v7, Lga;->b:I

    if-eq v6, v7, :cond_5

    .line 29
    invoke-static {v6, p2, v4, p4, p5}, Leb;->OooO00o(I[BIILby;)I

    move-result v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    .line 30
    invoke-static {p3, v5}, Lga;->OooO00o(II)I

    move-result p3

    .line 31
    invoke-virtual {v1, p3, v3}, Lfi;->OooO00o(ILjava/lang/Object;)V

    :cond_6
    move p3, v4

    goto :goto_0

    .line 32
    :cond_7
    invoke-static {p3}, Lga;->OooO00o(I)I

    move-result v3

    if-ne v3, v5, :cond_9

    iget-object v2, p5, Lby;->d:Lcs;

    iget-object v3, p0, Lel;->a:Leh;

    .line 33
    invoke-static {p3}, Lga;->OooO0O0(I)I

    move-result v5

    .line 34
    invoke-static {v2, v3, v5}, Lej;->OooO00o(Lcs;Leh;I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 35
    sget-object p3, Lep;->a:Lep;

    .line 36
    move-object v2, v8

    check-cast v2, Lcq;

    iget-object v3, v2, Lcq;->c:Leh;

    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 38
    invoke-virtual {p3, v3}, Lep;->OooO00o(Ljava/lang/Class;)Les;

    move-result-object p3

    .line 39
    invoke-static {p3, p2, v4, p4, p5}, Leb;->OooO00o(Les;[BIILby;)I

    move-result p3

    .line 40
    iget-object v2, v2, Lcq;->d:Ldd;

    iget-object v3, p5, Lby;->c:Ljava/lang/Object;

    .line 41
    invoke-virtual {p1, v2, v3}, Lcu;->OooO00o(Ldd;Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 42
    invoke-static/range {v2 .. v7}, Leb;->OooO00o(I[BIILfi;Lby;)I

    move-result p3

    :goto_3
    move-object v2, v8

    goto/16 :goto_0

    .line 43
    :cond_9
    invoke-static {p3, p2, v4, p4, p5}, Leb;->OooO00o(I[BIILby;)I

    move-result p3

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    .line 44
    :cond_b
    invoke-static {}, Ldl;->OooO0o0()Ldl;

    move-result-object p1

    throw p1
.end method

.method public final OooO0O0(Ljava/lang/Object;)Z
    .locals 0

    .line 7
    invoke-static {p1}, Lej;->OooO0O0(Ljava/lang/Object;)Lcu;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcu;->OooO0o0()Z

    move-result p1

    return p1
.end method

.method public final OooO0O0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lel;->b:Lfh;

    .line 1
    invoke-virtual {v0, p1}, Lfh;->OooO0O0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lel;->b:Lfh;

    .line 2
    invoke-virtual {v1, p2}, Lfh;->OooO0O0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lel;->c:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lej;->OooO0O0(Ljava/lang/Object;)Lcu;

    move-result-object p1

    .line 5
    invoke-static {p2}, Lej;->OooO0O0(Ljava/lang/Object;)Lcu;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lcu;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final OooO0OO(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lel;->b:Lfh;

    .line 1
    invoke-virtual {v0, p1}, Lfh;->OooO00o(Ljava/lang/Object;)V

    iget-object v0, p0, Lel;->d:Lej;

    .line 2
    invoke-virtual {v0, p1}, Lej;->OooO00o(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lel;->b:Lfh;

    .line 1
    invoke-virtual {v0, p1}, Lfh;->OooO0O0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lel;->c:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x35

    .line 2
    invoke-static {p1}, Lej;->OooO0O0(Ljava/lang/Object;)Lcu;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcu;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lel;->a:Leh;

    .line 4
    invoke-interface {v0}, Leh;->OooO00o()Leg;

    move-result-object v0

    invoke-interface {v0}, Leg;->OooO0OO()Leh;

    move-result-object v0

    return-object v0
.end method
