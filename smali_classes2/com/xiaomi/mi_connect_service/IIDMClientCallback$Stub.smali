.class public abstract Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub;
.super Landroid/os/Binder;
.source "IIDMClientCallback.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IIDMClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/IIDMClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.mi_connect_service.IIDMClientCallback"

.field public static final TRANSACTION_onAccountChanged:I = 0x9

.field public static final TRANSACTION_onDiscoveryResult:I = 0x8

.field public static final TRANSACTION_onEvent:I = 0x3

.field public static final TRANSACTION_onInvitationAccepted:I = 0x7

.field public static final TRANSACTION_onInviteConnection:I = 0x6

.field public static final TRANSACTION_onResponse:I = 0x2

.field public static final TRANSACTION_onServiceConnectStatus:I = 0x4

.field public static final TRANSACTION_onServiceFound:I = 0x1

.field public static final TRANSACTION_onServiceLost:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.mi_connect_service.IIDMClientCallback"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_service/IIDMClientCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaomi.mi_connect_service.IIDMClientCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/xiaomi/mi_connect_service/IIDMClientCallback;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/xiaomi/mi_connect_service/IIDMClientCallback;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaomi.mi_connect_service.IIDMClientCallback"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 4
    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_service/IIDMClientCallback;->onAccountChanged([B)V

    return v1

    .line 5
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_service/IIDMClientCallback;->onDiscoveryResult([B)V

    return v1

    .line 8
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 10
    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_service/IIDMClientCallback;->onInvitationAccepted([B)V

    return v1

    .line 11
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 13
    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_service/IIDMClientCallback;->onInviteConnection([B)V

    return v1

    .line 14
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 16
    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_service/IIDMClientCallback;->onServiceLost([B)V

    return v1

    .line 17
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 19
    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_service/IIDMClientCallback;->onServiceConnectStatus([B)V

    return v1

    .line 20
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 22
    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_service/IIDMClientCallback;->onEvent([B)V

    return v1

    .line 23
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 25
    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_service/IIDMClientCallback;->onResponse([B)V

    return v1

    .line 26
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 28
    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_service/IIDMClientCallback;->onServiceFound([B)V

    return v1

    .line 29
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

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
