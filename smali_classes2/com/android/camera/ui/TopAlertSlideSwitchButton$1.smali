.class public Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;
.super Lmiuix/view/animation/CubicEaseOutInterpolator;
.source "TopAlertSlideSwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setIndex(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

.field public final synthetic val$index:I

.field public final synthetic val$left:F

.field public final synthetic val$targetChileWidth:I

.field public final synthetic val$targetMarginLeft:I

.field public final synthetic val$width:F


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/TopAlertSlideSwitchButton;FIFII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->val$left:F

    iput p3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->val$targetMarginLeft:I

    iput p4, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->val$width:F

    iput p5, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->val$targetChileWidth:I

    iput p6, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->val$index:I

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;->getInterpolation(F)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->val$left:F

    iget v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->val$targetMarginLeft:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$002(Lcom/android/camera/ui/TopAlertSlideSwitchButton;F)F

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->val$width:F

    iget v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->val$targetChileWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$102(Lcom/android/camera/ui/TopAlertSlideSwitchButton;F)F

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    invoke-static {v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$500(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    invoke-static {v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$400(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    .line 5
    invoke-static {v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$200(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$300(Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    iget v4, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->val$index:I

    invoke-static {v3, v4}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$300(Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->val$index:I

    invoke-static {v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$400(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v2

    const/4 v3, -0x1

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    invoke-static {v5}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$600(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 9
    invoke-virtual {v2, p1, v4, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$700(Lcom/android/camera/ui/TopAlertSlideSwitchButton;II)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    invoke-static {v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$200(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    invoke-static {v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$200(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    invoke-static {v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$400(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    .line 12
    invoke-static {v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$600(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 13
    invoke-virtual {v2, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$700(Lcom/android/camera/ui/TopAlertSlideSwitchButton;II)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    invoke-static {v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$200(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->access$800(Lcom/android/camera/ui/TopAlertSlideSwitchButton;IZ)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;->this$0:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return p1
.end method
