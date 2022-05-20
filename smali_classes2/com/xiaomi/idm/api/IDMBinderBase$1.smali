.class public final Lcom/xiaomi/idm/api/IDMBinderBase$1;
.super Ljava/lang/Object;
.source "IDMBinderBase.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/IDMBinderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$100()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$200()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 4
    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/mi_connect_service/IMiConnect$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_service/IMiConnect;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$302(Lcom/xiaomi/mi_connect_service/IMiConnect;)Lcom/xiaomi/mi_connect_service/IMiConnect;

    .line 5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 6
    :try_start_1
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$300()Lcom/xiaomi/mi_connect_service/IMiConnect;

    move-result-object p2

    invoke-interface {p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->getServiceApiVersion()I

    move-result p2

    sput p2, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceApiVersion:I

    const-string p2, "IDMBinderBase"

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get service api version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceApiVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, p1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move p2, p1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 8
    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IDMBinderBase"

    invoke-static {v1, v0, p2}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    sget-object p2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p2}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p2

    .line 10
    :goto_0
    sget v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceApiVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 11
    sget-object p2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->PERMISSION_DENNY:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p2}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p2

    .line 12
    :cond_1
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$400()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/idm/api/IDMBinderBase;

    if-eqz p2, :cond_2

    .line 13
    iget-object v1, v1, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    invoke-interface {v1, p2}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v1}, Lcom/xiaomi/idm/api/IDMBinderBase;->isVersionSatisfied()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$300()Lcom/xiaomi/mi_connect_service/IMiConnect;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    .line 16
    invoke-virtual {v1}, Lcom/xiaomi/idm/api/IDMBinderBase;->onServiceConnected()V

    .line 17
    iget-object v2, v1, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    invoke-interface {v2}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceBind()V

    const/4 v2, 0x1

    .line 18
    invoke-static {v1, v2}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$502(Lcom/xiaomi/idm/api/IDMBinderBase;Z)Z

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$400()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 20
    iget-object v1, v1, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    .line 21
    invoke-virtual {v2}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    goto :goto_1

    .line 22
    :cond_4
    invoke-static {p1}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$602(Z)Z

    return-void

    :catchall_0
    move-exception p2

    .line 23
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "IDMBinderBase"

    const-string v1, "onServiceDisconnected"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$100()V

    return-void
.end method
