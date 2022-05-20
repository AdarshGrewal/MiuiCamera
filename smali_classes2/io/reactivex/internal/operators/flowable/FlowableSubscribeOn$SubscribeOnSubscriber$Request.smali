.class public final Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn$SubscribeOnSubscriber$Request;
.super Ljava/lang/Object;
.source "FlowableSubscribeOn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn$SubscribeOnSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation


# instance fields
.field public final n:J

.field public final s:Lorg/reactivestreams/Subscription;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscription;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn$SubscribeOnSubscriber$Request;->s:Lorg/reactivestreams/Subscription;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn$SubscribeOnSubscriber$Request;->n:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn$SubscribeOnSubscriber$Request;->s:Lorg/reactivestreams/Subscription;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn$SubscribeOnSubscriber$Request;->n:J

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
