.class public Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;
.super Lcom/xiaomi/idm/service/iot/InputMethodService;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stub"
.end annotation


# instance fields
.field public mIDMClient:Lcom/xiaomi/idm/api/IDMClient;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/api/IDMClient;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/iot/InputMethodService;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;->getPropertyAsync(Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/xiaomi/idm/api/RmiException;->createException(Ljava/util/concurrent/ExecutionException;)Lcom/xiaomi/idm/api/RmiException;

    move-result-object p1

    throw p1

    .line 4
    :catch_1
    new-instance p1, Lcom/xiaomi/idm/api/RequestException;

    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RMI_CANCELED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-direct {p1, v0}, Lcom/xiaomi/idm/api/RequestException;-><init>(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;)V

    throw p1
.end method

.method public getPropertyAsync(Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$GetProperty;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$GetProperty;-><init>(Lcom/xiaomi/idm/service/iot/PropertyService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyCommands(Ljava/util/Map;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;->getPropertyCommandsAsync(Ljava/util/Map;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/xiaomi/idm/api/RmiException;->createException(Ljava/util/concurrent/ExecutionException;)Lcom/xiaomi/idm/api/RmiException;

    move-result-object p1

    throw p1

    .line 4
    :catch_1
    new-instance p1, Lcom/xiaomi/idm/api/RequestException;

    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RMI_CANCELED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-direct {p1, v0}, Lcom/xiaomi/idm/api/RequestException;-><init>(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;)V

    throw p1
.end method

.method public getPropertyCommandsAsync(Ljava/util/Map;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$GetPropertyCommands;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$GetPropertyCommands;-><init>(Lcom/xiaomi/idm/service/iot/PropertyService;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p1

    return-object p1
.end method

.method public setProperty(Ljava/lang/String;Z)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;->setPropertyAsync(Ljava/lang/String;Z)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/xiaomi/idm/api/RmiException;->createException(Ljava/util/concurrent/ExecutionException;)Lcom/xiaomi/idm/api/RmiException;

    move-result-object p1

    throw p1

    .line 4
    :catch_1
    new-instance p1, Lcom/xiaomi/idm/api/RequestException;

    sget-object p2, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RMI_CANCELED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-direct {p1, p2}, Lcom/xiaomi/idm/api/RequestException;-><init>(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;)V

    throw p1
.end method

.method public setPropertyAsync(Ljava/lang/String;Z)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetProperty;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetProperty;-><init>(Lcom/xiaomi/idm/service/iot/PropertyService;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p1

    return-object p1
.end method

.method public setPropertyCommands(Ljava/util/Map;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;->setPropertyCommandsAsync(Ljava/util/Map;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/xiaomi/idm/api/RmiException;->createException(Ljava/util/concurrent/ExecutionException;)Lcom/xiaomi/idm/api/RmiException;

    move-result-object p1

    throw p1

    .line 4
    :catch_1
    new-instance p1, Lcom/xiaomi/idm/api/RequestException;

    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RMI_CANCELED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-direct {p1, v0}, Lcom/xiaomi/idm/api/RequestException;-><init>(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;)V

    throw p1
.end method

.method public setPropertyCommandsAsync(Ljava/util/Map;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetPropertyCommands;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetPropertyCommands;-><init>(Lcom/xiaomi/idm/service/iot/PropertyService;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p1

    return-object p1
.end method

.method public startInputBox(Ljava/lang/String;IILjava/lang/String;II)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;->startInputBoxAsync(Ljava/lang/String;IILjava/lang/String;II)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/xiaomi/idm/api/RmiException;->createException(Ljava/util/concurrent/ExecutionException;)Lcom/xiaomi/idm/api/RmiException;

    move-result-object p1

    throw p1

    .line 4
    :catch_1
    new-instance p1, Lcom/xiaomi/idm/api/RequestException;

    sget-object p2, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RMI_CANCELED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-direct {p1, p2}, Lcom/xiaomi/idm/api/RequestException;-><init>(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;)V

    throw p1
.end method

.method public startInputBoxAsync(Ljava/lang/String;IILjava/lang/String;II)Lcom/xiaomi/idm/task/CallFuture;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "II)",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;",
            ">;"
        }
    .end annotation

    move-object v8, p0

    .line 1
    iget-object v9, v8, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v10, Lcom/xiaomi/idm/service/iot/InputMethodService$Actions$StartInputBox;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/idm/service/iot/InputMethodService$Actions$StartInputBox;-><init>(Lcom/xiaomi/idm/service/iot/InputMethodService;Ljava/lang/String;IILjava/lang/String;II)V

    invoke-virtual {v9, v10}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object v0

    return-object v0
.end method

.method public subscribeInputCompleteEvent(Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent;-><init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent$Callback;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/idm/api/IDMClient;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)I

    return-void
.end method

.method public subscribeTextEvent(Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent;-><init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent$Callback;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/idm/api/IDMClient;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)I

    return-void
.end method

.method public unsubscribeInputCompleteEvent(Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent;-><init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent$Callback;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/idm/api/IDMClient;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)I

    return-void
.end method

.method public unsubscribeTextEvent(Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent;-><init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent$Callback;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/idm/api/IDMClient;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)I

    return-void
.end method
