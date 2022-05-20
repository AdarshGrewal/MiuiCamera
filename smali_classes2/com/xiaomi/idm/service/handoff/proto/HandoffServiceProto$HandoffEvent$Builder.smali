.class public final Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HandoffServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEventOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->access$3900()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAppKey()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->access$4400(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;)V

    return-object p0
.end method

.method public clearIdHash()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->access$4100(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;)V

    return-object p0
.end method

.method public clearKey()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->access$4700(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;)V

    return-object p0
.end method

.method public clearValue()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->access$5000(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;)V

    return-object p0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getAppKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIdHash()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getIdHash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdHashBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getIdHashBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAppKey(Ljava/lang/String;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->access$4300(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->access$4500(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIdHash(Ljava/lang/String;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->access$4000(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdHashBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->access$4200(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->access$4600(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->access$4800(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->access$4900(Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
