.class public Lcom/android/camera/ui/ShapeBackGroundView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShapeBackGroundView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ShapeBackGroundView;->updateThemeStyle(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/ShapeBackGroundView;

.field public final synthetic val$alpha:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ShapeBackGroundView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView$2;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    iput p2, p0, Lcom/android/camera/ui/ShapeBackGroundView$2;->val$alpha:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget p1, p0, Lcom/android/camera/ui/ShapeBackGroundView$2;->val$alpha:I

    if-ltz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView$2;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    iget-object v0, v0, Lcom/android/camera/ui/ShapeBackGroundView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method
