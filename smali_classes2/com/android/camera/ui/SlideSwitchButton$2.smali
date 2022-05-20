.class public Lcom/android/camera/ui/SlideSwitchButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlideSwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/SlideSwitchButton;->setIndex(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/SlideSwitchButton;

.field public final synthetic val$index:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/SlideSwitchButton;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iput p2, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->val$index:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iget v0, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->val$index:I

    invoke-static {p1, v0}, Lcom/android/camera/ui/SlideSwitchButton;->access$900(Lcom/android/camera/ui/SlideSwitchButton;I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iget v0, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->val$index:I

    invoke-static {p1, v0}, Lcom/android/camera/ui/SlideSwitchButton;->access$102(Lcom/android/camera/ui/SlideSwitchButton;I)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iget v0, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->val$index:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/camera/ui/SlideSwitchButton;->access$800(Lcom/android/camera/ui/SlideSwitchButton;IZ)V

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    const-string/jumbo v0, "pref_speech_shutter"

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iget v0, p0, Lcom/android/camera/ui/SlideSwitchButton$2;->val$index:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method
