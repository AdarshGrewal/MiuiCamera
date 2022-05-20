.class public Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;
.super Ljava/lang/Object;
.source "FragmentLiveMusicPager.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startTTMusicDetailInfoRequest(ZLjava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/android/camera/fragment/music/LiveMusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

.field public final synthetic val$downloadPath:Ljava/lang/String;

.field public final synthetic val$requestForPlayOrUse:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    iput-boolean p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->val$requestForPlayOrUse:Z

    iput-object p3, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->val$downloadPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    iput v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->downloadState:I

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->val$requestForPlayOrUse:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$300(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->val$downloadPath:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$400(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Ljava/lang/String;Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/camera/fragment/music/LiveMusicInfo;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$2;->accept(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    return-void
.end method
