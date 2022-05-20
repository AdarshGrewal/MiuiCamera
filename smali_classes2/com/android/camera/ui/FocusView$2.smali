.class public Lcom/android/camera/ui/FocusView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FocusView;->handleResetView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/FocusView;

.field public final synthetic val$type:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FocusView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    iput p2, p0, Lcom/android/camera/ui/FocusView$2;->val$type:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$800(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$1700(Lcom/android/camera/ui/FocusView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    iget v0, p0, Lcom/android/camera/ui/FocusView$2;->val$type:I

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$1800(Lcom/android/camera/ui/FocusView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->access$1900(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/ui/FocusView;->setPosition(III)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/ui/FocusView;->access$2000(Lcom/android/camera/ui/FocusView;Z)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
