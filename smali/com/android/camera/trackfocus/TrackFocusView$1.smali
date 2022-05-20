.class public Lcom/android/camera/trackfocus/TrackFocusView$1;
.super Lmiuix/animation/property/ViewProperty;
.source "TrackFocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/trackfocus/TrackFocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/trackfocus/TrackFocusView;


# direct methods
.method public constructor <init>(Lcom/android/camera/trackfocus/TrackFocusView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusView$1;->this$0:Lcom/android/camera/trackfocus/TrackFocusView;

    invoke-direct {p0, p2}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusView$1;->this$0:Lcom/android/camera/trackfocus/TrackFocusView;

    invoke-static {p1}, Lcom/android/camera/trackfocus/TrackFocusView;->access$000(Lcom/android/camera/trackfocus/TrackFocusView;)Lcom/android/camera/trackfocus/TrackFocusDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/trackfocus/TrackFocusDrawable;->getAnimationOffset()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/camera/trackfocus/TrackFocusView$1;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusView$1;->this$0:Lcom/android/camera/trackfocus/TrackFocusView;

    invoke-static {p1}, Lcom/android/camera/trackfocus/TrackFocusView;->access$000(Lcom/android/camera/trackfocus/TrackFocusView;)Lcom/android/camera/trackfocus/TrackFocusDrawable;

    move-result-object p1

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/android/camera/trackfocus/TrackFocusDrawable;->setAnimationOffset(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/trackfocus/TrackFocusView$1;->setValue(Landroid/view/View;F)V

    return-void
.end method
