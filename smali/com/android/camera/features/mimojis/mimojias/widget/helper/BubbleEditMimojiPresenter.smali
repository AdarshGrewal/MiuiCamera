.class public Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;
.super Ljava/lang/Object;
.source "BubbleEditMimojiPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;
    }
.end annotation


# static fields
.field public static final INVISIBLE_STATE:I = -0x1

.field public static final RESET_STATE:I = -0x2

.field public static final TAG:Ljava/lang/String; = "BubbleEditMimojiPresenter"

.field public static final VISIBLE_STATE:I = 0x1


# instance fields
.field public bubblePop:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

.field public downMove:I

.field public isAnimationingDele:Z

.field public isAnimationingEdit:Z

.field public isAnimationingEmoticon:Z

.field public leftMove:D

.field public mContext:Landroid/content/Context;

.field public mHashCodeBubble:I

.field public mIsAddEmoticon:Z

.field public mIsRTL:Z

.field public mScreenWidth:I

.field public mShowBubbleState:[I

.field public mTargetView:Landroid/view/View;

.field public rightMove:D

.field public topMove:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/RelativeLayout;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->isAnimationingEmoticon:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->isAnimationingDele:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->isAnimationingEdit:Z

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 5
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->mShowBubbleState:[I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->mHashCodeBubble:I

    .line 7
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->mIsRTL:Z

    .line 9
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->mIsAddEmoticon:Z

    .line 10
    iput p4, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->mScreenWidth:I

    .line 11
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p4, p2, p3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;-><init>(Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/RelativeLayout;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->bubblePop:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->mIsAddEmoticon:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->isAnimationingEdit:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->isAnimationingEdit:Z

    return p1
.end method

.method public static synthetic access$1102(Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->isAnimationingEmoticon:Z

    return p1
.end method

.method public static synthetic access$1200(Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->downMove:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->isAnimationingDele:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->isAnimationingDele:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->mScreenWidth:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->mIsRTL:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->rightMove:D

    return-wide v0
.end method

.method public static synthetic access$600(Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->leftMove:D

    return-wide v0
.end method

.method public static synthetic access$700(Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->topMove:I

    return p0
.end method


# virtual methods
.method public getBubblePop()Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->bubblePop:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    return-object v0
.end method

.method public processBubbleAni(IILandroid/view/View;)V
    .locals 4

    const/4 v0, -0x2

    if-ne v0, p1, :cond_1

    if-ne v0, p2, :cond_1

    .line 1
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->bubblePop:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    invoke-virtual {p3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;->getProcessState()I

    move-result p3

    const/16 v0, 0x67

    if-ne p3, v0, :cond_0

    .line 2
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->bubblePop:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;->processBubbleAni(III)V

    :cond_0
    return-void

    .line 3
    :cond_1
    iput-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->mTargetView:Landroid/view/View;

    .line 4
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 5
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0703d2

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-double v0, p3

    .line 6
    iget-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->mIsAddEmoticon:Z

    if-eqz v2, :cond_2

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    goto :goto_0

    :cond_2
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    :goto_0
    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->rightMove:D

    neg-double v0, v0

    .line 7
    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->leftMove:D

    neg-int v0, p3

    .line 8
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->topMove:I

    .line 9
    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->downMove:I

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculate vector leftMove:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->leftMove:D

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " rightMove:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->rightMove:D

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "  topMove:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->topMove:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  downMove:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->downMove:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BubbleEditMimojiPresenter"

    invoke-static {v0, p3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->bubblePop:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;->processBubbleAni(III)V

    return-void
.end method

.method public setmHashCodeBubble(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->mHashCodeBubble:I

    return-void
.end method
