.class public Lcom/android/camera/fragment/aiwatermark/FragmentWatermark$1;
.super Ljava/lang/Object;
.source "FragmentWatermark.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->startDottedLineAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;

.field public final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark$1;->this$0:Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;

    iput-object p2, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
