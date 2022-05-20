.class public final Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ReplayProcessor.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/ReplayProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReplaySubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x679849349531b12L


# instance fields
.field public final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public volatile cancelled:Z

.field public emitted:J

.field public index:Ljava/lang/Object;

.field public final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field public final state:Lio/reactivex/processors/ReplayProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/ReplayProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/processors/ReplayProcessor<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 3
    iput-object p2, p0, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->state:Lio/reactivex/processors/ReplayProcessor;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->state:Lio/reactivex/processors/ReplayProcessor;

    invoke-virtual {v0, p0}, Lio/reactivex/processors/ReplayProcessor;->remove(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->state:Lio/reactivex/processors/ReplayProcessor;

    iget-object p1, p1, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    invoke-interface {p1, p0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V

    :cond_0
    return-void
.end method
