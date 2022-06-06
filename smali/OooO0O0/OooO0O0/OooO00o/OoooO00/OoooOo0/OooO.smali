.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO00/OoooOo0/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

.field private final synthetic OooO0O0:Lcom/android/camera/fragment/music/LiveMusicInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OoooOo0/OooO;->OooO00o:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OoooOo0/OooO;->OooO0O0:Lcom/android/camera/fragment/music/LiveMusicInfo;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OoooOo0/OooO;->OooO00o:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OoooOo0/OooO;->OooO0O0:Lcom/android/camera/fragment/music/LiveMusicInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->OooO00o(Lcom/android/camera/fragment/music/LiveMusicInfo;Landroid/media/MediaPlayer;)V

    return-void
.end method
