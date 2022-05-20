.class public Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent;
.super Lcom/xiaomi/idm/api/IDMService$Event;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/TestService$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyTestEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent$Callback;
    }
.end annotation


# instance fields
.field public callback:Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent$Callback;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent$Callback;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/idm/api/IDMService$Event;-><init>(Lcom/xiaomi/idm/api/IDMService;I)V

    .line 2
    iput-object p2, p0, Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent;->callback:Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent$Callback;

    return-void
.end method


# virtual methods
.method public onEvent([B)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent;->callback:Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent$Callback;

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;->getParam()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$MyTestEvent;->getParamStr()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent$Callback;->onMyTestEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestService"

    invoke-static {v1, v0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
