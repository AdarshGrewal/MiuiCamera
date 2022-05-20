.class public Lcom/android/camera/scanner/MiScanner$2;
.super Ljava/lang/Object;
.source "MiScanner.java"

# interfaces
.implements Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/scanner/MiScanner;
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
    iput-object p1, p0, Lcom/android/camera/scanner/MiScanner$2;->this$0:Lcom/android/camera/scanner/MiScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "com.xiaomi.scanner"

    .line 1
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/scanner/MiScanner$2;->this$0:Lcom/android/camera/scanner/MiScanner;

    invoke-static {p1}, Lcom/android/camera/scanner/MiScanner;->access$000(Lcom/android/camera/scanner/MiScanner;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "scanner app install success"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/scanner/MiScanner$2;->this$0:Lcom/android/camera/scanner/MiScanner;

    invoke-static {p1}, Lcom/android/camera/scanner/MiScanner;->access$200(Lcom/android/camera/scanner/MiScanner;)Lio/reactivex/ObservableEmitter;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
