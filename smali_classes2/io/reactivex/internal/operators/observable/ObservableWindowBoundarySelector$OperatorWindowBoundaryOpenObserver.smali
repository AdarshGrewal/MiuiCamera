.class public final Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$OperatorWindowBoundaryOpenObserver;
.super Lio/reactivex/observers/DisposableObserver;
.source "ObservableWindowBoundarySelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperatorWindowBoundaryOpenObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/DisposableObserver<",
        "TB;>;"
    }
.end annotation


# instance fields
.field public final parent:Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$WindowBoundaryMainObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$WindowBoundaryMainObserver<",
            "TT;TB;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$WindowBoundaryMainObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$WindowBoundaryMainObserver<",
            "TT;TB;*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$OperatorWindowBoundaryOpenObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$WindowBoundaryMainObserver;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$OperatorWindowBoundaryOpenObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$WindowBoundaryMainObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$WindowBoundaryMainObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$OperatorWindowBoundaryOpenObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$WindowBoundaryMainObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$WindowBoundaryMainObserver;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$OperatorWindowBoundaryOpenObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$WindowBoundaryMainObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$WindowBoundaryMainObserver;->open(Ljava/lang/Object;)V

    return-void
.end method
