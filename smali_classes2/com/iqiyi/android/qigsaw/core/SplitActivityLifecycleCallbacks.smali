.class public abstract Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "SplitActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final SPLIT_NAME_BASE:Ljava/lang/String; = "base"

.field public static final TAG:Ljava/lang/String; = "SplitActivityLifecycleCallbacks"


# instance fields
.field public final splitActivityNameCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final splitBriefInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->splitActivityNameCache:Landroid/util/LruCache;

    .line 3
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->splitBriefInfoCache:Landroid/util/LruCache;

    return-void
.end method

.method private getSplitBriefInfoForActivity(Landroid/app/Activity;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->getSplitNameForActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "base"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->splitBriefInfoCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v2, p1, v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getSplitInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isBuiltIn()Z

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->splitBriefInfoCache:Landroid/util/LruCache;

    invoke-virtual {p1, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSplitNameForActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->splitActivityNameCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getInstance()Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getSplitNameForActivityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "base"

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->splitActivityNameCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->getSplitBriefInfoForActivity(Landroid/app/Activity;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->onSplitActivityCreated(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;Landroid/app/Activity;Landroid/os/Bundle;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const/4 p1, 0x1

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p1

    const-string p1, "SplitActivityLifecycleCallbacks"

    const-string v0, "Activity %s of split %s is created."

    invoke-static {p1, v0, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->getSplitBriefInfoForActivity(Landroid/app/Activity;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->onSplitActivityDestroyed(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;Landroid/app/Activity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    const-string p1, "SplitActivityLifecycleCallbacks"

    const-string v0, "Activity %s of split %s is destroyed."

    invoke-static {p1, v0, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->getSplitBriefInfoForActivity(Landroid/app/Activity;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->onSplitActivityPaused(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;Landroid/app/Activity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    const-string p1, "SplitActivityLifecycleCallbacks"

    const-string v0, "Activity %s of split %s is paused."

    invoke-static {p1, v0, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->getSplitBriefInfoForActivity(Landroid/app/Activity;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->onSplitActivityResumed(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;Landroid/app/Activity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    const-string p1, "SplitActivityLifecycleCallbacks"

    const-string v0, "Activity %s of split %s is resumed."

    invoke-static {p1, v0, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->getSplitBriefInfoForActivity(Landroid/app/Activity;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->onSplitActivitySaveInstanceState(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;Landroid/app/Activity;Landroid/os/Bundle;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const/4 p1, 0x1

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p1

    const-string p1, "SplitActivityLifecycleCallbacks"

    const-string v0, "Activity %s of split %s is saving state."

    invoke-static {p1, v0, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->getSplitBriefInfoForActivity(Landroid/app/Activity;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->onSplitActivityStarted(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;Landroid/app/Activity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    const-string p1, "SplitActivityLifecycleCallbacks"

    const-string v0, "Activity %s of split %s is started."

    invoke-static {p1, v0, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->getSplitBriefInfoForActivity(Landroid/app/Activity;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;->onSplitActivityStopped(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;Landroid/app/Activity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    const-string p1, "SplitActivityLifecycleCallbacks"

    const-string v0, "Activity %s of split %s is stopped."

    invoke-static {p1, v0, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract onSplitActivityCreated(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract onSplitActivityDestroyed(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;Landroid/app/Activity;)V
.end method

.method public abstract onSplitActivityPaused(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;Landroid/app/Activity;)V
.end method

.method public abstract onSplitActivityResumed(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;Landroid/app/Activity;)V
.end method

.method public abstract onSplitActivitySaveInstanceState(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract onSplitActivityStarted(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;Landroid/app/Activity;)V
.end method

.method public abstract onSplitActivityStopped(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;Landroid/app/Activity;)V
.end method
