.class public abstract Lcom/xiaomi/camera/rcs/IRemoteControl$Stub;
.super Landroid/os/Binder;
.source "IRemoteControl.java"

# interfaces
.implements Lcom/xiaomi/camera/rcs/IRemoteControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rcs/IRemoteControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/rcs/IRemoteControl$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.camera.rcs.IRemoteControl"

.field public static final TRANSACTION_customClientRequest:I = 0x8

.field public static final TRANSACTION_customRequest:I = 0x9

.field public static final TRANSACTION_injectKeyEvent:I = 0x3

.field public static final TRANSACTION_injectMotionEvent:I = 0x4

.field public static final TRANSACTION_isStreaming:I = 0x6

.field public static final TRANSACTION_registerRemoteController:I = 0x1

.field public static final TRANSACTION_startStreaming:I = 0x5

.field public static final TRANSACTION_stopStreaming:I = 0x7

.field public static final TRANSACTION_unregisterRemoteController:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.camera.rcs.IRemoteControl"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/camera/rcs/IRemoteControl;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaomi.camera.rcs.IRemoteControl"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/xiaomi/camera/rcs/IRemoteControl;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/xiaomi/camera/rcs/IRemoteControl;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/xiaomi/camera/rcs/IRemoteControl$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/IRemoteControl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaomi/camera/rcs/IRemoteControl;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/IRemoteControl$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/camera/rcs/IRemoteControl;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaomi/camera/rcs/IRemoteControl;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/IRemoteControl$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/camera/rcs/IRemoteControl;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/xiaomi/camera/rcs/IRemoteControl$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/camera/rcs/IRemoteControl;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaomi.camera.rcs.IRemoteControl"

    if-eq p1, v0, :cond_8

    const/4 v0, 0x0

    const/4 v3, 0x0

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 5
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 6
    :cond_0
    invoke-interface {p0, p1, v3}, Lcom/xiaomi/camera/rcs/IRemoteControl;->customRequest(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 11
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    move-result-object p1

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 16
    :cond_2
    invoke-interface {p0, p1, p4, v3}, Lcom/xiaomi/camera/rcs/IRemoteControl;->customClientRequest(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 21
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    move-result-object p1

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    .line 24
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 25
    :cond_4
    invoke-interface {p0, p1, v3}, Lcom/xiaomi/camera/rcs/IRemoteControl;->stopStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 27
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    move-result-object p1

    .line 29
    invoke-interface {p0, p1}, Lcom/xiaomi/camera/rcs/IRemoteControl;->isStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Z

    move-result p1

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 32
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    move-result-object p1

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    .line 35
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 36
    :cond_5
    invoke-interface {p0, p1, v3}, Lcom/xiaomi/camera/rcs/IRemoteControl;->startStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 38
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    move-result-object p1

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_6

    .line 41
    sget-object p4, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/view/MotionEvent;

    .line 42
    :cond_6
    invoke-interface {p0, p1, v3}, Lcom/xiaomi/camera/rcs/IRemoteControl;->injectMotionEvent(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/view/MotionEvent;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 44
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    move-result-object p1

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    .line 47
    sget-object p4, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/view/KeyEvent;

    .line 48
    :cond_7
    invoke-interface {p0, p1, v3}, Lcom/xiaomi/camera/rcs/IRemoteControl;->injectKeyEvent(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/view/KeyEvent;)V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 50
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    move-result-object p1

    .line 52
    invoke-interface {p0, p1}, Lcom/xiaomi/camera/rcs/IRemoteControl;->unregisterRemoteController(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 54
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    move-result-object p1

    .line 56
    invoke-interface {p0, p1}, Lcom/xiaomi/camera/rcs/IRemoteControl;->registerRemoteController(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)I

    move-result p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 59
    :cond_8
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
