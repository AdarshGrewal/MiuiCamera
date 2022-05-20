.class public Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;
.super Ljava/lang/Object;
.source "ScrollDirectionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;,
        Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;
    }
.end annotation


# static fields
.field public static final SHOW_LOGS:Z = false

.field public static final TAG:Ljava/lang/String; = "ScrollDirectionDetector"


# instance fields
.field public mOldFirstVisibleItem:I

.field public mOldScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

.field public mOldTop:I

.field public final mOnDetectScrollListener:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    .line 3
    iput-object p1, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOnDetectScrollListener:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;

    return-void
.end method

.method private onScrollDown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    sget-object v1, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;->DOWN:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    if-eq v0, v1, :cond_0

    .line 2
    iput-object v1, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    .line 3
    iget-object v0, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOnDetectScrollListener:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;

    invoke-interface {v0, v1}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;->onScrollDirectionChanged(Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;)V

    :cond_0
    return-void
.end method

.method private onScrollUp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    sget-object v1, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;->UP:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    if-eq v0, v1, :cond_0

    .line 2
    iput-object v1, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldScrollDirection:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;

    .line 3
    iget-object v0, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOnDetectScrollListener:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;

    invoke-interface {v0, v1}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;->onScrollDirectionChanged(Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$ScrollDirection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDetectedListScroll(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 3
    :goto_0
    iget p1, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldFirstVisibleItem:I

    if-ne p2, p1, :cond_2

    .line 4
    iget p1, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldTop:I

    if-le v0, p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->onScrollUp()V

    goto :goto_1

    :cond_1
    if-ge v0, p1, :cond_4

    .line 6
    invoke-direct {p0}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->onScrollDown()V

    goto :goto_1

    :cond_2
    if-ge p2, p1, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->onScrollUp()V

    goto :goto_1

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->onScrollDown()V

    .line 9
    :cond_4
    :goto_1
    iput v0, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldTop:I

    .line 10
    iput p2, p0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->mOldFirstVisibleItem:I

    return-void
.end method
