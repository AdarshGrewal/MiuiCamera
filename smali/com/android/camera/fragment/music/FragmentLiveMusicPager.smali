.class public abstract Lcom/android/camera/fragment/music/FragmentLiveMusicPager;
.super Landroidx/fragment/app/Fragment;
.source "FragmentLiveMusicPager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/camera/fragment/CtaNoticeFragment$OnCtaNoticeClickListener;
.implements Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;


# static fields
.field public static final MAX_REQUEST_TIME:J = 0xa4cb80L

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public isMusicCutPlay:Z

.field public mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

.field public mCurrentSelectedMusicLayout:Landroid/widget/LinearLayout;

.field public final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field public mEnableTrack:Z

.field public mFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public mHandler:Landroid/os/Handler;

.field public mIsDestroyed:Z

.field public mIsLoadingAnimationStart:Z

.field public mIsMediaPreparing:Z

.field public mItemType:I

.field public mLoadErrorWr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mLoadMusicDisposable:Lio/reactivex/disposables/Disposable;

.field public mMediaLoadingProgressBar:Landroid/widget/ProgressBar;

.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field public mMusicAdapter:Lcom/android/camera/fragment/music/MusicAdapter;

.field public mMusicCutDialog:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

.field public mMusicInfo:Lcom/android/camera/fragment/music/LiveMusicInfo;

.field public mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

.field public mMusicPlayDuration:J

.field public mMusicPlayPosition:I

.field public mNetworkExceptionLayout:Landroid/widget/LinearLayout;

.field public mPlayingImageView:Landroid/widget/ImageView;

.field public mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mSupportResetRecyclerView:Z

.field public mUpdateLayout:Landroid/widget/LinearLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->isMusicCutPlay:Z

    .line 3
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 4
    new-instance v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$4;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$4;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/resource/tmmusic/TMMusicList;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/android/camera/resource/tmmusic/TMMusicCatrgoryRequest;

    invoke-virtual {p0}, Lcom/android/camera/resource/tmmusic/TMMusicList;->getCategoryID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/resource/tmmusic/TMMusicCatrgoryRequest;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->initOnlineAdapter(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onLoadError()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startTimer()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lcom/android/camera/fragment/music/MusicOperation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsMediaPreparing:Z

    return p1
.end method

.method public static synthetic access$1300(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsLoadingAnimationStart:Z

    return p0
.end method

.method public static synthetic access$1500(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lcom/android/camera/fragment/music/LiveMusicInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicInfo:Lcom/android/camera/fragment/music/LiveMusicInfo;

    return-object p0
.end method

.method public static synthetic access$1502(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Lcom/android/camera/fragment/music/LiveMusicInfo;)Lcom/android/camera/fragment/music/LiveMusicInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicInfo:Lcom/android/camera/fragment/music/LiveMusicInfo;

    return-object p1
.end method

.method public static synthetic access$1600(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mPlayingImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$1602(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mPlayingImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method public static synthetic access$1700(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicPauseOrStopPlay(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    return-void
.end method

.method public static synthetic access$1802(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaLoadingProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startPlayOrStopMusic(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Ljava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startDownloadRequest(Ljava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->isMusicCutPlay:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lcom/android/camera/fragment/music/LiveMusicInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicStartPlay(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lcom/android/camera/fragment/music/FragmentLiveMusicCut;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicCutDialog:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    return-object p0
.end method

.method private initAdapter()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/fragment/music/MusicOperation;

    iget-wide v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicPlayDuration:J

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/music/MusicOperation;-><init>(J)V

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mItemType:I

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/camera/fragment/CtaNoticeFragment;->checkCta(Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/CtaNoticeFragment$OnCtaNoticeClickListener;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->loadOnlineMusicByFeature()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mNetworkExceptionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mUpdateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 9
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 10
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO0O0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO0O0;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    .line 11
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mLoadMusicDisposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method private initAdapter(Ljava/util/List;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/music/LiveMusicInfo;",
            ">;J)V"
        }
    .end annotation

    .line 12
    new-instance v6, Lcom/android/camera/fragment/music/MusicAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/music/MusicAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/util/List;J)V

    iput-object v6, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicAdapter:Lcom/android/camera/fragment/music/MusicAdapter;

    .line 13
    new-instance p2, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$8;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$8;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Ljava/util/List;)V

    invoke-virtual {v6, p2}, Lcom/android/camera/fragment/music/MusicAdapter;->setItemOnClickInterface(Lcom/android/camera/fragment/music/MusicAdapter$ItemOnClickInterface;)V

    return-void
.end method

.method private initOnlineAdapter(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/music/LiveMusicInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mUpdateLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mNetworkExceptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-wide v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicPlayDuration:J

    invoke-direct {p0, p1, v2, v3}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->initAdapter(Ljava/util/List;J)V

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicAdapter:Lcom/android/camera/fragment/music/MusicAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00ac

    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a02bf

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance p2, Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicAdapter:Lcom/android/camera/fragment/music/MusicAdapter;

    invoke-direct {p2, v0}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    invoke-virtual {p2, p1}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addFooter(Landroid/view/View;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_0
    return-void
.end method

.method private isMusicFileExists(Lcom/android/camera/fragment/music/LiveMusicInfo;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mItemType:I

    if-nez v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_ONLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mp3"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method private loadOnlineMusicByFeature()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/network/NetworkDependencies;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onLoadError()V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->loadTMMusic()V

    return-void
.end method

.method private loadTMMusic()V
    .locals 4

    .line 1
    const-class v0, Lcom/android/camera/resource/tmmusic/TMMusicList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mEnableTrack:Z

    .line 3
    new-instance v2, Lcom/android/camera/resource/tmmusic/TMMusicCacheLoadRequest;

    invoke-direct {v2}, Lcom/android/camera/resource/tmmusic/TMMusicCacheLoadRequest;-><init>()V

    .line 4
    invoke-virtual {v2, v0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/android/camera/resource/tmmusic/TMMusicStationsRequest;

    invoke-direct {v3, v1}, Lcom/android/camera/resource/tmmusic/TMMusicStationsRequest;-><init>(Z)V

    .line 6
    invoke-virtual {v3, v0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO0o0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO0o0;

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 8
    invoke-static {v2, v0}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lio/reactivex/Observable;->firstElement()Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/android/camera/resource/tmmusic/TMMusicListMapToMusicInfo;

    invoke-direct {v1}, Lcom/android/camera/resource/tmmusic/TMMusicListMapToMusicInfo;-><init>()V

    .line 10
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 11
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 12
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO0oo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO0oo;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO0OO;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO0OO;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    .line 13
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private loadTikTokMusic()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/android/camera/network/live/TTLiveMusicResourceRequest;

    invoke-direct {v0}, Lcom/android/camera/network/live/TTLiveMusicResourceRequest;-><init>()V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getLiveMusicFirstRequestTime()J

    move-result-wide v1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_1

    const-wide/32 v1, 0xa4cb80

    cmp-long v1, v3, v1

    if-gez v1, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/network/live/TTLiveMusicResourceRequest;->loadFromCache()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->initOnlineAdapter(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/camera/network/live/BaseRequestException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onLoadError()V

    .line 8
    sget-object v1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request online music failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/network/live/BaseRequest;->execute(Lcom/android/camera/network/net/base/ResponseListener;)V

    :goto_0
    return-void
.end method

.method private onLoadError()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mLoadErrorWr:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private onMusicPauseOrStopPlay(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mPlayingImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onMusicPauseOrStopPlay: empty view, returning."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/music/LiveMusicInfo;->setPlaying(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicAdapter:Lcom/android/camera/fragment/music/MusicAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private onMusicSelectedToPlay(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsDestroyed:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 5
    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/music/LiveMusicInfo;->setBuffing(Z)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {v1}, Lcom/android/camera/fragment/music/MusicOperation;->endPlaySession()V

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/music/LiveMusicInfo;->setPlaying(Z)V

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    iget-object v2, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mRequestItemID:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/fragment/music/MusicOperation;->onSelected(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 15
    iput-boolean v4, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsMediaPreparing:Z

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO0Oo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO0Oo;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO0o;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO0o;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediaplayer play failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private onMusicSelectedToUse(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    iget-object v1, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mRequestItemID:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/music/MusicOperation;->onSelected(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {v0}, Lcom/android/camera/fragment/music/MusicOperation;->onSelectedToUse()V

    .line 3
    iget v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mItemType:I

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_ONLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    .line 5
    :cond_0
    iget-wide v5, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mDuration:J

    const-wide/16 v0, 0x3a98

    cmp-long v0, v5, v0

    if-gez v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicCutDialog:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    const-wide/16 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->musicCut(Lcom/android/camera/fragment/music/LiveMusicInfo;JJ)Lcom/android/camera/fragment/music/LiveMusicInfo;

    .line 7
    :cond_1
    iget-object v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xd3

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$LiveAudioChanges;

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$LiveAudioChanges;->setAudioPath(Ljava/lang/String;)V

    .line 10
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    sget-object v1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMusicSelectedToUse: musicHint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->setCurrentLiveMusic(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xf5

    aput v2, v0, v1

    .line 15
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 16
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_4
    return-void
.end method

.method private onMusicStartPlay(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/music/LiveMusicInfo;->setPlaying(Z)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/music/LiveMusicInfo;->setBuffing(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicAdapter:Lcom/android/camera/fragment/music/MusicAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private resetRecyclerView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070413

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07061e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private selectMusic(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {v0}, Lcom/android/camera/fragment/music/MusicOperation;->endPlaySession()V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/music/LiveMusicInfo;->setPlaying(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicAdapter:Lcom/android/camera/fragment/music/MusicAdapter;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->isMusicFileExists(Lcom/android/camera/fragment/music/LiveMusicInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicSelectedToUse(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    goto :goto_0

    .line 10
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mItemType:I

    if-nez v0, :cond_2

    .line 11
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startDownloadMusicForUse(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startDownloadAnimation()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsLoadingAnimationStart:Z

    .line 2
    new-instance v1, Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const v1, 0x7f12047d

    .line 3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    new-instance v2, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$7;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$7;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startDownloadMusicForUse(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mItemType:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/network/NetworkDependencies;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f120480

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startDownloadAnimation()V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_ONLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v1, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->downloadState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, v1, v0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startTTMusicDetailInfoRequest(ZLjava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startDownloadRequest(Ljava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    :goto_0
    return-void
.end method

.method private startDownloadRequest(Ljava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    .line 2
    new-instance v1, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-direct {v1, v0, p1}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, p2}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO0oO;

    invoke-direct {p2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO0oO;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooOO0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooOO0;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    .line 5
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private startPlayOrStopMusic(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPlayOrStopMusic: stop"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {v0}, Lcom/android/camera/fragment/music/MusicOperation;->onPausePlay()V

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicPauseOrStopPlay(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPlayOrStopMusic: play"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {v0}, Lcom/android/camera/fragment/music/MusicOperation;->onResumePlay()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicStartPlay(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    :goto_0
    return-void

    .line 11
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mItemType:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/network/NetworkDependencies;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f120480

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 14
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/music/LiveMusicInfo;->setBuffing(Z)V

    .line 15
    iget-object v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicSelectedToPlay(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    goto :goto_1

    .line 17
    :cond_3
    iget v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mItemType:I

    if-nez v0, :cond_4

    iget v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->downloadState:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v1, v0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startTTMusicDetailInfoRequest(ZLjava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private startTTMusicDetailInfoRequest(ZLjava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/resource/tmmusic/TMMusicItemRequest;

    iget-object v1, p3, Lcom/android/camera/fragment/music/LiveMusicInfo;->mRequestItemID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/camera/resource/tmmusic/TMMusicItemRequest;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p3}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;ZLjava/lang/String;)V

    new-instance p1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$3;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$3;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    .line 3
    invoke-virtual {p3, v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private startTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    new-instance v1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$6;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$6;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/music/MusicOperation;->startTimer(Ljava/util/TimerTask;)V

    return-void
.end method

.method private stopDownloadAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsLoadingAnimationStart:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsDestroyed:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 17
    sget-object p1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    const-string v0, "OnSeekCompleteListener"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-boolean p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->isMusicCutPlay:Z

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 20
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startTimer()V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicCutDialog:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->onMusicCutStartOrStopPlay(Z)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->stopDownloadAnimation()V

    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicSelectedToUse(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/fragment/music/LiveMusicInfo;Landroid/media/MediaPlayer;)V
    .locals 1

    .line 22
    sget-object p2, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    const-string v0, "OnCompletionListener"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-boolean p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->isMusicCutPlay:Z

    if-nez p2, :cond_0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicPauseOrStopPlay(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicCutDialog:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->onMusicCutStartOrStopPlay(Z)V

    .line 26
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {p1}, Lcom/android/camera/fragment/music/MusicOperation;->endPlaySession()V

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    return-void
.end method

.method public synthetic OooO00o(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_LOCAL:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/music/MusicUtils;->getMusicListFromLocalFolder(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/fragment/music/MusicUtils;->getMusicListFromLocalAudioMedia(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-interface {p1, v1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 6
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    check-cast p1, Ljava/util/List;

    iget-wide v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicPlayDuration:J

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->initAdapter(Ljava/util/List;J)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicAdapter:Lcom/android/camera/fragment/music/MusicAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onLoadError()V

    return-void
.end method

.method public synthetic OooO00o(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1205a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->initOnlineAdapter(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO0O0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->stopDownloadAnimation()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f120480

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public abstract getType()I
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a02c8

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 3
    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "music_recycler_view"

    invoke-direct {v0, v2, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v2}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 7
    iget-boolean v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mSupportResetRecyclerView:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->resetRecyclerView()V

    :cond_0
    const v0, 0x7f0a02cd

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mUpdateLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02c6

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mNetworkExceptionLayout:Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mNetworkExceptionLayout:Landroid/widget/LinearLayout;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mLoadErrorWr:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->getType()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mItemType:I

    .line 14
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 15
    iput-boolean v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsLoadingAnimationStart:Z

    .line 16
    iput-boolean v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsMediaPreparing:Z

    .line 17
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->initAdapter()V

    return-void
.end method

.method public musicCutSuccess(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {v0}, Lcom/android/camera/fragment/music/MusicOperation;->stopTimer()V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->selectMusic(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02bb

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a02c3

    if-eq v0, v1, :cond_1

    const p1, 0x7f0a02c6

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: music_network_exception"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, p0, v3}, Lcom/android/camera/fragment/CtaNoticeFragment;->checkCta(Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/CtaNoticeFragment$OnCtaNoticeClickListener;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mUpdateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mNetworkExceptionLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->loadOnlineMusicByFeature()V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick: music_layout"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/music/LiveMusicInfo;

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->selectMusic(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    goto :goto_0

    .line 10
    :cond_2
    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick: music_cut"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startPlayOrStopMusic(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    .line 13
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->isMusicCutPlay:Z

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/music/LiveMusicInfo;

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicCutDialog:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    if-eqz v1, :cond_4

    iget-wide v4, v1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mId:J

    iget-wide v6, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mId:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    invoke-virtual {v0, p1, v2}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->selectMusicCut(Lcom/android/camera/fragment/music/LiveMusicInfo;Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-boolean p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mSupportResetRecyclerView:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->resetRecyclerView()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d0088

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mHandler:Landroid/os/Handler;

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;

    move-result-object p2

    const/16 p3, 0xb7

    invoke-virtual {p2, p3}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    const-wide/16 v0, 0x64

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicPlayDuration:J

    .line 6
    new-instance p2, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-wide v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicPlayDuration:J

    invoke-direct {p2, p3, v0, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;-><init>(Landroid/content/Context;J)V

    iput-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicCutDialog:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    .line 7
    invoke-virtual {p2, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->setMusicCutCallback(Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;)V

    .line 8
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mSupportResetRecyclerView:Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mIsDestroyed:Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mLoadMusicDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onNegativeClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mUpdateLayout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mNetworkExceptionLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->isMusicCutPlay:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicCutDialog:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-virtual {v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicInfo:Lcom/android/camera/fragment/music/LiveMusicInfo;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicPauseOrStopPlay(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {v0}, Lcom/android/camera/fragment/music/MusicOperation;->endPlaySession()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    :cond_1
    :goto_0
    return-void
.end method

.method public onPositiveClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->loadOnlineMusicByFeature()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/music/LiveMusicInfo;

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->selectMusic(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    :goto_0
    return v0
.end method

.method public selectMusicPlayStartTime(Lcom/android/camera/fragment/music/LiveMusicInfo;J)V
    .locals 2

    .line 1
    sget-object p1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "selectMusicPlayStartTime  currentTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/fragment/music/MusicOperation;->setMusicSeekToTime(J)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {p1}, Lcom/android/camera/fragment/music/MusicOperation;->resetTimer()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x3

    invoke-virtual {p1, p2, p3, v0}, Landroid/media/MediaPlayer;->seekTo(JI)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicCutDialog:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->setCurrentState(I)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicInfo:Lcom/android/camera/fragment/music/LiveMusicInfo;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicPauseOrStopPlay(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    :cond_0
    return-void
.end method

.method public startPlayOrStopMusicByTime(Lcom/android/camera/fragment/music/LiveMusicInfo;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicCutDialog:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->setCurrentState(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_4

    .line 4
    sget-object p1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startPlayOrStopMusicByTime: pause"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {p1}, Lcom/android/camera/fragment/music/MusicOperation;->stopTimer()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicCutDialog:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->onMusicCutStartOrStopPlay(Z)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_4

    .line 8
    sget-object p2, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startPlayOrStopMusicByTime: play"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {p2}, Lcom/android/camera/fragment/music/MusicOperation;->getMusicPlayElapsedTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-nez p2, :cond_2

    .line 10
    iget-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {p2}, Lcom/android/camera/fragment/music/MusicOperation;->getMusicSeekToTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->selectMusicPlayStartTime(Lcom/android/camera/fragment/music/LiveMusicInfo;J)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startTimer()V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicCutDialog:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->onMusicCutStartOrStopPlay(Z)V

    goto :goto_0

    .line 14
    :cond_3
    sget-object p1, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startPlayOrStopMusicByTime: stop"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {p1}, Lcom/android/camera/fragment/music/MusicOperation;->stopTimer()V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicOperation:Lcom/android/camera/fragment/music/MusicOperation;

    invoke-virtual {p1}, Lcom/android/camera/fragment/music/MusicOperation;->resetTimer()V

    .line 17
    iput-boolean v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->isMusicCutPlay:Z

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mCurrentSelectMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mMusicCutDialog:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->onMusicCutStartOrStopPlay(Z)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    if-eqz p1, :cond_6

    .line 22
    iget-object p2, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicSelectedToPlay(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    :cond_6
    return-void
.end method
