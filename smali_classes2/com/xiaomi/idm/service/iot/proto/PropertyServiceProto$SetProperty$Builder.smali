.class public final Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PropertyServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->access$000()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAid()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->access$200(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;)V

    return-object p0
.end method

.method public clearIsSort()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->access$700(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;)V

    return-object p0
.end method

.method public clearParamJson()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->access$400(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;)V

    return-object p0
.end method

.method public getAid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->getAid()I

    move-result v0

    return v0
.end method

.method public getIsSort()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->getIsSort()Z

    move-result v0

    return v0
.end method

.method public getParamJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->getParamJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->getParamJsonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->access$100(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;I)V

    return-object p0
.end method

.method public setIsSort(Z)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->access$600(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;Z)V

    return-object p0
.end method

.method public setParamJson(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->access$300(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;Ljava/lang/String;)V

    return-object p0
.end method

.method public setParamJsonBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->access$500(Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
