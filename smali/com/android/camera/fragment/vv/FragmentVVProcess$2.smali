.class public Lcom/android/camera/fragment/vv/FragmentVVProcess$2;
.super Ljava/lang/Object;
.source "FragmentVVProcess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVProcess;->showReverseConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "showReverseConfirmDialog onClick negative"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-static {p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$200(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Z

    return-void
.end method
