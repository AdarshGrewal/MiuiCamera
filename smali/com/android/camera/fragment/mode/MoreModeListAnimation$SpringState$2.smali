.class public Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "MoreModeListAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$2;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$2;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$302(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;F)F

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$2;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p1, p3}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$302(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;F)F

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$2;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$200(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->getRotate()F

    move-result p1

    float-to-int p1, p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/16 p3, 0x5a

    if-eq p1, p3, :cond_2

    const/16 p3, 0xb4

    if-eq p1, p3, :cond_1

    const/16 p3, 0x10e

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$2;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$200(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$2;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p3}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$300(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)F

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->onUpdate(FF)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$2;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$200(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$2;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p3}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$300(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)F

    move-result p3

    neg-float p3, p3

    invoke-interface {p1, p3, p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->onUpdate(FF)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$2;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$200(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$2;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p3}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$300(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)F

    move-result p3

    neg-float p3, p3

    invoke-interface {p1, p2, p3}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->onUpdate(FF)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$2;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$200(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$2;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p3}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$300(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)F

    move-result p3

    invoke-interface {p1, p3, p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->onUpdate(FF)V

    :goto_0
    return-void
.end method
