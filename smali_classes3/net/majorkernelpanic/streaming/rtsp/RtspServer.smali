.class public Lnet/majorkernelpanic/streaming/rtsp/RtspServer;
.super Landroid/app/Service;
.source "RtspServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;,
        Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;,
        Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;,
        Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;,
        Lnet/majorkernelpanic/streaming/rtsp/RtspServer$LocalBinder;,
        Lnet/majorkernelpanic/streaming/rtsp/RtspServer$CallbackListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_RTSP_PORT:I = 0x1f96

.field public static final ERROR_BIND_FAILED:I = 0x0

.field public static final ERROR_START_FAILED:I = 0x1

.field public static final KEY_ENABLED:Ljava/lang/String; = "rtsp_enabled"

.field public static final KEY_PORT:Ljava/lang/String; = "rtsp_port"

.field public static final MESSAGE_STREAMING_STARTED:I = 0x0

.field public static final MESSAGE_STREAMING_STOPPED:I = 0x1

.field public static SERVER_NAME:Ljava/lang/String; = "MajorKernelPanic RTSP Server"

.field public static final TAG:Ljava/lang/String; = "RtspServer"


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public mEnabled:Z

.field public mListenerThread:Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;

.field public final mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/majorkernelpanic/streaming/rtsp/RtspServer$CallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field public mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field public mPassword:Ljava/lang/String;

.field public mPort:I

.field public mRestart:Z

.field public mSessionBuilder:Lnet/majorkernelpanic/streaming/SessionBuilder;

.field public mSessions:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lnet/majorkernelpanic/streaming/Session;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public mUsername:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mEnabled:Z

    const/16 v0, 0x1f96

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mPort:I

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mSessions:Ljava/util/WeakHashMap;

    new-instance v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$LocalBinder;

    invoke-direct {v0, p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$LocalBinder;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mRestart:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListeners:Ljava/util/LinkedList;

    new-instance v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$1;

    invoke-direct {v0, p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$1;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public static synthetic access$002(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mRestart:Z

    return p1
.end method

.method public static synthetic access$100(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mUsername:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mPassword:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addCallbackListener(Lnet/majorkernelpanic/streaming/rtsp/RtspServer$CallbackListener;)V
    .locals 3

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$CallbackListener;

    if-ne v2, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBitrate()J
    .locals 5

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mSessions:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/majorkernelpanic/streaming/Session;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lnet/majorkernelpanic/streaming/Session;->isStreaming()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lnet/majorkernelpanic/streaming/Session;->getBitrate()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mPort:I

    return v0
.end method

.method public handleRequest(Ljava/lang/String;Ljava/net/Socket;)Lnet/majorkernelpanic/streaming/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lnet/majorkernelpanic/streaming/rtsp/UriParser;->parse(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/Session;

    move-result-object p1

    invoke-virtual {p2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/majorkernelpanic/streaming/Session;->setOrigin(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/Session;->getDestination()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/majorkernelpanic/streaming/Session;->setDestination(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mEnabled:Z

    return v0
.end method

.method public isStreaming()Z
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mSessions:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/majorkernelpanic/streaming/Session;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/Session;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mPort:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rtsp_port"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mPort:I

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-boolean v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mEnabled:Z

    const-string v2, "rtsp_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mEnabled:Z

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->stop()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public postError(Ljava/lang/Exception;I)V
    .locals 3

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$CallbackListener;

    invoke-interface {v2, p0, p1, p2}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$CallbackListener;->onError(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;Ljava/lang/Exception;I)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public postMessage(I)V
    .locals 3

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$CallbackListener;

    invoke-interface {v2, p0, p1}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$CallbackListener;->onMessage(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;I)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeCallbackListener(Lnet/majorkernelpanic/streaming/rtsp/RtspServer$CallbackListener;)V
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mUsername:Ljava/lang/String;

    iput-object p2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "rtsp_port"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public start()V
    .locals 1

    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mRestart:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->stop()V

    :cond_1
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListenerThread:Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;

    invoke-direct {v0, p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListenerThread:Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListenerThread:Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mRestart:Z

    return-void
.end method

.method public stop()V
    .locals 4

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListenerThread:Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;->kill()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mSessions:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/majorkernelpanic/streaming/Session;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/Session;->isStreaming()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/Session;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListenerThread:Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;

    throw v0

    :catch_0
    :cond_1
    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mListenerThread:Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;

    :cond_2
    return-void
.end method
