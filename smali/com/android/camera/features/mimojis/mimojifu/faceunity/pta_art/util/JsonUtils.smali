.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "JsonUtils"

.field public static jsonUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;


# instance fields
.field public configJsonObject:Lorg/json/JSONObject;

.field public context:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->context:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->jsonUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->jsonUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 5
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->jsonUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;

    return-object p0
.end method

.method public static getPic(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    const-class v0, Lcom/android/camera/R$drawable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private resolveConfigJson(Lorg/json/JSONObject;I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;
    .locals 10

    const-string v0, "body_visible_parts"

    const-string v1, "age"

    const-string v2, "label"

    const-string v3, "icon"

    const-string v4, "bundle"

    const-string v5, "gender_match"

    const-string v6, "gender"

    .line 1
    new-instance v7, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-direct {v7}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;-><init>()V

    const/4 v8, -0x1

    .line 2
    :try_start_0
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    :cond_0
    const/4 v6, 0x2

    .line 4
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    :cond_1
    const/4 v5, 0x0

    if-eq v8, p2, :cond_2

    return-object v5

    .line 6
    :cond_2
    invoke-virtual {v7, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setGender(I)V

    .line 7
    invoke-virtual {v7, v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setGender_match(I)V

    .line 8
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBundle(Ljava/lang/String;)V

    .line 10
    :cond_3
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 11
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->getLastName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->getPic(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v7, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setIcon(I)V

    .line 12
    :cond_4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    .line 13
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 14
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 15
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Integer;

    move v4, v3

    .line 16
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 17
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move-object v2, v5

    .line 18
    :cond_6
    invoke-virtual {v7, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setLabel([Ljava/lang/Integer;)V

    .line 19
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 20
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    move v2, v3

    .line 22
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 23
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_2

    .line 24
    :cond_7
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    move-object v1, v5

    .line 25
    :cond_9
    invoke-virtual {v7, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setAge([Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    new-array v5, p2, [Ljava/lang/Integer;

    .line 29
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v3, p2, :cond_a

    .line 30
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 31
    :cond_a
    invoke-virtual {v7, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBody_visible_parts([Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    return-object v7
.end method


# virtual methods
.method public readJsonAnimation(Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->configJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/4 v3, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 5
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v3

    .line 6
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    .line 8
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 9
    :try_start_1
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    .line 10
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    move-object v7, v3

    .line 11
    :goto_3
    invoke-direct {p0, v7, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->resolveConfigJson(Lorg/json/JSONObject;I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 12
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 13
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public readJsonColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->configJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    invoke-direct {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;-><init>()V

    const-string/jumbo v4, "r"

    .line 7
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->setR(D)V

    const-string v4, "g"

    .line 8
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->setG(D)V

    const-string v4, "b"

    .line 9
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->setB(D)V

    .line 10
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 11
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public readJsonFile(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->configJsonObject:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public readJsonType(Ljava/lang/Object;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    instance-of v1, p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->configJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 8
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 9
    :goto_2
    invoke-direct {p0, v2, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->resolveConfigJson(Lorg/json/JSONObject;I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public readLocalJsonFile(Ljava/lang/String;)V
    .locals 6

    const-string v0, "inputStream close: "

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->MATERIAL_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->context:Landroid/content/Context;

    invoke-static {v3, p1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->copyFileTo(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 4
    :cond_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 6
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->configJsonObject:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 11
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    .line 12
    :goto_0
    :try_start_3
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 13
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 14
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_5
    move-exception p1

    .line 15
    :goto_1
    :try_start_5
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    .line 16
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    :catch_6
    move-exception p1

    .line 17
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_2

    .line 18
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    :catch_7
    move-exception v1

    .line 19
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_2
    :goto_5
    throw p1
.end method
