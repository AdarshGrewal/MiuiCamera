.class public Lmiuix/animation/font/FontWeightProperty;
.super Lmiuix/animation/property/ViewProperty;
.source "FontWeightProperty.java"

# interfaces
.implements Lmiuix/animation/property/ISpecificProperty;


# static fields
.field public static final NAME:Ljava/lang/String; = "fontweight"


# instance fields
.field public mCurWeight:F

.field public mFontType:I

.field public mTextViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;I)V
    .locals 1

    const-string v0, "fontweight"

    .line 1
    invoke-direct {p0, v0}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;)V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 2
    iput v0, p0, Lmiuix/animation/font/FontWeightProperty;->mCurWeight:F

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 4
    iput p2, p0, Lmiuix/animation/font/FontWeightProperty;->mFontType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lmiuix/animation/font/FontWeightProperty;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 3
    :cond_2
    check-cast p1, Lmiuix/animation/font/FontWeightProperty;

    .line 4
    iget-object v2, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 5
    iget-object p1, p1, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getScaledTextSize()F
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSpecificValue(F)F
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    sget v1, Lmiuix/animation/font/VarFontUtils;->MIN_WGHT:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/font/VarFontUtils;->getSysFontScale(Landroid/content/Context;)I

    move-result v0

    float-to-int p1, p1

    .line 4
    invoke-virtual {p0}, Lmiuix/animation/font/FontWeightProperty;->getScaledTextSize()F

    move-result v1

    iget v2, p0, Lmiuix/animation/font/FontWeightProperty;->mFontType:I

    invoke-static {p1, v1, v2, v0}, Lmiuix/animation/font/VarFontUtils;->getScaleWght(IFII)I

    move-result p1

    int-to-float p1, p1

    :cond_0
    return p1
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getValue(Landroid/view/View;)F
    .locals 0

    .line 2
    iget p1, p0, Lmiuix/animation/font/FontWeightProperty;->mCurWeight:F

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/animation/font/FontWeightProperty;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    new-array v3, v3, [Ljava/lang/Object;

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object v0, v3, v1

    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 3
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 0

    .line 2
    iput p2, p0, Lmiuix/animation/font/FontWeightProperty;->mCurWeight:F

    .line 3
    iget-object p1, p0, Lmiuix/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    float-to-int p2, p2

    .line 4
    invoke-static {p1, p2}, Lmiuix/animation/font/VarFontUtils;->setVariationFont(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/font/FontWeightProperty;->setValue(Landroid/view/View;F)V

    return-void
.end method
