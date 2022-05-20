.class public final Lcom/android/camera/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$isCameraError:Z


# direct methods
.method public constructor <init>(ZLandroid/app/Activity;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/Util$1;->val$isCameraError:Z

    iput-object p2, p0, Lcom/android/camera/Util$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/Util$1;->val$isCameraError:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->dumpBugReportLog()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->reset()V

    .line 4
    iget-object p1, p0, Lcom/android/camera/Util$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
