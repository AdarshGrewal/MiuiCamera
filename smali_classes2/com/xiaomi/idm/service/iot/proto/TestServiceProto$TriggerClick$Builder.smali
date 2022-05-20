.class public final Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TestServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClickOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;",
        "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClickOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;->access$2500()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAid()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;->access$2700(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;)V

    return-object p0
.end method

.method public getAid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;->getAid()I

    move-result v0

    return v0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;->access$2600(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;I)V

    return-object p0
.end method
