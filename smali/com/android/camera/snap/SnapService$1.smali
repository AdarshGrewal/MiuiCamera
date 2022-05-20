.class public Lcom/android/camera/snap/SnapService$1;
.super Landroid/content/BroadcastReceiver;
.source "SnapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/snap/SnapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/snap/SnapService;


# direct methods
.method public constructor <init>(Lcom/android/camera/snap/SnapService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/snap/SnapService$1;->this$0:Lcom/android/camera/snap/SnapService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.KEYCODE_POWER_UP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object p1

    const/16 p2, 0x1a

    const/4 v0, 0x0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/camera/snap/SnapTrigger;->handleKeyEvent(IIJ)V

    return-void
.end method
