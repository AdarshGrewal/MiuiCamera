.class public Lcom/android/camera/fragment/FragmentBottomPopupTips$2;
.super Ljava/lang/Object;
.source "FragmentBottomPopupTips.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;",
        ">;"
    }
.end annotation


# instance fields
.field public addedViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->addedViews:Ljava/util/Map;

    return-void
.end method

.method private getKey(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public onComplete()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->addedViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->getKey(Landroid/view/View;)I

    move-result v3

    .line 8
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->addedViews:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    if-nez v4, :cond_1

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v4}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->getUpdateListener()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 11
    invoke-virtual {v4}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->getUpdateListener()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;->onUpdate(Landroid/view/View;)V

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->addedViews:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 14
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->addedViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 16
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->addedViews:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    invoke-static {v2, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$400(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$300(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$300(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$300(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->addedViews:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->onNext(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$202(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
