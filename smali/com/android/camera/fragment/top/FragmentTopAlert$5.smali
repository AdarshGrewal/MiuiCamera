.class public Lcom/android/camera/fragment/top/FragmentTopAlert$5;
.super Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;
.source "FragmentTopAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/top/FragmentTopAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    return-void
.end method


# virtual methods
.method public runToSafe()V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$500(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/ToggleSwitch;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$600(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;ZLandroid/widget/LinearLayout$LayoutParams;I)V

    return-void
.end method
