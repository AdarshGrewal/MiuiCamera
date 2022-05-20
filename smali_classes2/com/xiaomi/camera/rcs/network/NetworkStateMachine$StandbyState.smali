.class public Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;
.super Lcom/xiaomi/camera/util/State;
.source "NetworkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StandbyState"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-direct {p0}, Lcom/xiaomi/camera/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    const-string v1, "entering standby state"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$400(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x200

    if-eq v0, v1, :cond_1

    const/16 v1, 0x201

    if-eq v0, v1, :cond_1

    const/16 v1, 0x300

    if-eq v0, v1, :cond_1

    const/16 v1, 0x301

    if-eq v0, v1, :cond_1

    const/16 v1, 0x400

    if-eq v0, v1, :cond_1

    const/16 v1, 0x401

    if-eq v0, v1, :cond_1

    const v1, 0xbabe

    if-eq v0, v1, :cond_0

    const v1, 0xdead

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command or event received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$500(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$600(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$BindingInitiatedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    :cond_1
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x500
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x600
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
