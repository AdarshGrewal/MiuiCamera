.class public final Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PropertyServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponseOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->access$2600()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCode()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->access$2800(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;)V

    return-object p0
.end method

.method public clearMessage()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->access$3000(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;)V

    return-object p0
.end method

.method public clearResponse()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->access$3300(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;)V

    return-object p0
.end method

.method public getCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->getCode()I

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->getMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->getResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->getResponseBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setCode(I)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->access$2700(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;I)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->access$2900(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->access$3100(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResponse(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->access$3200(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setResponseBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->access$3400(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
