.class public abstract Lcom/android/camera/visibilityutils/calculator/BaseItemsVisibilityCalculator;
.super Ljava/lang/Object;
.source "BaseItemsVisibilityCalculator.java"

# interfaces
.implements Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;
.implements Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;


# static fields
.field public static final SHOW_LOGS:Z = false

.field public static final TAG:Ljava/lang/String; = "BaseItemsVisibilityCalculator"


# instance fields
.field public final mScrollDirectionDetector:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;

    invoke-direct {v0, p0}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;-><init>(Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector$OnDetectScrollListener;)V

    iput-object v0, p0, Lcom/android/camera/visibilityutils/calculator/BaseItemsVisibilityCalculator;->mScrollDirectionDetector:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;

    return-void
.end method

.method private scrollStateStr(I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "SCROLL_STATE_FLING"

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong data, scrollState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "SCROLL_STATE_TOUCH_SCROLL"

    return-object p1

    :cond_2
    const-string p1, "SCROLL_STATE_IDLE"

    return-object p1
.end method


# virtual methods
.method public onScroll(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;III)V
    .locals 0

    iget-object p3, p0, Lcom/android/camera/visibilityutils/calculator/BaseItemsVisibilityCalculator;->mScrollDirectionDetector:Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;

    invoke-virtual {p3, p1, p2}, Lcom/android/camera/visibilityutils/scroll_utils/ScrollDirectionDetector;->onDetectedListScroll(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;I)V

    const/4 p2, 0x1

    if-eq p4, p2, :cond_1

    const/4 p2, 0x2

    if-eq p4, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/visibilityutils/calculator/BaseItemsVisibilityCalculator;->onStateTouchScroll(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/visibilityutils/calculator/BaseItemsVisibilityCalculator;->onStateTouchScroll(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;)V

    :goto_0
    return-void
.end method

.method public abstract onStateFling(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;)V
.end method

.method public abstract onStateTouchScroll(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;)V
.end method
