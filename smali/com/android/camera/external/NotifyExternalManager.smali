.class public Lcom/android/camera/external/NotifyExternalManager;
.super Ljava/lang/Object;
.source "NotifyExternalManager.java"

# interfaces
.implements Lcom/android/camera/external/INotifyExternal;


# static fields
.field public static volatile sInstance:Lcom/android/camera/external/NotifyExternalManager;


# instance fields
.field public final mSendBroadcastNotifyExternal:Lcom/android/camera/external/SendBroadcastNotifyExternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/external/SendBroadcastNotifyExternal;

    invoke-direct {v0, p1}, Lcom/android/camera/external/SendBroadcastNotifyExternal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/external/NotifyExternalManager;->mSendBroadcastNotifyExternal:Lcom/android/camera/external/SendBroadcastNotifyExternal;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/camera/external/NotifyExternalManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/external/NotifyExternalManager;->sInstance:Lcom/android/camera/external/NotifyExternalManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/android/camera/external/NotifyExternalManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/android/camera/external/NotifyExternalManager;->sInstance:Lcom/android/camera/external/NotifyExternalManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/android/camera/external/NotifyExternalManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/camera/external/NotifyExternalManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/camera/external/NotifyExternalManager;->sInstance:Lcom/android/camera/external/NotifyExternalManager;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/external/NotifyExternalManager;->sInstance:Lcom/android/camera/external/NotifyExternalManager;

    return-object p0
.end method


# virtual methods
.method public notifyCameraResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/external/NotifyExternalManager;->mSendBroadcastNotifyExternal:Lcom/android/camera/external/SendBroadcastNotifyExternal;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/external/SendBroadcastNotifyExternal;->notifyCameraResume()V

    :cond_0
    return-void
.end method

.method public notifyModeAndFacing(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/external/NotifyExternalManager;->mSendBroadcastNotifyExternal:Lcom/android/camera/external/SendBroadcastNotifyExternal;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/external/SendBroadcastNotifyExternal;->notifyModeAndFacing(II)V

    :cond_0
    return-void
.end method
