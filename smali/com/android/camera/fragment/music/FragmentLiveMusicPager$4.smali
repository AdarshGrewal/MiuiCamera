.class public Lcom/android/camera/fragment/music/FragmentLiveMusicPager$4;
.super Ljava/lang/Object;
.source "FragmentLiveMusicPager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/music/FragmentLiveMusicPager;
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
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$4;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$4;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$500(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$4;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$500(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Landroid/media/MediaPlayer;

    move-result-object p1

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    :goto_0
    return-void
.end method
