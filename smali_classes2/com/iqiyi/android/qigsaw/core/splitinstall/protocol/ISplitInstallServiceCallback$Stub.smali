.class public abstract Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback$Stub;
.super Landroid/os/Binder;
.source "ISplitInstallServiceCallback.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.iqiyi.android.qigsaw.core.splitinstall.protocol.ISplitInstallServiceCallback"

.field public static final TRANSACTION_onCancelInstall:I = 0x3

.field public static final TRANSACTION_onCompleteInstall:I = 0x2

.field public static final TRANSACTION_onDeferredInstall:I = 0x6

.field public static final TRANSACTION_onDeferredUninstall:I = 0x5

.field public static final TRANSACTION_onError:I = 0x8

.field public static final TRANSACTION_onGetSession:I = 0x4

.field public static final TRANSACTION_onGetSessionStates:I = 0x7

.field public static final TRANSACTION_onStartInstall:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iqiyi.android.qigsaw.core.splitinstall.protocol.ISplitInstallServiceCallback"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.iqiyi.android.qigsaw.core.splitinstall.protocol.ISplitInstallServiceCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v2, "com.iqiyi.android.qigsaw.core.splitinstall.protocol.ISplitInstallServiceCallback"

    if-eq p1, v0, :cond_6

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

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 5
    :cond_0
    invoke-interface {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;->onError(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 7
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 9
    invoke-interface {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;->onGetSessionStates(Ljava/util/List;)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 11
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 14
    :cond_1
    invoke-interface {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;->onDeferredInstall(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 16
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 19
    :cond_2
    invoke-interface {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;->onDeferredUninstall(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 21
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 24
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 25
    :cond_3
    invoke-interface {p0, p1, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;->onGetSession(ILandroid/os/Bundle;)V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 27
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    .line 30
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 31
    :cond_4
    invoke-interface {p0, p1, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;->onCancelInstall(ILandroid/os/Bundle;)V

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 33
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 35
    invoke-interface {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;->onCompleteInstall(I)V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 37
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    .line 40
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 41
    :cond_5
    invoke-interface {p0, p1, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;->onStartInstall(ILandroid/os/Bundle;)V

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 43
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
