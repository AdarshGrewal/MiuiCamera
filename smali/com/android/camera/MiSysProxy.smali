.class public Lcom/android/camera/MiSysProxy;
.super Ljava/lang/Object;
.source "MiSysProxy.java"


# static fields
.field public static final INTERFACE_NAME_1_0:Ljava/lang/String; = "vendor.xiaomi.hardware.misys@1.0::IMiSys"

.field public static final INTERFACE_NAME_2_0:Ljava/lang/String; = "vendor.xiaomi.hardware.misys@2.0::IMiSys"

.field public static final SERVICE_NAME:Ljava/lang/String; = "default"


# instance fields
.field public final mMiSysV1:Landroid/os/IHwBinder;

.field public final mMiSysV2:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;Landroid/os/IHwBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Lcom/android/camera/MiSysProxy;->mMiSysV1:Landroid/os/IHwBinder;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Lcom/android/camera/MiSysProxy;->mMiSysV2:Landroid/os/IHwBinder;

    return-void
.end method

.method public static tryGet()Lcom/android/camera/MiSysProxy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "default"

    const-string/jumbo v2, "vendor.xiaomi.hardware.misys@1.0::IMiSys"

    .line 1
    invoke-static {v2, v1, v0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v2

    const-string/jumbo v3, "vendor.xiaomi.hardware.misys@2.0::IMiSys"

    .line 2
    invoke-static {v3, v1, v0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/android/camera/MiSysProxy;

    invoke-direct {v1, v2, v0}, Lcom/android/camera/MiSysProxy;-><init>(Landroid/os/IHwBinder;Landroid/os/IHwBinder;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public EraseFileOrDirectory(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.xiaomi.hardware.misys@1.0::IMiSys"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/android/camera/MiSysProxy;->mMiSysV1:Landroid/os/IHwBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 7
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 8
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 9
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public IsExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.xiaomi.hardware.misys@2.0::IMiSys"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/android/camera/MiSysProxy;->mMiSysV2:Landroid/os/IHwBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 7
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 8
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 9
    invoke-virtual {p1}, Landroid/os/HwParcel;->readBool()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public MiSysWriteBuffer(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;J)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;J)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "vendor.xiaomi.hardware.misys@2.0::IMiSys"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 6
    invoke-virtual {v0, p4, p5}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 7
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 8
    :try_start_0
    iget-object p2, p0, Lcom/android/camera/MiSysProxy;->mMiSysV2:Landroid/os/IHwBinder;

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 9
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 10
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 11
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method
