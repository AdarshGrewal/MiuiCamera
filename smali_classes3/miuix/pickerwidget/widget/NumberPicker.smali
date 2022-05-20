.class public Lmiuix/pickerwidget/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lmiuix/pickerwidget/widget/NumberPicker$CustomEditText;,
        Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;,
        Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;,
        Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;,
        Lmiuix/pickerwidget/widget/NumberPicker$Formatter;,
        Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;,
        Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;,
        Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;,
        Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;
    }
.end annotation


# static fields
.field public static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field public static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field public static final DIGIT_CHARACTERS:[C

.field public static final MAX_HEIGHT:I = 0xca

.field public static final PRESSED_STATE_SET:[I

.field public static final SELECTION_DIVIDERS_DISTANCE:F = 45.0f

.field public static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field public static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field public static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field public static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field public static final SIZE_UNSPECIFIED:I = -0x1

.field public static final SNAP_SCROLL_DURATION:I = 0x12c

.field public static final SOUND_PLAY_THREAD:Ljava/lang/String; = "NumberPicker_sound_play"

.field public static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field public static final TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

.field public static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field public static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field public static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public MARGIN_LABEL_LEFT:I

.field public MARGIN_LABEL_TOP:I

.field public mAccessibilityNodeProvider:Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field public final mAdjustScroller:Landroid/widget/Scroller;

.field public mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field public mBottomSelectionDividerBottom:I

.field public mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field public final mComputeMaxWidth:Z

.field public mCurrentScrollOffset:I

.field public mDecrementVirtualButtonPressed:Z

.field public mDisplayedMaxTextWidth:F

.field public mDisplayedValues:[Ljava/lang/String;

.field public final mFlingScroller:Landroid/widget/Scroller;

.field public mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

.field public final mHasSelectorWheel:Z

.field public final mId:I

.field public mIncrementVirtualButtonPressed:Z

.field public mIngonreMoveEvents:Z

.field public mInitialScrollOffset:I

.field public final mInputText:Landroid/widget/EditText;

.field public mLabel:Ljava/lang/CharSequence;

.field public mLabelPaint:Landroid/graphics/Paint;

.field public mLabelTextColor:I

.field public mLabelTextSize:I

.field public mLabelTextSizeThreshold:F

.field public mLabelTextSizeTrimFactor:F

.field public mLastDownEventTime:J

.field public mLastDownEventY:F

.field public mLastDownOrMoveEventY:F

.field public mLastHandledDownDpadKeyCode:I

.field public mLastHoveredChildVirtualViewId:I

.field public mLongPressUpdateInterval:J

.field public mMaxFlingSpeedFactor:F

.field public final mMaxHeight:I

.field public mMaxValue:I

.field public mMaxWidth:I

.field public mMaximumFlingVelocity:I

.field public final mMinHeight:I

.field public mMinValue:I

.field public final mMinWidth:I

.field public mMinimumFlingVelocity:I

.field public mModDevice:Ljava/lang/String;

.field public mOnScrollListener:Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;

.field public mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

.field public mOriginLabelTextSize:I

.field public final mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

.field public mPreviousScrollerY:I

.field public mScrollState:I

.field public final mSelectionDividerHeight:I

.field public final mSelectionDividersDistance:I

.field public mSelectorElementHeight:I

.field public final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mSelectorIndices:[I

.field public mSelectorTextGapHeight:I

.field public final mSelectorWheelPaint:Landroid/graphics/Paint;

.field public mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

.field public mShowSoftInputOnTap:Z

.field public mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

.field public mTextColorHilight:I

.field public mTextColorHint:I

.field public mTextPadding:I

.field public final mTextSize:I

.field public mTextSizeHilight:I

.field public mTextSizeHint:I

.field public mTopSelectionDividerTop:I

.field public mTouchSlop:I

.field public mUpdateText:Ljava/lang/String;

.field public mValue:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mWrapSelectorWheel:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_number_picker_layout:I

    sput v0, Lmiuix/pickerwidget/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;-><init>(I)V

    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v2, 0x10100a7

    aput v2, v0, v1

    .line 4
    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->PRESSED_STATE_SET:[I

    const/16 v0, 0xa

    new-array v0, v0, [C

    .line 5
    fill-array-data v0, :array_0

    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lmiuix/pickerwidget/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    const/4 v1, 0x2

    .line 6
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    const/16 v1, 0x190

    .line 7
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    const-wide/16 v1, 0x12c

    .line 8
    iput-wide v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 9
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 10
    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    const/high16 v1, -0x80000000

    .line 11
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    const/4 v2, -0x1

    .line 13
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    const/high16 v3, 0x41400000    # 12.0f

    .line 14
    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    const v3, 0x3f4ccccd    # 0.8f

    .line 15
    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 16
    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    .line 17
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_margin_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_margin_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    .line 20
    invoke-direct {p0, p2, p3}, Lmiuix/pickerwidget/widget/NumberPicker;->parseStyle(Landroid/util/AttributeSet;I)V

    .line 21
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSoundPlayer()V

    .line 22
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p3, 0x40000000    # 2.0f

    .line 24
    invoke-static {v0, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 25
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividerHeight:I

    const/high16 p2, 0x42340000    # 45.0f

    mul-float/2addr p2, v3

    float-to-int p2, p2

    .line 26
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 27
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinHeight:I

    const/high16 p2, 0x434a0000    # 202.0f

    mul-float/2addr v3, p2

    float-to-int p2, v3

    .line 28
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxHeight:I

    if-eq v2, v2, :cond_1

    if-eq p2, v2, :cond_1

    if-gt v2, p2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_1
    :goto_0
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    .line 31
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    if-eq v2, v2, :cond_3

    if-eq v2, v2, :cond_3

    if-gt v2, v2, :cond_2

    goto :goto_1

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_3
    :goto_1
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    if-ne p2, v2, :cond_4

    move v1, v0

    :cond_4
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 34
    new-instance p2, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-direct {p2, p0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    .line 35
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    xor-int/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 36
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 37
    sget p3, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_number_picker_layout:I

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    sget p2, Lmiuix/pickerwidget/R$id;->number_picker_input:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 39
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initInputText()V

    .line 40
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 44
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    .line 45
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSelectorWheelPaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 46
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initLabelPaint()V

    .line 47
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 48
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {p3, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 49
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 50
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    :cond_5
    return-void
.end method

.method public static synthetic access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$1000(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method public static synthetic access$1100(Lmiuix/pickerwidget/widget/NumberPicker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method public static synthetic access$1102(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method public static synthetic access$1200(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method public static synthetic access$1300(Lmiuix/pickerwidget/widget/NumberPicker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method public static synthetic access$1302(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method public static synthetic access$1400(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method public static synthetic access$1500(Lmiuix/pickerwidget/widget/NumberPicker;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method public static synthetic access$1600(Lmiuix/pickerwidget/widget/NumberPicker;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method public static synthetic access$1702(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIngonreMoveEvents:Z

    return p1
.end method

.method public static synthetic access$1800(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividerHeight:I

    return p0
.end method

.method public static synthetic access$1900(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    return p0
.end method

.method public static synthetic access$200(Lmiuix/pickerwidget/widget/NumberPicker;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$2000(Lmiuix/pickerwidget/widget/NumberPicker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method public static synthetic access$2100(Lmiuix/pickerwidget/widget/NumberPicker;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$2200(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method public static synthetic access$2300(Lmiuix/pickerwidget/widget/NumberPicker;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600()[C
    .locals 1

    .line 1
    sget-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method public static synthetic access$700(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/pickerwidget/widget/NumberPicker;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    .line 6
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v7, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 9
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 10
    :cond_3
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    :goto_1
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 2
    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 4
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 5
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    :cond_1
    const/4 v1, 0x0

    .line 6
    aput v0, p1, v1

    .line 7
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private drawLabelText(Landroid/graphics/Canvas;FFF)V
    .locals 2

    .line 1
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    move-result p4

    if-nez p4, :cond_1

    .line 2
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p4

    .line 3
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    sub-float/2addr p2, p4

    const/4 p4, 0x0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p4

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 6
    :goto_0
    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHilight:I

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    sub-float/2addr p3, p4

    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    add-float/2addr p3, p4

    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    int-to-float p4, p4

    add-float/2addr p3, p4

    .line 7
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private drawScrollValue(Landroid/graphics/Canvas;FF)F
    .locals 12

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 3
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    const/4 v3, 0x0

    move v4, v3

    .line 4
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 5
    aget v5, v2, v4

    .line 6
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sub-float v6, p3, v0

    .line 7
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 8
    iget v7, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHilight:I

    iget v8, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    invoke-direct {p0, v6, v7, v8}, Lmiuix/pickerwidget/widget/NumberPicker;->getTextSize(FII)F

    move-result v7

    .line 9
    iget-object v8, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    iget-object v8, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v9, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHint:I

    invoke-direct {p0, v6, v9, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget v8, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    int-to-float v8, v8

    sub-float v8, v7, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v8, v0

    iget-object v10, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, p2, v8, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v8, v6, v8

    if-gez v8, :cond_0

    .line 12
    iget-object v8, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v10, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHilight:I

    const/4 v11, 0x1

    invoke-direct {p0, v6, v10, v11}, Lmiuix/pickerwidget/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget v6, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    int-to-float v6, v6

    sub-float/2addr v7, v6

    div-float/2addr v7, v9

    add-float/2addr v7, v0

    iget-object v6, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, p2, v7, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 14
    :cond_0
    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int v1, p1, v1

    .line 5
    aget-object v1, v2, v1

    goto :goto_1

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, ""

    .line 7
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 4
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    .line 2
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->format(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getAlphaGradient(FIZ)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    return p2

    :cond_0
    if-eqz p3, :cond_1

    neg-float p1, p1

    .line 1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p1, p3

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p1, p3

    :goto_0
    float-to-int p1, p1

    const p3, 0xffffff

    and-int/2addr p2, p3

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, p2

    return p1
.end method

.method private getLabelWidth()F
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    add-int/2addr p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 8
    :catch_0
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    return p1
.end method

.method private getTextSize(FII)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    int-to-float p1, p3

    return p1

    :cond_0
    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float/2addr p1, p3

    int-to-float p2, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 2
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    sub-int/2addr v0, v1

    rem-int/2addr p1, v0

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 3
    :cond_0
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-ge p1, v1, :cond_1

    sub-int p1, v1, p1

    sub-int v1, v0, v1

    .line 4
    rem-int/2addr p1, v1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 2
    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 3
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 4
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 5
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 6
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 7
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initInputText()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker$1;

    invoke-direct {v1, p0}, Lmiuix/pickerwidget/widget/NumberPicker$1;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;

    invoke-direct {v2, p0}, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 4
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 5
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 7
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setScaleX(F)V

    .line 8
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 9
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    return-void
.end method

.method private initLabelPaint()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 4
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private initSelectorWheelPaint()Landroid/graphics/Paint;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 4
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHilight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 6
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 7
    sget-object v2, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method private initSoundPlayer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    if-nez v0, :cond_0

    const-string v0, "NumberPicker_sound_play"

    .line 2
    invoke-static {v0}, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->aquireWorker(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v0

    .line 3
    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    invoke-direct {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    invoke-virtual {v1, v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->init(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 3
    array-length v1, v0

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    move v1, v2

    .line 5
    :cond_0
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 6
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 7
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 8
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 10
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 11
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 3
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    add-int/2addr v3, v1

    .line 5
    iget-boolean v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 6
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 7
    :cond_0
    aput v3, v0, v2

    .line 8
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isInternationalBuild()Z
    .locals 7

    .line 1
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "android.os.SystemProperties"

    .line 2
    invoke-static {v1}, Lmiuix/internal/util/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "ro.product.mod_device"

    aput-object v6, v2, v4

    const-string v4, ""

    aput-object v4, v2, v5

    const-string v4, "get"

    .line 3
    invoke-static {v1, v0, v4, v3, v2}, Lmiuix/internal/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 1
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 5
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 3
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 4
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 5
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 6
    invoke-virtual {p0, p1, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method private notifyChange(I)V
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 2
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->playSound()V

    .line 3
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p0, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 4
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 5
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    .line 2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->stopSoundPlay()V

    .line 6
    :cond_2
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    .line 7
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnScrollListener:Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0, p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Lmiuix/pickerwidget/widget/NumberPicker;I)V

    :cond_3
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 2
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 6
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private parseStyle(Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lmiuix/pickerwidget/R$styleable;->NumberPicker:[I

    sget v3, Lmiuix/pickerwidget/R$style;->Widget_NumberPicker_DayNight:I

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 4
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_textSizeHighlight:I

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_text_size_highlight_normal:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 6
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHilight:I

    .line 7
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_textSizeHint:I

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_text_size_hint_normal:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 9
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 10
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_labelTextSize:I

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_text_size:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 12
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 13
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_textColorHighlight:I

    sget v1, Lmiuix/pickerwidget/R$color;->miuix_appcompat_number_picker_highlight_color:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 15
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHilight:I

    .line 16
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_textColorHint:I

    sget v1, Lmiuix/pickerwidget/R$color;->miuix_appcompat_number_picker_hint_color:I

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 18
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHint:I

    .line 19
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_labelTextColor:I

    sget v1, Lmiuix/pickerwidget/R$color;->miuix_appcompat_number_picker_label_color:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 21
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextColor:I

    .line 22
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_labelPadding:I

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_padding:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    .line 25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    return-void
.end method

.method private playSound()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->play()V

    :cond_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :goto_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :goto_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$300(Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 5
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :goto_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    invoke-static {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->access$402(Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;I)I

    .line 5
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    invoke-static {p1, p2}, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->access$502(Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;I)I

    .line 6
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refreshWheel()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private releaseSoundPlayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->release(I)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    :cond_0
    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    :cond_1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    :cond_2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p3, p2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 5
    :goto_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_1

    return-void

    .line 6
    :cond_1
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 7
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    if-eqz p2, :cond_2

    .line 8
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->notifyChange(I)V

    .line 9
    :cond_2
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private stopSoundPlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->stop()V

    :cond_0
    return-void
.end method

.method private trimLabelTextSize(F)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getLabelWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 3
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    :goto_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getLabelWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    int-to-float v1, v0

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    int-to-float v0, v0

    .line 5
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 6
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHilight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v2, v1, :cond_2

    .line 4
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    cmpl-float v3, v1, v0

    if-lez v3, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v0, v0

    goto :goto_2

    .line 6
    :cond_3
    array-length v1, v1

    :goto_1
    if-ge v2, v1, :cond_5

    .line 7
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 8
    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_4

    move v0, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_5
    :goto_2
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 10
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 12
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_7

    .line 13
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    float-to-int v0, v0

    .line 14
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    goto :goto_3

    .line 15
    :cond_6
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    :cond_7
    :goto_3
    return-void
.end method

.method private updateInputTextView()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-eqz v1, :cond_1

    .line 4
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 2
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 4
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 6
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 7
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    .line 9
    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    .line 10
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 11
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 4
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 6
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 7
    :cond_1
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 9
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x80

    if-eq p1, v2, :cond_5

    const/16 v2, 0x9

    if-eq p1, v2, :cond_4

    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v1, v0, v4}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 11
    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {v1, v0, v7}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 13
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 14
    invoke-virtual {v1, v0, v6, v5}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 15
    :cond_5
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_6

    .line 16
    invoke-virtual {v1, p1, v4}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 17
    invoke-virtual {v1, v0, v7}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 18
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 19
    invoke-virtual {v1, v0, v6, v5}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_3

    .line 3
    :cond_1
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_2

    goto :goto_3

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_9

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    return v3

    .line 7
    :cond_4
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_6

    if-ne v0, v2, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_9

    goto :goto_1

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 9
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 10
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 11
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 12
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_8

    if-ne v0, v2, :cond_7

    move p1, v3

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 13
    :goto_2
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    :cond_8
    return v3

    .line 14
    :cond_9
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAccessibilityNodeProvider:Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAccessibilityNodeProvider:Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 5
    :cond_1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAccessibilityNodeProvider:Lmiuix/pickerwidget/widget/NumberPicker$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getTopFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSoundPlayer()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->releaseSoundPlayer()V

    .line 3
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    const-string v0, "NumberPicker_sound_play"

    .line 4
    invoke-static {v0}, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->releaseWorker(Ljava/lang/String;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 6
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 7
    invoke-direct {p0, p1, v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->drawScrollValue(Landroid/graphics/Canvas;FF)F

    move-result v2

    .line 8
    invoke-direct {p0, p1, v0, v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->drawLabelText(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 4
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 5
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 4
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventTime:J

    .line 7
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIngonreMoveEvents:Z

    .line 8
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 9
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_2

    .line 10
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 13
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 15
    :cond_3
    :goto_0
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 16
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 17
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 18
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 19
    :cond_4
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    .line 20
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 21
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 22
    :cond_5
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    .line 23
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    .line 24
    invoke-direct {p0, v1, v3, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 25
    :cond_6
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    .line 26
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    .line 27
    invoke-direct {p0, v2, v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 28
    :cond_7
    iput-boolean v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 29
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    :goto_1
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    .line 5
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    .line 6
    iget-object p5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    .line 7
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    .line 8
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 9
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    .line 10
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheel()V

    .line 11
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeFadingEdges()V

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr p1, p3

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    .line 13
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 15
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->trimLabelTextSize(F)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 4
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 5
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 6
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 7
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4
    :cond_1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_2

    goto/16 :goto_3

    .line 6
    :cond_2
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIngonreMoveEvents:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 7
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 8
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_4

    .line 9
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 10
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 11
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 12
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 13
    :cond_4
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 14
    invoke-virtual {p0, v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 16
    :cond_5
    :goto_0
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_3

    .line 17
    :cond_6
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 18
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 19
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 20
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 21
    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 22
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 23
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v4, v5, :cond_7

    int-to-float v0, v0

    .line 24
    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 25
    :cond_7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_8

    .line 26
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->fling(I)V

    .line 27
    invoke-direct {p0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_2

    .line 28
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    .line 29
    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventTime:J

    sub-long/2addr v5, v7

    .line 31
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    if-gt v4, p1, :cond_b

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_b

    .line 32
    iget-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    if-eqz p1, :cond_9

    .line 33
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    goto :goto_1

    .line 34
    :cond_9
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    sub-int/2addr v0, v3

    if-lez v0, :cond_a

    .line 35
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 36
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v3}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_a
    if-gez v0, :cond_c

    .line 37
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 38
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 39
    :cond_b
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 40
    :cond_c
    :goto_1
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    .line 41
    :goto_2
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_3
    return v3

    :cond_d
    :goto_4
    return v1
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 2
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    aget v0, p1, v1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-gt v0, v2, :cond_0

    .line 3
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    aget v0, p1, v1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-lt v0, v2, :cond_1

    .line 5
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 6
    :cond_1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 7
    :cond_2
    :goto_0
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v0, v2, :cond_3

    .line 8
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 9
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 10
    aget p2, p1, v1

    invoke-direct {p0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 11
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    aget p2, p1, v1

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-gt p2, v0, :cond_2

    .line 12
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 13
    :cond_3
    :goto_1
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v0, v2, :cond_4

    .line 14
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 15
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 16
    aget p2, p1, v1

    invoke-direct {p0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 17
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    aget p2, p1, v1

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-lt p2, v0, :cond_3

    .line 18
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 5
    :goto_0
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 6
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 7
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    .line 3
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 4
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public setLabelTextSizeThreshold(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    return-void
.end method

.method public setLabelTextSizeTrimFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    :cond_0
    return-void
.end method

.method public setMaxFlingSpeedFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    :cond_0
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 2
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 3
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_1

    .line 4
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 5
    :cond_1
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 7
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 8
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 9
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 2
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 3
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    if-le p1, v0, :cond_1

    .line 4
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 5
    :cond_1
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 7
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 8
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 9
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnScrollListener:Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_2

    .line 3
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 4
    :cond_2
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->refreshWheel()V

    return-void
.end method
