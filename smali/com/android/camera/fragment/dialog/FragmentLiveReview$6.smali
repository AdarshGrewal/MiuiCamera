.class public Lcom/android/camera/fragment/dialog/FragmentLiveReview$6;
.super Ljava/lang/Object;
.source "FragmentLiveReview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showExitConfirmNormal()V
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
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$6;->this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$6;->this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    iget-object p2, p2, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "showExitConfirm onClick positive"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$6;->this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->access$2002(Lcom/android/camera/fragment/dialog/FragmentLiveReview;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    const-string p1, "mi_live_click_cancel"

    .line 4
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$6;->this$0:Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->quitLiveRecordPreview(Z)V

    return-void
.end method
