.class public Lcom/android/camera/ui/SlideSwitchButton$1;
.super Lmiuix/view/animation/CubicEaseOutInterpolator;
.source "SlideSwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/SlideSwitchButton;->setIndex(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/SlideSwitchButton;

.field public final synthetic val$index:I

.field public final synthetic val$left:F

.field public final synthetic val$targetMarginLeft:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/SlideSwitchButton;FII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iput p2, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->val$left:F

    iput p3, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->val$targetMarginLeft:I

    iput p4, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->val$index:I

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;->getInterpolation(F)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iget v1, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->val$left:F

    iget v2, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->val$targetMarginLeft:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/SlideSwitchButton;->access$002(Lcom/android/camera/ui/SlideSwitchButton;F)F

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v0}, Lcom/android/camera/ui/SlideSwitchButton;->access$400(Lcom/android/camera/ui/SlideSwitchButton;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v1}, Lcom/android/camera/ui/SlideSwitchButton;->access$300(Lcom/android/camera/ui/SlideSwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    .line 4
    invoke-static {v2}, Lcom/android/camera/ui/SlideSwitchButton;->access$100(Lcom/android/camera/ui/SlideSwitchButton;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/SlideSwitchButton;->access$200(Lcom/android/camera/ui/SlideSwitchButton;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iget v4, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->val$index:I

    invoke-static {v3, v4}, Lcom/android/camera/ui/SlideSwitchButton;->access$200(Lcom/android/camera/ui/SlideSwitchButton;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iget v1, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->val$index:I

    invoke-static {v0}, Lcom/android/camera/ui/SlideSwitchButton;->access$300(Lcom/android/camera/ui/SlideSwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    .line 7
    invoke-static {v3}, Lcom/android/camera/ui/SlideSwitchButton;->access$500(Lcom/android/camera/ui/SlideSwitchButton;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v4}, Lcom/android/camera/ui/SlideSwitchButton;->access$600(Lcom/android/camera/ui/SlideSwitchButton;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 8
    invoke-virtual {v2, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/SlideSwitchButton;->access$700(Lcom/android/camera/ui/SlideSwitchButton;II)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v0}, Lcom/android/camera/ui/SlideSwitchButton;->access$100(Lcom/android/camera/ui/SlideSwitchButton;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v0}, Lcom/android/camera/ui/SlideSwitchButton;->access$100(Lcom/android/camera/ui/SlideSwitchButton;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v2}, Lcom/android/camera/ui/SlideSwitchButton;->access$300(Lcom/android/camera/ui/SlideSwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    .line 11
    invoke-static {v3}, Lcom/android/camera/ui/SlideSwitchButton;->access$600(Lcom/android/camera/ui/SlideSwitchButton;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v4}, Lcom/android/camera/ui/SlideSwitchButton;->access$500(Lcom/android/camera/ui/SlideSwitchButton;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 12
    invoke-virtual {v2, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/SlideSwitchButton;->access$700(Lcom/android/camera/ui/SlideSwitchButton;II)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v0}, Lcom/android/camera/ui/SlideSwitchButton;->access$100(Lcom/android/camera/ui/SlideSwitchButton;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/SlideSwitchButton;->access$800(Lcom/android/camera/ui/SlideSwitchButton;IZ)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return p1
.end method
