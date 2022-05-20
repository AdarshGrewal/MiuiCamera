.class public abstract Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;
.super Landroid/content/ContentProvider;
.source "ContentProviderProxy.java"


# static fields
.field public static final NAME_INFIX:Ljava/lang/String; = "_Decorated_"

.field public static final TAG:Ljava/lang/String; = "Split:ContentProviderProxy"


# instance fields
.field public providerInfo:Landroid/content/pm/ProviderInfo;

.field public realContentProvider:Landroid/content/ContentProvider;

.field public realContentProviderClassName:Ljava/lang/String;

.field public splitName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private createRealContentProvider(Ljava/lang/ClassLoader;)Landroid/content/ContentProvider;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Split:ContentProviderProxy"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProviderClassName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentProvider;

    .line 3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->providerInfo:Landroid/content/pm/ProviderInfo;

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success to create provider "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProviderClassName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 5
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cause of null context, we can\'t create real provider "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProviderClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public activateRealContentProvider(Ljava/lang/ClassLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->createRealContentProvider(Ljava/lang/ClassLoader;)Landroid/content/ContentProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;

    invoke-direct {v0, p1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    return-object p1
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_Decorated_"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProviderClassName:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    .line 5
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 6
    new-instance p1, Landroid/content/pm/ProviderInfo;

    invoke-direct {p1, p2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 7
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getInstance()Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    move-result-object p1

    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->put(Ljava/lang/String;Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;)V

    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    return p1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->getRealContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public abstract checkRealContentProviderInstallStatus(Ljava/lang/String;)Z
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getRealContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/content/ContentProvider;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->onTrimMemory(I)V

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "TT;",
            "Landroid/content/ContentProvider$PipeDataWriter<",
            "TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 8

    .line 6
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z

    move-result p1

    return p1
.end method

.method public uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->splitName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->checkRealContentProviderInstallStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->realContentProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
