.class public Ldb;
.super Lda;
.source "PG"

# interfaces
.implements Lei;


# direct methods
.method public constructor <init>(Ldc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lda;-><init>(Lde;)V

    return-void
.end method


# virtual methods
.method public final OooO00o(Lcq;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lde;->OooO00o(Lcq;)Lcq;

    move-result-object p1

    iget-object v0, p1, Lcq;->a:Leh;

    iget-object v1, p0, Lda;->a:Lde;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lda;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ldb;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lda;->c:Z

    .line 3
    :goto_0
    iget-object v0, p0, Lda;->b:Lde;

    .line 4
    check-cast v0, Ldc;

    iget-object v0, v0, Ldc;->d:Lcu;

    iget-boolean v1, v0, Lcu;->b:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcu;->OooO0OO()Lcu;

    move-result-object v0

    iget-object v1, p0, Lda;->b:Lde;

    .line 6
    check-cast v1, Ldc;

    iput-object v0, v1, Ldc;->d:Lcu;

    .line 7
    :cond_1
    iget-object v1, p1, Lcq;->d:Ldd;

    .line 8
    invoke-virtual {p1, p2}, Lcq;->OooO0OO(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcu;->OooO00o(Ldd;Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    .line 10
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic OooO0OO()Leh;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldb;->OooO0oO()Ldc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic OooO0o()Lde;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldb;->OooO0oO()Ldc;

    move-result-object v0

    return-object v0
.end method

.method public final OooO0oO()Ldc;
    .locals 1

    iget-boolean v0, p0, Lda;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lda;->b:Lde;

    .line 1
    check-cast v0, Ldc;

    iget-object v0, v0, Ldc;->d:Lcu;

    invoke-virtual {v0}, Lcu;->OooO0O0()V

    .line 2
    invoke-super {p0}, Lda;->OooO0o()Lde;

    move-result-object v0

    check-cast v0, Ldc;

    return-object v0

    :cond_0
    iget-object v0, p0, Lda;->b:Lde;

    .line 3
    check-cast v0, Ldc;

    return-object v0
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-super {p0}, Lda;->b()V

    iget-object v0, p0, Lda;->b:Lde;

    .line 2
    check-cast v0, Ldc;

    iget-object v1, v0, Ldc;->d:Lcu;

    invoke-virtual {v1}, Lcu;->OooO0OO()Lcu;

    move-result-object v1

    iput-object v1, v0, Ldc;->d:Lcu;

    return-void
.end method
