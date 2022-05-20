.class public abstract Lcom/xiaomi/protocol/ICameraBackStageService$Stub;
.super Landroid/os/Binder;
.source "ICameraBackStageService.java"

# interfaces
.implements Lcom/xiaomi/protocol/ICameraBackStageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/protocol/ICameraBackStageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/protocol/ICameraBackStageService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.protocol.ICameraBackStageService"

.field public static final TRANSACTION_addCapturePath:I = 0x3

.field public static final TRANSACTION_configCaptureOutputBuffer:I = 0x1

.field public static final TRANSACTION_configCaptureSession:I = 0x2

.field public static final TRANSACTION_needWaitProcess:I = 0x6

.field public static final TRANSACTION_onCaptureCompleted:I = 0x4

.field public static final TRANSACTION_onCaptureFailed:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.protocol.ICameraBackStageService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/protocol/ICameraBackStageService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaomi.protocol.ICameraBackStageService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/xiaomi/protocol/ICameraBackStageService;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/xiaomi/protocol/ICameraBackStageService;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/xiaomi/protocol/ICameraBackStageService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/protocol/ICameraBackStageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaomi/protocol/ICameraBackStageService;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/protocol/ICameraBackStageService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/protocol/ICameraBackStageService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaomi/protocol/ICameraBackStageService;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/protocol/ICameraBackStageService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/protocol/ICameraBackStageService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/xiaomi/protocol/ICameraBackStageService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/protocol/ICameraBackStageService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const-string v2, "com.xiaomi.protocol.ICameraBackStageService"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Lcom/xiaomi/protocol/ICameraBackStageService;->needWaitProcess()Z

    move-result p1

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 6
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/protocol/ICameraBackStageService;->onCaptureFailed(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 11
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    sget-object p1, Lcom/xiaomi/protocol/ICustomCaptureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/protocol/ICameraBackStageService;->onCaptureCompleted(Ljava/util/List;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 16
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-interface {p0, p1}, Lcom/xiaomi/protocol/ICameraBackStageService;->addCapturePath(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 20
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    sget-object p1, Lcom/xiaomi/engine/BufferFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/engine/BufferFormat;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-interface {p0, p1}, Lcom/xiaomi/protocol/ICameraBackStageService;->configCaptureSession(Lcom/xiaomi/engine/BufferFormat;)V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 25
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    sget-object p1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 27
    invoke-interface {p0, p1}, Lcom/xiaomi/protocol/ICameraBackStageService;->configCaptureOutputBuffer(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 29
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 30
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

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
