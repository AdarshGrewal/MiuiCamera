.class public Lcom/android/camera/ui/CapsuleLayout$1;
.super Lmiuix/view/animation/CubicEaseOutInterpolator;
.source "CapsuleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CapsuleLayout;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/CapsuleLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/CapsuleLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/CapsuleLayout$1;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CapsuleLayout$1;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    invoke-super {p0, p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/camera/ui/CapsuleLayout;->access$002(Lcom/android/camera/ui/CapsuleLayout;F)F

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout$1;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {p1}, Lcom/android/camera/ui/CapsuleLayout;->access$000(Lcom/android/camera/ui/CapsuleLayout;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3
    sget-boolean p1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0Oo:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout$1;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/android/camera/ui/CapsuleLayout;->access$002(Lcom/android/camera/ui/CapsuleLayout;F)F

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout$1;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout$1;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout$1;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {p1}, Lcom/android/camera/ui/CapsuleLayout;->access$000(Lcom/android/camera/ui/CapsuleLayout;)F

    move-result p1

    return p1
.end method
