.class public Lcom/android/camera/resource/tmmusic/TMMusicListMapToMusicInfo;
.super Ljava/lang/Object;
.source "TMMusicListMapToMusicInfo.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/android/camera/resource/tmmusic/TMMusicList;",
        "Ljava/util/List<",
        "Lcom/android/camera/fragment/music/LiveMusicInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/camera/resource/tmmusic/TMMusicList;

    invoke-virtual {p0, p1}, Lcom/android/camera/resource/tmmusic/TMMusicListMapToMusicInfo;->apply(Lcom/android/camera/resource/tmmusic/TMMusicList;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/android/camera/resource/tmmusic/TMMusicList;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/resource/tmmusic/TMMusicList;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/music/LiveMusicInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/resource/BaseResourceList;->getResourceList()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/resource/tmmusic/TMMusicItem;

    .line 5
    new-instance v3, Lcom/android/camera/fragment/music/LiveMusicInfo;

    invoke-direct {v3}, Lcom/android/camera/fragment/music/LiveMusicInfo;-><init>()V

    .line 6
    iget-object v4, v2, Lcom/android/camera/resource/tmmusic/TMMusicItem;->artistName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/camera/fragment/music/LiveMusicInfo;->mAuthor:Ljava/lang/String;

    .line 7
    iget-object v4, v2, Lcom/android/camera/resource/tmmusic/TMMusicItem;->detailName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/camera/fragment/music/LiveMusicInfo;->mTitle:Ljava/lang/String;

    .line 8
    invoke-virtual {v2}, Lcom/android/camera/resource/tmmusic/TMMusicItem;->getDuration()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/camera/fragment/music/LiveMusicInfo;->mDuration:J

    .line 9
    invoke-virtual {v2}, Lcom/android/camera/resource/tmmusic/TMMusicItem;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/camera/fragment/music/MusicUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/camera/fragment/music/LiveMusicInfo;->mDurationText:Ljava/lang/String;

    .line 10
    iget-object v4, v2, Lcom/android/camera/resource/tmmusic/TMMusicItem;->albumImage320:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/camera/fragment/music/LiveMusicInfo;->mThumbnailUrl:Ljava/lang/String;

    .line 11
    iget-object v2, v2, Lcom/android/camera/resource/tmmusic/TMMusicItem;->itemID:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/camera/fragment/music/LiveMusicInfo;->mRequestItemID:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/resource/tmmusic/TMMusicList;->getCategoryID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/camera/fragment/music/LiveMusicInfo;->mCategoryId:Ljava/lang/String;

    const/4 v2, 0x6

    .line 13
    iput v2, v3, Lcom/android/camera/fragment/music/LiveMusicInfo;->downloadState:I

    const/4 v2, 0x0

    .line 14
    iput-boolean v2, v3, Lcom/android/camera/fragment/music/LiveMusicInfo;->isLocalMusic:Z

    .line 15
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
