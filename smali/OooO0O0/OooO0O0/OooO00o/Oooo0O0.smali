.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaomi/compat/miui/PackageInstallCompat$Listener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0O0;->OooO00o:Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;

    return-void
.end method


# virtual methods
.method public final onPackageInstalled(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0O0;->OooO00o:Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->OooO00o(Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;Ljava/lang/String;Z)V

    return-void
.end method
