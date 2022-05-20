.class public Lcom/xiaomi/idm/account/ServiceTokenInfo;
.super Lcom/xiaomi/idm/account/TokenInfo;
.source "ServiceTokenInfo.java"


# static fields
.field public static final KEY_ID:Ljava/lang/String; = "ServiceTokenInfo"

.field public static final TAG:Ljava/lang/String; = "ServiceTokenInfo"


# instance fields
.field public cUserId:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field public ssecurity:Ljava/lang/String;

.field public timeDiff:J

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/account/TokenInfo;-><init>()V

    return-void
.end method

.method public static buildFromJson(Lorg/json/JSONObject;)Lcom/xiaomi/idm/account/ServiceTokenInfo;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/xiaomi/idm/account/ServiceTokenInfo;

    invoke-direct {v0}, Lcom/xiaomi/idm/account/ServiceTokenInfo;-><init>()V

    const-string v1, "token"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/account/TokenInfo;->token:Ljava/lang/String;

    const-string v1, "userId"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->userId:Ljava/lang/String;

    const-string v1, "sid"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->sid:Ljava/lang/String;

    const-string v1, "cUserId"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->cUserId:Ljava/lang/String;

    const-string v1, "ssecurity"

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->ssecurity:Ljava/lang/String;

    const-string v1, "domain"

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->domain:Ljava/lang/String;

    const-string v1, "timeDiff"

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->timeDiff:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceTokenInfo"

    invoke-static {v1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/xiaomi/idm/account/ServiceTokenInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/account/TokenInfo;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/idm/account/ServiceTokenInfo;

    iget-object v1, p1, Lcom/xiaomi/idm/account/TokenInfo;->token:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/xiaomi/idm/account/ServiceTokenInfo;->userId:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->sid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/xiaomi/idm/account/ServiceTokenInfo;->sid:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->cUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/xiaomi/idm/account/ServiceTokenInfo;->cUserId:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->ssecurity:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/xiaomi/idm/account/ServiceTokenInfo;->ssecurity:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->domain:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/xiaomi/idm/account/ServiceTokenInfo;->domain:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    const-string v0, "ServiceTokenInfo"

    return-object v0
.end method

.method public toJsonSub()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "token"

    .line 2
    iget-object v2, p0, Lcom/xiaomi/idm/account/TokenInfo;->token:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/idm/account/ServiceTokenInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "sid"

    .line 3
    iget-object v2, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->sid:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/idm/account/ServiceTokenInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "userId"

    .line 4
    iget-object v2, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->userId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/idm/account/ServiceTokenInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "cUserId"

    .line 5
    iget-object v2, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->cUserId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/idm/account/ServiceTokenInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ssecurity"

    .line 6
    iget-object v2, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->ssecurity:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/idm/account/ServiceTokenInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "domain"

    .line 7
    iget-object v2, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->domain:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/idm/account/ServiceTokenInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "timeDiff"

    .line 8
    iget-wide v2, p0, Lcom/xiaomi/idm/account/ServiceTokenInfo;->timeDiff:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/idm/account/ServiceTokenInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceTokenInfo"

    invoke-static {v3, v2, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method
