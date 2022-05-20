.class public Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;
.super Ljava/lang/Object;
.source "FragmentMimojiBottomList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MimojiListUpdateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMimojiListUpdate(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onMimojiListUpdate: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fragment is not added: "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$502(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Z)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$600(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isFuSdkLoadFinish()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$200(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->firstProgressShow(Z)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$700(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$300(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$300(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setDataList(Ljava/util/List;)V

    .line 11
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiCount(I)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$600(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    .line 13
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$300(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    if-nez v1, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {p1, v2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$802(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;I)I

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$300(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$800(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setLastSelectPosition(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$300(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$900(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setRotation(I)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$300(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
