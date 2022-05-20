.class public abstract Lmiui/popupcamera/IPopupCameraManager$Stub;
.super Landroid/os/Binder;
.source "IPopupCameraManager.java"

# interfaces
.implements Lmiui/popupcamera/IPopupCameraManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/popupcamera/IPopupCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/popupcamera/IPopupCameraManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "miui.popupcamera.IPopupCameraManager"

.field public static final TRANSACTION_calibrationMotor:I = 0x5

.field public static final TRANSACTION_getMotorStatus:I = 0x4

.field public static final TRANSACTION_notifyCameraStatus:I = 0x1

.field public static final TRANSACTION_popupMotor:I = 0x2

.field public static final TRANSACTION_takebackMotor:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.popupcamera.IPopupCameraManager"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/popupcamera/IPopupCameraManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "miui.popupcamera.IPopupCameraManager"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lmiui/popupcamera/IPopupCameraManager;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lmiui/popupcamera/IPopupCameraManager;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lmiui/popupcamera/IPopupCameraManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lmiui/popupcamera/IPopupCameraManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lmiui/popupcamera/IPopupCameraManager;
    .locals 1

    .line 1
    sget-object v0, Lmiui/popupcamera/IPopupCameraManager$Stub$Proxy;->sDefaultImpl:Lmiui/popupcamera/IPopupCameraManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/popupcamera/IPopupCameraManager;)Z
    .locals 1

    .line 1
    sget-object v0, Lmiui/popupcamera/IPopupCameraManager$Stub$Proxy;->sDefaultImpl:Lmiui/popupcamera/IPopupCameraManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lmiui/popupcamera/IPopupCameraManager$Stub$Proxy;->sDefaultImpl:Lmiui/popupcamera/IPopupCameraManager;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "miui.popupcamera.IPopupCameraManager"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 3
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-interface {p0}, Lmiui/popupcamera/IPopupCameraManager;->calibrationMotor()V

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 6
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7
    invoke-interface {p0}, Lmiui/popupcamera/IPopupCameraManager;->getMotorStatus()I

    move-result p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 10
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lmiui/popupcamera/IPopupCameraManager;->takebackMotor()Z

    move-result p1

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 14
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lmiui/popupcamera/IPopupCameraManager;->popupMotor()Z

    move-result p1

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 18
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-interface {p0, p1, p4, p2}, Lmiui/popupcamera/IPopupCameraManager;->notifyCameraStatus(IILjava/lang/String;)Z

    move-result p1

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
