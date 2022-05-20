.class public Lcom/xiaomi/idm/api/conn/EndPoint;
.super Ljava/lang/Object;
.source "EndPoint.java"


# static fields
.field public static final MIRROR_V1_MC_VERSION:I = 0x102


# instance fields
.field public bdAddr:Ljava/lang/String;

.field public idhash:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public mVerifyStatus:I

.field public mac:Ljava/lang/String;

.field public mcVersion:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFromProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)Lcom/xiaomi/idm/api/conn/EndPoint;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/xiaomi/idm/api/conn/EndPoint;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/conn/EndPoint;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/conn/EndPoint;->setIp(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getBdAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/conn/EndPoint;->setBdAddr(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getIdhash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/conn/EndPoint;->setIdhash(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/conn/EndPoint;->setMac(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/conn/EndPoint;->setName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getMcVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/conn/EndPoint;->setMcVersion(I)V

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getVerifyStatus()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/api/conn/EndPoint;->setVerifyStatus(I)V

    return-object v0
.end method


# virtual methods
.method public getBdAddr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->bdAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getIdhash()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->idhash:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMcVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mcVersion:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mVerifyStatus:I

    return v0
.end method

.method public setBdAddr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->bdAddr:Ljava/lang/String;

    return-void
.end method

.method public setIdhash(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->idhash:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->ip:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mac:Ljava/lang/String;

    return-void
.end method

.method public setMcVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mcVersion:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->name:Ljava/lang/String;

    return-void
.end method

.method public setVerifyStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mVerifyStatus:I

    return-void
.end method

.method public toProto()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->ip:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->setIp(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->bdAddr:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->setBdAddr(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->idhash:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->setIdhash(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mac:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->setMac(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->setName(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    .line 12
    :cond_4
    iget v1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mcVersion:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->setMcVersion(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    .line 13
    iget v1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mVerifyStatus:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->setVerifyStatus(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    .line 14
    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EndPoint{ip = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bdAddress = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->bdAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", idhash = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->idhash:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mac = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mcVersion = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mcVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", verifyStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mVerifyStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
