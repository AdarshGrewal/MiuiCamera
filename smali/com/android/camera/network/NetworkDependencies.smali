.class public Lcom/android/camera/network/NetworkDependencies;
.super Ljava/lang/Object;
.source "NetworkDependencies.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static depend(Landroid/app/Application;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/network/net/HttpManager;->getInstance()Lcom/android/camera/network/net/HttpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/network/net/HttpManager;->initRequestQueue(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/android/camera/network/util/NetworkUtils;->bind(Landroid/app/Application;)V

    return-void
.end method

.method public static getRequestCache(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isConnectedWIFI(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v1, 0xc

    .line 3
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method
