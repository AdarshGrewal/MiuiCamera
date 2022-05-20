.class public final Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$OperatorWindowBoundaryOpenSubscriber;
.super Lio/reactivex/subscribers/DisposableSubscriber;
.source "FlowableWindowBoundarySelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperatorWindowBoundaryOpenSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subscribers/DisposableSubscriber<",
        "TB;>;"
    }
.end annotation


# instance fields
.field public done:Z

.field public final parent:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber<",
            "TT;TB;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber<",
            "TT;TB;*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/subscribers/DisposableSubscriber;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$OperatorWindowBoundaryOpenSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$OperatorWindowBoundaryOpenSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$OperatorWindowBoundaryOpenSubscriber;->done:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$OperatorWindowBoundaryOpenSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$OperatorWindowBoundaryOpenSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$OperatorWindowBoundaryOpenSubscriber;->done:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$OperatorWindowBoundaryOpenSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$OperatorWindowBoundaryOpenSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$OperatorWindowBoundaryOpenSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber;->open(Ljava/lang/Object;)V

    return-void
.end method
