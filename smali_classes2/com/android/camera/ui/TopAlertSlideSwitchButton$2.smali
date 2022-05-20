.class public Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TopAlertSlideSwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setIndex(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

.field public final synthetic val$index:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->val$index:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->val$index:I

    invoke-static {p1, v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$900(Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->val$index:I

    invoke-static {p1, v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$202(Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)I

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;->val$index:I

    invoke-static {p1, v1, v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$800(Lcom/android/camera/ui/TopAlertSlideSwitchButton;IZ)V

    return-void
.end method
