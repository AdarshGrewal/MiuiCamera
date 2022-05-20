.class public Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$3;
.super Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$DialogClickLister;
.source "FragmentMimojiFuEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

.field public final synthetic val$backType:I


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$3;->val$backType:I

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$DialogClickLister;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$DialogClickLister;->isClicked()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->backToHome()V

    .line 3
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$3;->val$backType:I

    const/4 p2, 0x1

    const-string/jumbo v0, "preview_mid"

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "edit_cancel"

    .line 4
    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "edit_soft_back"

    const-string p2, "edit"

    .line 5
    invoke-static {p1, p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "preview_mid_soft_back"

    .line 6
    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "mimoji_click_preview_mid_back"

    .line 7
    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
