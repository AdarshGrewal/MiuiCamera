.class public Lcom/android/camera/fragment/FragmentDescription$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FragmentDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentDescription;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentDescription;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentDescription;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentDescription$1;->this$0:Lcom/android/camera/fragment/FragmentDescription;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDescription$1;->this$0:Lcom/android/camera/fragment/FragmentDescription;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentDescription;->mMistatsName:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDescription$1;->this$0:Lcom/android/camera/fragment/FragmentDescription;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentDescription;->access$000(Lcom/android/camera/fragment/FragmentDescription;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "attr_description_browse"

    const-string/jumbo v1, "parameter_user_guide"

    const-string/jumbo v2, "slide"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDescription$1;->this$0:Lcom/android/camera/fragment/FragmentDescription;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/camera/fragment/FragmentDescription;->access$002(Lcom/android/camera/fragment/FragmentDescription;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    sget-object p2, Lcom/android/camera/fragment/FragmentDescription;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onScrollStateChanged occur error,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
