.class public Lcom/android/camera/module/impl/component/LiveSubVVImpl$2;
.super Ljava/lang/Object;
.source "LiveSubVVImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/LiveSubVVImpl;->OnRecordFinish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$2;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnRecordFinish post notify"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$2;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$300(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$400(Lcom/android/camera/module/impl/component/LiveSubVVImpl;Ljava/lang/String;)V

    return-void
.end method
