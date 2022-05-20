.class public abstract Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;
.super Ljava/lang/Object;
.source "SplitCompatResourcesLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VersionCompat"
.end annotation


# static fields
.field public static activityThread:Ljava/lang/Object;

.field public static activityThreadClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static addAssetPathMethod:Ljava/lang/reflect/Method;

.field public static contextImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static getApkAssetsMethod:Ljava/lang/reflect/Method;

.field public static getAssetPathMethod:Ljava/lang/reflect/Method;

.field public static getCookieNameMethod:Ljava/lang/reflect/Method;

.field public static loadedApkClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static mActiveResourcesInActivityThread:Ljava/lang/reflect/Field;

.field public static mActiveResourcesInResourcesManager:Ljava/lang/reflect/Field;

.field public static mActivitiesInActivityThread:Ljava/lang/reflect/Field;

.field public static mPackagesInActivityThread:Ljava/lang/reflect/Field;

.field public static mResourcePackagesInActivityThread:Ljava/lang/reflect/Field;

.field public static mResourcesInContextImpl:Ljava/lang/reflect/Field;

.field public static mResourcesInContextThemeWrapper:Ljava/lang/reflect/Field;

.field public static mResourcesInLoadedApk:Ljava/lang/reflect/Field;

.field public static mStringBlocksField:Ljava/lang/reflect/Field;

.field public static mThemeInContentImpl:Ljava/lang/reflect/Field;

.field public static mThemeInContextThemeWrapper:Ljava/lang/reflect/Field;

.field public static resourcesManager:Ljava/lang/Object;

.field public static resourcesManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;-><init>()V

    return-void
.end method

.method public static getActivityThread()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThread:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "currentActivityThread"

    invoke-static {v0, v3, v2}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThread:Ljava/lang/Object;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThread:Ljava/lang/Object;

    return-object v0
.end method

.method public static getActivityThreadClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThreadClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.app.ActivityThread"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThreadClass:Ljava/lang/Class;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThreadClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getAddAssetPathMethod()Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->addAssetPathMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "addAssetPath"

    invoke-static {v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->addAssetPathMethod:Ljava/lang/reflect/Method;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->addAssetPathMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static getContextImplClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->contextImplClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.app.ContextImpl"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->contextImplClass:Ljava/lang/Class;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->contextImplClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getGetApkAssetsMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getApkAssetsMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "getApkAssets"

    invoke-static {v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getApkAssetsMethod:Ljava/lang/reflect/Method;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getApkAssetsMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static getGetAssetPathMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getAssetPathMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-string v0, "android.content.res.ApkAssets"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "getAssetPath"

    .line 3
    invoke-static {v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getAssetPathMethod:Ljava/lang/reflect/Method;

    .line 4
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getAssetPathMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static getGetCookieNameMethod()Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getCookieNameMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const-string v2, "getCookieName"

    invoke-static {v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getCookieNameMethod:Ljava/lang/reflect/Method;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getCookieNameMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static getLoadedApkClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->loadedApkClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.app.LoadedApk"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->loadedApkClass:Ljava/lang/Class;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->loadedApkClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getResourcesManager()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getResourcesManagerClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getInstance"

    invoke-static {v0, v3, v2}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManager:Ljava/lang/Object;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManager:Ljava/lang/Object;

    return-object v0
.end method

.method public static getResourcesManagerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManagerClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.app.ResourcesManager"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManagerClass:Ljava/lang/Class;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManagerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static mActiveResourcesInActivityThread()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInActivityThread:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mActiveResources"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInActivityThread:Ljava/lang/reflect/Field;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInActivityThread:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static mActiveResourcesInResourcesManager()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInResourcesManager:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getResourcesManagerClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mActiveResources"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInResourcesManager:Ljava/lang/reflect/Field;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInResourcesManager:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static mActivitiesInActivityThread()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActivitiesInActivityThread:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mActivities"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActivitiesInActivityThread:Ljava/lang/reflect/Field;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActivitiesInActivityThread:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static mPackagesInActivityThread()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mPackagesInActivityThread:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mPackages"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mPackagesInActivityThread:Ljava/lang/reflect/Field;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mPackagesInActivityThread:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static mResourcePackagesInActivityThread()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcePackagesInActivityThread:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mResourcePackages"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcePackagesInActivityThread:Ljava/lang/reflect/Field;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcePackagesInActivityThread:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static mResourcesInContextImpl()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextImpl:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getContextImplClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mResources"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextImpl:Ljava/lang/reflect/Field;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextImpl:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static mResourcesInContextThemeWrapper()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextThemeWrapper:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Landroid/view/ContextThemeWrapper;

    const-string v1, "mResources"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextThemeWrapper:Ljava/lang/reflect/Field;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextThemeWrapper:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static mResourcesInLoadedApk()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInLoadedApk:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getLoadedApkClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mResources"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInLoadedApk:Ljava/lang/reflect/Field;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInLoadedApk:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static mStringBlocksInAssetManager()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mStringBlocksField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "mStringBlocks"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mStringBlocksField:Ljava/lang/reflect/Field;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mStringBlocksField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static mThemeInContentImpl()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContentImpl:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getContextImplClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTheme"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContentImpl:Ljava/lang/reflect/Field;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContentImpl:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static mThemeInContextThemeWrapper()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContextThemeWrapper:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Landroid/view/ContextThemeWrapper;

    const-string v1, "mTheme"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContextThemeWrapper:Ljava/lang/reflect/Field;

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContextThemeWrapper:Ljava/lang/reflect/Field;

    return-object v0
.end method
