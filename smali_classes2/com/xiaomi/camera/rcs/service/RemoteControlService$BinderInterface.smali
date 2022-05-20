.class public Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;
.super Lcom/xiaomi/camera/rcs/IRemoteControl$Stub;
.source "RemoteControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rcs/service/RemoteControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinderInterface"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/IRemoteControl$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/service/RemoteControlService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;-><init>(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)V

    return-void
.end method


# virtual methods
.method public customClientRequest(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v1, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$1000(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->customClientRequest(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public customRequest(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "customRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->jsonify(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "com.xiaomi.camera.rcs.setCapturingMode"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$800(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 5
    iget-object v3, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v3}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$800(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    if-eqz v3, :cond_0

    .line 6
    invoke-static {v3}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->access$100(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v3, p1, p2}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->customCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 p2, 0x0

    .line 9
    invoke-static {p1, p2}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setErrorCode(Landroid/os/Bundle;I)V

    .line 10
    monitor-exit v0

    return-object p1

    .line 11
    :cond_2
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public injectKeyEvent(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v1, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$1000(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public injectMotionEvent(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v1, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$1000(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->injectMotionEvent(Landroid/view/MotionEvent;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v1, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$1000(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStreaming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->isStreaming()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerRemoteController(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->oo0oOO0()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-virtual {v1}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 4
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    const/4 v2, 0x0

    .line 5
    aget-object v1, v1, v2

    .line 6
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v5}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$600(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v5, "com.android.camera"

    .line 7
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    iget-object v5, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-virtual {v5}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120267

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "certificate_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    const/16 v7, 0x5f

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 10
    iget-object v6, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-virtual {v6}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "string"

    iget-object v8, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-virtual {v8}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 11
    iget-object v6, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-virtual {v6}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_1
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-virtual {v5}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$700(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 13
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 14
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v2

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 15
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 16
    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v6, v3

    goto :goto_1

    :cond_4
    move v6, v2

    :cond_5
    if-eqz v6, :cond_7

    .line 17
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 18
    iget-object v4, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v4}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$800(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 19
    new-instance v4, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    iget-object v5, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    const/4 v6, 0x0

    invoke-direct {v4, v5, p1, v1, v6}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;-><init>(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/IRemoteControlClient;Ljava/lang/String;Lcom/xiaomi/camera/rcs/service/RemoteControlService$1;)V

    .line 20
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$800(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :try_start_3
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-interface {v3, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 23
    :try_start_4
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v3, "register: exception"

    invoke-static {v1, v3, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :goto_2
    monitor-exit v0

    return v2

    .line 25
    :cond_6
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register: already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v2}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$800(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_7
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :catch_1
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_8
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_9
    new-instance p1, Ljava/lang/SecurityException;

    const-string v1, "Access denied: streaming not supported"

    invoke-direct {p1, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public startStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p2

    const-string v0, "startStreaming: E"

    invoke-static {p2, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$500()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$1000(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startStreaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->access$100(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->access$102(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;Z)Z

    .line 7
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->start()V

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startStreaming: called, port = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->postStreamingServerState(I)V

    .line 11
    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "startStreaming: X"

    invoke-static {p1, p2}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stopStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p2

    const-string v0, "stopStreaming: E"

    invoke-static {p2, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$500()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$1000(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopStreaming: client = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->access$100(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->access$102(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;Z)Z

    .line 7
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$1200(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->stop()V

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "stopStreaming: called"

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "stopStreaming: X"

    invoke-static {p1, p2}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public unregisterRemoteController(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v1, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$1000(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregister: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v1, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$1100(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Landroid/os/IBinder;)V

    .line 6
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister: count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v2}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$800(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 7
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$800(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Ljava/util/HashMap;

    move-result-object v1

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

    .line 8
    iget-object v3, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v3}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$800(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregister: enumerating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 10
    invoke-static {v3}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->access$100(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 11
    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister: is group owner alive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$800(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 13
    iget-object v2, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v2}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$800(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    .line 14
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregister: broadcasting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 15
    invoke-static {v2}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->access$100(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.xiaomi.wearable.onGroupOwnerDied"

    const/4 v3, 0x0

    .line 16
    invoke-virtual {v2, v1, v3}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->customCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 17
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
