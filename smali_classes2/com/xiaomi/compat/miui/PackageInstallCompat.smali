.class public final Lcom/xiaomi/compat/miui/PackageInstallCompat;
.super Ljava/lang/Object;
.source "PackageInstallCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/compat/miui/PackageInstallCompat$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageInstallCompat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installPackage(Landroid/content/Context;Ljava/lang/String;ZZLcom/xiaomi/compat/miui/PackageInstallCompat$Listener;)Z
    .locals 3

    const-string v0, "PackageInstallCompat"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Lcom/xiaomi/compat/miui/PackageInstallCompat$1;

    invoke-direct {v2, p4}, Lcom/xiaomi/compat/miui/PackageInstallCompat$1;-><init>(Lcom/xiaomi/compat/miui/PackageInstallCompat$Listener;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    move p2, v1

    .line 2
    :goto_0
    invoke-static {p0, p1, v2, p2}, Lmiui/content/pm/PreloadedAppPolicy;->installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;I)Z

    move-result p0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "installPackage: result="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "installPackage: failed:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-interface {p4, p1, v1}, Lcom/xiaomi/compat/miui/PackageInstallCompat$Listener;->onPackageInstalled(Ljava/lang/String;Z)V

    return v1
.end method
