.class public Lcom/android/camera/fragment/FragmentPanorama$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentPanorama;->moveToDirection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentPanorama;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentPanorama;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$2;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$2;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    .line 2
    invoke-static {p1}, Lcom/android/camera/fragment/FragmentPanorama;->access$100(Lcom/android/camera/fragment/FragmentPanorama;)Lcom/android/camera/ui/GLTextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama$2;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentPanorama;->access$200(Lcom/android/camera/fragment/FragmentPanorama;)I

    move-result v0

    const/16 v1, 0xb

    const/16 v2, 0x9

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama$2;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentPanorama;->access$200(Lcom/android/camera/fragment/FragmentPanorama;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 7
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 8
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama$2;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentPanorama;->access$200(Lcom/android/camera/fragment/FragmentPanorama;)I

    move-result v0

    const/4 v1, 0x5

    const/16 v2, 0xc

    const/16 v3, 0xa

    if-ne v0, v1, :cond_2

    .line 10
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 11
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama$2;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentPanorama;->access$200(Lcom/android/camera/fragment/FragmentPanorama;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 13
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 14
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 15
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$2;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentPanorama;->access$100(Lcom/android/camera/fragment/FragmentPanorama;)Lcom/android/camera/ui/GLTextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method
