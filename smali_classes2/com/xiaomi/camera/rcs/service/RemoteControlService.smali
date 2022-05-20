.class public Lcom/xiaomi/camera/rcs/service/RemoteControlService;
.super Landroid/app/Service;
.source "RemoteControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RpcMessageHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;,
        Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;
    }
.end annotation


# static fields
.field public static final CAMERA_APP_PACKAGE_NAME:Ljava/lang/String; = "com.android.camera"

.field public static final SYSTEM_APP_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final TAG:Ljava/lang/String;

.field public static final mCondVar:Ljava/lang/Object;


# instance fields
.field public final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;",
            ">;"
        }
    .end annotation
.end field

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mInterface:Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;

.field public mStreamingServer:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

.field public mSystemSigningKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->createTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mCondVar:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;-><init>(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/service/RemoteControlService$1;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mInterface:Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mClients:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic access$1000(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->checkClient(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->cleanupClient(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->isGroupOwnerAlive()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mStreamingServer:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Landroid/hardware/input/InputManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mInputManager:Landroid/hardware/input/InputManager;

    return-object p0
.end method

.method public static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mCondVar:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$600(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mSystemSigningKeys:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->getSigningKeysForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mClients:Ljava/util/HashMap;

    return-object p0
.end method

.method private checkClient(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;
    .locals 4

    .line 1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not registered"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cleanupClient(Landroid/os/IBinder;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->release()V

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mStreamingServer:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->removeCallbackListener(Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getHexString([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSigningKeysForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/16 v1, 0x40

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    sget-object v1, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " signing keys for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    const-string v1, "SHA1"

    .line 6
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 7
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 8
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->getHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v2, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 11
    :catch_0
    sget-object p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string p1, "Failed to find package for getting signing keys"

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :catch_1
    sget-object p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string p1, "Failed to find algorithm for getting signing keys"

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v0
.end method

.method private isGroupOwnerAlive()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 2
    iget-object v2, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    .line 3
    sget-object v3, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGroupOwnerAlive: enumerating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v2}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->access$100(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private sendPayload(Landroid/os/Bundle;)I
    .locals 5

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mCondVar:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 3
    iget-object v3, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    if-eqz v3, :cond_0

    .line 4
    invoke-static {v3}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->access$100(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object v1, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendPayload: enumerating "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.xiaomi.camera.rcs.onVideoCastStateChanged"

    .line 6
    invoke-virtual {v3, v1, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->customCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 7
    monitor-exit v0

    return p1

    .line 8
    :cond_1
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mCondVar:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 3
    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    sget-object v1, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binderDied: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, v2}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->cleanupClient(Landroid/os/IBinder;)V

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "id"

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "method"

    const-string v6, "unknown"

    .line 5
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "params"

    .line 6
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x1fbcb12e

    const/4 v8, 0x1

    const/4 v9, -0x1

    if-eq v6, v7, :cond_1

    const v7, 0x4bdbae6

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "set_recording_state"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, p1

    goto :goto_1

    :cond_1
    const-string v6, "set_layout_type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v8

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v9

    :goto_1
    if-eqz v6, :cond_6

    if-eq v6, v8, :cond_3

    .line 8
    sget-object p1, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: unknown method: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_5

    .line 9
    invoke-virtual {v3, p1, v9}, Lorg/json/JSONArray;->optInt(II)I

    move-result p1

    if-eq p1, v9, :cond_4

    .line 10
    invoke-static {v2, p1}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->setLayoutType(Landroid/os/Bundle;I)V

    :cond_4
    move v9, p1

    .line 11
    :cond_5
    sget-object p1, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: set_layout_type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_8

    .line 12
    invoke-virtual {v3, p1, v9}, Lorg/json/JSONArray;->optInt(II)I

    move-result p1

    if-eq p1, v9, :cond_7

    .line 13
    invoke-static {v2, p1}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->setRecordingState(Landroid/os/Bundle;I)V

    :cond_7
    move v9, p1

    .line 14
    :cond_8
    sget-object p1, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: set_recording_state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :goto_2
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "result"

    .line 16
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0, v2}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->sendPayload(Landroid/os/Bundle;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 17
    sget-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string v2, "Unknown rpc message"

    invoke-static {v0, v2, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    sget-object p1, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string v0, "onBind"

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mInterface:Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android"

    .line 2
    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->getSigningKeysForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mSystemSigningKeys:Ljava/util/Set;

    const-string v0, "input"

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 4
    new-instance v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-direct {v0, p0, p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;-><init>(Landroid/content/Context;Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RpcMessageHandler;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mStreamingServer:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    .line 5
    sget-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate: X"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mStreamingServer:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mStreamingServer:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->stop()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mStreamingServer:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    .line 6
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy: X"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string v0, "onRebind"

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    sget-object p1, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string v0, "onUnbind"

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
