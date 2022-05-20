.class public LOooO00o/OooO00o/OooO00o/OooOo/OooO0O0;
.super Ljava/lang/Object;
.source "NetworkCache.java"


# instance fields
.field public final OooO00o:Landroid/content/Context;

.field public final OooO0O0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 3
    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo/OooO0O0;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method private OooO00o(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo/OooO0O0;->OooO00o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, LOooO00o/OooO00o/OooO00o/OooOo/OooO0O0;->OooO00o(Ljava/lang/String;LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 27
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo/OooO0O0;->OooO00o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;

    invoke-static {p1, v2, v3}, LOooO00o/OooO00o/OooO00o/OooOo/OooO0O0;->OooO00o(Ljava/lang/String;LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static OooO00o(Ljava/lang/String;LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;Z)Ljava/lang/String;
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lottie_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\W+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;->OooO00o()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;->OooO00o:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OooO00o()Landroidx/core/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo/OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-direct {p0, v1}, LOooO00o/OooO00o/OooO00o/OooOo/OooO0O0;->OooO00o(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".zip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;

    .line 6
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache hit for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooOo/OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO00o(Ljava/lang/String;)V

    .line 7
    new-instance v1, Landroidx/core/util/Pair;

    invoke-direct {v1, v0, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :catch_0
    return-object v0
.end method

.method public OooO00o(Ljava/io/InputStream;LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo/OooO0O0;->OooO0O0:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, LOooO00o/OooO00o/OooO00o/OooOo/OooO0O0;->OooO00o(Ljava/lang/String;LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;Z)Ljava/lang/String;

    move-result-object p2

    .line 9
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo/OooO0O0;->OooO00o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    .line 11
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 12
    invoke-virtual {p2, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 16
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 17
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw p2
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;)V
    .locals 4

    .line 18
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo/OooO0O0;->OooO0O0:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, LOooO00o/OooO00o/OooO00o/OooOo/OooO0O0;->OooO00o(Ljava/lang/String;LOooO00o/OooO00o/OooO00o/OooOo/OooO00o;Z)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo/OooO0O0;->OooO00o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, ".temp"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Copying temp file to real file ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO00o(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to rename cache file "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO0O0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
