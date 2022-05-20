.class public Lcom/xiaomi/idm/api/conn/ConnParam;
.super Ljava/lang/Object;
.source "ConnParam.java"


# static fields
.field public static final BLE_GATT:I = 0x10

.field public static final BT_GATT:I = 0x8

.field public static final BT_RFCOMM:I = 0x4

.field public static final COAP:I = 0x20

.field public static final CONNTYPE_WIFI_P2P_GC:I = 0x1

.field public static final CONNTYPE_WIFI_P2P_GO:I = 0x0

.field public static final CONNTYPE_WIFI_SOFTAP:I = 0x2

.field public static final CONNTYPE_WIFI_STATION:I = 0x3

.field public static final IDB:I = 0x80

.field public static final NFC:I = 0x40

.field public static final TAG:Ljava/lang/String; = "ConnParam"

.field public static final WLAN_GC_SOFTAP:I = 0x400

.field public static final WLAN_P2P:I = 0x100

.field public static final WLAN_SOFTAP:I = 0x200


# instance fields
.field public config:Lcom/xiaomi/idm/api/conn/ConnConfig;

.field public connLevel:I

.field public connType:I

.field public errCode:I

.field public errMsg:Ljava/lang/String;

.field public idHash:Ljava/lang/String;

.field public privateData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFromProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)Lcom/xiaomi/idm/api/conn/ConnParam;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/xiaomi/idm/api/conn/ConnParam;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/conn/ConnParam;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConnTypeValue()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->connType:I

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getErrCode()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->errCode:I

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->errMsg:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getIdHash()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->idHash:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConnLevel()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->connLevel:I

    .line 10
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getPrivateData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->privateData:[B

    .line 11
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConnTypeValue()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_3

    const/16 v2, 0x200

    if-eq v1, v2, :cond_3

    const/16 v2, 0x400

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/idm/api/conn/BLEConfig;->buildFromProto([B)Lcom/xiaomi/idm/api/conn/BLEConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Lcom/xiaomi/idm/api/conn/ConnConfig;

    .line 13
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ConnType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConnTypeValue()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ConnParam"

    invoke-static {v2, p0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/idm/api/conn/BTConfig;->buildFromProto([B)Lcom/xiaomi/idm/api/conn/BTConfig;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Lcom/xiaomi/idm/api/conn/ConnConfig;

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/idm/api/conn/WifiConfig;->buildFromProto([B)Lcom/xiaomi/idm/api/conn/WifiConfig;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Lcom/xiaomi/idm/api/conn/ConnConfig;

    :goto_1
    return-object v0
.end method

.method public static buildFromProto([B)Lcom/xiaomi/idm/api/conn/ConnParam;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConnParam"

    invoke-static {v2, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/xiaomi/idm/api/conn/ConnParam;->buildFromProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)Lcom/xiaomi/idm/api/conn/ConnParam;

    move-result-object p0

    return-object p0
.end method

.method public static buildFromQRCodeProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)Lcom/xiaomi/idm/api/conn/ConnParam;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7
    :cond_0
    new-instance v1, Lcom/xiaomi/idm/api/conn/ConnParam;

    invoke-direct {v1}, Lcom/xiaomi/idm/api/conn/ConnParam;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getConnType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getConnType()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    if-ne v4, v5, :cond_3

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v1, "ConnParam"

    const-string v2, "Illegal connType!"

    .line 10
    invoke-static {v1, v2, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 11
    :cond_3
    invoke-virtual {v1, v4}, Lcom/xiaomi/idm/api/conn/ConnParam;->setConnType(I)V

    .line 12
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getIdHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/idm/api/conn/ConnParam;->setIdHash(Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/xiaomi/idm/api/conn/WifiConfig;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/conn/WifiConfig;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getSsid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->ssid:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getPwd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->pwd:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getChannel()I

    move-result v2

    iput v2, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->channel:I

    .line 17
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getMacAddr()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/idm/api/conn/WifiConfig;->macAddr:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v0}, Lcom/xiaomi/idm/api/conn/ConnParam;->setConfig(Lcom/xiaomi/idm/api/conn/ConnConfig;)V

    return-object v1
.end method

.method public static buildFromQRCodeProto(Ljava/lang/String;)Lcom/xiaomi/idm/api/conn/ConnParam;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QR Code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "ConnParam"

    invoke-static {v3, p0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_1
    invoke-static {v0}, Lcom/xiaomi/idm/api/conn/ConnParam;->buildFromQRCodeProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)Lcom/xiaomi/idm/api/conn/ConnParam;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_2
    return-object v0
.end method


# virtual methods
.method public getConfig()Lcom/xiaomi/idm/api/conn/ConnConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Lcom/xiaomi/idm/api/conn/ConnConfig;

    return-object v0
.end method

.method public getConnLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connLevel:I

    return v0
.end method

.method public getConnType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connType:I

    return v0
.end method

.method public getErrCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->errCode:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getIdHash()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->idHash:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->privateData:[B

    return-object v0
.end method

.method public setConfig(Lcom/xiaomi/idm/api/conn/ConnConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Lcom/xiaomi/idm/api/conn/ConnConfig;

    return-void
.end method

.method public setConnLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connLevel:I

    return-void
.end method

.method public setConnType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connType:I

    return-void
.end method

.method public setIdHash(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->idHash:Ljava/lang/String;

    return-void
.end method

.method public setPrivateData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->privateData:[B

    return-void
.end method

.method public toProto()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 4

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connType:I

    if-eqz v1, :cond_9

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    const/16 v2, 0x10

    if-eq v1, v2, :cond_3

    const/16 v2, 0x100

    if-eq v1, v2, :cond_2

    const/16 v2, 0x200

    if-eq v1, v2, :cond_1

    const/16 v2, 0x400

    if-eq v1, v2, :cond_0

    .line 3
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->UNKNOWN:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ConnParam"

    const-string v3, "ConnType is unKnown"

    .line 4
    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_GC_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_P2P:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    .line 8
    :cond_3
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BLE_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    .line 9
    :cond_4
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BT_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    .line 10
    :cond_5
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BT_RFCOMM:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    .line 11
    :cond_6
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_STATION:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    .line 12
    :cond_7
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    .line 13
    :cond_8
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_P2P_GC:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    goto :goto_0

    .line 14
    :cond_9
    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_P2P_GO:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Lcom/xiaomi/idm/api/conn/ConnConfig;

    if-eqz v1, :cond_a

    .line 16
    invoke-virtual {v1}, Lcom/xiaomi/idm/api/conn/ConnConfig;->toProto()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConfig(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    .line 17
    :cond_a
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->privateData:[B

    if-eqz v1, :cond_b

    .line 18
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setPrivateData(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    .line 19
    :cond_b
    iget v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->errCode:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setErrCode(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    .line 20
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->idHash:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 21
    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setIdHash(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    .line 22
    :cond_c
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->errMsg:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 23
    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setErrMsg(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    .line 24
    :cond_d
    iget v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connLevel:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->setConnLevel(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;

    .line 25
    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnParam{connType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errMsg = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", idHash = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->idHash:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", connLevel = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->connLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", config = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->config:Lcom/xiaomi/idm/api/conn/ConnConfig;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", privateData = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/ConnParam;->privateData:[B

    .line 2
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
