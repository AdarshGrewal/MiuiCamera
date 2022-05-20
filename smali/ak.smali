.class public final Lak;
.super Landroid/os/AsyncTask;
.source "PG"


# instance fields
.field public final synthetic a:Lal;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lal;)V
    .locals 0

    iput-object p1, p0, Lak;->a:Lal;

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private final OooO00o(Ljava/lang/String;)I
    .locals 7

    .line 22
    sget-object v0, Lal;->c:Ljava/util/List;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lak;->a:Lal;

    .line 23
    invoke-virtual {p1}, Lal;->OooO00o()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    sget p1, Lbh;->b:I

    return p1

    .line 25
    :cond_0
    sget p1, Lbh;->c:I

    return p1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lak;->a:Lal;

    .line 26
    iget-object v0, v0, Lal;->d:Landroid/content/Context;

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_4

    .line 28
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 30
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc

    if-gt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 31
    :goto_0
    invoke-static {v0}, Lbh;->OooO00o(I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    invoke-static {v0}, Lbh;->OooO00o(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_3
    :try_start_2
    sget v0, Lbh;->m:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0

    .line 34
    :cond_4
    :try_start_3
    sget v0, Lbh;->f:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_5

    .line 35
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_4
    const-string v0, "LensSdkParamsReader"

    const-string v1, "Failed to start Lens due to unexpected exception."

    .line 36
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    sget p1, Lbh;->f:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return p1

    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    .line 38
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 39
    :cond_6
    throw v0
.end method


# virtual methods
.method public final OooO00o(II)V
    .locals 9

    add-int/lit8 v0, p1, -0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Lens availability result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v2, p2, -0x2

    if-eqz p2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    .line 2
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Stickers availability result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v3, p0, Lak;->a:Lal;

    .line 3
    sget-object v4, Lal;->a:Ljava/lang/String;

    .line 4
    iget-object v4, v3, Lal;->f:Lbi;

    const/4 v5, 0x5

    .line 5
    invoke-virtual {v4, v5}, Lde;->OooO0O0(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lda;

    .line 6
    invoke-virtual {v5, v4}, Lda;->OooO00o(Lde;)V

    .line 7
    check-cast v5, Lbf;

    iget-boolean v4, v5, Lda;->c:Z

    const/4 v6, 0x0

    if-nez v4, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v5}, Lda;->b()V

    iput-boolean v6, v5, Lda;->c:Z

    :goto_0
    iget-object v4, v5, Lda;->b:Lde;

    .line 9
    move-object v7, v4

    check-cast v7, Lbi;

    sget-object v8, Lbi;->f:Lbi;

    if-eqz p1, :cond_3

    iput v0, v7, Lbi;->d:I

    iget p1, v7, Lbi;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v7, Lbi;->a:I

    .line 10
    check-cast v4, Lbi;

    if-eqz p2, :cond_2

    iput v2, v4, Lbi;->e:I

    iget p1, v4, Lbi;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v4, Lbi;->a:I

    .line 11
    invoke-virtual {v5}, Lda;->OooO0O0()Lde;

    move-result-object p1

    check-cast p1, Lbi;

    iput-object p1, v3, Lal;->f:Lbi;

    iget-object p1, p0, Lak;->a:Lal;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lal;->g:Z

    .line 12
    iget-object p1, p1, Lal;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    :goto_1
    if-ge v6, p2, :cond_1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Lai;

    iget-object v1, p0, Lak;->a:Lal;

    .line 14
    iget-object v1, v1, Lal;->f:Lbi;

    .line 15
    invoke-interface {v0, v1}, Lai;->OooO00o(Lbi;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lak;->a:Lal;

    .line 16
    iget-object p1, p1, Lal;->e:Ljava/util/List;

    .line 17
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    .line 18
    :cond_2
    throw v1

    .line 19
    :cond_3
    throw v1

    .line 20
    :cond_4
    throw v1

    .line 21
    :cond_5
    throw v1
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    sget-object p1, Lal;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lak;->OooO00o(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lak;->b:I

    sget-object p1, Lal;->b:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1}, Lak;->OooO00o(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lak;->c:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    iget p1, p0, Lak;->b:I

    iget v0, p0, Lak;->c:I

    .line 2
    invoke-virtual {p0, p1, v0}, Lak;->OooO00o(II)V

    return-void
.end method

.method public final onPreExecute()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lak;->a:Lal;

    .line 1
    sget-object v2, Lal;->a:Ljava/lang/String;

    .line 2
    iget-object v1, v1, Lal;->d:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Laj;

    invoke-direct {v1, p0}, Laj;-><init>(Lak;)V

    const-wide/16 v2, 0x7d0

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
