.class public Lcom/android/camera/fragment/vv/FragmentVVProcess$10;
.super Ljava/lang/Object;
.source "FragmentVVProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVProcess;->onResultCombineFinished(Z)V
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
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$10;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$10;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->quitLiveRecordPreview(Z)V

    return-void
.end method
