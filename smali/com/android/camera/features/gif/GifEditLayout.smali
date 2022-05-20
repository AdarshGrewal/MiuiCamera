.class public Lcom/android/camera/features/gif/GifEditLayout;
.super Landroid/widget/FrameLayout;
.source "GifEditLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;
    }
.end annotation


# static fields
.field public static final LIMIT_BYTE:I = 0x10

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public imm:Landroid/view/inputmethod/InputMethodManager;

.field public mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

.field public mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

.field public mGifTextWatcher:Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;

.field public mIsAllowInput:Z

.field public mIsShowBorder:Z

.field public mIvBorder:Landroid/widget/FrameLayout;

.field public mIvClear:Landroid/widget/ImageView;

.field public mLastString:Ljava/lang/String;

.field public mRect:Landroid/graphics/Rect;

.field public stringBuilder:Ljava/lang/StringBuilder;

.field public tf:Landroid/graphics/Typeface;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/gif/GifEditLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/android/camera/features/gif/GifEditLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifEditLayout;->initVidew()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/features/gif/GifEditLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifEditLayout;->initVidew()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mRect:Landroid/graphics/Rect;

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mLastString:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifEditLayout;->initVidew()V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x42

    if-eq p0, p1, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x3d

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic access$000(Lcom/android/camera/features/gif/GifEditLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIsAllowInput:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mLastString:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/features/gif/GifEditLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mLastString:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->stringBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/features/gif/GifEditLayout;C)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifEditLayout;->isDoubleByte(C)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/features/gif/GifEditLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifEditLayout;->justShowBorder(Z)V

    return-void
.end method

.method private initEdit()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06034e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout;->tf:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVerticalScrollBarEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVerticalFadingEdgeEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06036d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mGifTextWatcher:Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;

    invoke-direct {v0, p0}, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;-><init>(Lcom/android/camera/features/gif/GifEditLayout;)V

    iput-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mGifTextWatcher:Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    iget-object v4, p0, Lcom/android/camera/features/gif/GifEditLayout;->mGifTextWatcher:Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    sget-object v4, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO00o/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO00o/OooO0O0;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 12
    new-instance v0, Lcom/android/camera/features/gif/GifEditLayout$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/gif/GifEditLayout$1;-><init>(Lcom/android/camera/features/gif/GifEditLayout;)V

    .line 13
    iget-object v4, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/text/InputFilter;

    aput-object v0, v6, v1

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    iget-object v2, p0, Lcom/android/camera/features/gif/GifEditLayout;->tf:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v2, 0x40400000    # 3.0f

    .line 18
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 19
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    const-string v2, "#1F1F1F"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 22
    iput-boolean v5, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIsShowBorder:Z

    .line 23
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->stringBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->stringBuilder:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initVidew()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0083

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01d1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvClear:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a018f

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvBorder:Landroid/widget/FrameLayout;

    const v1, 0x7f0a013b

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/gif/LimitInputEditText;

    iput-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    const v1, 0x7f0a013a

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/gif/AdaptiveEditText;

    iput-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->GIF_PRE_RES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fonts/FZMiaoWuJW.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getTypefaceFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->tf:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/GifEditLayout;->setIsAllowInput(Z)V

    .line 13
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifEditLayout;->initEdit()V

    return-void
.end method

.method private isDoubleByte(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x61

    if-lt p1, v1, :cond_0

    const/16 v1, 0x7a

    if-gt p1, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x41

    if-lt p1, v1, :cond_1

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_1

    return v0

    :cond_1
    const/16 v1, 0x30

    if-lt p1, v1, :cond_2

    const/16 v1, 0x39

    if-gt p1, v1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private isShowSoftButtonsBarHeight()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/features/gif/GifEditLayout;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    mul-int/lit8 v0, v0, 0x2

    .line 3
    div-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private justShowBorder(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIsShowBorder:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvBorder:Landroid/widget/FrameLayout;

    const v1, 0x7f0808d7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvClear:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIsShowBorder:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideBorder(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifEditLayout;->isShowSoftButtonsBarHeight()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIsShowBorder:Z

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvClear:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvBorder:Landroid/widget/FrameLayout;

    const v0, 0x7f06034e

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    return-void

    .line 8
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01d1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIsAllowInput:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a013b

    if-ne p1, p2, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifEditLayout;->showBorder()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setIsAllowInput(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIsAllowInput:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    return-void
.end method

.method public showBorder()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIsShowBorder:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    iput-boolean v2, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIsShowBorder:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvBorder:Landroid/widget/FrameLayout;

    const v3, 0x7f0808d7

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvClear:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return v2

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifEditLayout;->isShowSoftButtonsBarHeight()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return v1
.end method
