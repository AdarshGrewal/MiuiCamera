.class public Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent;
.super Lcom/xiaomi/idm/api/IDMService$Event;
.source "PropertyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/PropertyService$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent$Callback;
    }
.end annotation


# instance fields
.field public callback:Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent$Callback;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent$Callback;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/idm/api/IDMService$Event;-><init>(Lcom/xiaomi/idm/api/IDMService;I)V

    .line 2
    iput-object p2, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent;->callback:Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent$Callback;

    return-void
.end method


# virtual methods
.method public onEvent([B)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent;->callback:Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent$Callback;

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;->getParam()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;->getParamStr()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent$Callback;->onPropertyEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PropertyService"

    invoke-static {v1, v0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
