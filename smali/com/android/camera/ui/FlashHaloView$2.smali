.class public Lcom/android/camera/ui/FlashHaloView$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "FlashHaloView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FlashHaloView;->show(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/FlashHaloView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FlashHaloView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/FlashHaloView$2;->this$0:Lcom/android/camera/ui/FlashHaloView;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/ui/FlashHaloView$2;->this$0:Lcom/android/camera/ui/FlashHaloView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/camera/ui/FlashHaloView$2;->this$0:Lcom/android/camera/ui/FlashHaloView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/ui/FlashHaloView$2;->this$0:Lcom/android/camera/ui/FlashHaloView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
