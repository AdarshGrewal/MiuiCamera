.class public Lcom/android/camera/timerburst/TimerBurstSeekBar$1;
.super Lmiuix/animation/property/ViewProperty;
.source "TimerBurstSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/timerburst/TimerBurstSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/timerburst/TimerBurstSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/camera/timerburst/TimerBurstSeekBar;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar$1;->this$0:Lcom/android/camera/timerburst/TimerBurstSeekBar;

    invoke-direct {p0, p2}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar$1;->this$0:Lcom/android/camera/timerburst/TimerBurstSeekBar;

    invoke-static {p1}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->access$000(Lcom/android/camera/timerburst/TimerBurstSeekBar;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$1;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar$1;->this$0:Lcom/android/camera/timerburst/TimerBurstSeekBar;

    invoke-static {v0, p2}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->access$002(Lcom/android/camera/timerburst/TimerBurstSeekBar;F)F

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/timerburst/TimerBurstSeekBar$1;->setValue(Landroid/view/View;F)V

    return-void
.end method
