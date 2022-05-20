.class public Lcom/android/camera/module/LiveModuleSubVV$2;
.super Ljava/lang/Object;
.source "LiveModuleSubVV.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/LiveModuleSubVV;->initMetaParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "Landroid/hardware/camera2/CaptureResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/LiveModuleSubVV;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/LiveModuleSubVV;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV$2;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV$2;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-static {v0, p1}, Lcom/android/camera/module/LiveModuleSubVV;->access$402(Lcom/android/camera/module/LiveModuleSubVV;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;

    return-void
.end method
