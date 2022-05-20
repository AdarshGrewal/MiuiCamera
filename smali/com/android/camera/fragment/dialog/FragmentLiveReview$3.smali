.class public Lcom/android/camera/fragment/dialog/FragmentLiveReview$3;
.super Ljava/lang/Object;
.source "FragmentLiveReview.java"

# interfaces
.implements Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showShareSheet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$3;->this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelect(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$3;->this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    invoke-static {v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->access$1800(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->setSelectedPage(I)V

    return-void
.end method

.method public onPageSizeChanged(I)V
    .locals 0

    return-void
.end method
