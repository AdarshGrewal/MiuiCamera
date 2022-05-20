.class public Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;
.super Lcom/xiaomi/camera/util/State;
.source "NetworkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EndpointFoundState"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-direct {p0}, Lcom/xiaomi/camera/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    const-string v1, "entering endpoint found state"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2500(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x102

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x400

    if-eq v0, v1, :cond_4

    const/16 p1, 0x503

    if-eq v0, p1, :cond_3

    const/16 p1, 0x602

    if-eq v0, p1, :cond_1

    const p1, 0xbabe

    if-eq v0, p1, :cond_0

    const p1, 0xdead

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    return v2

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 3
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->stopAdvertising()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2200(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$800(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    .line 6
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    :cond_3
    return v2

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEndpointFound: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2600(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V

    return v2

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartConnecting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2700(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2000(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    .line 10
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return v2
.end method
