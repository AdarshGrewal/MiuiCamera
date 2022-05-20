.class public Lcom/android/camera/fragment/music/FragmentLiveMusicCut$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "FragmentLiveMusicCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;Landroid/content/Context;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$1;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$1;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-static {v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->access$000(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)Lcom/android/camera/fragment/music/MusicFrameAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/music/MusicFrameAdapter;->getRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
