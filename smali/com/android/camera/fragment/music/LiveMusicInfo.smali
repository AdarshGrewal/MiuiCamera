.class public Lcom/android/camera/fragment/music/LiveMusicInfo;
.super Lcom/android/camera/network/resource/LiveResource;
.source "LiveMusicInfo.java"


# instance fields
.field public downloadState:I

.field public isLocalMusic:Z

.field public mAlbumId:J

.field public mAuthor:Ljava/lang/String;

.field public mCategoryId:Ljava/lang/String;

.field public mDuration:J

.field public mDurationText:Ljava/lang/String;

.field public mId:J

.field public mIsBuffing:Z

.field public mIsPlaying:Z

.field public mPlayUrl:Ljava/lang/String;

.field public mRequestItemID:Ljava/lang/String;

.field public mThumbnailUrl:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/network/resource/LiveResource;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/music/LiveMusicInfo;->isLocalMusic:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/music/LiveMusicInfo;->downloadState:I

    return-void
.end method


# virtual methods
.method public isBuffing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/music/LiveMusicInfo;->mIsBuffing:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/music/LiveMusicInfo;->mIsPlaying:Z

    return v0
.end method

.method public setBuffing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/music/LiveMusicInfo;->mIsBuffing:Z

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/music/LiveMusicInfo;->mIsPlaying:Z

    return-void
.end method
