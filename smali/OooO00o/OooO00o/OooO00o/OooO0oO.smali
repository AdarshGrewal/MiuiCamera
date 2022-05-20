.class public LOooO00o/OooO00o/OooO00o/OooO0oO;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"


# static fields
.field public static final OooO00o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO00o/OooO00o/OooO00o/OooOOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(LOooO00o/OooO00o/OooO00o/OooO0o;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooO;
    .locals 2

    .line 25
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0oo()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooO;

    .line 26
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO;->OooO0OO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;Ljava/lang/String;Z)LOooO00o/OooO00o/OooO00o/OooOOO;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;",
            "Ljava/lang/String;",
            "Z)",
            "LOooO00o/OooO00o/OooO00o/OooOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 18
    :try_start_0
    invoke-static {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOo00;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;)LOooO00o/OooO00o/OooO00o/OooO0o;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 19
    invoke-static {}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oO;->OooO0O0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oO;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oO;->OooO00o(Ljava/lang/String;LOooO00o/OooO00o/OooO00o/OooO0o;)V

    .line 20
    :cond_0
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOOO;

    invoke-direct {p1, v0}, LOooO00o/OooO00o/OooO00o/OooOOO;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 21
    invoke-static {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Ljava/io/Closeable;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    :try_start_1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOOO;

    invoke-direct {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOOO;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 23
    invoke-static {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Ljava/io/Closeable;)V

    :cond_2
    return-object v0

    :goto_0
    if-eqz p2, :cond_3

    invoke-static {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Ljava/io/Closeable;)V

    :cond_3
    throw p1
.end method

.method public static OooO00o(Ljava/io/InputStream;Ljava/lang/String;Z)LOooO00o/OooO00o/OooO00o/OooOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z)",
            "LOooO00o/OooO00o/OooO00o/OooOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 13
    :try_start_0
    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Lokio/BufferedSource;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;

    move-result-object v0

    invoke-static {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO0O0(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 14
    invoke-static {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Ljava/io/Closeable;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-static {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Ljava/io/Closeable;)V

    :cond_1
    throw p1
.end method

.method public static OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO;

    invoke-direct {v0, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO;-><init>(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;Ljava/lang/String;)V

    invoke-static {p1, v0}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(Ljava/lang/String;Ljava/util/concurrent/Callable;)LOooO00o/OooO00o/OooO00o/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Landroid/content/Context;I)LOooO00o/OooO00o/OooO00o/OooOOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "LOooO00o/OooO00o/OooO00o/OooOOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO0OO(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(Landroid/content/Context;ILjava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Landroid/content/Context;ILjava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOOO;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 10
    new-instance v1, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0o0;

    invoke-direct {v1, v0, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0o0;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;I)V

    invoke-static {p2, v1}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(Ljava/lang/String;Ljava/util/concurrent/Callable;)LOooO00o/OooO00o/OooO00o/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Landroid/content/Context;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOOO;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p0, p1, v0}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 6
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0Oo;

    invoke-direct {v0, p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0Oo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(Ljava/lang/String;Ljava/util/concurrent/Callable;)LOooO00o/OooO00o/OooO00o/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Ljava/io/InputStream;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0o;

    invoke-direct {v0, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0o;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p1, v0}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(Ljava/lang/String;Ljava/util/concurrent/Callable;)LOooO00o/OooO00o/OooO00o/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Ljava/lang/String;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0oo;

    invoke-direct {v0, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0oo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(Ljava/lang/String;Ljava/util/concurrent/Callable;)LOooO00o/OooO00o/OooO00o/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Ljava/lang/String;Ljava/util/concurrent/Callable;)LOooO00o/OooO00o/OooO00o/OooOOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "LOooO00o/OooO00o/OooO00o/OooOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;>;)",
            "LOooO00o/OooO00o/OooO00o/OooOOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oO;->OooO0O0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oO;

    move-result-object v0

    invoke-virtual {v0, p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oO;->OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooO0o;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 28
    new-instance p0, LOooO00o/OooO00o/OooO00o/OooOOOO;

    new-instance p1, LOooO00o/OooO00o/OooO00o/OooO0oO$OooOO0O;

    invoke-direct {p1, v0}, LOooO00o/OooO00o/OooO00o/OooO0oO$OooOO0O;-><init>(LOooO00o/OooO00o/OooO00o/OooO0o;)V

    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOOOO;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 29
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    sget-object p1, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOooO00o/OooO00o/OooO00o/OooOOOO;

    return-object p0

    .line 31
    :cond_2
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOOOO;

    invoke-direct {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOOOO;-><init>(Ljava/util/concurrent/Callable;)V

    if-eqz p0, :cond_3

    .line 32
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO00o;

    invoke-direct {p1, p0}, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO00o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOOOO;->OooO0O0(LOooO00o/OooO00o/OooO00o/OooOO0;)LOooO00o/OooO00o/OooO00o/OooOOOO;

    .line 33
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0O0;

    invoke-direct {p1, p0}, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0O0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOOOO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOO0;)LOooO00o/OooO00o/OooO00o/OooOOOO;

    .line 34
    sget-object p1, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public static OooO00o(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooOO0;

    invoke-direct {v0, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oO$OooOO0;-><init>(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V

    invoke-static {p1, v0}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(Ljava/lang/String;Ljava/util/concurrent/Callable;)LOooO00o/OooO00o/OooO00o/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Lorg/json/JSONObject;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0oO;

    invoke-direct {v0, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0oO;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p1, v0}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(Ljava/lang/String;Ljava/util/concurrent/Callable;)LOooO00o/OooO00o/OooO00o/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o:Ljava/util/Map;

    return-object v0
.end method

.method public static OooO00o(I)V
    .locals 1

    .line 2
    invoke-static {}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oO;->OooO0O0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oO;

    move-result-object v0

    invoke-virtual {v0, p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oO;->OooO00o(I)V

    return-void
.end method

.method public static OooO00o(Landroid/content/Context;)Z
    .locals 1

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static OooO0O0(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 14
    invoke-static {p0, p1, v0}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;Ljava/lang/String;Z)LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0O0(Landroid/content/Context;I)LOooO00o/OooO00o/OooO00o/OooOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "LOooO00o/OooO00o/OooO00o/OooOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO0OO(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO0O0(Landroid/content/Context;ILjava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0O0(Landroid/content/Context;ILjava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p2}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO0O0(Ljava/io/InputStream;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOOO;

    invoke-direct {p1, p0}, LOooO00o/OooO00o/OooO00o/OooOOO;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static OooO0O0(Landroid/content/Context;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, p1, v0}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, ".zip"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p2}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO0O0(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p2}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO0O0(Ljava/io/InputStream;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOOO;

    invoke-direct {p1, p0}, LOooO00o/OooO00o/OooO00o/OooOOO;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static OooO0O0(Ljava/io/InputStream;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 10
    invoke-static {p0, p1, v0}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(Ljava/io/InputStream;Ljava/lang/String;Z)LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0O0(Ljava/lang/String;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 13
    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p0

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    invoke-static {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Lokio/BufferedSource;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;

    move-result-object p0

    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO0O0(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0O0(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 15
    :try_start_0
    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO0OO(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static OooO0O0(Lorg/json/JSONObject;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0OO(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "__MACOSX"

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, ".json"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-static {v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Lokio/BufferedSource;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;

    move-result-object v1

    const/4 v3, 0x0

    .line 11
    invoke-static {v1, v2, v3}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;Ljava/lang/String;Z)LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooOOO;->OooO0O0()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LOooO00o/OooO00o/OooO00o/OooO0o;

    goto :goto_2

    :cond_1
    const-string v1, ".png"

    .line 12
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".webp"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "/"

    .line 14
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 15
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v1, v4

    .line 16
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :goto_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    .line 18
    new-instance p0, LOooO00o/OooO00o/OooO00o/OooOOO;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOOO;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 19
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO0o;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooO;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooO;->OooO0o()I

    move-result v2

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooO;->OooO0Oo()I

    move-result v4

    invoke-static {v0, v2, v4}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, LOooO00o/OooO00o/OooO00o/OooO;->OooO00o(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 22
    :cond_7
    invoke-virtual {v3}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0oo()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO00o/OooO00o/OooO00o/OooO;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooO;->OooO00o()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_8

    .line 24
    new-instance p0, LOooO00o/OooO00o/OooO00o/OooOOO;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no image for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooO;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO;->OooO0OO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOOO;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_9
    if-eqz p1, :cond_a

    .line 25
    invoke-static {}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oO;->OooO0O0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oO;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0oO;->OooO00o(Ljava/lang/String;LOooO00o/OooO00o/OooO00o/OooO0o;)V

    .line 26
    :cond_a
    new-instance p0, LOooO00o/OooO00o/OooO00o/OooOOO;

    invoke-direct {p0, v3}, LOooO00o/OooO00o/OooO00o/OooOOO;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 27
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOOO;

    invoke-direct {p1, p0}, LOooO00o/OooO00o/OooO00o/OooOOO;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static OooO0OO(Landroid/content/Context;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOOO;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "url_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0OO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0OO;

    invoke-direct {v0, p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0OO;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2, v0}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(Ljava/lang/String;Ljava/util/concurrent/Callable;)LOooO00o/OooO00o/OooO00o/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0OO(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rawRes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "_night_"

    goto :goto_0

    :cond_0
    const-string p0, "_day_"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0Oo(Landroid/content/Context;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOo/OooO0OO;->OooO00o(Landroid/content/Context;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object p0

    return-object p0
.end method
