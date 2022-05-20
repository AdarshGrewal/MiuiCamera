.class public Lcom/android/camera/module/loader/ActionUpdateLensDirtyDetect;
.super Ljava/lang/Object;
.source "ActionUpdateLensDirtyDetect.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public mIsOnCreate:Z

.field public mModuleWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/ActionUpdateLensDirtyDetect;->mModuleWeakReference:Ljava/lang/ref/WeakReference;

    .line 3
    iput-boolean p2, p0, Lcom/android/camera/module/loader/ActionUpdateLensDirtyDetect;->mIsOnCreate:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/ActionUpdateLensDirtyDetect;->mModuleWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/module/loader/ActionUpdateLensDirtyDetect;->mIsOnCreate:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setLensDirtyDetectEnable(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getMiAlgoASDVersion()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataNormalItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v3

    const-string/jumbo v4, "pref_lens_dirty_detect_enabled_key"

    .line 8
    invoke-interface {v3, v4, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string/jumbo v4, "pref_lens_dirty_detect_times_key"

    .line 9
    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/DataItemBase;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_1
    const-string/jumbo v4, "pref_lens_dirty_detect_date_key"

    .line 11
    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 12
    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/DataItemBase;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 13
    :cond_2
    invoke-interface {v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->addLensDirtyDetectedTimes()V

    .line 15
    :goto_0
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/16 v5, 0x3d

    aput v5, v4, v2

    invoke-interface {v1, v4}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    .line 16
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/module/common/IUserEventMgr;->updateLensDirtyDetect(Z)V

    :cond_4
    return-void
.end method
