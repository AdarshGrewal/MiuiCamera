.class public Lcom/xiaomi/stat/d/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v1, "NOT_CONNECTED"

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/16 v2, 0x9

    .line 5
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/xiaomi/stat/d/l$a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "ETHERNET"

    return-object p0

    :cond_3
    const-string p0, "UNKNOWN"

    return-object p0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public static a(I)Z
    .locals 1

    const/16 v0, 0x1324

    if-le p0, v0, :cond_0

    const/16 v0, 0x170c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    .line 1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x16

    const-string v3, "2G"

    const-string v4, "5G"

    const-string v5, "wifi"

    if-lt v1, v2, :cond_1

    .line 2
    :try_start_1
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p0

    .line 5
    invoke-static {p0}, Lcom/xiaomi/stat/d/l$a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    move-object v0, v4

    goto/16 :goto_3

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/l$a;->b(I)Z

    move-result p0

    if-eqz p0, :cond_6

    :goto_1
    move-object v0, v3

    goto :goto_3

    :cond_1
    const/4 v1, -0x1

    .line 7
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 8
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 14
    iget-object v8, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 15
    iget p0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {p0}, Lcom/xiaomi/stat/d/l$a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v7

    goto :goto_2

    .line 16
    :cond_3
    iget p0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {p0}, Lcom/xiaomi/stat/d/l$a;->b(I)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_4

    move v1, v6

    :cond_4
    :goto_2
    if-ne v1, v7, :cond_5

    goto :goto_0

    :cond_5
    if-ne v1, v6, :cond_6

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "NetWorkStateUtil"

    const-string v2, "getWifiFreeBand error"

    .line 17
    invoke-static {v1, v2, p0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-object v0
.end method

.method public static b(I)Z
    .locals 1

    const/16 v0, 0x960

    if-le p0, v0, :cond_0

    const/16 v0, 0x9c4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
