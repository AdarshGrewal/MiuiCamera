.class public final Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PropertyServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEventOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;->access$3600()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearParam()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;->access$3800(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;)V

    return-object p0
.end method

.method public clearParamStr()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;->access$4000(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;)V

    return-object p0
.end method

.method public getParam()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;->getParam()I

    move-result v0

    return v0
.end method

.method public getParamStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;->getParamStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamStrBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;->getParamStrBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setParam(I)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;->access$3700(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;I)V

    return-object p0
.end method

.method public setParamStr(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;->access$3900(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setParamStrBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;->access$4100(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
