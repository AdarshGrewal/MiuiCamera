.class public Lcom/xiaomi/idm/handoff_sdk/HandoffApi$2;
.super Ljava/lang/Object;
.source "HandoffApi.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/handoff_sdk/HandoffApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/idm/handoff_sdk/HandoffApi;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/handoff_sdk/HandoffApi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi$2;->this$0:Lcom/xiaomi/idm/handoff_sdk/HandoffApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "HandoffApi"

    const-string v1, "onServiceConnected"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi$2;->this$0:Lcom/xiaomi/idm/handoff_sdk/HandoffApi;

    invoke-static {p2}, Lcom/xiaomi/mi_connect_sdk/IHandoffProcess$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->access$002(Lcom/xiaomi/idm/handoff_sdk/HandoffApi;Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;)Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi$2;->this$0:Lcom/xiaomi/idm/handoff_sdk/HandoffApi;

    invoke-static {p1}, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->access$000(Lcom/xiaomi/idm/handoff_sdk/HandoffApi;)Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi$2;->this$0:Lcom/xiaomi/idm/handoff_sdk/HandoffApi;

    invoke-static {p2}, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->access$100(Lcom/xiaomi/idm/handoff_sdk/HandoffApi;)Lcom/xiaomi/mi_connect_sdk/IHandoffProcessCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;->registerClient(Lcom/xiaomi/mi_connect_sdk/IHandoffProcessCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "HandoffApi"

    const-string v1, "onServiceDisconnected"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
