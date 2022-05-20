.class public abstract Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService$Stub;
.super Landroid/os/Binder;
.source "ISplitInstallService.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.iqiyi.android.qigsaw.core.splitinstall.protocol.ISplitInstallService"

.field public static final TRANSACTION_cancelInstall:I = 0x2

.field public static final TRANSACTION_deferredInstall:I = 0x5

.field public static final TRANSACTION_deferredUninstall:I = 0x6

.field public static final TRANSACTION_getSessionState:I = 0x3

.field public static final TRANSACTION_getSessionStates:I = 0x4

.field public static final TRANSACTION_startInstall:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iqiyi.android.qigsaw.core.splitinstall.protocol.ISplitInstallService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.iqiyi.android.qigsaw.core.splitinstall.protocol.ISplitInstallService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v2, "com.iqiyi.android.qigsaw.core.splitinstall.protocol.ISplitInstallService"

    if-eq p1, v0, :cond_4

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p4

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;

    move-result-object p2

    .line 8
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService;->deferredUninstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 10
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p4

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 15
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;

    move-result-object p2

    .line 16
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService;->deferredInstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 18
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;

    move-result-object p2

    .line 21
    invoke-interface {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService;->getSessionStates(Ljava/lang/String;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 23
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;

    move-result-object p2

    .line 27
    invoke-interface {p0, p1, p4, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService;->getSessionState(Ljava/lang/String;ILcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 29
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 34
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;

    move-result-object p2

    .line 35
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService;->cancelInstall(Ljava/lang/String;ILandroid/os/Bundle;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 37
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 39
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p4

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 41
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 42
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;

    move-result-object p2

    .line 43
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService;->startInstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 45
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
