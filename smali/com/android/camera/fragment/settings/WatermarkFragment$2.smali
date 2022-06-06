.class public Lcom/android/camera/fragment/settings/WatermarkFragment$2;
.super Ljava/lang/Object;
.source "WatermarkFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/settings/WatermarkFragment;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 6

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, ""

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v2}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$300(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    const v3, 0x7f12099a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f0b002f

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "WatermarkFragment"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, v0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$402(Lcom/android/camera/fragment/settings/WatermarkFragment;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$400(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    new-instance v0, Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$400(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment;Landroid/os/Looper;)V

    iput-object v0, p1, Lcom/android/camera/fragment/settings/WatermarkFragment;->mBackgroundHandler:Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    new-instance v0, Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment;Landroid/os/Looper;)V

    iput-object v0, p1, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUiHandler:Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OoooOoO/OooOO0o;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OoooO00/OoooOoO/OooOO0o;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment$2;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
