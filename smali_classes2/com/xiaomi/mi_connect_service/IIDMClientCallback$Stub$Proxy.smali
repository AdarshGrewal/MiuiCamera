.class public Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIDMClientCallback.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IIDMClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.mi_connect_service.IIDMClientCallback"

    return-object v0
.end method

.method public onAccountChanged([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IIDMClientCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6
    throw p1
.end method

.method public onDiscoveryResult([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IIDMClientCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6
    throw p1
.end method

.method public onEvent([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IIDMClientCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6
    throw p1
.end method

.method public onInvitationAccepted([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IIDMClientCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6
    throw p1
.end method

.method public onInviteConnection([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IIDMClientCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6
    throw p1
.end method

.method public onResponse([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IIDMClientCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6
    throw p1
.end method

.method public onServiceConnectStatus([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IIDMClientCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6
    throw p1
.end method

.method public onServiceFound([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IIDMClientCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6
    throw p1
.end method

.method public onServiceLost([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IIDMClientCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6
    throw p1
.end method
