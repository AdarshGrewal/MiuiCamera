.class public final Lcom/xiaomi/compat/miui/MiuiSettingsCompat$SettingsCloudData;
.super Ljava/lang/Object;
.source "MiuiSettingsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/compat/miui/MiuiSettingsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsCloudData"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloudDataInt(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataInt(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method
