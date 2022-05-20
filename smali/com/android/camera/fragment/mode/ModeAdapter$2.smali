.class public Lcom/android/camera/fragment/mode/ModeAdapter$2;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "ModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mode/ModeAdapter;->createTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public isFull:Z

.field public mHandler:Landroid/os/Handler;

.field public mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

.field public mTargetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/camera/fragment/mode/ModeAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mode/ModeAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->isFull:Z

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->mTargetList:Ljava/util/List;

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/mode/ModeAdapter$2;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->mTargetList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-ge v0, v3, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-le v0, v3, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    const/16 v3, 0xc

    if-lt v0, v3, :cond_5

    .line 6
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    if-ge v0, v3, :cond_5

    move v0, v2

    .line 7
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const/16 v3, 0xa

    if-le v0, v3, :cond_4

    .line 9
    iget-boolean p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->isFull:Z

    if-nez p1, :cond_3

    .line 10
    invoke-static {}, Lcom/android/camera/fragment/mode/ModeAdapter;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "favorite mode full!"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iput-boolean v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->isFull:Z

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    iget-object p1, p1, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f120562

    invoke-static {p1, p2, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    .line 13
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackCommonModeFull()V

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v2
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->mTargetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/android/camera/fragment/mode/ModeAdapter;->calculatePos(Landroidx/recyclerview/widget/RecyclerView;I)[I

    move-result-object p1

    .line 6
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    iget-object v0, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120559

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v3, 0x6

    if-eq p1, v3, :cond_1

    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/16 v3, 0x9

    if-eq p1, v3, :cond_1

    .line 6
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xf

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    .line 7
    :goto_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    iget-object v0, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12055b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    iget-object v0, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12055c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 11
    :cond_3
    :goto_2
    invoke-static {p1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/mode/ModeAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onMove] current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",target = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 3
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    iget-object v3, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    iget-object v3, v3, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_1
    if-le v2, v1, :cond_1

    .line 5
    iget-object v3, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    iget-object v3, v3, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v5, v2, -0x2

    invoke-static {v3, v4, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->mTargetList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p3, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    invoke-virtual {p3, p1, v1}, Lcom/android/camera/fragment/mode/ModeAdapter;->calculatePos(Landroidx/recyclerview/widget/RecyclerView;I)[I

    move-result-object p1

    .line 9
    iget-object p3, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/fragment/mode/ModeAdapter$2$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/camera/fragment/mode/ModeAdapter$2$1;-><init>(Lcom/android/camera/fragment/mode/ModeAdapter$2;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;[I)V

    const-wide/16 p1, 0x64

    invoke-virtual {p3, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    .line 2
    invoke-static {}, Lcom/android/camera/fragment/mode/ModeAdapter;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[onMoved]"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 2
    invoke-static {}, Lcom/android/camera/fragment/mode/ModeAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSelectedChanged] viewHolder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", actionState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    instance-of p2, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f99999a    # 1.2f

    if-eqz p2, :cond_0

    .line 4
    move-object p2, p1

    check-cast p2, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    .line 5
    iget-object p2, p2, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/android/camera/animation/FolmeUtils;->animateHide(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    .line 6
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0, v1}, Lcom/android/camera/animation/FolmeUtils;->animationScale(Landroid/view/View;FF)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    iget-object p2, p2, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v1, v0}, Lcom/android/camera/animation/FolmeUtils;->animationScale(Landroid/view/View;FF)V

    const/4 p2, 0x0

    .line 9
    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->mSelectViewHolder:Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    :goto_0
    if-nez p1, :cond_1

    .line 10
    iget-boolean p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->isFull:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->isFull:Z

    :cond_1
    if-eqz p1, :cond_2

    .line 12
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 13
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->mTargetList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 14
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$2;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    iget-object p2, p2, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f120558

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
