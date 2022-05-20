.class public Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;
.super Ljava/lang/Object;
.source "FragmentBottomPopupTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentBottomPopupTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TipState"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activeTip()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mImageTipHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public deactivateTip()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$802(Lcom/android/camera/fragment/FragmentBottomPopupTips;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$900(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    return-void
.end method

.method public deactivatingTip()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$800(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$800(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$800(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget-object v1, v1, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mImageTipHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mImageTipHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method
