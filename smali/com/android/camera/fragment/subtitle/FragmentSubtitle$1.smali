.class public Lcom/android/camera/fragment/subtitle/FragmentSubtitle$1;
.super Landroid/os/Handler;
.source "FragmentSubtitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/subtitle/FragmentSubtitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$1;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$1;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-virtual {p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->checkNetWorkStatus()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$1;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$1;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$100(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$1;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12041e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->onRecognitionListener(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$1;->this$0:Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->access$000(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
