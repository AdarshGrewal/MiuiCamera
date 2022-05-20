.class public Lcom/android/camera/fragment/music/FragmentLiveMusicPager$6;
.super Ljava/util/TimerTask;
.source "FragmentLiveMusicPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startTimer()V
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
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$6;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$6;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$700(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lcom/android/camera/fragment/music/LiveMusicInfo;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startPlayOrStopMusicByTime(Lcom/android/camera/fragment/music/LiveMusicInfo;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$6;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$1100(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lcom/android/camera/fragment/music/MusicOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/music/MusicOperation;->resetTimer()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$6;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    iget-object v0, v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO00o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo0o/OooO00o;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
