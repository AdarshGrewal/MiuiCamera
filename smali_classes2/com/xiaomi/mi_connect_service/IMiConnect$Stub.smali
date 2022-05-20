.class public abstract Lcom/xiaomi/mi_connect_service/IMiConnect$Stub;
.super Landroid/os/Binder;
.source "IMiConnect.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IMiConnect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/IMiConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/IMiConnect$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mi_connect_service.IMiConnect"

.field public static final TRANSACTION_abortInvitation:I = 0x2c

.field public static final TRANSACTION_acceptConnection:I = 0x8

.field public static final TRANSACTION_acceptInvitation:I = 0x2b

.field public static final TRANSACTION_clientAcceptConnection:I = 0x28

.field public static final TRANSACTION_clientRejectConnection:I = 0x29

.field public static final TRANSACTION_connectService:I = 0x18

.field public static final TRANSACTION_connectServiceStatusResponse:I = 0x1c

.field public static final TRANSACTION_createConnection:I = 0x11

.field public static final TRANSACTION_destroy:I = 0xc

.field public static final TRANSACTION_destroyConnection:I = 0x12

.field public static final TRANSACTION_deviceInfoIDM:I = 0x20

.field public static final TRANSACTION_disconnectFromEndPoint:I = 0xa

.field public static final TRANSACTION_disconnectService:I = 0x27

.field public static final TRANSACTION_event:I = 0x1d

.field public static final TRANSACTION_getIdHash:I = 0xd

.field public static final TRANSACTION_getServiceApiVersion:I = 0x6

.field public static final TRANSACTION_inviteConnection:I = 0x2a

.field public static final TRANSACTION_publish:I = 0xf

.field public static final TRANSACTION_registerIDMClient:I = 0x13

.field public static final TRANSACTION_registerProc:I = 0x19

.field public static final TRANSACTION_registerSoundBoxWhiteName:I = 0x24

.field public static final TRANSACTION_rejectConnection:I = 0x9

.field public static final TRANSACTION_request:I = 0x14

.field public static final TRANSACTION_requestConnection:I = 0x7

.field public static final TRANSACTION_response:I = 0x1b

.field public static final TRANSACTION_sendPayload:I = 0xb

.field public static final TRANSACTION_setCallback:I = 0x1

.field public static final TRANSACTION_setEventCallback:I = 0x16

.field public static final TRANSACTION_setIPCDataCallback:I = 0xe

.field public static final TRANSACTION_startAdvertising:I = 0x2

.field public static final TRANSACTION_startAdvertisingIDM:I = 0x1a

.field public static final TRANSACTION_startDiscovery:I = 0x4

.field public static final TRANSACTION_startDiscoveryIDM:I = 0x15

.field public static final TRANSACTION_startDiscoveryV2:I = 0x1f

.field public static final TRANSACTION_startSap:I = 0x25

.field public static final TRANSACTION_startScannerList:I = 0x23

.field public static final TRANSACTION_stopAdvertising:I = 0x3

.field public static final TRANSACTION_stopAdvertisingIDM:I = 0x22

.field public static final TRANSACTION_stopDiscovery:I = 0x5

.field public static final TRANSACTION_stopDiscoveryIDM:I = 0x21

.field public static final TRANSACTION_stopSap:I = 0x26

.field public static final TRANSACTION_subscribe:I = 0x10

.field public static final TRANSACTION_unregisterIDMClient:I = 0x17

.field public static final TRANSACTION_unregisterProc:I = 0x1e

.field public static final TRANSACTION_updateCommConfig:I = 0x2d


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.mi_connect_service.IMiConnect"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_service/IMiConnect;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaomi.mi_connect_service.IMiConnect"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/xiaomi/mi_connect_service/IMiConnect;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/xiaomi/mi_connect_service/IMiConnect;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/xiaomi/mi_connect_service/IMiConnect$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/mi_connect_service/IMiConnect$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaomi.mi_connect_service.IMiConnect"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

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

    move-result v3

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v2, p0

    .line 8
    invoke-interface/range {v2 .. v7}, Lcom/xiaomi/mi_connect_service/IMiConnect;->updateCommConfig(III[BI)I

    move-result p1

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 11
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 14
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->abortInvitation(Ljava/lang/String;[B)I

    move-result p1

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 16
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 17
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 20
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->acceptInvitation(Ljava/lang/String;[B)I

    move-result p1

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 22
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 23
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 26
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->inviteConnection(Ljava/lang/String;[B)I

    move-result p1

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 29
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 32
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->clientRejectConnection(Ljava/lang/String;[B)I

    move-result p1

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 35
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 38
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->clientAcceptConnection(Ljava/lang/String;[B)I

    move-result p1

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 41
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 44
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->disconnectService(Ljava/lang/String;[B)I

    move-result p1

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 47
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 49
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->stopSap(J)V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 51
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v0

    .line 56
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IApStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_service/IApStateCallback;

    move-result-object v7

    move-object v2, p0

    .line 57
    invoke-interface/range {v2 .. v7}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startSap(Ljava/lang/String;Ljava/lang/String;IZLcom/xiaomi/mi_connect_service/IApStateCallback;)J

    move-result-wide p1

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 60
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/ISoundBoxWhiteNameCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_service/ISoundBoxWhiteNameCallBack;

    move-result-object p1

    .line 62
    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->registerSoundBoxWhiteName(Lcom/xiaomi/mi_connect_service/ISoundBoxWhiteNameCallBack;)I

    move-result p1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 65
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/xiaomi/mi_connect_service/IDeviceScannerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_service/IDeviceScannerCallback;

    move-result-object p4

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 69
    invoke-interface {p0, p1, p4, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startScannerList(ILcom/xiaomi/mi_connect_service/IDeviceScannerCallback;Ljava/lang/String;)I

    move-result p1

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 72
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 75
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->stopAdvertisingIDM(Ljava/lang/String;[B)I

    move-result p1

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 78
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 81
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->stopDiscoveryIDM(Ljava/lang/String;[B)I

    move-result p1

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 84
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-interface {p0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->deviceInfoIDM()[B

    move-result-object p1

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 88
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    move-object v2, p0

    .line 95
    invoke-interface/range {v2 .. v8}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startDiscoveryV2(I[BIII[I)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 97
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->unregisterProc(Ljava/lang/String;)I

    move-result p1

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 102
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 105
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->event(Ljava/lang/String;[B)I

    move-result p1

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 108
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 111
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->connectServiceStatusResponse(Ljava/lang/String;[B)I

    move-result p1

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 114
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 117
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->response(Ljava/lang/String;[B)I

    move-result p1

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 120
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 123
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startAdvertisingIDM(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 126
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/mi_connect_service/IIDMServiceProcCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_service/IIDMServiceProcCallback;

    move-result-object p2

    .line 130
    invoke-interface {p0, p1, p4, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->registerProc(Ljava/lang/String;[BLcom/xiaomi/mi_connect_service/IIDMServiceProcCallback;)I

    move-result p1

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 133
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 136
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->connectService(Ljava/lang/String;[B)I

    move-result p1

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 139
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->unregisterIDMClient(Ljava/lang/String;)I

    move-result p1

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 144
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 147
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->setEventCallback(Ljava/lang/String;[B)I

    move-result p1

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 150
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 153
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startDiscoveryIDM(Ljava/lang/String;[B)I

    move-result p1

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 156
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 159
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->request(Ljava/lang/String;[B)[B

    move-result-object p1

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 162
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_service/IIDMClientCallback;

    move-result-object p2

    .line 166
    invoke-interface {p0, p1, p4, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->registerIDMClient(Ljava/lang/String;[BLcom/xiaomi/mi_connect_service/IIDMClientCallback;)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 169
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 172
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->destroyConnection(Ljava/lang/String;[B)I

    move-result p1

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 175
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/mi_connect_service/IConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_service/IConnectionCallback;

    move-result-object p2

    .line 179
    invoke-interface {p0, p1, p4, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->createConnection(Ljava/lang/String;[BLcom/xiaomi/mi_connect_service/IConnectionCallback;)I

    move-result p1

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 182
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/mi_connect_service/IDpsMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_service/IDpsMessageListener;

    move-result-object p2

    .line 187
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->subscribe(ILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/mi_connect_service/IDpsMessageListener;)I

    move-result p1

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 190
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 195
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->publish(ILjava/lang/String;Ljava/lang/String;[B)I

    move-result p1

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 198
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/mi_connect_service/IIPCDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_service/IIPCDataCallback;

    move-result-object p2

    .line 202
    invoke-interface {p0, p1, p4, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->setIPCDataCallback(ILjava/lang/String;Lcom/xiaomi/mi_connect_service/IIPCDataCallback;)I

    move-result p1

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 205
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-interface {p0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->getIdHash()[B

    move-result-object p1

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 209
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 212
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->destroy(II)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 214
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 219
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->sendPayload(III[B)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 221
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 225
    invoke-interface {p0, p1, p4, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->disconnectFromEndPoint(III)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 227
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 231
    invoke-interface {p0, p1, p4, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->rejectConnection(III)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 233
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    .line 238
    :cond_1
    invoke-interface {p0, p1, p4, v2, v0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->acceptConnection(IIIZ)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 240
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 244
    invoke-interface {p0, p1, p4, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->requestConnection(II[B)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 246
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-interface {p0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->getServiceApiVersion()I

    move-result p1

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 250
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 252
    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->stopDiscovery(I)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 254
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v2, p0

    .line 260
    invoke-interface/range {v2 .. v7}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startDiscovery(I[BIII)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 262
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 264
    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->stopAdvertising(I)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 266
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    move-object v2, p0

    .line 272
    invoke-interface/range {v2 .. v7}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startAdvertising(I[BII[B)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 274
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/mi_connect_service/IMiConnectCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_service/IMiConnectCallback;

    move-result-object p2

    .line 278
    invoke-interface {p0, p1, p4, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->setCallback(IILcom/xiaomi/mi_connect_service/IMiConnectCallback;)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 280
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
