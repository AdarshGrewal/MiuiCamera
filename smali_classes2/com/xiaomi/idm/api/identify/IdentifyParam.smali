.class public Lcom/xiaomi/idm/api/identify/IdentifyParam;
.super Ljava/lang/Object;
.source "IdentifyParam.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IdentifyParam"


# instance fields
.field public appid:Ljava/lang/String;

.field public cUserId:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public serviceToken:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field public ssecurity:Ljava/lang/String;

.field public timeDiff:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFromProto(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;)Lcom/xiaomi/idm/api/identify/IdentifyParam;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/identify/IdentifyParam;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;->getServiceToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->serviceToken:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;->getTimeDiff()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->timeDiff:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;->getDomain()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->domain:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;->getSid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->sid:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->userId:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;->getSsecurity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->ssecurity:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;->getCUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->cUserId:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;->getAppId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public static buildFromProto([B)Lcom/xiaomi/idm/api/identify/IdentifyParam;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;->parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdentifyParam"

    invoke-static {v2, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/xiaomi/idm/api/identify/IdentifyParam;->buildFromProto(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;)Lcom/xiaomi/idm/api/identify/IdentifyParam;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->serviceToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getSsecurity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->ssecurity:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeDiff()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->timeDiff:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getcUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->cUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->appid:Ljava/lang/String;

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->domain:Ljava/lang/String;

    return-void
.end method

.method public setServiceToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->serviceToken:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->sid:Ljava/lang/String;

    return-void
.end method

.method public setSsecurity(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->ssecurity:Ljava/lang/String;

    return-void
.end method

.method public setTimeDiff(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->timeDiff:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->userId:Ljava/lang/String;

    return-void
.end method

.method public setcUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->cUserId:Ljava/lang/String;

    return-void
.end method

.method public toProto()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->serviceToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;->setServiceToken(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->userId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;->setUserId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->sid:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;->setSid(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->cUserId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;->setCUserId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->ssecurity:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;->setSsecurity(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->domain:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;->setDomain(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->timeDiff:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;->setTimeDiff(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;

    .line 16
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/idm/api/identify/IdentifyParam;->appid:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;

    .line 18
    :cond_7
    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    return-object v0
.end method
