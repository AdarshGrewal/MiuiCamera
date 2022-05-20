.class public final Lep;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lep;


# instance fields
.field public final b:Let;

.field public final c:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lep;

    .line 1
    invoke-direct {v0}, Lep;-><init>()V

    sput-object v0, Lep;->a:Lep;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lep;->c:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ldz;

    .line 3
    invoke-direct {v0}, Ldz;-><init>()V

    iput-object v0, p0, Lep;->b:Let;

    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/Class;)Les;
    .locals 9

    const-class v0, Lde;

    const-string v1, "messageType"

    .line 1
    invoke-static {p1, v1}, Ldj;->OooO00o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lep;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Les;

    if-nez v2, :cond_6

    iget-object v2, p0, Lep;->b:Let;

    .line 3
    invoke-static {p1}, Leu;->OooO00o(Ljava/lang/Class;)V

    check-cast v2, Ldz;

    iget-object v2, v2, Ldz;->a:Lef;

    .line 4
    invoke-interface {v2, p1}, Lef;->OooO00o(Ljava/lang/Class;)Lee;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Lee;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Leu;->c:Lfh;

    .line 7
    sget-object v2, Lct;->a:Lej;

    .line 8
    invoke-interface {v3}, Lee;->b()Leh;

    move-result-object v3

    .line 9
    invoke-static {v0, v2, v3}, Lel;->OooO00o(Lfh;Lej;Leh;)Lel;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Leu;->a:Lfh;

    .line 11
    invoke-static {}, Lct;->OooO00o()Lej;

    move-result-object v2

    .line 12
    invoke-interface {v3}, Lee;->b()Leh;

    move-result-object v3

    .line 13
    invoke-static {v0, v2, v3}, Lel;->OooO00o(Lfh;Lej;Leh;)Lel;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-static {v3}, Ldz;->OooO00o(Lee;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    sget-object v4, Len;->b:Lfs;

    .line 17
    sget-object v5, Ldv;->b:Ldv;

    sget-object v6, Leu;->c:Lfh;

    .line 18
    sget-object v7, Lct;->a:Lej;

    .line 19
    sget-object v8, Led;->b:Lff;

    .line 20
    invoke-static/range {v3 .. v8}, Lek;->OooO00o(Lee;Lfs;Ldv;Lfh;Lej;Lff;)Lek;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_2
    sget-object v4, Len;->b:Lfs;

    .line 22
    sget-object v5, Ldv;->b:Ldv;

    sget-object v6, Leu;->c:Lfh;

    const/4 v7, 0x0

    .line 23
    sget-object v8, Led;->b:Lff;

    .line 24
    invoke-static/range {v3 .. v8}, Lek;->OooO00o(Lee;Lfs;Ldv;Lfh;Lej;Lff;)Lek;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_3
    invoke-static {v3}, Ldz;->OooO00o(Lee;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    sget-object v4, Len;->a:Lfs;

    .line 27
    sget-object v5, Ldv;->a:Ldv;

    sget-object v6, Leu;->a:Lfh;

    .line 28
    invoke-static {}, Lct;->OooO00o()Lej;

    move-result-object v7

    .line 29
    sget-object v8, Led;->a:Lff;

    .line 30
    invoke-static/range {v3 .. v8}, Lek;->OooO00o(Lee;Lfs;Ldv;Lfh;Lej;Lff;)Lek;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_4
    sget-object v4, Len;->a:Lfs;

    .line 32
    sget-object v5, Ldv;->a:Ldv;

    sget-object v6, Leu;->b:Lfh;

    const/4 v7, 0x0

    .line 33
    sget-object v8, Led;->a:Lff;

    .line 34
    invoke-static/range {v3 .. v8}, Lek;->OooO00o(Lee;Lfs;Ldv;Lfh;Lej;Lff;)Lek;

    move-result-object v0

    goto :goto_0

    .line 35
    :goto_1
    invoke-static {p1, v1}, Ldj;->OooO00o(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schema"

    .line 36
    invoke-static {v2, v0}, Ldj;->OooO00o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lep;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 37
    invoke-interface {v0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Les;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    return-object p1

    :cond_6
    :goto_2
    return-object v2
.end method

.method public final OooO00o(Ljava/lang/Object;)Les;
    .locals 0

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lep;->OooO00o(Ljava/lang/Class;)Les;

    move-result-object p1

    return-object p1
.end method
