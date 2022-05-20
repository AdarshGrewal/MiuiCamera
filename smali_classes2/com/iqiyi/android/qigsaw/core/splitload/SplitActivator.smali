.class public final Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;
.super Ljava/lang/Object;
.source "SplitActivator.java"


# static fields
.field public static final sSplitApplicationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final aabExtension:Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

.field public final appContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->sSplitApplicationMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->appContext:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getInstance()Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->aabExtension:Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    return-void
.end method

.method private debuggable()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method


# virtual methods
.method public activate(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;
        }
    .end annotation

    const/16 v0, -0x18

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->aabExtension:Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    invoke-virtual {v1, p1, p2}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->createApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v2, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->sSplitApplicationMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->aabExtension:Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->appContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v3}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->activeApplication(Landroid/app/Application;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->aabExtension:Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    invoke-virtual {v2, p1, p2}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->activateSplitProviders(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_2

    .line 5
    :try_start_2
    const-class p1, Landroid/app/Application;

    const-string p2, "onCreate"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {p1, p2, v3}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->debuggable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 9
    :cond_1
    new-instance p2, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    invoke-direct {p2, v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    const/16 v0, -0x19

    invoke-direct {p2, v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw p2

    :catchall_1
    move-exception p1

    .line 11
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->debuggable()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    instance-of p2, p1, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;

    if-nez p2, :cond_3

    .line 13
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 14
    :cond_3
    new-instance p2, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    invoke-direct {p2, v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method
