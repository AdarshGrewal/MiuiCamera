.class public Lcom/xiaomi/idm/service/iot/TestService$Actions$TriggerClick;
.super Lcom/xiaomi/idm/api/IDMService$Action;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/TestService$Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TriggerClick"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/idm/api/IDMService$Action<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/service/iot/TestService;)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;->newBuilder()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;->setAid(I)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/TestService$Actions$TriggerClick;->action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/idm/service/iot/TestService;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    .line 4
    invoke-static {p2}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/TestService$Actions$TriggerClick;->action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;

    return-void
.end method


# virtual methods
.method public invoke()[B
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMService$Action;->service:Lcom/xiaomi/idm/api/IDMService;

    check-cast v0, Lcom/xiaomi/idm/service/iot/TestService;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/TestService;->triggerClick()V
    :try_end_0
    .catch Lcom/xiaomi/idm/api/RmiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/idm/api/RmiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestService"

    invoke-static {v2, v1, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public parseResponse([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1
.end method

.method public toBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/TestService$Actions$TriggerClick;->action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method
