.class public Lcom/android/camera/features/gif/GifMediaPlayer;
.super Ljava/lang/Object;
.source "GifMediaPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_STATE:I = 0x0

.field public static final REVERSE_FILTER:I = 0x4

.field public static final SEGMENT_FILTER:I = 0x1

.field public static final SPEED_FILTER:I = 0x8

.field public static final SUBTITLE_FILTER:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MimojiGifMediaPlayer"

.field public static volatile mIsLibLoaded:Z

.field public static final sLocalLibLoader:Lcom/android/camera/features/gif/MiLibLoader;


# instance fields
.field public mCheckErrorState:I

.field public mConcatProgressBar:Landroid/widget/ProgressBar;

.field public mContext:Landroid/content/Context;

.field public mCpuBoost:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

.field public mDuration:J

.field public mEffectNotifier:Lcom/xiaomi/Video2GifEditer/EffectNotifier;

.field public mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

.field public mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

.field public mGifEditState:I

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mIsComposing:Z

.field public mIsHideVideoSegment:Z

.field public mIsNeedShowProgress:Z

.field public mIsSurFaceReady:Z

.field public mLastEditState:I

.field public mLoadHandler:Landroid/os/Handler;

.field public mMainHandler:Landroid/os/Handler;

.field public mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

.field public mMediaProcessCallback:Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;

.field public mPreviewCoverView:Landroid/widget/ImageView;

.field public mReverseFilterID:J

.field public mSourceID:J

.field public mSpeedFilterID:J

.field public mSubtitleFilterID:J

.field public mSubtitleSource:Ljava/lang/String;

.field public mSurface:Landroid/view/Surface;

.field public mTextureView:Landroid/view/TextureView;

.field public mVideoPath:Ljava/lang/String;

.field public mVideoSegmentFilterID:J

.field public time:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/features/gif/GifMediaPlayer$1;

    invoke-direct {v0}, Lcom/android/camera/features/gif/GifMediaPlayer$1;-><init>()V

    sput-object v0, Lcom/android/camera/features/gif/GifMediaPlayer;->sLocalLibLoader:Lcom/android/camera/features/gif/MiLibLoader;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    iput v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLastEditState:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSubtitleSource:Ljava/lang/String;

    iput v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mCheckErrorState:I

    new-instance v2, Lcom/android/camera/features/gif/GifMediaPlayer$2;

    invoke-direct {v2, p0}, Lcom/android/camera/features/gif/GifMediaPlayer$2;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    iput-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectNotifier:Lcom/xiaomi/Video2GifEditer/EffectNotifier;

    new-instance v2, Lcom/android/camera/features/gif/GifMediaPlayer$3;

    invoke-direct {v2, p0}, Lcom/android/camera/features/gif/GifMediaPlayer$3;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    iput-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaProcessCallback:Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "gif"

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLoadHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsSurFaceReady:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    iput-boolean p2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsHideVideoSegment:Z

    sput-boolean v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    iput-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSubtitleSource:Ljava/lang/String;

    iput v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    iput v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLastEditState:I

    sget-object p1, Lcom/android/camera/features/gif/GifMediaPlayer;->sLocalLibLoader:Lcom/android/camera/features/gif/MiLibLoader;

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->initPlayer(Lcom/android/camera/features/gif/MiLibLoader;)V

    return-void
.end method

.method private CreateFilterByType(I)J
    .locals 3

    invoke-static {}, Lcom/xiaomi/Video2GifEditer/EffectType;->values()[Lcom/xiaomi/Video2GifEditer/EffectType;

    move-result-object v0

    aget-object p1, v0, p1

    sget-object v0, Lcom/android/camera/features/gif/GifMediaPlayer$4;->$SwitchMap$com$xiaomi$Video2GifEditer$EffectType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "speed"

    const-string v1, "2"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/Video2GifEditer/EffectType;->SetptsExtFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    invoke-static {v0}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->CreateEffect(Lcom/xiaomi/Video2GifEditer/EffectType;)J

    move-result-wide v0

    sget-object v2, Lcom/xiaomi/Video2GifEditer/EffectType;->SetptsExtFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    invoke-static {v2, v0, v1, p1}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->SetParamsForEffect(Lcom/xiaomi/Video2GifEditer/EffectType;JLjava/util/Map;)Z

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/xiaomi/Video2GifEditer/EffectType;->SubtitleFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    invoke-static {p1}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->CreateEffect(Lcom/xiaomi/Video2GifEditer/EffectType;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O00OoO()I

    move-result p1

    if-ge p1, v1, :cond_3

    sget-object p1, Lcom/xiaomi/Video2GifEditer/EffectType;->VideoSegmentFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    invoke-static {p1}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->CreateEffect(Lcom/xiaomi/Video2GifEditer/EffectType;)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->GIF_PRE_RES_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "model/model_front.dlc"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->CreateSegmentEffect(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/xiaomi/Video2GifEditer/EffectType;->ReverseFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    invoke-static {p1}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->CreateEffect(Lcom/xiaomi/Video2GifEditer/EffectType;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static synthetic access$000(Lcom/android/camera/features/gif/GifMediaPlayer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/features/gif/GifMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/android/camera/features/gif/GifMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/camera/features/gif/GifMediaPlayer;Lcom/android/camera/storage/mediastore/ImageFile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->onSuccess(Lcom/android/camera/storage/mediastore/ImageFile;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/features/gif/GifMediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->time:J

    return-wide v0
.end method

.method private dealAllFilter()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->isComposeState(I)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    invoke-direct {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mReverseFilterID:J

    cmp-long v1, v6, v3

    if-eqz v1, :cond_1

    iget-object v5, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v8, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    goto :goto_0

    :cond_0
    iget-wide v12, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mReverseFilterID:J

    cmp-long v1, v12, v3

    if-eqz v1, :cond_1

    iget-object v11, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v14, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->RemoveEffect(JJZ)Z

    iput-wide v3, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mReverseFilterID:J

    :cond_1
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->isComposeState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSpeedFilterID:J

    cmp-long v1, v6, v3

    if-eqz v1, :cond_3

    iget-object v5, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v8, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    goto :goto_1

    :cond_2
    iget-wide v12, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSpeedFilterID:J

    cmp-long v1, v12, v3

    if-eqz v1, :cond_3

    iget-object v11, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v14, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->RemoveEffect(JJZ)Z

    iput-wide v3, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSpeedFilterID:J

    :cond_3
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->isComposeState(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v5, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_4

    iput-boolean v1, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->isComposeState(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "show_video_segment"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/Video2GifEditer/EffectType;->VideoSegmentFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    iget-wide v3, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    invoke-static {v1, v3, v4, v2}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->SetParamsForEffect(Lcom/xiaomi/Video2GifEditer/EffectType;JLjava/util/Map;)Z

    :cond_4
    iget-object v1, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOOO;

    invoke-direct {v2, v0}, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOOO;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getMimojiItemType()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O00OoO()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "cartoon"

    const-string v2, "custom"

    if-eqz v0, :cond_6

    iget-object v3, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v3, v0

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    array-length v3, v0

    sub-int/2addr v3, v4

    aget-object v3, v0, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    aget-object v0, v0, v3

    goto :goto_2

    :cond_3
    array-length v3, v0

    sub-int/2addr v3, v4

    aget-object v0, v0, v3

    goto :goto_2

    :cond_4
    :goto_1
    const-string v0, " "

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const-string v1, "human"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "person"

    goto :goto_3

    :cond_6
    const-string v0, ""

    :cond_7
    move-object v1, v2

    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->translateForHumanTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initPlayer(Lcom/android/camera/features/gif/MiLibLoader;)V
    .locals 2

    sget-boolean v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mContext:Landroid/content/Context;

    const/16 v1, 0x7b

    invoke-static {v0, v1}, Lcom/xiaomi/MediaRecord/SystemUtil;->Init(Landroid/content/Context;I)V

    :cond_0
    invoke-static {p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->loadLibrariesOnce(Lcom/android/camera/features/gif/MiLibLoader;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    new-instance p1, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    invoke-direct {p1}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    invoke-virtual {p1}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->ConstructMediaEffectGraph()V

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    invoke-virtual {p1, v0}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->SetAudioMute(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-nez p1, :cond_2

    new-instance p1, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    iget-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    invoke-direct {p1, v1}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;-><init>(Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;)V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {p1, v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetPlayLoop(Z)V

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    sget-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;->PlayerWorkingDisableAudioDeviceMode:Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    invoke-virtual {p1, v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ConstructMediaPlayer(Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;)Z

    :cond_2
    return-void
.end method

.method public static loadLibrariesOnce(Lcom/android/camera/features/gif/MiLibLoader;)V
    .locals 2

    const-class v0, Lcom/android/camera/features/gif/GifMediaPlayer;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera/features/gif/GifMediaPlayer;->sLocalLibLoader:Lcom/android/camera/features/gif/MiLibLoader;

    :cond_0
    const-string/jumbo v1, "vvc++_shared"

    invoke-interface {p0, v1}, Lcom/android/camera/features/gif/MiLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mimoji_tracking"

    invoke-interface {p0, v1}, Lcom/android/camera/features/gif/MiLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mimoji_video2gif"

    invoke-interface {p0, v1}, Lcom/android/camera/features/gif/MiLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mimoji_bokeh_845_video"

    invoke-interface {p0, v1}, Lcom/android/camera/features/gif/MiLibLoader;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onError()V
    .locals 2

    const-string v0, "MimojiGifMediaPlayer"

    const-string/jumbo v1, "onError: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooO0o0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooO0o0;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onSuccess(Lcom/android/camera/storage/mediastore/ImageFile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOO0o;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOO0o;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;Lcom/android/camera/storage/mediastore/ImageFile;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseEffectPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->StopPreView()V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->DestructMediaPlayer()V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetViewSurface(Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mTextureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private releaseMediaGraph()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->DestructMediaEffectGraph()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    :cond_0
    return-void
.end method

.method private releaseVideoSegmentMediaGraph()V
    .locals 5

    iget-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->DestoryEffect(J)V

    iput-wide v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mConcatProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifEditLayout;->setIsAllowInput(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    iput-boolean v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isPreviewPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isPreviewPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->StartPreView()V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetPlayLoop(Z)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->onError()V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/storage/mediastore/ImageFile;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfb

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;->coverGifSuccess(Lcom/android/camera/storage/mediastore/ImageFile;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    :goto_0
    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/android/camera/features/gif/GifMediaPlayer;->sLocalLibLoader:Lcom/android/camera/features/gif/MiLibLoader;

    invoke-direct {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->initPlayer(Lcom/android/camera/features/gif/MiLibLoader;)V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "MimojiGifMediaPlayer"

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSurface:Landroid/view/Surface;

    if-nez p1, :cond_0

    const-string p1, "mimoji void playCameraRecord[]  mSurface == nul"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddVideoSource(Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    iget-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsHideVideoSegment:Z

    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v5, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    iget-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectNotifier:Lcom/xiaomi/Video2GifEditer/EffectNotifier;

    invoke-static {v0, v1, p1}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->SetFilterCallback(JLcom/xiaomi/Video2GifEditer/EffectNotifier;)V

    goto :goto_0

    :cond_1
    iput-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->dealAllFilter()V

    goto :goto_1

    :cond_3
    const-string p1, "mimoji void playCameraRecord[] null"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->onError()V

    :goto_1
    return-void
.end method

.method public synthetic OooO00o(Z)V
    .locals 9

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    const/4 v2, 0x4

    or-int/2addr p1, v2

    iput p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    invoke-direct {p0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mReverseFilterID:J

    cmp-long p1, v4, v0

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v6, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    iget-wide v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mReverseFilterID:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v5, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->RemoveEffect(JJZ)Z

    iput-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mReverseFilterID:J

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOOOO;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOOOO;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->onError()V

    return-void
.end method

.method public synthetic OooO0O0(Z)V
    .locals 8

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSpeedFilterID:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v5, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    iget-wide v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSpeedFilterID:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v5, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->RemoveEffect(JJZ)Z

    iput-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSpeedFilterID:J

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOOO0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOOO0;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->onError()V

    return-void
.end method

.method public synthetic OooO0OO(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "show_video_segment"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/Video2GifEditer/EffectType;->VideoSegmentFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    iget-wide v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    invoke-static {v1, v2, v3, v0}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->SetParamsForEffect(Lcom/xiaomi/Video2GifEditer/EffectType;JLjava/util/Map;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooO0o;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooO0o;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfb

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;->coverGifError()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    return-void
.end method

.method public synthetic OooO0Oo(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->onError()V

    return-void
.end method

.method public synthetic OooO0o0()V
    .locals 21

    move-object/from16 v1, p0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isComposeState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "show_video_segment"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v1, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    invoke-static {v3, v4, v2}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddVideoSegmentFilter(JLjava/util/Map;)I

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->isComposeState(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddReverseFilter()I

    :cond_1
    iget-object v3, v1, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    const-string v4, "MimojiGifMediaPlayer"

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/camera/features/gif/GifEditLayout;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subtile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v7}, Lcom/android/camera/features/gif/GifEditLayout;->getResult()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v6}, Lcom/android/camera/features/gif/GifEditLayout;->getResult()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "textname"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "posx"

    const-string v7, "200"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "posy"

    const-string v7, "370"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "100"

    const-string/jumbo v7, "subtitle_width"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "subtitle_height"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "font_size"

    const-string v7, "36"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddSubtitleFilter(Ljava/util/Map;)I

    iget-object v3, v1, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v3}, Lcom/android/camera/features/gif/GifEditLayout;->getResult()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_0

    :cond_2
    move-object v10, v5

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Lcom/android/camera/features/gif/GifMediaPlayer;->isComposeState(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/high16 v3, 0x40000000    # 2.0f

    :cond_3
    move/from16 v19, v3

    iget-object v3, v1, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    const-string v7, "MIMOJI_GIF"

    const-string v8, "gif"

    invoke-static {v7, v8}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v7, Lcom/android/camera/storage/mediastore/ImageFile;

    iget-object v8, v1, Lcom/android/camera/features/gif/GifMediaPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/camera/storage/mediastore/ImageFile;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const/16 v18, 0x5a

    const-string v17, "image/gif"

    move-object v11, v7

    move-object v12, v14

    invoke-virtual/range {v11 .. v18}, Lcom/android/camera/storage/mediastore/ImageFile;->insertPath2Store(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)Landroid/net/Uri;

    move-result-object v13

    iget-object v8, v1, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaProcessCallback:Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;

    invoke-virtual {v8, v7}, Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;->setImageFile(Lcom/android/camera/storage/mediastore/ImageFile;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->getMimojiItemType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isComposeState(I)Z

    move-result v0

    invoke-virtual {v1, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->isComposeState(I)Z

    move-result v8

    invoke-virtual {v1, v6}, Lcom/android/camera/features/gif/GifMediaPlayer;->isComposeState(I)Z

    move-result v9

    iget-wide v11, v1, Lcom/android/camera/features/gif/GifMediaPlayer;->mDuration:J

    move-object v6, v7

    move v7, v0

    invoke-static/range {v6 .. v12}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiSaveGif(Ljava/lang/String;ZZZLjava/lang/String;J)V

    const/4 v2, -0x1

    :try_start_0
    iget-object v0, v1, Lcom/android/camera/features/gif/GifMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "rw"

    invoke-virtual {v0, v13, v6, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/16 v13, 0x14

    const/16 v14, 0x5dc

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x1388

    iget-object v0, v1, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaProcessCallback:Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;

    move-object v11, v3

    move-object/from16 v20, v0

    invoke-static/range {v11 .. v20}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->ConvertGif(Ljava/lang/String;Ljava/io/FileDescriptor;IIJJFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    if-eq v0, v2, :cond_4

    :goto_1
    invoke-static {v5}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    if-eq v0, v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :goto_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    if-eq v3, v2, :cond_5

    invoke-static {v5}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_5
    throw v0
.end method

.method public synthetic OooO0o0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifEditLayout;->setIsAllowInput(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mConcatProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mConcatProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    :cond_1
    return-void
.end method

.method public cancelVideo2gif()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsComposing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->CancelGifConvert(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public enableReverseFilter(Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLoadHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooO;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooO;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public enableSpeedFilter(Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLoadHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOO0O;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOO0O;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public enableVideoSegmentFilter(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mConcatProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/features/gif/GifEditLayout;->setIsAllowInput(Z)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    iget-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v1}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLoadHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOO0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooOO0;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public isComposeState(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isComposing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsComposing:Z

    return v0
.end method

.method public isEditChanged()Z
    .locals 5

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSubtitleSource:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifEditLayout;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifEditLayout;->getResult()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSubtitleSource:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    iget v4, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLastEditState:I

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditState:I

    iget v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLastEditState:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLastEditState:I

    :cond_2
    return v0
.end method

.method public isEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsSurFaceReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreviewPaused()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->GetPreViewStatus()Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/Video2GifEditer/PreViewStatus;->PreViewPaused:Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isPreviewPlaying()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->GetPreViewStatus()Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/Video2GifEditer/PreViewStatus;->PreViewPlaying:Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p2, "MimojiGifMediaPlayer"

    const-string p3, "mimoji void onSurfaceTextureAvailable[surface, width, height]"

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSurface:Landroid/view/Surface;

    if-nez p2, :cond_1

    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSurface:Landroid/view/Surface;

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetViewSurface(Landroid/view/Surface;)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    iget-wide p2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mDuration:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/features/gif/GifMediaPlayer;->openVideoUrl(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "MimojiGifMediaPlayer"

    const-string v0, "mimoji boolean onSurfaceTextureDestroyed[surface]"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfb

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;->release()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p1, "MimojiGifMediaPlayer"

    const-string p2, "mimoji void onSurfaceTextureSizeChanged[surface, width, height]"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsSurFaceReady:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsSurFaceReady:Z

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mPreviewCoverView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mConcatProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/gif/GifEditLayout;->setIsAllowInput(Z)V

    :cond_0
    return-void
.end method

.method public openVideoUrl(Ljava/lang/String;J)V
    .locals 0

    iput-wide p2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mDuration:J

    iget-object p2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLoadHandler:Landroid/os/Handler;

    new-instance p3, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooO0Oo;

    invoke-direct {p3, p0, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooO0Oo;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pausePlay()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    :cond_0
    return-void
.end method

.method public releaseMedia(Z)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->cancelVideo2gif()V

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->releaseEffectPlayer()V

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->releaseMediaGraph()V

    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mCpuBoost:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V

    :cond_0
    if-nez p1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->releaseVideoSegmentMediaGraph()V

    iget-object v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSurface:Landroid/view/Surface;

    :cond_1
    sget-boolean v3, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/xiaomi/MediaRecord/SystemUtil;->UnInit()V

    sput-boolean v2, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimoji void releaseMedia[fromInit] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "   time:  "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MimojiGifMediaPlayer"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resumePlay()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MimojiGifMediaPlayer"

    const-string v1, " resumePlay unenable"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isPreviewPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->onError()V

    return-void
.end method

.method public setConcatProgressBar(Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mConcatProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public setGifEditLayout(Lcom/android/camera/features/gif/GifEditLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    return-void
.end method

.method public setIsComposing(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsComposing:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mCheckErrorState:I

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooO0oO;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooO0oO;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPreviewCoverView(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mPreviewCoverView:Landroid/widget/ImageView;

    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;J)V
    .locals 0

    iput-wide p2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mDuration:J

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    return-void
.end method

.method public startVideo2Gif()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpRecordVideo(II)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mCpuBoost:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mCpuBoost:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mCpuBoost:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(II)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->time:J

    invoke-virtual {p0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mConcatProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifEditLayout;->setIsAllowInput(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLoadHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooO0oo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooO0oo;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    const-string v0, "MimojiGifMediaPlayer"

    const-string v1, "mimoji void startVideo2Gif[] videpath null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
