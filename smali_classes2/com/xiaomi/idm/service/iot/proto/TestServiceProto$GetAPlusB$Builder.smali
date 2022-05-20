.class public final Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TestServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusBOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;",
        "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusBOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->access$1300()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearA()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->access$1700(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;)V

    return-object p0
.end method

.method public clearAid()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->access$1500(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;)V

    return-object p0
.end method

.method public clearB()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->access$1900(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;)V

    return-object p0
.end method

.method public getA()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->getA()I

    move-result v0

    return v0
.end method

.method public getAid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->getAid()I

    move-result v0

    return v0
.end method

.method public getB()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->getB()I

    move-result v0

    return v0
.end method

.method public setA(I)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->access$1600(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;I)V

    return-object p0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->access$1400(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;I)V

    return-object p0
.end method

.method public setB(I)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;->access$1800(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetAPlusB;I)V

    return-object p0
.end method
