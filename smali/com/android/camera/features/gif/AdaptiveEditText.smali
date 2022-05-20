.class public Lcom/android/camera/features/gif/AdaptiveEditText;
.super Landroid/widget/EditText;
.source "AdaptiveEditText.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mMaxFontScale:F

.field public mRealFontScale:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/gif/AdaptiveEditText;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mMaxFontScale:F

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mRealFontScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mMaxFontScale:F

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mRealFontScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mMaxFontScale:F

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mRealFontScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mMaxFontScale:F

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mRealFontScale:F

    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 3
    iget p2, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mMaxFontScale:F

    cmpl-float p2, p1, p2

    if-lez p2, :cond_1

    .line 4
    iget p2, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mRealFontScale:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result p2

    iget v0, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mMaxFontScale:F

    div-float/2addr v0, p1

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mRealFontScale:F

    :cond_0
    const/4 p1, 0x0

    .line 6
    iget p2, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mRealFontScale:F

    invoke-virtual {p0, p1, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 7
    sget-object p1, Lcom/android/camera/features/gif/AdaptiveEditText;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setText:  mMaxFontScale :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mMaxFontScale:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "   mRealFontScale : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mRealFontScale:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setmMaxFontScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mMaxFontScale:F

    return-void
.end method
