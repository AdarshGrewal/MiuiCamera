.class public final Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IotLocalControlServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAliasOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;",
        "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAliasOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->access$11600()Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAid()Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->access$11800(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;)V

    return-object p0
.end method

.method public clearAppId()Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->access$12000(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;)V

    return-object p0
.end method

.method public clearSceneName()Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->access$12600(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;)V

    return-object p0
.end method

.method public clearServiceToken()Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->access$12300(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;)V

    return-object p0
.end method

.method public getAid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->getAid()I

    move-result v0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSceneName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->getSceneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSceneNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->getSceneNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->getServiceToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->getServiceTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->access$11700(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;I)V

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->access$11900(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->access$12100(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSceneName(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->access$12500(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSceneNameBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->access$12700(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setServiceToken(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->access$12200(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;->access$12400(Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetSceneAlias;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
