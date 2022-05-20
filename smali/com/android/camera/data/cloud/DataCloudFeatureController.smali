.class public Lcom/android/camera/data/cloud/DataCloudFeatureController;
.super Ljava/lang/Object;
.source "DataCloudFeatureController.java"

# interfaces
.implements Lcom/android/camera/data/cloud/DataCloud$CloudFeature;


# static fields
.field public static final KEY:Ljava/lang/String; = "cloud_feature"

.field public static final TAG:Ljava/lang/String; = "DataCloudFeatureController"


# instance fields
.field public mPreferences:Landroid/content/SharedPreferences;

.field public mReady:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/cloud/DataCloudFeatureController;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/data/cloud/DataCloudFeatureController;->initPreferences()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/cloud/DataCloudFeatureController;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private initPreferences()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/cloud/DataCloudFeatureController;->provideKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/cloud/DataCloudFeatureController;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public editor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/data/cloud/DataCloudFeatureController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getAllDisabledFeatures()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera/data/cloud/DataCloudFeatureController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public provideKey()Ljava/lang/String;
    .locals 1

    const-string v0, "cloud_feature"

    return-object v0
.end method

.method public setReady(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/cloud/DataCloudFeatureController;->mReady:Z

    return-void
.end method
