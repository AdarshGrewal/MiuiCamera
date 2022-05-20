.class public Lcom/android/camera/ui/drawable/AutoHibernationDrawable$1;
.super Ljava/lang/Object;
.source "AutoHibernationDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->startRecord(JFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$1;->this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$1;->this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr p1, v1

    iput p1, v0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAngle:F

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
