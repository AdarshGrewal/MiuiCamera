.class public Lcom/android/camera/scanner/MiScanner$1;
.super Landroid/content/BroadcastReceiver;
.source "MiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/scanner/MiScanner;->startScanApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/scanner/MiScanner;


# direct methods
.method public constructor <init>(Lcom/android/camera/scanner/MiScanner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/scanner/MiScanner$1;->this$0:Lcom/android/camera/scanner/MiScanner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/scanner/MiScanner$1;->this$0:Lcom/android/camera/scanner/MiScanner;

    invoke-static {p1}, Lcom/android/camera/scanner/MiScanner;->access$000(Lcom/android/camera/scanner/MiScanner;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "unlock Receiver, onReceive."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera/scanner/MiScanner$1;->this$0:Lcom/android/camera/scanner/MiScanner;

    invoke-static {p1, p2}, Lcom/android/camera/scanner/MiScanner;->access$102(Lcom/android/camera/scanner/MiScanner;Landroid/content/Intent;)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/android/camera/scanner/MiScanner$1;->this$0:Lcom/android/camera/scanner/MiScanner;

    invoke-virtual {p1}, Lcom/android/camera/scanner/MiScanner;->startScanApp()V

    :cond_0
    return-void
.end method
