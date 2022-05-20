.class public Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;
.super Lcom/facebook/rebound/SpringLooper;
.source "AndroidSpringLooperFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/AndroidSpringLooperFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChoreographerAndroidSpringLooper"
.end annotation


# instance fields
.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field public mLastTime:J

.field public mStarted:Z


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/rebound/SpringLooper;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    .line 3
    new-instance p1, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;

    invoke-direct {p1, p0}, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;-><init>(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)V

    iput-object p1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method public static synthetic access$400(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mLastTime:J

    return-wide v0
.end method

.method public static synthetic access$502(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mLastTime:J

    return-wide p1
.end method

.method public static synthetic access$600(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Landroid/view/Choreographer$FrameCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Landroid/view/Choreographer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method public static create()Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;-><init>(Landroid/view/Choreographer;)V

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mLastTime:J

    .line 4
    iget-object v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 5
    iget-object v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z

    .line 2
    iget-object v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
