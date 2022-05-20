.class public Lmiuix/net/ConnectivityHelper;
.super Ljava/lang/Object;
.source "ConnectivityHelper.java"


# static fields
.field public static final INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/SoftReferenceSingleton<",
            "Lmiuix/net/ConnectivityHelper;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ConnectivityHelper"


# instance fields
.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mMacAddress:Ljava/lang/String;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/net/ConnectivityHelper$1;

    invoke-direct {v0}, Lmiuix/net/ConnectivityHelper$1;-><init>()V

    sput-object v0, Lmiuix/net/ConnectivityHelper;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lmiuix/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lmiuix/net/ConnectivityHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/net/ConnectivityHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lmiuix/net/ConnectivityHelper;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/net/ConnectivityHelper;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    invoke-virtual {v0, p0}, Lmiuix/core/util/SoftReferenceSingleton;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/net/ConnectivityHelper;

    return-object p0
.end method


# virtual methods
.method public getManager()Landroid/net/ConnectivityManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public isNetworkConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnmeteredNetworkConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWifiConnected()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
