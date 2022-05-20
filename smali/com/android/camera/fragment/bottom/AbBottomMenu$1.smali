.class public Lcom/android/camera/fragment/bottom/AbBottomMenu$1;
.super Ljava/lang/Object;
.source "AbBottomMenu.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/bottom/AbBottomMenu;->hideAdvance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/bottom/AbBottomMenu;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/bottom/AbBottomMenu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu$1;->this$0:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu$1;->this$0:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    iget-object v0, v0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;->shrinkImmediately()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu$1;->this$0:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    iget-object v0, v0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
