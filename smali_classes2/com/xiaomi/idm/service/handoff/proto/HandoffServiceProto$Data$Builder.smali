.class public final Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HandoffServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$DataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$DataOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;->access$3200()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearKey()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;

    invoke-static {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;->access$3400(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)V

    return-object p0
.end method

.method public clearValue()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;

    invoke-static {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;->access$3700(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;)V

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;->access$3300(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;Ljava/lang/String;)V

    return-object p0
.end method

.method public setKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;->access$3500(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;->access$3600(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
