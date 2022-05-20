.class public Lda;
.super Lbt;
.source "PG"


# instance fields
.field public final a:Lde;

.field public b:Lde;

.field public c:Z


# direct methods
.method public constructor <init>(Lde;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lbt;-><init>()V

    iput-object p1, p0, Lda;->a:Lde;

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Lde;->OooO0O0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde;

    iput-object p1, p0, Lda;->b:Lde;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lda;->c:Z

    return-void
.end method

.method public static final OooO00o(Lde;Lde;)V
    .locals 1

    .line 5
    sget-object v0, Lep;->a:Lep;

    invoke-virtual {v0, p0}, Lep;->OooO00o(Ljava/lang/Object;)Les;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Les;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic OooO00o(Lbu;)Lbt;
    .locals 0

    .line 1
    check-cast p1, Lde;

    .line 2
    invoke-virtual {p0, p1}, Lda;->OooO00o(Lde;)V

    return-object p0
.end method

.method public final OooO00o(Lde;)V
    .locals 1

    iget-boolean v0, p0, Lda;->c:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lda;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lda;->c:Z

    :cond_0
    iget-object v0, p0, Lda;->b:Lde;

    .line 4
    invoke-static {v0, p1}, Lda;->OooO00o(Lde;Lde;)V

    return-void
.end method

.method public final OooO0O0()Lde;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lda;->OooO0o()Lde;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lde;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lfg;

    .line 3
    invoke-direct {v0}, Lfg;-><init>()V

    .line 4
    throw v0
.end method

.method public bridge synthetic OooO0OO()Leh;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lda;->OooO0o()Lde;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooO0Oo()Leh;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lda;->OooO0O0()Lde;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o()Lde;
    .locals 2

    iget-boolean v0, p0, Lda;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lda;->b:Lde;

    .line 1
    sget-object v1, Lep;->a:Lep;

    invoke-virtual {v1, v0}, Lep;->OooO00o(Ljava/lang/Object;)Les;

    move-result-object v1

    invoke-interface {v1, v0}, Les;->OooO0OO(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lda;->c:Z

    iget-object v0, p0, Lda;->b:Lde;

    return-object v0

    :cond_0
    iget-object v0, p0, Lda;->b:Lde;

    return-object v0
.end method

.method public final bridge synthetic OooO0o0()Leh;
    .locals 1

    iget-object v0, p0, Lda;->a:Lde;

    return-object v0
.end method

.method public final bridge synthetic a()Lbt;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lda;->d()Lda;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lda;->b:Lde;

    const/4 v1, 0x4

    .line 1
    invoke-virtual {v0, v1}, Lde;->OooO0O0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde;

    iget-object v1, p0, Lda;->b:Lde;

    .line 2
    invoke-static {v0, v1}, Lda;->OooO00o(Lde;Lde;)V

    iput-object v0, p0, Lda;->b:Lde;

    return-void
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lda;->d()Lda;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lda;
    .locals 2

    iget-object v0, p0, Lda;->a:Lde;

    const/4 v1, 0x5

    .line 1
    invoke-virtual {v0, v1}, Lde;->OooO0O0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lda;

    .line 2
    invoke-virtual {p0}, Lda;->OooO0o()Lde;

    move-result-object v1

    invoke-virtual {v0, v1}, Lda;->OooO00o(Lde;)V

    return-object v0
.end method
