.class public Lcom/idb/device/CameraResource;
.super Ljava/lang/Object;
.source "CameraResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idb/device/CameraResource$CameraControl;
    }
.end annotation


# static fields
.field public static final RES_TYPE:Ljava/lang/String; = "P2pStream"

.field public static final TAG:Ljava/lang/String; = "CameraResource"


# instance fields
.field public cameraControl:Lcom/idb/device/CameraResource$CameraControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFromJson(Ljava/lang/String;)Lcom/idb/device/CameraResource;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CameraResource"

    const-string v1, ""

    .line 2
    invoke-static {v0, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/idb/device/CameraResource;->buildFromJson(Lorg/json/JSONObject;)Lcom/idb/device/CameraResource;

    move-result-object p0

    return-object p0
.end method

.method public static buildFromJson(Lorg/json/JSONObject;)Lcom/idb/device/CameraResource;
    .locals 2

    .line 4
    new-instance v0, Lcom/idb/device/CameraResource;

    invoke-direct {v0}, Lcom/idb/device/CameraResource;-><init>()V

    const-string v1, "cameraControl"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    new-instance v1, Lcom/idb/device/CameraResource$CameraControl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, p0}, Lcom/idb/device/CameraResource$CameraControl;-><init>(Lcom/idb/device/CameraResource;Lorg/json/JSONObject;)V

    iput-object v1, v0, Lcom/idb/device/CameraResource;->cameraControl:Lcom/idb/device/CameraResource$CameraControl;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/idb/device/CameraResource;->cameraControl:Lcom/idb/device/CameraResource$CameraControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/idb/device/CameraResource$CameraControl;->access$100(Lcom/idb/device/CameraResource$CameraControl;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "P2pStream"

    return-object v0
.end method

.method public getVideoQuality()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/idb/device/CameraResource;->cameraControl:Lcom/idb/device/CameraResource$CameraControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/idb/device/CameraResource$CameraControl;->access$000(Lcom/idb/device/CameraResource$CameraControl;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public startAudio()V
    .locals 2

    .line 1
    new-instance v0, Lcom/idb/device/CameraResource$CameraControl;

    const-string v1, "CMD_START_AUDIO"

    invoke-direct {v0, p0, v1}, Lcom/idb/device/CameraResource$CameraControl;-><init>(Lcom/idb/device/CameraResource;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idb/device/CameraResource;->cameraControl:Lcom/idb/device/CameraResource$CameraControl;

    return-void
.end method

.method public startVideo(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/idb/device/CameraResource$CameraControl;

    const-string v1, "CMD_START_VIDEO"

    invoke-direct {v0, p0, v1}, Lcom/idb/device/CameraResource$CameraControl;-><init>(Lcom/idb/device/CameraResource;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idb/device/CameraResource;->cameraControl:Lcom/idb/device/CameraResource$CameraControl;

    .line 2
    invoke-static {v0, p1}, Lcom/idb/device/CameraResource$CameraControl;->access$002(Lcom/idb/device/CameraResource$CameraControl;I)I

    return-void
.end method

.method public startVideoAndAudio(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/idb/device/CameraResource$CameraControl;

    const-string v1, "CMD_START_VIDEOANDAUDIO"

    invoke-direct {v0, p0, v1}, Lcom/idb/device/CameraResource$CameraControl;-><init>(Lcom/idb/device/CameraResource;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idb/device/CameraResource;->cameraControl:Lcom/idb/device/CameraResource$CameraControl;

    .line 2
    invoke-static {v0, p1}, Lcom/idb/device/CameraResource$CameraControl;->access$002(Lcom/idb/device/CameraResource$CameraControl;I)I

    return-void
.end method

.method public stopAudio()V
    .locals 2

    .line 1
    new-instance v0, Lcom/idb/device/CameraResource$CameraControl;

    const-string v1, "CMD_STOP_AUDIO"

    invoke-direct {v0, p0, v1}, Lcom/idb/device/CameraResource$CameraControl;-><init>(Lcom/idb/device/CameraResource;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idb/device/CameraResource;->cameraControl:Lcom/idb/device/CameraResource$CameraControl;

    return-void
.end method

.method public stopVideo()V
    .locals 2

    .line 1
    new-instance v0, Lcom/idb/device/CameraResource$CameraControl;

    const-string v1, "CMD_STOP_VIDEO"

    invoke-direct {v0, p0, v1}, Lcom/idb/device/CameraResource$CameraControl;-><init>(Lcom/idb/device/CameraResource;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idb/device/CameraResource;->cameraControl:Lcom/idb/device/CameraResource$CameraControl;

    return-void
.end method

.method public stopVideoAndAudio()V
    .locals 2

    .line 1
    new-instance v0, Lcom/idb/device/CameraResource$CameraControl;

    const-string v1, "CMD_STOP_VIDEOANDAUDIO"

    invoke-direct {v0, p0, v1}, Lcom/idb/device/CameraResource$CameraControl;-><init>(Lcom/idb/device/CameraResource;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idb/device/CameraResource;->cameraControl:Lcom/idb/device/CameraResource$CameraControl;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/idb/device/CameraResource;->cameraControl:Lcom/idb/device/CameraResource$CameraControl;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/idb/device/CameraResource;->cameraControl:Lcom/idb/device/CameraResource$CameraControl;

    invoke-virtual {v1}, Lcom/idb/device/CameraResource$CameraControl;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "cameraControl"

    .line 4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CameraResource"

    const-string v2, ""

    .line 5
    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/idb/device/CameraResource;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
