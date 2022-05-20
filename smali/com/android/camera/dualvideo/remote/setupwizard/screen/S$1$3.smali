.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$1$3;
.super Ljava/lang/Object;
.source "S.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$1;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$1$3;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$1$3;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$1;

    iget-object p1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->access$102(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;Z)Z

    return-void
.end method
