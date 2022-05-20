.class public Lcom/android/camera/ActivityBase$5;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ActivityBase;->trackAppLunchTimeStart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/util/HashMap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ActivityBase$5;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase$5;->accept(Ljava/util/HashMap;)V

    return-void
.end method

.method public accept(Ljava/util/HashMap;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ActivityBase$5;->this$0:Lcom/android/camera/ActivityBase;

    invoke-static {v0, p1}, Lcom/android/camera/ActivityBase;->access$202(Lcom/android/camera/ActivityBase;Ljava/util/HashMap;)Ljava/util/HashMap;

    return-void
.end method
