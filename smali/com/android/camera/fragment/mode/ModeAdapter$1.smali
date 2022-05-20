.class public Lcom/android/camera/fragment/mode/ModeAdapter$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "ModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mode/ModeAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

.field public final synthetic val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mode/ModeAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    iget v0, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_3

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    if-eq p1, v2, :cond_4

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    .line 4
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1
.end method
