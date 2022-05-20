.class public Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FragmentMimojiBottomList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$1;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$1;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$000(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    move-result-object p1

    const/4 p2, -0x2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p2, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    return-void
.end method
