.class public Lcom/xiaomi/idm/service/iot/PropertyService$Stub;
.super Lcom/xiaomi/idm/service/iot/PropertyService;
.source "PropertyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/PropertyService;
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
    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/iot/PropertyService;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

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
    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/service/iot/PropertyService$Stub;->getPropertyAsync(Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;

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
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

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
    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/service/iot/PropertyService$Stub;->getPropertyCommandsAsync(Ljava/util/Map;)Lcom/xiaomi/idm/task/CallFuture;

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
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

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
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/service/iot/PropertyService$Stub;->setPropertyAsync(Ljava/lang/String;Z)Lcom/xiaomi/idm/task/CallFuture;

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
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

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
    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/service/iot/PropertyService$Stub;->setPropertyCommandsAsync(Ljava/util/Map;)Lcom/xiaomi/idm/task/CallFuture;

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
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetPropertyCommands;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetPropertyCommands;-><init>(Lcom/xiaomi/idm/service/iot/PropertyService;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p1

    return-object p1
.end method

.method public subscribePropertyEvent(Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent;-><init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent$Callback;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/idm/api/IDMClient;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)I

    return-void
.end method

.method public unsubscribePropertyEvent(Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent;-><init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/iot/PropertyService$Events$PropertyEvent$Callback;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/idm/api/IDMClient;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)I

    return-void
.end method
