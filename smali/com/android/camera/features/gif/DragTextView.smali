.class public Lcom/android/camera/features/gif/DragTextView;
.super Landroid/widget/TextView;
.source "DragTextView.java"


# instance fields
.field public bottomParent:I

.field public bottomParentAfter:I

.field public endx:F

.field public endy:F

.field public horVector:I

.field public leftParent:I

.field public leftParentAfter:I

.field public rightParent:I

.field public rightParentAfter:I

.field public startx:F

.field public starty:F

.field public topParent:I

.field public topParentAfter:I

.field public verVector:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/features/gif/DragTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/features/gif/DragTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getBottomParentAfter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/gif/DragTextView;->bottomParentAfter:I

    return v0
.end method

.method public getLeftParentAfter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/gif/DragTextView;->leftParentAfter:I

    return v0
.end method

.method public getRightParentAfter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/gif/DragTextView;->rightParentAfter:I

    return v0
.end method

.method public getTopParentAfter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/gif/DragTextView;->topParentAfter:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/features/gif/DragTextView;->endx:F

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/camera/features/gif/DragTextView;->endy:F

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/gif/DragTextView;->leftParent:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/gif/DragTextView;->topParent:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/gif/DragTextView;->rightParent:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getBottom()I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/gif/DragTextView;->bottomParent:I

    .line 8
    iget v0, p0, Lcom/android/camera/features/gif/DragTextView;->endx:F

    iget v1, p0, Lcom/android/camera/features/gif/DragTextView;->startx:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/features/gif/DragTextView;->horVector:I

    .line 9
    iget v1, p0, Lcom/android/camera/features/gif/DragTextView;->endy:F

    iget v2, p0, Lcom/android/camera/features/gif/DragTextView;->starty:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/camera/features/gif/DragTextView;->verVector:I

    .line 10
    iget v2, p0, Lcom/android/camera/features/gif/DragTextView;->leftParent:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/camera/features/gif/DragTextView;->leftParentAfter:I

    .line 11
    iget v2, p0, Lcom/android/camera/features/gif/DragTextView;->topParent:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/camera/features/gif/DragTextView;->topParentAfter:I

    .line 12
    iget v2, p0, Lcom/android/camera/features/gif/DragTextView;->rightParent:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/camera/features/gif/DragTextView;->rightParentAfter:I

    add-int/2addr p1, v1

    .line 13
    iput p1, p0, Lcom/android/camera/features/gif/DragTextView;->bottomParentAfter:I

    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    .line 14
    :cond_1
    iget p1, p0, Lcom/android/camera/features/gif/DragTextView;->leftParentAfter:I

    iget v0, p0, Lcom/android/camera/features/gif/DragTextView;->topParentAfter:I

    iget v1, p0, Lcom/android/camera/features/gif/DragTextView;->rightParentAfter:I

    iget v2, p0, Lcom/android/camera/features/gif/DragTextView;->bottomParentAfter:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/features/gif/DragTextView;->startx:F

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/camera/features/gif/DragTextView;->starty:F

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
