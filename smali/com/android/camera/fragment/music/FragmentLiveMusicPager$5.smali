.class public Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;
.super Ljava/lang/Object;
.source "FragmentLiveMusicPager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->onMusicSelectedToPlay(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$600(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$700(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lcom/android/camera/fragment/music/LiveMusicInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$800(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$900(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->onMusicCutStartOrStopPlay(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$1000(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$1100(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lcom/android/camera/fragment/music/MusicOperation;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/music/MusicOperation;->onNewSessionStartPlay(J)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$1202(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Z)Z

    .line 7
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
