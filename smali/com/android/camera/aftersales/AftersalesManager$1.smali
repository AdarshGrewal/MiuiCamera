.class public Lcom/android/camera/aftersales/AftersalesManager$1;
.super Ljava/lang/Object;
.source "AftersalesManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/aftersales/AftersalesManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/aftersales/AftersalesManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/aftersales/AftersalesManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/aftersales/AftersalesManager$1;->this$0:Lcom/android/camera/aftersales/AftersalesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "aftersales"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method
