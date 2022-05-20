.class public Lcom/android/camera/snap/SnapTrigger$2;
.super Ljava/lang/Object;
.source "SnapTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/snap/SnapTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/snap/SnapTrigger;


# direct methods
.method public constructor <init>(Lcom/android/camera/snap/SnapTrigger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/snap/SnapTrigger$2;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$2;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$700(Lcom/android/camera/snap/SnapTrigger;)V

    return-void
.end method
