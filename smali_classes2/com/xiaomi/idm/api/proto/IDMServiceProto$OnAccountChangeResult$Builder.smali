.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResultOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->access$14200()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNewAccount()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->access$15200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;)V

    return-object p0
.end method

.method public clearNewIdHash()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->access$14700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;)V

    return-object p0
.end method

.method public clearOldAccount()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->access$14900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;)V

    return-object p0
.end method

.method public clearSubChangeType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->access$14500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;)V

    return-object p0
.end method

.method public getNewAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->getNewAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->getNewAccountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNewIdHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->getNewIdHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOldAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->getOldAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOldAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->getOldAccountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSubChangeType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->getSubChangeType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;

    move-result-object v0

    return-object v0
.end method

.method public getSubChangeTypeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->getSubChangeTypeValue()I

    move-result v0

    return v0
.end method

.method public setNewAccount(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->access$15100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNewAccountBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->access$15300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNewIdHash(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->access$14600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOldAccount(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->access$14800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOldAccountBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->access$15000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSubChangeType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->access$14400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;)V

    return-object p0
.end method

.method public setSubChangeTypeValue(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;->access$14300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult;I)V

    return-object p0
.end method
