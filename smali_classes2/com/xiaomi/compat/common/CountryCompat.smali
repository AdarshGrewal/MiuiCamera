.class public final Lcom/xiaomi/compat/common/CountryCompat;
.super Ljava/lang/Object;
.source "CountryCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "country_detector"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/CountryDetector;

    .line 3
    invoke-virtual {p0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
