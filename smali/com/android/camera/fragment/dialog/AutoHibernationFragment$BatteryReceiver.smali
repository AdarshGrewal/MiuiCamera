.class public Lcom/android/camera/fragment/dialog/AutoHibernationFragment$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoHibernationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/dialog/AutoHibernationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$BatteryReceiver;->this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;Lcom/android/camera/fragment/dialog/AutoHibernationFragment$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$BatteryReceiver;-><init>(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 p1, 0x0

    const-string v0, "level"

    .line 1
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    const-string/jumbo v2, "scale"

    .line 2
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "status"

    const/4 v4, -0x1

    .line 3
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$BatteryReceiver;->this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;

    invoke-static {v2}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->access$300(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)Lcom/android/camera/ui/AutoHibernationBatteryView;

    move-result-object v2

    invoke-static {v0, p1, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    invoke-virtual {v2, v0, p1}, Lcom/android/camera/ui/AutoHibernationBatteryView;->showBattery(IZ)V

    return-void
.end method
