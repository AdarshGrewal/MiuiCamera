.class public Lcom/android/camera/fragment/music/MusicAdapter$1;
.super Ljava/lang/Object;
.source "MusicAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/music/MusicAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/music/MusicAdapter;

.field public final synthetic val$music_loading:Landroid/widget/ProgressBar;

.field public final synthetic val$music_play:Landroid/widget/ImageView;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/music/MusicAdapter;Landroid/widget/ImageView;ILandroid/widget/ProgressBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/music/MusicAdapter$1;->this$0:Lcom/android/camera/fragment/music/MusicAdapter;

    iput-object p2, p0, Lcom/android/camera/fragment/music/MusicAdapter$1;->val$music_play:Landroid/widget/ImageView;

    iput p3, p0, Lcom/android/camera/fragment/music/MusicAdapter$1;->val$position:I

    iput-object p4, p0, Lcom/android/camera/fragment/music/MusicAdapter$1;->val$music_loading:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/music/MusicAdapter$1;->this$0:Lcom/android/camera/fragment/music/MusicAdapter;

    iget-object p1, p1, Lcom/android/camera/fragment/music/MusicAdapter;->mItemOnClickInterface:Lcom/android/camera/fragment/music/MusicAdapter$ItemOnClickInterface;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/MusicAdapter$1;->val$music_play:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/fragment/music/MusicAdapter$1;->val$position:I

    iget-object v2, p0, Lcom/android/camera/fragment/music/MusicAdapter$1;->val$music_loading:Landroid/widget/ProgressBar;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/camera/fragment/music/MusicAdapter$ItemOnClickInterface;->onItemClick(Landroid/widget/ImageView;ILandroid/widget/ProgressBar;)V

    :cond_0
    return-void
.end method
