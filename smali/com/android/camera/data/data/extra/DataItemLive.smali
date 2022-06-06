.class public Lcom/android/camera/data/data/extra/DataItemLive;
.super Lcom/android/camera/data/data/DataItemBase;
.source "DataItemLive.java"


# static fields
.field public static final DATA_FILM_VERSION:Ljava/lang/String; = "film_version"

.field public static final DATA_LIVE_ACTIVATION:Ljava/lang/String; = "live_activation"

.field public static final DATA_LIVE_DURATION:Ljava/lang/String; = "pref_mi_live_duration"

.field public static final DATA_LIVE_REFERENCE_LINE:Ljava/lang/String; = "pref_camera_referenceline_type_key"

.field public static final DATA_LIVE_START_ORIENTATION:Ljava/lang/String; = "live_start_orientation"

.field public static final DATA_MIMOJI_CARTOON_VERSION:Ljava/lang/String; = "mimoji_cartoon_version"

.field public static final DATA_MIMOJI_HUMAN_VERSION:Ljava/lang/String; = "mimoji_human_version"

.field public static final DATA_MULTI_CAMERA:Ljava/lang/String; = "multi_camera"

.field public static final DATA_VV_CHECK_TIME:Ljava/lang/String; = "vv_update_time"

.field public static final DATA_VV_VERSION:Ljava/lang/String; = "vv_version"

.field public static final KEY:Ljava/lang/String; = "camera_settings_live"


# instance fields
.field public mAmbilightModeIndex:I

.field public mComponentLiveDuration:Lcom/android/camera/data/data/config/ComponentLiveDuration;

.field public mComponentLiveReferenceLine:Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;

.field public mComponentLiveVideoQuality:Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

.field public mCurrentActivityHashCode:I

.field public mFilmItem:Lcom/android/camera/fragment/film/FilmItem;

.field public mIsShowMiLiveMenu:Z

.field public mKaleidoscope:Ljava/lang/String;

.field public mMiLiveFilterId:Ljava/lang/String;

.field public mMiLiveSegmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation
.end field

.field public mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

.field public mRecordSegmentTimeInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/TimeSpeedModel;",
            ">;"
        }
    .end annotation
.end field

.field public mTimeFreezeFilmRatioEnabled:Z

.field public mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

.field public mVVItem:Lcom/android/camera/fragment/vv/VVItem;

.field public mVideoSky:Ljava/lang/String;

.field public mVideoSkySegmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mCurrentActivityHashCode:I

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveFilterId:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mKaleidoscope:Ljava/lang/String;

    iput v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mAmbilightModeIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimeFreezeFilmRatioEnabled:Z

    iput-object v1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVideoSky:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mIsShowMiLiveMenu:Z

    new-instance v0, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;-><init>(Lcom/android/camera/data/data/extra/DataItemLive;)V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveVideoQuality:Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    new-instance v0, Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;-><init>(Lcom/android/camera/data/data/extra/DataItemLive;)V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveReferenceLine:Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;

    new-instance v0, Lcom/android/camera/data/data/config/ComponentLiveDuration;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;-><init>(Lcom/android/camera/data/data/extra/DataItemLive;)V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveDuration:Lcom/android/camera/data/data/config/ComponentLiveDuration;

    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mRecordSegmentTimeInfo:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->reset()V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveSegmentData:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveSegmentData:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVideoSkySegmentData:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVideoSkySegmentData:Ljava/util/List;

    :cond_2
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveFilterId:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mKaleidoscope:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mAmbilightModeIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimeFreezeFilmRatioEnabled:Z

    iget-object v1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/android/camera/timerburst/TimerBurstController;->setInTimerBurstShotting(Z)V

    :cond_3
    return-void
.end method

.method public fillVideoSkySegmentData(Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVideoSkySegmentData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;

    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getActivation()Ljava/lang/String;
    .locals 2

    const-string v0, "live_activation"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmbilightMode()I
    .locals 1

    iget v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mAmbilightModeIndex:I

    return v0
.end method

.method public getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveDuration:Lcom/android/camera/data/data/config/ComponentLiveDuration;

    return-object v0
.end method

.method public getComponentLiveVideoQuality()Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveVideoQuality:Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    return-object v0
.end method

.method public getCurrentFilmItem()Lcom/android/camera/fragment/film/FilmItem;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mFilmItem:Lcom/android/camera/fragment/film/FilmItem;

    return-object v0
.end method

.method public getCurrentVVItem()Lcom/android/camera/fragment/vv/VVItem;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    return-object v0
.end method

.method public getIsMultiCamera()Z
    .locals 2

    const-string/jumbo v0, "multi_camera"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getKaleidoscope()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mKaleidoscope:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveFilter()I
    .locals 2

    const-string v0, "key_live_filter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLiveStartOrientation()I
    .locals 2

    const-string v0, "live_start_orientation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMiLiveFilterId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveFilterId:Ljava/lang/String;

    return-object v0
.end method

.method public getMiLiveSegmentData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveSegmentData:Ljava/util/List;

    return-object v0
.end method

.method public getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    return-object v0
.end method

.method public getRecordSegmentTimeInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/TimeSpeedModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mRecordSegmentTimeInfo:Ljava/util/List;

    return-object v0
.end method

.method public getTimeFreezeFilmRatioEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimeFreezeFilmRatioEnabled:Z

    return v0
.end method

.method public getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/timerburst/TimerBurstController;

    invoke-direct {v0}, Lcom/android/camera/timerburst/TimerBurstController;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

    return-object v0
.end method

.method public getVVVersion()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "vv_version"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSky()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVideoSky:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSkySegmentData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVideoSkySegmentData:Ljava/util/List;

    return-object v0
.end method

.method public getmComponentLiveReferenceLine()Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveReferenceLine:Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;

    return-object v0
.end method

.method public isTransient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public provideKey()Ljava/lang/String;
    .locals 1

    const-string v0, "camera_settings_live"

    return-object v0
.end method

.method public reInitComponent(IILcom/android/camera2/CameraCapabilities;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveVideoQuality:Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    iget-object p3, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveReferenceLine:Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;

    invoke-virtual {p3, p1, p2}, Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;->reInit(II)V

    iget-object p2, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveDuration:Lcom/android/camera/data/data/config/ComponentLiveDuration;

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->reInit(I)Ljava/util/List;

    return-void
.end method

.method public resetAll()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->clearAll()V

    return-void
.end method

.method public resetMimojiIfNeed(I)V
    .locals 0

    return-void
.end method

.method public setActivation(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string v1, "live_activation"

    invoke-interface {v0, v1, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setAmbilightMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mAmbilightModeIndex:I

    return-void
.end method

.method public setCurrentFilmItem(Lcom/android/camera/fragment/film/FilmItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mFilmItem:Lcom/android/camera/fragment/film/FilmItem;

    return-void
.end method

.method public setCurrentVVItem(Lcom/android/camera/fragment/vv/VVItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    return-void
.end method

.method public setIsMultiCamera(Z)V
    .locals 1

    const-string/jumbo v0, "multi_camera"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setKaleidoscope(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mKaleidoscope:Ljava/lang/String;

    return-void
.end method

.method public setLiveFilter(I)V
    .locals 1

    const-string v0, "key_live_filter"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setLiveStartOrientation(I)V
    .locals 1

    const-string v0, "live_start_orientation"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setMiLiveFilterId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveFilterId:Ljava/lang/String;

    return-void
.end method

.method public setMiLiveSegmentData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveSegmentData:Ljava/util/List;

    return-void
.end method

.method public setMimojiVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setRecordSegmentTimeInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/TimeSpeedModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mRecordSegmentTimeInfo:Ljava/util/List;

    return-void
.end method

.method public setTimeFreezeFilmRatioEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimeFreezeFilmRatioEnabled:Z

    return-void
.end method

.method public setTimerBurstController(Lcom/android/camera/timerburst/TimerBurstController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

    return-void
.end method

.method public setVVVersion(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "vv_version"

    invoke-interface {v0, v1, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setVideoSky(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVideoSky:Ljava/lang/String;

    return-void
.end method

.method public setVideoSkySegmentData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVideoSkySegmentData:Ljava/util/List;

    return-void
.end method
