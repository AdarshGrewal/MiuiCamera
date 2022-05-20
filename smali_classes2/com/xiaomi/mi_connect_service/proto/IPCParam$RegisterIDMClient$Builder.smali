.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClientOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClientOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->access$3200()Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdentify()Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->access$3600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;)V

    return-object p0
.end method

.method public clearSdkVersion()Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->access$3800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;)V

    return-object p0
.end method

.method public getIdentify()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->getIdentify()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->getSdkVersion()I

    move-result v0

    return v0
.end method

.method public hasIdentify()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->hasIdentify()Z

    move-result v0

    return v0
.end method

.method public mergeIdentify(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->access$3500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;)V

    return-object p0
.end method

.method public setIdentify(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->access$3400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam$Builder;)V

    return-object p0
.end method

.method public setIdentify(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->access$3300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;)V

    return-object p0
.end method

.method public setSdkVersion(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->access$3700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;I)V

    return-object p0
.end method
