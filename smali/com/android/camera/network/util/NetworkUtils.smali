.class public Lcom/android/camera/network/util/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "NetworkUtils"

.field public static sApp:Landroid/app/Application;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/app/Application;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/android/camera/network/util/NetworkUtils;->sApp:Landroid/app/Application;

    return-void
.end method

.method public static getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/network/util/NetworkUtils;->sApp:Landroid/app/Application;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static isActiveNetworkMetered()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/network/util/NetworkUtils;->sApp:Landroid/app/Application;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    return v0
.end method

.method public static isNetworkConnected()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/network/util/NetworkUtils;->sApp:Landroid/app/Application;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method
