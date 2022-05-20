.class public Lcom/android/camera/data/cloud/DataCloudMgr$1;
.super Ljava/lang/Object;
.source "DataCloudMgr.java"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/data/cloud/DataCloudMgr;->fillCloudValues()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/data/cloud/DataCloudMgr;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/cloud/DataCloudMgr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/cloud/DataCloudMgr$1;->this$0:Lcom/android/camera/data/cloud/DataCloudMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/cloud/DataCloudMgr$1;->this$0:Lcom/android/camera/data/cloud/DataCloudMgr;

    invoke-static {p1}, Lcom/android/camera/data/cloud/DataCloudMgr;->access$000(Lcom/android/camera/data/cloud/DataCloudMgr;)V

    return-void
.end method
