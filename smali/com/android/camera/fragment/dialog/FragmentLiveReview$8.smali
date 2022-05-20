.class public Lcom/android/camera/fragment/dialog/FragmentLiveReview$8;
.super Ljava/lang/Object;
.source "FragmentLiveReview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showExitConfirm()V
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
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$8;->this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "mi_live_click_cancel"

    .line 1
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$8;->this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->quitLiveRecordPreview(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$8;->this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    invoke-static {p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->access$2100(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Z

    return-void
.end method
