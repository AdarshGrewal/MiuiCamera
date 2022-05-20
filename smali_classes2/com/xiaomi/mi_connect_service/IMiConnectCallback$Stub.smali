.class public abstract Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub;
.super Landroid/os/Binder;
.source "IMiConnectCallback.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IMiConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/IMiConnectCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mi_connect_service.IMiConnectCallback"

.field public static final TRANSACTION_onAdvertisingResult:I = 0x1

.field public static final TRANSACTION_onConnectionInitiated:I = 0x4

.field public static final TRANSACTION_onConnectionResult:I = 0x5

.field public static final TRANSACTION_onDisconnection:I = 0x6

.field public static final TRANSACTION_onDiscoveryResult:I = 0x2

.field public static final TRANSACTION_onEndpointFound:I = 0x3

.field public static final TRANSACTION_onEndpointLost:I = 0x9

.field public static final TRANSACTION_onPayloadReceived:I = 0x8

.field public static final TRANSACTION_onPayloadSentResult:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.mi_connect_service.IMiConnectCallback"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_service/IMiConnectCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaomi.mi_connect_service.IMiConnectCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/xiaomi/mi_connect_service/IMiConnectCallback;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/xiaomi/mi_connect_service/IMiConnectCallback;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaomi.mi_connect_service.IMiConnectCallback"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-interface {p0, p1, p3, p2}, Lcom/xiaomi/mi_connect_service/IMiConnectCallback;->onEndpointLost(IILjava/lang/String;)V

    return v1

    .line 7
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 11
    invoke-interface {p0, p1, p3, p2}, Lcom/xiaomi/mi_connect_service/IMiConnectCallback;->onPayloadReceived(II[B)V

    return v1

    .line 12
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 16
    invoke-interface {p0, p1, p3, p2}, Lcom/xiaomi/mi_connect_service/IMiConnectCallback;->onPayloadSentResult(III)V

    return v1

    .line 17
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 20
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnectCallback;->onDisconnection(II)V

    return v1

    .line 21
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 26
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/xiaomi/mi_connect_service/IMiConnectCallback;->onConnectionResult(IILjava/lang/String;I)V

    return v1

    .line 27
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    move-object v2, p0

    .line 33
    invoke-interface/range {v2 .. v7}, Lcom/xiaomi/mi_connect_service/IMiConnectCallback;->onConnectionInitiated(IILjava/lang/String;[B[B)V

    return v1

    .line 34
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 39
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/xiaomi/mi_connect_service/IMiConnectCallback;->onEndpointFound(IILjava/lang/String;[B)V

    return v1

    .line 40
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 43
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnectCallback;->onDiscoveryResult(II)V

    return v1

    .line 44
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 47
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnectCallback;->onAdvertisingResult(II)V

    return v1

    .line 48
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
