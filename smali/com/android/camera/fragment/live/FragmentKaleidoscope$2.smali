.class public Lcom/android/camera/fragment/live/FragmentKaleidoscope$2;
.super Ljava/lang/Object;
.source "FragmentKaleidoscope.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/live/FragmentKaleidoscope;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/live/FragmentKaleidoscope;

.field public final synthetic val$itemPadding:Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/live/FragmentKaleidoscope;Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$2;->this$0:Lcom/android/camera/fragment/live/FragmentKaleidoscope;

    iput-object p2, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$2;->val$itemPadding:Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$2;->this$0:Lcom/android/camera/fragment/live/FragmentKaleidoscope;

    invoke-static {v0}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->access$000(Lcom/android/camera/fragment/live/FragmentKaleidoscope;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$2;->this$0:Lcom/android/camera/fragment/live/FragmentKaleidoscope;

    invoke-static {v0}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->access$000(Lcom/android/camera/fragment/live/FragmentKaleidoscope;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FragmentKaleidoscope"

    const-string/jumbo v1, "onGlobalLayout.width = 0"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getCenterDisplayWidth()I

    move-result v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGlobalLayout.width.after = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$2;->this$0:Lcom/android/camera/fragment/live/FragmentKaleidoscope;

    invoke-static {v1}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->access$100(Lcom/android/camera/fragment/live/FragmentKaleidoscope;)Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->getItemCount()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/Util;->getMakeUpRecyclerViewContentWidth(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$2;->this$0:Lcom/android/camera/fragment/live/FragmentKaleidoscope;

    invoke-static {v1}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->access$000(Lcom/android/camera/fragment/live/FragmentKaleidoscope;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$2;->val$itemPadding:Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$2;->this$0:Lcom/android/camera/fragment/live/FragmentKaleidoscope;

    invoke-static {v1}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->access$000(Lcom/android/camera/fragment/live/FragmentKaleidoscope;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    new-instance v2, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    iget-object v3, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$2;->this$0:Lcom/android/camera/fragment/live/FragmentKaleidoscope;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v3, v0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_1
    return-void
.end method
