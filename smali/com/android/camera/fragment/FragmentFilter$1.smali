.class public Lcom/android/camera/fragment/FragmentFilter$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FragmentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentFilter;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentFilter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$1;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$1;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/fragment/FragmentFilter;->access$000(Lcom/android/camera/fragment/FragmentFilter;Z)V

    return-void
.end method
