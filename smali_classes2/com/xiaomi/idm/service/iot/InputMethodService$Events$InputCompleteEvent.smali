.class public Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent;
.super Lcom/xiaomi/idm/api/IDMService$Event;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/InputMethodService$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputCompleteEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent$Callback;
    }
.end annotation


# instance fields
.field public callback:Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent$Callback;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent$Callback;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/idm/api/IDMService$Event;-><init>(Lcom/xiaomi/idm/api/IDMService;I)V

    iput-object p2, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent;->callback:Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent$Callback;

    return-void
.end method


# virtual methods
.method public onEvent([B)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent;->callback:Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent$Callback;

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->getActionData()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent$Callback;->onInputCompleteEvent(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
