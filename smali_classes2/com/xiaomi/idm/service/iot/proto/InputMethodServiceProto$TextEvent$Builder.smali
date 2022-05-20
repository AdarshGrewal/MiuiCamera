.class public final Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "InputMethodServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEventOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;->access$2800()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearInputData()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;->access$3000(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;)V

    return-object p0
.end method

.method public getInputData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;->getInputData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputDataBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;->getInputDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setInputData(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;->access$2900(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setInputDataBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;->access$3100(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
