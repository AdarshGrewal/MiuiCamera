.class public Lcom/xiaomi/onetrack/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/a/f$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "ConfigDbManager"

.field public static final e:I = 0x64


# instance fields
.field public b:Lcom/xiaomi/onetrack/a/e;

.field public c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/onetrack/a/j;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-static {}, Lcom/xiaomi/onetrack/e/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/xiaomi/onetrack/a/e;

    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/a/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/onetrack/a/f;->b:Lcom/xiaomi/onetrack/a/e;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/onetrack/a/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/json/JSONObject;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/a/f;->b(Lorg/json/JSONObject;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/e;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/f;->b:Lcom/xiaomi/onetrack/a/e;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/a/f;
    .locals 1

    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/a/f$a;->a()Lcom/xiaomi/onetrack/a/f;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/a/f;Ljava/util/ArrayList;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static b(Lorg/json/JSONObject;)I
    .locals 3

    const/16 v0, 0x64

    :try_start_0
    const-string v1, "sample"

    .line 32
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p0, :cond_1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCommonSample Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ConfigDbManager"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/onetrack/a/j;",
            ">;)V"
        }
    .end annotation

    const-string v0, "events_cloud"

    const-string v1, "Exception while endTransaction:"

    const-string v2, "ConfigDbManager"

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/onetrack/a/f;->b:Lcom/xiaomi/onetrack/a/e;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v5, "app_id=?"

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/onetrack/a/j;

    .line 4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "app_id"

    .line 5
    iget-object v9, v6, Lcom/xiaomi/onetrack/a/j;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "timestamp"

    .line 6
    iget-wide v9, v6, Lcom/xiaomi/onetrack/a/j;->c:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7
    iget-object v8, v6, Lcom/xiaomi/onetrack/a/j;->e:Lorg/json/JSONObject;

    if-eqz v8, :cond_0

    const-string v8, "cloud_data"

    .line 8
    iget-object v9, v6, Lcom/xiaomi/onetrack/a/j;->e:Lorg/json/JSONObject;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v8, "data_hash"

    .line 9
    iget-object v9, v6, Lcom/xiaomi/onetrack/a/j;->d:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    .line 10
    iget-object v10, v6, Lcom/xiaomi/onetrack/a/j;->a:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v4, v0, v5, v9}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v12, 0x0

    cmp-long v9, v9, v12

    if-lez v9, :cond_1

    new-array v9, v8, [Ljava/lang/String;

    .line 11
    iget-object v6, v6, Lcom/xiaomi/onetrack/a/j;->a:Ljava/lang/String;

    aput-object v6, v9, v11

    invoke-virtual {v4, v0, v7, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v4, v0, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 13
    :goto_1
    iget-object v6, p0, Lcom/xiaomi/onetrack/a/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    .line 15
    :try_start_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v3, v4

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    :goto_2
    :try_start_3
    const-string v0, "updateToDb error: "

    .line 17
    invoke-static {v2, v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    .line 18
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    return-void

    :goto_5
    if-eqz v3, :cond_4

    .line 20
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_4
    :goto_6
    throw p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "ConfigDbManager"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/a/f;->b(Ljava/lang/String;)V

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/onetrack/a/j;

    if-eqz p1, :cond_6

    .line 5
    iget-object v1, p1, Lcom/xiaomi/onetrack/a/j;->e:Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    .line 6
    iget-object p1, p1, Lcom/xiaomi/onetrack/a/j;->e:Lorg/json/JSONObject;

    const-string v1, "events"

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "event"

    .line 10
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 11
    sget-boolean p1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz p1, :cond_4

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getEventConfig:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    const-string p2, ""

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEventConfig error: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)D
    .locals 1

    const-string v0, "ConfigDbManager"

    .line 27
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/a/f;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "config not available, use default value"

    .line 28
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p4

    .line 29
    :cond_0
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getDouble: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    const-string v0, "ConfigDbManager"

    .line 19
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/a/f;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "config not available, use default value"

    .line 20
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p4

    .line 21
    :cond_0
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getInt: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 1

    const-string v0, "ConfigDbManager"

    .line 23
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/a/f;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "config not available, use default value"

    .line 24
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p4

    .line 25
    :cond_0
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getLong: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "ConfigDbManager"

    .line 15
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/a/f;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "config not available, use default value"

    .line 16
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4

    .line 17
    :cond_0
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getString: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 6
    new-instance v0, Lcom/xiaomi/onetrack/a/h;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/a/h;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 8
    invoke-static {p1}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/Runnable;)V

    .line 9
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/onetrack/a/j;",
            ">;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/xiaomi/onetrack/a/g;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/a/g;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 31
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/a/f;->d(Ljava/lang/String;)Lcom/xiaomi/onetrack/a/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p1, Lcom/xiaomi/onetrack/a/j;->e:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/xiaomi/onetrack/a/j;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object p1, p1, Lcom/xiaomi/onetrack/a/j;->e:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAppLevelBoolean"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConfigDbManager"

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "ConfigDbManager"

    .line 11
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/a/f;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "config not available, use default value"

    .line 12
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p4

    .line 13
    :cond_0
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getBoolean: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p4
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6

    const-string v0, "ConfigDbManager"

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x64

    if-eqz v1, :cond_0

    return-wide v2

    .line 35
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 36
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/a/f;->b(Ljava/lang/String;)V

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "sample"

    const/4 v4, -0x1

    .line 38
    invoke-virtual {p0, p1, p2, v1, v4}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v4, :cond_2

    .line 39
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/onetrack/a/j;

    if-eqz p1, :cond_2

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "will return common sample "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/xiaomi/onetrack/a/j;->b:J

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-wide p1, p1, Lcom/xiaomi/onetrack/a/j;->b:J

    return-wide p1

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "will return event sample "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long p1, p2

    return-wide p1

    :catch_0
    move-exception p1

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppEventSample"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "will return def sample"

    .line 44
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    const-string v0, "ConfigDbManager"

    .line 23
    new-instance v1, Lcom/xiaomi/onetrack/a/i;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/i;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)V

    .line 24
    new-instance v2, Ljava/util/concurrent/FutureTask;

    invoke-direct {v2, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 25
    invoke-static {v2}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x5

    .line 26
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/onetrack/a/j;

    if-eqz v1, :cond_0

    .line 27
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    sget-boolean v2, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v2, :cond_0

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig   appId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " config: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/a/j;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfig error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/a/f;->d(Ljava/lang/String;)Lcom/xiaomi/onetrack/a/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p1, Lcom/xiaomi/onetrack/a/j;->d:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/onetrack/a/j;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/a/f;->b(Ljava/lang/String;)V

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/onetrack/a/j;

    return-object p1
.end method
