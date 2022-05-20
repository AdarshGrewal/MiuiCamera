.class public abstract Lcom/iqiyi/android/qigsaw/core/splitload/SplitContentProvider;
.super Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;
.source "SplitContentProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRealContentProviderInstallStatus(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->getRealContentProvider()Landroid/content/ContentProvider;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->hasInstance()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadInstalledSplits()V

    .line 5
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->getRealContentProvider()Landroid/content/ContentProvider;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    return v1
.end method
