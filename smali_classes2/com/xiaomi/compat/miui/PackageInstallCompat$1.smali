.class public Lcom/xiaomi/compat/miui/PackageInstallCompat$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageInstallCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/compat/miui/PackageInstallCompat;->installPackage(Landroid/content/Context;Ljava/lang/String;ZZLcom/xiaomi/compat/miui/PackageInstallCompat$Listener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/xiaomi/compat/miui/PackageInstallCompat$Listener;


# direct methods
.method public constructor <init>(Lcom/xiaomi/compat/miui/PackageInstallCompat$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/compat/miui/PackageInstallCompat$1;->val$listener:Lcom/xiaomi/compat/miui/PackageInstallCompat$Listener;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "packageInstalled: packageName="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " returnCode="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " msg="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "PackageInstallCompat"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p3, p0, Lcom/xiaomi/compat/miui/PackageInstallCompat$1;->val$listener:Lcom/xiaomi/compat/miui/PackageInstallCompat$Listener;

    if-eqz p3, :cond_1

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 3
    :goto_0
    invoke-interface {p3, p1, p4}, Lcom/xiaomi/compat/miui/PackageInstallCompat$Listener;->onPackageInstalled(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
