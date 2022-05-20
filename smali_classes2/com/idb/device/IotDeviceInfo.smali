.class public Lcom/idb/device/IotDeviceInfo;
.super Ljava/lang/Object;
.source "IotDeviceInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IotDeviceInfo"


# instance fields
.field public bssid:Ljava/lang/String;

.field public did:Ljava/lang/String;

.field public isOnline:Z

.field public latitude:Ljava/lang/String;

.field public localip:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public parent_id:Ljava/lang/String;

.field public permitLevel:I

.field public pid:I

.field public rssi:I

.field public show_mode:I

.field public spec_type:Ljava/lang/String;

.field public ssid:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public uid:J

.field public voice_ctrl:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildFromJson(Ljava/lang/String;)Lcom/idb/device/IotDeviceInfo;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/idb/device/IotDeviceInfo;->buildFromJson(Lorg/json/JSONObject;)Lcom/idb/device/IotDeviceInfo;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "IotDeviceInfo"

    const-string v1, ""

    .line 2
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final buildFromJson(Lorg/json/JSONObject;)Lcom/idb/device/IotDeviceInfo;
    .locals 3

    .line 3
    :try_start_0
    new-instance v0, Lcom/idb/device/IotDeviceInfo;

    invoke-direct {v0}, Lcom/idb/device/IotDeviceInfo;-><init>()V

    const-string v1, "did"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->did:Ljava/lang/String;

    const-string v1, "uid"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/idb/device/IotDeviceInfo;->uid:J

    const-string v1, "token"

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->token:Ljava/lang/String;

    const-string v1, "name"

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->name:Ljava/lang/String;

    const-string v1, "pid"

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/idb/device/IotDeviceInfo;->pid:I

    const-string v1, "localip"

    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->localip:Ljava/lang/String;

    const-string v1, "mac"

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->mac:Ljava/lang/String;

    const-string v1, "ssid"

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->ssid:Ljava/lang/String;

    const-string v1, "bssid"

    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->bssid:Ljava/lang/String;

    const-string v1, "rssi"

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/idb/device/IotDeviceInfo;->rssi:I

    const-string v1, "longitude"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->longitude:Ljava/lang/String;

    const-string v1, "latitude"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->latitude:Ljava/lang/String;

    const-string v1, "parent_id"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->parent_id:Ljava/lang/String;

    const-string v1, "show_mode"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/idb/device/IotDeviceInfo;->show_mode:I

    const-string v1, "model"

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->model:Ljava/lang/String;

    const-string v1, "permitLevel"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/idb/device/IotDeviceInfo;->permitLevel:I

    const-string v1, "isOnline"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/idb/device/IotDeviceInfo;->isOnline:Z

    const-string v1, "spec_type"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/idb/device/IotDeviceInfo;->spec_type:Ljava/lang/String;

    const-string v1, "voice_ctrl"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/idb/device/IotDeviceInfo;->voice_ctrl:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "IotDeviceInfo"

    const-string v1, "Error when create IotDeviceInfo"

    .line 23
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/idb/device/IotDeviceInfo;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/idb/device/IotDeviceInfo;->did:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/idb/device/IotDeviceInfo;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/idb/device/IotDeviceInfo;->localip:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/idb/device/IotDeviceInfo;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/idb/device/IotDeviceInfo;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/idb/device/IotDeviceInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/idb/device/IotDeviceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/idb/device/IotDeviceInfo;->parent_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPermitLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/idb/device/IotDeviceInfo;->permitLevel:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/idb/device/IotDeviceInfo;->pid:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/idb/device/IotDeviceInfo;->rssi:I

    return v0
.end method

.method public getShow_mode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/idb/device/IotDeviceInfo;->show_mode:I

    return v0
.end method

.method public getSpec_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/idb/device/IotDeviceInfo;->spec_type:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/idb/device/IotDeviceInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/idb/device/IotDeviceInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/idb/device/IotDeviceInfo;->uid:J

    return-wide v0
.end method

.method public getVoice_ctrl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/idb/device/IotDeviceInfo;->voice_ctrl:I

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/idb/device/IotDeviceInfo;->isOnline:Z

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "did"

    .line 2
    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->did:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "uid"

    .line 3
    iget-wide v2, p0, Lcom/idb/device/IotDeviceInfo;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "token"

    .line 4
    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->token:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "name"

    .line 5
    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "pid"

    .line 6
    iget v2, p0, Lcom/idb/device/IotDeviceInfo;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "localip"

    .line 7
    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->localip:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "mac"

    .line 8
    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->mac:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ssid"

    .line 9
    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->ssid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "bssid"

    .line 10
    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->bssid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "rssi"

    .line 11
    iget v2, p0, Lcom/idb/device/IotDeviceInfo;->rssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "longitude"

    .line 12
    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->longitude:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "latitude"

    .line 13
    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->latitude:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "parent_id"

    .line 14
    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->parent_id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "show_mode"

    .line 15
    iget v2, p0, Lcom/idb/device/IotDeviceInfo;->show_mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "model"

    .line 16
    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->model:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "permitLevel"

    .line 17
    iget v2, p0, Lcom/idb/device/IotDeviceInfo;->permitLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "isOnline"

    .line 18
    iget-boolean v2, p0, Lcom/idb/device/IotDeviceInfo;->isOnline:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "spec_type"

    .line 19
    iget-object v2, p0, Lcom/idb/device/IotDeviceInfo;->spec_type:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "voice_ctrl"

    .line 20
    iget v2, p0, Lcom/idb/device/IotDeviceInfo;->voice_ctrl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/idb/device/IotDeviceInfo;->setJsonValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "IotDeviceInfo"

    const-string v3, ""

    .line 21
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/idb/device/IotDeviceInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
