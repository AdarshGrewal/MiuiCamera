.class public abstract Lcom/xiaomi/idm/api/IDMBinderBase;
.super Ljava/lang/Object;
.source "IDMBinderBase.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IDMBinderBase"

.field public static mConnection:Landroid/content/ServiceConnection; = null

.field public static volatile sIsBinding:Z = false

.field public static final sMiConnectApiSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaomi/idm/api/IDMBinderBase;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile sPendingUnbind:Z = false

.field public static sService:Lcom/xiaomi/mi_connect_service/IMiConnect; = null

.field public static sServiceApiVersion:I = -0x1

.field public static final sServiceLock:Ljava/lang/Object;

.field public static final sSetLock:Ljava/lang/Object;


# instance fields
.field public mContext:Landroid/content/Context;

.field public volatile mIsBound:Z

.field public mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

.field public mService:Lcom/xiaomi/mi_connect_service/IMiConnect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceLock:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sSetLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sMiConnectApiSet:Ljava/util/Set;

    .line 5
    new-instance v0, Lcom/xiaomi/idm/api/IDMBinderBase$1;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/IDMBinderBase$1;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/api/IDMBinderBase;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mIsBound:Z

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IDMBinderBase"

    const-string v2, "Build Version: 2.1.120"

    .line 3
    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sPendingUnbind:Z

    return v0
.end method

.method public static synthetic access$100()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->unbindAll()V

    return-void
.end method

.method public static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$300()Lcom/xiaomi/mi_connect_service/IMiConnect;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    return-object v0
.end method

.method public static synthetic access$302(Lcom/xiaomi/mi_connect_service/IMiConnect;)Lcom/xiaomi/mi_connect_service/IMiConnect;
    .locals 0

    .line 1
    sput-object p0, Lcom/xiaomi/idm/api/IDMBinderBase;->sService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    return-object p0
.end method

.method public static synthetic access$400()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sMiConnectApiSet:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic access$502(Lcom/xiaomi/idm/api/IDMBinderBase;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mIsBound:Z

    return p1
.end method

.method public static synthetic access$602(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/xiaomi/idm/api/IDMBinderBase;->sIsBinding:Z

    return p0
.end method

.method public static serviceAvailableInner()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/xiaomi/idm/api/IDMBinderBase;->sService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static unbindAll()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sPendingUnbind:Z

    .line 2
    sget-object v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sSetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lcom/xiaomi/idm/api/IDMBinderBase;->sMiConnectApiSet:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/idm/api/IDMBinderBase;

    iget-object v2, v2, Lcom/xiaomi/idm/api/IDMBinderBase;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 6
    :goto_0
    sget-object v4, Lcom/xiaomi/idm/api/IDMBinderBase;->sMiConnectApiSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 7
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailableInner()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 8
    sget-object v4, Lcom/xiaomi/idm/api/IDMBinderBase;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 9
    :cond_1
    sget-object v2, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    sput-object v3, Lcom/xiaomi/idm/api/IDMBinderBase;->sService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    .line 11
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    .line 12
    :try_start_2
    sput-boolean v2, Lcom/xiaomi/idm/api/IDMBinderBase;->sIsBinding:Z

    .line 13
    sput-boolean v2, Lcom/xiaomi/idm/api/IDMBinderBase;->sPendingUnbind:Z

    .line 14
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/idm/api/IDMBinderBase;

    .line 16
    iget-object v1, v1, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    invoke-interface {v1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceUnbind()V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 17
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public static unbindService(Lcom/xiaomi/idm/api/IDMBinderBase;)V
    .locals 4

    .line 5
    sget-object v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sSetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/xiaomi/idm/api/IDMBinderBase;->sMiConnectApiSet:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    .line 8
    sget-object v2, Lcom/xiaomi/idm/api/IDMBinderBase;->sMiConnectApiSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailableInner()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 10
    sput-boolean v2, Lcom/xiaomi/idm/api/IDMBinderBase;->sPendingUnbind:Z

    .line 11
    iget-object v2, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/idm/api/IDMBinderBase;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 12
    :cond_0
    sget-object v2, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    sput-object v1, Lcom/xiaomi/idm/api/IDMBinderBase;->sService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    .line 14
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 15
    :try_start_2
    sput-boolean v1, Lcom/xiaomi/idm/api/IDMBinderBase;->sIsBinding:Z

    .line 16
    sput-boolean v1, Lcom/xiaomi/idm/api/IDMBinderBase;->sPendingUnbind:Z

    const-string v2, "IDMBinderBase"

    const-string v3, "all connection unbind, unbind the binder"

    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 18
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 19
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 20
    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    .line 21
    invoke-interface {p0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceUnbind()V

    return-void

    :catchall_1
    move-exception p0

    .line 22
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method


# virtual methods
.method public bindService()V
    .locals 6

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sSetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/xiaomi/idm/api/IDMBinderBase;->sMiConnectApiSet:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService: sIsBinding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/xiaomi/idm/api/IDMBinderBase;->sIsBinding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sIsPendingUnbind = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/xiaomi/idm/api/IDMBinderBase;->sPendingUnbind:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "IDMBinderBase"

    invoke-static {v3, v0, v2}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailableInner()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->isVersionSatisfied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iput-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->onServiceConnected()V

    .line 9
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    invoke-interface {v0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceBind()V

    .line 10
    iput-boolean v2, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mIsBound:Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    :goto_0
    return-void

    .line 12
    :cond_1
    sget-boolean v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sIsBinding:Z

    if-eqz v0, :cond_2

    return-void

    .line 13
    :cond_2
    sput-boolean v2, Lcom/xiaomi/idm/api/IDMBinderBase;->sIsBinding:Z

    .line 14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.xiaomi.mi_connect_service.MiConnectService"

    .line 15
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.xiaomi.mi_connect_service"

    const-string v5, "com.xiaomi.mi_connect_service.MiConnectService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 17
    :try_start_1
    iget-object v3, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 18
    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IDMBinderBase"

    invoke-static {v5, v4, v3}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    iget-object v3, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v4, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_NOT_INIT_YET:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v4}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    .line 20
    :goto_1
    iget-object v3, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/idm/api/IDMBinderBase;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "IDMBinderBase"

    const-string v3, "bindServiceFailed"

    .line 21
    invoke-static {v2, v3, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->BIND_SERVICE_FAILED:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v2}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    .line 23
    sput-boolean v1, Lcom/xiaomi/idm/api/IDMBinderBase;->sIsBinding:Z

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 24
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->doDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->unbindService()V

    return-void
.end method

.method public doDestroy()V
    .locals 0

    return-void
.end method

.method public abstract getMinVersion()I
.end method

.method public init()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->bindService()V

    return-void
.end method

.method public isVersionSatisfied()Z
    .locals 4

    .line 1
    sget v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceApiVersion:I

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->getMinVersion()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service Api version too low:\n   required min version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->getMinVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n   current version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceApiVersion:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "IDMBinderBase"

    .line 4
    invoke-static {v3, v1, v2}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v0
.end method

.method public onServiceConnected()V
    .locals 0

    return-void
.end method

.method public serviceAvailable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailableInner()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unbindService()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mIsBound:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IDMBinderBase"

    const-string v3, "Do unbind service"

    .line 2
    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->unbindService(Lcom/xiaomi/idm/api/IDMBinderBase;)V

    .line 4
    iput-boolean v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mIsBound:Z

    :cond_0
    return-void
.end method
