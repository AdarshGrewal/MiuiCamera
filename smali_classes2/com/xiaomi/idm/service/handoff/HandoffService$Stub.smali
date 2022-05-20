.class public Lcom/xiaomi/idm/service/handoff/HandoffService$Stub;
.super Lcom/xiaomi/idm/service/handoff/HandoffService;
.source "HandoffService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/handoff/HandoffService;
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
    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/handoff/HandoffService;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/idm/service/handoff/HandoffService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    return-void
.end method


# virtual methods
.method public requestHandoffData()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/HandoffService$Stub;->requestHandoffDataAsync()Lcom/xiaomi/idm/task/CallFuture;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/xiaomi/idm/api/RmiException;->createException(Ljava/util/concurrent/ExecutionException;)Lcom/xiaomi/idm/api/RmiException;

    move-result-object v0

    throw v0

    .line 4
    :catch_1
    new-instance v0, Lcom/xiaomi/idm/api/RequestException;

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RMI_CANCELED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-direct {v0, v1}, Lcom/xiaomi/idm/api/RequestException;-><init>(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;)V

    throw v0
.end method

.method public requestHandoffDataAsync()Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/HandoffService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/handoff/HandoffService$Actions$RequestHandoffData;

    invoke-direct {v1, p0}, Lcom/xiaomi/idm/service/handoff/HandoffService$Actions$RequestHandoffData;-><init>(Lcom/xiaomi/idm/service/handoff/HandoffService;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object v0

    return-object v0
.end method

.method public subscribeHandoffEvent(Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/HandoffService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent;-><init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent$Callback;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/idm/api/IDMClient;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)I

    return-void
.end method

.method public unsubscribeHandoffEvent(Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/HandoffService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent;-><init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent$Callback;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/idm/api/IDMClient;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)I

    return-void
.end method
