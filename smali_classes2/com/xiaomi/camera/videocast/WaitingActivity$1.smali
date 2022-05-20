.class public Lcom/xiaomi/camera/videocast/WaitingActivity$1;
.super Ljava/lang/Object;
.source "WaitingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/videocast/WaitingActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/videocast/WaitingActivity;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/videocast/WaitingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/videocast/WaitingActivity$1;->this$0:Lcom/xiaomi/camera/videocast/WaitingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/xiaomi/camera/videocast/WaitingActivity$1;->this$0:Lcom/xiaomi/camera/videocast/WaitingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/xiaomi/camera/videocast/WaitingActivity$1;->this$0:Lcom/xiaomi/camera/videocast/WaitingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
