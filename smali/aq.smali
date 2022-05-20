.class public final Laq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lar;


# instance fields
.field public final a:Las;

.field public b:Lcom/google/lens/sdk/PendingIntentConsumer;

.field public final c:Ljava/util/Queue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lal;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Laq;->c:Ljava/util/Queue;

    new-instance v0, Lba;

    .line 3
    invoke-direct {v0, p1, p0, p2}, Lba;-><init>(Landroid/content/Context;Lar;Lal;)V

    iput-object v0, p0, Laq;->a:Las;

    return-void
.end method

.method private final OooO0oo()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Laq;->OooO0OO()Lz;

    move-result-object v0

    iget v1, v0, Lz;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Laq;->a:Las;

    .line 2
    invoke-interface {v1}, Las;->b()I

    move-result v1

    iget v0, v0, Lz;->c:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final OooO00o()V
    .locals 1

    .line 1
    invoke-static {}, Leb;->OooO00o()V

    iget-object v0, p0, Laq;->a:Las;

    check-cast v0, Lba;

    .line 2
    invoke-virtual {v0}, Lba;->OooO0o()V

    return-void
.end method

.method public final OooO00o(Lap;)V
    .locals 2

    .line 3
    invoke-static {}, Leb;->OooO00o()V

    iget-object v0, p0, Laq;->a:Las;

    .line 4
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Laq;->a:Las;

    invoke-interface {v0}, Las;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Laq;->a:Las;

    check-cast v0, Lba;

    .line 6
    invoke-virtual {v0}, Lba;->OooO0o0()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lba;->OooO0Oo()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lba;->OooO0o()V

    :cond_1
    iget-object v0, p0, Laq;->c:Ljava/util/Queue;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Laq;->a:Las;

    .line 10
    invoke-interface {v0}, Las;->OooO00o()I

    move-result v0

    invoke-interface {p1, v0}, Lap;->a(I)V

    return-void
.end method

.method public final OooO00o(Landroid/os/Bundle;)Z
    .locals 5

    .line 11
    invoke-static {}, Leb;->OooO00o()V

    iget-object v0, p0, Laq;->a:Las;

    .line 12
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 13
    sget-object v0, Lo;->c:Lo;

    .line 14
    invoke-virtual {v0}, Lde;->OooO0oo()Lda;

    move-result-object v0

    check-cast v0, Ln;

    .line 15
    sget v2, Lm;->aU:I

    iget-boolean v3, v0, Lda;->c:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ldb;->b()V

    iput-boolean v1, v0, Lda;->c:Z

    .line 17
    :goto_0
    iget-object v3, v0, Lda;->b:Lde;

    .line 18
    check-cast v3, Lo;

    add-int/lit8 v4, v2, -0x1

    if-eqz v2, :cond_1

    iput v4, v3, Lo;->b:I

    iget v2, v3, Lo;->a:I

    const/4 v4, 0x1

    or-int/2addr v2, v4

    iput v2, v3, Lo;->a:I

    .line 19
    invoke-virtual {v0}, Lda;->OooO0O0()Lde;

    move-result-object v0

    check-cast v0, Lo;

    new-instance v2, Lk;

    .line 20
    invoke-direct {v2, p1}, Lk;-><init>(Landroid/os/Parcelable;)V

    :try_start_0
    iget-object p1, p0, Laq;->a:Las;

    .line 21
    invoke-virtual {v0}, Lbu;->OooO0oO()[B

    move-result-object v0

    .line 22
    invoke-interface {p1, v0, v2}, Las;->OooO0O0([BLk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string v0, "LensServiceBridge"

    const-string v2, "Failed to inject image."

    .line 23
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 24
    throw p1

    :cond_2
    return v1
.end method

.method public final OooO0O0()V
    .locals 10

    .line 1
    invoke-static {}, Leb;->OooO00o()V

    iget-object v0, p0, Laq;->a:Las;

    .line 2
    invoke-static {}, Leb;->OooO00o()V

    move-object v1, v0

    check-cast v1, Lba;

    .line 3
    invoke-virtual {v1}, Lba;->OooO0OO()Z

    move-result v2

    const-string v3, "LensServiceConnImpl"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 4
    sget-object v2, Lo;->c:Lo;

    .line 5
    invoke-virtual {v2}, Lde;->OooO0oo()Lda;

    move-result-object v2

    check-cast v2, Ln;

    .line 6
    sget v6, Lm;->cH:I

    iget-boolean v7, v2, Lda;->c:Z

    const/4 v8, 0x0

    if-nez v7, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2}, Ldb;->b()V

    iput-boolean v8, v2, Lda;->c:Z

    .line 8
    :goto_0
    iget-object v7, v2, Lda;->b:Lde;

    .line 9
    check-cast v7, Lo;

    add-int/lit8 v9, v6, -0x1

    if-eqz v6, :cond_1

    iput v9, v7, Lo;->b:I

    iget v6, v7, Lo;->a:I

    or-int/2addr v6, v4

    iput v6, v7, Lo;->a:I

    .line 10
    invoke-virtual {v2}, Lda;->OooO0O0()Lde;

    move-result-object v2

    check-cast v2, Lo;

    :try_start_0
    move-object v6, v0

    check-cast v6, Lba;

    iget-object v6, v6, Lba;->g:Lg;

    .line 11
    invoke-static {v6}, Leb;->OooO00o(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lbu;->OooO0oO()[B

    move-result-object v2

    invoke-interface {v6, v2}, Lg;->OooO00o([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const-string v6, "Unable to end Lens service session."

    .line 12
    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :goto_2
    iput-object v5, v1, Lba;->g:Lg;

    iput v8, v1, Lba;->c:I

    iput-object v5, v1, Lba;->d:Lz;

    iput-object v5, v1, Lba;->e:Lx;

    .line 14
    sget v2, Lbh;->a:I

    goto :goto_3

    .line 15
    :cond_1
    throw v5

    .line 16
    :cond_2
    :goto_3
    invoke-virtual {v1}, Lba;->OooO0Oo()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_1
    move-object v2, v0

    check-cast v2, Lba;

    iget-object v2, v2, Lba;->b:Landroid/content/Context;

    .line 17
    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    const-string v0, "Unable to unbind, service is not registered."

    .line 18
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :goto_4
    iput-object v5, v1, Lba;->f:Le;

    .line 20
    :cond_3
    sget v0, Lbh;->a:I

    iput v0, v1, Lba;->h:I

    .line 21
    invoke-virtual {v1, v4}, Lba;->OooO00o(I)V

    iput-object v5, p0, Laq;->b:Lcom/google/lens/sdk/PendingIntentConsumer;

    return-void
.end method

.method public final OooO0OO()Lz;
    .locals 3

    .line 1
    invoke-static {}, Leb;->OooO00o()V

    iget-object v0, p0, Laq;->a:Las;

    .line 2
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    const-string v1, "getServerFlags() called before ready."

    .line 3
    invoke-static {v0, v1}, Leb;->OooO00o(ZLjava/lang/String;)V

    iget-object v0, p0, Laq;->a:Las;

    .line 4
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lz;->f:Lz;

    return-object v0

    :cond_0
    iget-object v0, p0, Laq;->a:Las;

    .line 6
    invoke-static {}, Leb;->OooO00o()V

    check-cast v0, Lba;

    .line 7
    invoke-virtual {v0}, Lba;->OooO0OO()Z

    move-result v1

    const-string v2, "Attempted to use ServerFlags before ready."

    invoke-static {v1, v2}, Leb;->OooO00o(ZLjava/lang/String;)V

    iget-object v0, v0, Lba;->d:Lz;

    return-object v0
.end method

.method public final OooO0Oo()Lx;
    .locals 3

    .line 1
    invoke-static {}, Leb;->OooO00o()V

    iget-object v0, p0, Laq;->a:Las;

    .line 2
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    const-string v1, "getLensCapabilities() called when Lens is not ready."

    .line 3
    invoke-static {v0, v1}, Leb;->OooO00o(ZLjava/lang/String;)V

    iget-object v0, p0, Laq;->a:Las;

    .line 4
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lx;->b:Lx;

    return-object v0

    :cond_0
    iget-object v0, p0, Laq;->a:Las;

    .line 6
    invoke-static {}, Leb;->OooO00o()V

    check-cast v0, Lba;

    .line 7
    invoke-virtual {v0}, Lba;->OooO0OO()Z

    move-result v1

    const-string v2, "Attempted to use LensCapabilities before ready."

    invoke-static {v1, v2}, Leb;->OooO00o(ZLjava/lang/String;)V

    iget-object v0, v0, Lba;->e:Lx;

    return-object v0
.end method

.method public final OooO0o()I
    .locals 2

    .line 1
    invoke-static {}, Leb;->OooO00o()V

    iget-object v0, p0, Laq;->a:Las;

    .line 2
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laq;->a:Las;

    .line 3
    invoke-interface {v0}, Las;->OooO00o()I

    move-result v0

    return v0

    .line 4
    :cond_0
    invoke-direct {p0}, Laq;->OooO0oo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Laq;->OooO0OO()Lz;

    move-result-object v0

    iget v1, v0, Lz;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    iget-object v1, p0, Laq;->a:Las;

    .line 6
    invoke-interface {v1}, Las;->b()I

    move-result v1

    iget v0, v0, Lz;->e:I

    if-ge v1, v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    sget v0, Lbh;->b:I

    return v0

    .line 8
    :cond_2
    :goto_0
    sget v0, Lbh;->l:I

    return v0
.end method

.method public final OooO0o0()V
    .locals 2

    :goto_0
    iget-object v0, p0, Laq;->c:Ljava/util/Queue;

    .line 1
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laq;->c:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lap;

    iget-object v1, p0, Laq;->a:Las;

    .line 3
    invoke-interface {v1}, Las;->OooO00o()I

    move-result v1

    invoke-interface {v0, v1}, Lap;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final OooO0oO()I
    .locals 1

    .line 1
    invoke-static {}, Leb;->OooO00o()V

    iget-object v0, p0, Laq;->a:Las;

    .line 2
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laq;->a:Las;

    .line 3
    invoke-interface {v0}, Las;->OooO00o()I

    move-result v0

    return v0

    .line 4
    :cond_0
    invoke-direct {p0}, Laq;->OooO0oo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget v0, Lbh;->b:I

    return v0

    .line 6
    :cond_1
    sget v0, Lbh;->l:I

    return v0
.end method
