.class public Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;
.super Ljava/lang/Object;
.source "FragmentSubtitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/subtitle/FragmentSubtitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecognitionListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-virtual {v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->checkNetWorkStatus()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$700(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$200(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackInterruptionNetwork()V

    :goto_0
    return-void
.end method

.method public onRecognitionListener(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$200(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$000(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {v1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$300(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f130112

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/customization/ThemeResource;->setTextShadowStyle(Landroid/widget/TextView;I)V

    .line 4
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {v1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$400(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/customization/ThemeResource;->setTextShadowStyle(Landroid/widget/TextView;I)V

    .line 5
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {v1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$500(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/customization/ThemeResource;->setTextShadowStyle(Landroid/widget/TextView;I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120440

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$600(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;F)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$200(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    const v0, 0x3d4ccccd    # 0.05f

    invoke-static {p1, v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$600(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;F)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$200(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
