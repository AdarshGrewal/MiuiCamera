.class public Lcom/android/camera/fragment/music/FragmentLiveMusicPager$8;
.super Ljava/lang/Object;
.source "FragmentLiveMusicPager.java"

# interfaces
.implements Lcom/android/camera/fragment/music/MusicAdapter$ItemOnClickInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->initAdapter(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

.field public final synthetic val$list:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$8;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    iput-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$8;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/ImageView;ILandroid/widget/ProgressBar;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$8;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$8;->val$list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/fragment/music/LiveMusicInfo;

    invoke-static {v0, p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$1502(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Lcom/android/camera/fragment/music/LiveMusicInfo;)Lcom/android/camera/fragment/music/LiveMusicInfo;

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$8;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$1600(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$8;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$1500(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lcom/android/camera/fragment/music/LiveMusicInfo;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$1700(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$8;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$1600(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$8;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {p2, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$1602(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$8;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {p1, p3}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$1802(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$8;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$1500(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lcom/android/camera/fragment/music/LiveMusicInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$300(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    return-void
.end method
