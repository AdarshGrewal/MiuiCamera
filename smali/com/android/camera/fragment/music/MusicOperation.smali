.class public Lcom/android/camera/fragment/music/MusicOperation;
.super Ljava/lang/Object;
.source "MusicOperation.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MusicOperation"


# instance fields
.field public mCountTimer:Ljava/util/Timer;

.field public mMusicPlayDuration:J

.field public mMusicPlayElapsedTime:J

.field public mMusicSeekToTime:J

.field public mMusicStartPlayTime:J

.field public mPaused:Z

.field public mPlayTotalTime:J

.field public mSongId:Ljava/lang/String;

.field public mSongListId:Ljava/lang/String;

.field public mStartTime:J

.field public mTotalDuration:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayDuration:J

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public static synthetic OooO0O0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public static synthetic OooO0O0(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private startRequest()V
    .locals 9

    const-string v0, "-"

    .line 1
    iget-object v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongListId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-wide v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 3
    iget-wide v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mPlayTotalTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/camera/fragment/music/MusicOperation;->mStartTime:J

    sub-long/2addr v5, v7

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mPlayTotalTime:J

    .line 4
    iput-wide v3, p0, Lcom/android/camera/fragment/music/MusicOperation;->mStartTime:J

    .line 5
    :cond_1
    iget-wide v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mPlayTotalTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mTotalDuration:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    goto/16 :goto_1

    .line 6
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "report_type"

    const-string v3, "800100"

    .line 7
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "from_source"

    const-string v4, "0"

    .line 9
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "user_id"

    .line 10
    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->getIdentityID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "song_id"

    .line 11
    iget-object v4, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "song_list_id"

    .line 12
    iget-object v4, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongListId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "timestamp"

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/camera/Util;->toHumanString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "bitrate"

    const-string v4, "MP3-64K-FTD-P"

    .line 14
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "is_online"

    const/4 v4, 0x1

    .line 15
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "device_type"

    const/4 v5, 0x3

    .line 16
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    iget-wide v5, p0, Lcom/android/camera/fragment/music/MusicOperation;->mPlayTotalTime:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 18
    iget-wide v5, p0, Lcom/android/camera/fragment/music/MusicOperation;->mTotalDuration:J

    long-to-int v5, v5

    div-int/lit16 v5, v5, 0x3e8

    const-string v6, "duration_of_play"

    .line 19
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "song_duration"

    .line 20
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "play_count"

    .line 21
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "entrance"

    .line 22
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "is_share"

    const/4 v4, 0x0

    .line 23
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "ip"

    .line 24
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_id"

    .line 25
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "song_from"

    .line 26
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "function_type"

    .line 27
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "city_code"

    .line 28
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "errcode"

    .line 29
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "ua"

    .line 30
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AB"

    .line 31
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "stay_duration"

    .line 32
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "data"

    .line 33
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 35
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/android/camera/resource/tmmusic/TMMusicOperationPost;

    invoke-direct {v1, v0}, Lcom/android/camera/resource/tmmusic/TMMusicOperationPost;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 37
    invoke-virtual {v1, v0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooOOO0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooOOO0;

    sget-object v2, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooOOO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooOOO;

    .line 38
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public endPlaySession()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/MusicOperation;->startRequest()V

    return-void
.end method

.method public getMusicPlayElapsedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayElapsedTime:J

    return-wide v0
.end method

.method public getMusicSeekToTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicSeekToTime:J

    return-wide v0
.end method

.method public onNewSessionStartPlay(J)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mStartTime:J

    .line 2
    iput-wide p1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mTotalDuration:J

    return-void
.end method

.method public onPausePlay()V
    .locals 8

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mPaused:Z

    .line 2
    iget-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mPlayTotalTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/fragment/music/MusicOperation;->mStartTime:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mPlayTotalTime:J

    .line 4
    iput-wide v2, p0, Lcom/android/camera/fragment/music/MusicOperation;->mStartTime:J

    :cond_0
    return-void
.end method

.method public onResumePlay()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mStartTime:J

    return-void
.end method

.method public onSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongId:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongListId:Ljava/lang/String;

    return-void
.end method

.method public onSelectedToUse()V
    .locals 7

    const-string v0, "-"

    .line 1
    iget-object v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongListId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "report_type"

    const-string v3, "800200"

    .line 3
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "from_source"

    const-string v4, "0"

    .line 5
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_id"

    .line 6
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ip"

    .line 7
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "user_id"

    .line 8
    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->getIdentityID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "object_id"

    .line 9
    iget-object v4, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "object_type"

    const/4 v4, 0x1

    .line 10
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "timestamp"

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/camera/Util;->toHumanString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_type"

    const/4 v5, 0x3

    .line 12
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "action"

    const/4 v5, 0x4

    .line 13
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "entrance"

    .line 14
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "bitrate"

    const-string v4, "MP3-64K-FTD-P"

    .line 15
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "city_code"

    .line 16
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "ua"

    .line 17
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AB"

    .line 18
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    .line 19
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 21
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/android/camera/resource/tmmusic/TMMusicOperationPost;

    invoke-direct {v1, v0}, Lcom/android/camera/resource/tmmusic/TMMusicOperationPost;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 23
    invoke-virtual {v1, v0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooOO0O;

    sget-object v2, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooOO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooOO0o;

    .line 24
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_1
    return-void
.end method

.method public resetTimer()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayElapsedTime:J

    return-void
.end method

.method public setMusicSeekToTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicSeekToTime:J

    return-void
.end method

.method public startTimer(Ljava/util/TimerTask;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mCountTimer:Ljava/util/Timer;

    .line 2
    iget-wide v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayDuration:J

    iget-wide v3, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayElapsedTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicStartPlayTime:J

    .line 4
    sget-object p1, Lcom/android/camera/fragment/music/MusicOperation;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startTimer remainingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayDuration:J

    iget-wide v3, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayElapsedTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopTimer()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayElapsedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicStartPlayTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayElapsedTime:J

    .line 2
    sget-object v0, Lcom/android/camera/fragment/music/MusicOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopTimer mMusicPlayElapsedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mCountTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mCountTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method
