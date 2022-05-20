.class public Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMiConnectCallback.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IMiConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub;
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
    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.mi_connect_service.IMiConnectCallback"

    return-object v0
.end method

.method public onAdvertisingResult(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IMiConnectCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7
    throw p1
.end method

.method public onConnectionInitiated(IILjava/lang/String;[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IMiConnectCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 8
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x4

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10
    throw p1
.end method

.method public onConnectionResult(IILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IMiConnectCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x5

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9
    throw p1
.end method

.method public onDisconnection(II)V
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
    const-string v1, "com.xiaomi.mi_connect_service.IMiConnectCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7
    throw p1
.end method

.method public onDiscoveryResult(II)V
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
    const-string v1, "com.xiaomi.mi_connect_service.IMiConnectCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7
    throw p1
.end method

.method public onEndpointFound(IILjava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IMiConnectCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x3

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p1, p2, v0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9
    throw p1
.end method

.method public onEndpointLost(IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IMiConnectCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9

    const/4 p3, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8
    throw p1
.end method

.method public onPayloadReceived(II[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IMiConnectCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x8

    const/4 p3, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8
    throw p1
.end method

.method public onPayloadSentResult(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.mi_connect_service.IMiConnectCallback"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p1, p0, Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x7

    const/4 p3, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8
    throw p1
.end method
