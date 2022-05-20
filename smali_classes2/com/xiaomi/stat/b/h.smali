.class public Lcom/xiaomi/stat/b/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "SecretKeyManager"

.field public static final b:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCA1ynlvPE46RxIPx6qrb8f20DU\n\rkAJgwHtD3zCEkgOjcvFY2mLl0UGnK1F0Vsh4LvImSCa8o8qYYfBguROgIXRdJGZ+\n\rk9stSV7vWmcsxphMfHEE9R4q+QWqgPBSzwyWmwmAQ7PZmHifOrEYl9t/l0YtmjnW\n\r8Zs3aL7Ap9CGse2kWwIDAQAB\r"

.field public static final c:Ljava/lang/String; = "sid"

.field public static final d:Ljava/lang/String; = "sk"

.field public static final e:Ljava/lang/String; = "rt"

.field public static final f:Ljava/lang/String; = "rc"

.field public static final g:Ljava/lang/String; = "request_history"

.field public static final h:Ljava/lang/String; = "last_aes_content"

.field public static final i:Ljava/lang/String; = "last_success_time"

.field public static final j:Ljava/lang/String; = "4ef8b4ac42dbc3f95320b73ae0edbd43"

.field public static final k:Ljava/lang/String; = "050f03d86eeafeb29cf38986462d957c"

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field public static final n:Ljava/lang/String; = "1"

.field public static final o:Ljava/lang/String; = "0"

.field public static final p:I = 0x7

.field public static final q:I = 0xf

.field public static volatile r:Lcom/xiaomi/stat/b/h;


# instance fields
.field public s:Landroid/content/Context;

.field public t:[B

.field public u:[B

.field public v:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/h;->s:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->d()V

    return-void
.end method

.method public static a()Lcom/xiaomi/stat/b/h;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/b/h;->r:Lcom/xiaomi/stat/b/h;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xiaomi/stat/b/h;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xiaomi/stat/b/h;->r:Lcom/xiaomi/stat/b/h;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xiaomi/stat/b/h;

    invoke-direct {v1}, Lcom/xiaomi/stat/b/h;-><init>()V

    sput-object v1, Lcom/xiaomi/stat/b/h;->r:Lcom/xiaomi/stat/b/h;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/stat/b/h;->r:Lcom/xiaomi/stat/b/h;

    return-object v0
.end method

.method private b(Z)Z
    .locals 6

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const-string v2, "SecretKeyManager"

    const/16 v3, 0x12

    if-ge v0, v3, :cond_0

    const-string p1, "under 4.3,use randomly generated key"

    .line 9
    invoke-static {v2, p1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->k()V

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->g()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "sid"

    .line 13
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sk"

    .line 14
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    const-string p1, "key and sid already requested successfully in recent 7 days!"

    .line 16
    invoke-static {v2, p1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 17
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->h()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "rt"

    .line 18
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "rc"

    .line 19
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 20
    invoke-static {v3, v4}, Lcom/xiaomi/stat/d/r;->b(J)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xf

    if-lt v0, v3, :cond_3

    if-nez p1, :cond_3

    const-string p1, "request count > max count today, skip..."

    .line 21
    invoke-static {v2, p1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 22
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->f()Z

    move-result p1

    return p1
.end method

.method private d()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/d/a;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/h;->u:[B

    if-eqz v0, :cond_0

    .line 2
    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "050f03d86eeafeb29cf38986462d957c"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/stat/d/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/h;->u:[B

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/b/h;->u:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v2, "utf-8"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/xiaomi/stat/d/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "4ef8b4ac42dbc3f95320b73ae0edbd43"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/h;->t:[B

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->g()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "sk"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sid"

    .line 4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/b/h;->u:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private f()Z
    .locals 11

    const-string v0, "sid"

    const-string v1, "SecretKeyManager"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/d/a;->a()[B

    move-result-object v4

    const-string v5, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCA1ynlvPE46RxIPx6qrb8f20DU\n\rkAJgwHtD3zCEkgOjcvFY2mLl0UGnK1F0Vsh4LvImSCa8o8qYYfBguROgIXRdJGZ+\n\rk9stSV7vWmcsxphMfHEE9R4q+QWqgPBSzwyWmwmAQ7PZmHifOrEYl9t/l0YtmjnW\n\r8Zs3aL7Ap9CGse2kWwIDAQAB\r"

    .line 2
    invoke-static {v5}, Lcom/xiaomi/stat/d/d;->a(Ljava/lang/String;)[B

    move-result-object v5

    .line 3
    invoke-static {v5, v4}, Lcom/xiaomi/stat/d/o;->a([B[B)[B

    move-result-object v5

    .line 4
    invoke-static {v5}, Lcom/xiaomi/stat/d/d;->a([B)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->i()V

    .line 6
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "skey_rsa"

    .line 7
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/xiaomi/stat/b/f;->a()Lcom/xiaomi/stat/b/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/stat/b/f;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6, v2}, Lcom/xiaomi/stat/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "msg"

    .line 12
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "code"

    .line 13
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "curTime"

    .line 14
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v10, "result"

    .line 15
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v7, v3, :cond_0

    if-eqz v6, :cond_0

    .line 16
    :try_start_1
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "key"

    .line 17
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-static {v5, v4}, Lcom/xiaomi/stat/d/a;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    .line 19
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "sk"

    .line 20
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/h;->v:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/xiaomi/stat/b/h;->s:Landroid/content/Context;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/stat/d/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v3

    const-string v4, "last_aes_content"

    invoke-virtual {v3, v4, v0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v3, "last_success_time"

    invoke-virtual {v0, v3, v8, v9}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;J)V

    .line 26
    invoke-static {v8, v9}, Lcom/xiaomi/stat/d/r;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v7, v0, :cond_1

    .line 27
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update secret-key failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    move v2, v3

    goto :goto_1

    :catch_1
    move-exception v0

    move v2, v3

    :goto_0
    const-string v3, "updateSecretKey e"

    .line 28
    invoke-static {v1, v3, v0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v2
.end method

.method private g()Lorg/json/JSONObject;
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "last_aes_content"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/xiaomi/stat/b/h;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/xiaomi/stat/b/h;->v:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/stat/b/h;->s:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/xiaomi/stat/b/h;->v:Ljava/lang/String;

    .line 7
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "SecretKeyManager"

    const-string v2, "decodeFromAndroidKeyStore e"

    .line 8
    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private h()Lorg/json/JSONObject;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "request_history"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "SecretKeyManager"

    const-string v2, "getRequestHistory e"

    .line 4
    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method private i()V
    .locals 6

    const-string v0, "rt"

    const-string v1, "rc"

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->h()Lorg/json/JSONObject;

    move-result-object v2

    .line 2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 3
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 4
    invoke-static {v3, v4}, Lcom/xiaomi/stat/d/r;->b(J)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    add-int/2addr v5, v4

    .line 5
    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    :goto_0
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "request_history"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SecretKeyManager"

    const-string v2, "updateSecretKey e"

    .line 9
    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private j()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "last_success_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x240c8400

    .line 2
    invoke-static {v3, v4, v0, v1}, Lcom/xiaomi/stat/d/r;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/xiaomi/stat/b/h;->v:Ljava/lang/String;

    const-string v1, "last_aes_content"

    .line 3
    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;)V

    const-string v1, "last_success_time"

    .line 4
    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized l()Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->g()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "sk"

    .line 2
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sid"

    .line 3
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 5
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Z)V
    .locals 4

    monitor-enter p0

    .line 10
    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/xiaomi/stat/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 11
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_3

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/b/h;->b(Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    if-ne v1, v0, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v2, 0x2710

    .line 13
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 14
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "SecretKeyManager"

    const-string v0, "network not connected!"

    .line 15
    invoke-static {p1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :cond_4
    :goto_3
    :try_start_3
    const-string p1, "SecretKeyManager"

    const-string v0, "update abort: statistic or network is not enabled"

    .line 17
    invoke-static {p1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([B)[B
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "SecretKeyManager"

    const-string v0, "encrypt content is empty"

    .line 7
    invoke-static {p1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 8
    monitor-exit p0

    return-object p1

    .line 9
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/stat/d/a;->a([BLjava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->g()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "sid"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "sk"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 5
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/b/h;->t:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/stat/b/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "1"

    return-object v0
.end method
