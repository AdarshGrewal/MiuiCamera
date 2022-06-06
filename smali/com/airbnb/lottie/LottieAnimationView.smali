.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$OooO0o;
    }
.end annotation


# static fields
.field public static final OooOOo:Ljava/lang/String;

.field public static final OooOOoo:LOooO0O0/OooO00o/OooO00o/OooOO0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOO0<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public OooO:Z

.field public final OooO00o:LOooO0O0/OooO00o/OooO00o/OooOO0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOO0<",
            "LOooO0O0/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOO0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOO0<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOO0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOO0<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0Oo:I

.field public OooO0o:Z

.field public final OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

.field public OooO0oO:Ljava/lang/String;

.field public OooO0oo:I

.field public OooOO0:Z

.field public OooOO0O:Z

.field public OooOO0o:Z

.field public OooOOO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LOooO0O0/OooO00o/OooO00o/OooOO0o;",
            ">;"
        }
    .end annotation
.end field

.field public OooOOO0:LOooO0O0/OooO00o/OooO00o/OooOOo;

.field public OooOOOO:I

.field public OooOOOo:LOooO0O0/OooO00o/OooO00o/OooOOOO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOOOO<",
            "LOooO0O0/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation
.end field

.field public OooOOo0:LOooO0O0/OooO00o/OooO00o/OooO0o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo:Ljava/lang/String;

    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$OooO00o;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieAnimationView$OooO00o;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOoo:LOooO0O0/OooO00o/OooO00o/OooOO0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0O0;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$OooO0O0;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOO0;

    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOO0;

    const/4 p1, 0x0

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0Oo:I

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-direct {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0O:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o:Z

    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOo;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO0:LOooO0O0/OooO00o/OooO00o/OooOOo;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO:Ljava/util/Set;

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0O0;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$OooO0O0;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOO0;

    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOO0;

    const/4 p1, 0x0

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0Oo:I

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-direct {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0O:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o:Z

    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOo;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO0:LOooO0O0/OooO00o/OooO00o/OooOOo;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO:Ljava/util/Set;

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO:I

    invoke-direct {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0O0;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$OooO0O0;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOO0;

    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOO0;

    const/4 p1, 0x0

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0Oo:I

    new-instance p3, LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-direct {p3}, LOooO0O0/OooO00o/OooO00o/OooO0oo;-><init>()V

    iput-object p3, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0O:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o:Z

    sget-object p3, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOo;

    iput-object p3, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO0:LOooO0O0/OooO00o/OooO00o/OooOOo;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO:Ljava/util/Set;

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO:I

    invoke-direct {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/airbnb/lottie/LottieAnimationView;)I
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0Oo:I

    return p0
.end method

.method private OooO00o(Landroid/util/AttributeSet;)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_cacheComposition:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o:Z

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    sget v3, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    sget v4, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v0, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    :cond_4
    :goto_1
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fallbackRes:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setFallbackResource(I)V

    :cond_5
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_autoPlay:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0O:Z

    :cond_6
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_loop:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, v3}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(I)V

    :cond_7
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    :cond_8
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    :cond_9
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_a

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    :cond_a
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_imageAssetsFolder:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_progress:I

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o(Z)V

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOOoo;

    sget v5, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-direct {v0, v5}, LOooO0O0/OooO00o/OooO00o/OooOOoo;-><init>(I)V

    new-instance v5, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;

    const-string v6, "**"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;-><init>([Ljava/lang/String;)V

    new-instance v6, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;

    invoke-direct {v6, v0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;-><init>(Ljava/lang/Object;)V

    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOOO0;->OooOoo:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v5, v0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    :cond_b
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_scale:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    sget v5, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_scale:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v3}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(F)V

    :cond_c
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_renderMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_renderMode:I

    sget-object v3, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOo;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {}, LOooO0O0/OooO00o/OooO00o/OooOOo;->values()[LOooO0O0/OooO00o/OooO00o/OooOOo;

    move-result-object v3

    array-length v3, v3

    if-lt v0, v3, :cond_d

    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOo;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :cond_d
    invoke-static {}, LOooO0O0/OooO00o/OooO00o/OooOOo;->values()[LOooO0O0/OooO00o/OooO00o/OooOOo;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(LOooO0O0/OooO00o/OooO00o/OooOOo;)V

    :cond_e
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-virtual {v0, v3}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Landroid/widget/ImageView$ScaleType;)V

    :cond_f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_10

    move v2, v1

    :cond_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0()V

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o:Z

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/airbnb/lottie/LottieAnimationView;)LOooO0O0/OooO00o/OooO00o/OooOO0;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOO0;

    return-object p0
.end method

.method public static synthetic OooOOO()LOooO0O0/OooO00o/OooO00o/OooOO0;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOoo:LOooO0O0/OooO00o/OooO00o/OooOO0;

    return-object v0
.end method

.method private OooOOOO()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOo:LOooO0O0/OooO00o/OooO00o/OooOOOO;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOO0;

    invoke-virtual {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0Oo(LOooO0O0/OooO00o/OooO00o/OooOO0;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOo:LOooO0O0/OooO00o/OooO00o/OooOOOO;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOO0;

    invoke-virtual {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0OO(LOooO0O0/OooO00o/OooO00o/OooOO0;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    :cond_0
    return-void
.end method

.method private OooOOOo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0:LOooO0O0/OooO00o/OooO00o/OooO0o;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0O0()V

    return-void
.end method

.method private OooOOo0()V
    .locals 5

    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView$OooO0o0;->OooO00o:[I

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO0:LOooO0O0/OooO00o/OooO00o/OooOOo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0:LOooO0O0/OooO00o/OooO00o/OooO0o;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o;->OooOOOO()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v0, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0:LOooO0O0/OooO00o/OooO00o/OooO0o;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o;->OooOO0O()I

    move-result v0

    const/4 v4, 0x4

    if-le v0, v4, :cond_3

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v0, v4, :cond_4

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    if-eqz v3, :cond_0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayerType()I

    move-result v0

    if-eq v1, v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method private setCompositionTask(LOooO0O0/OooO00o/OooO00o/OooOOOO;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOOOO<",
            "LOooO0O0/OooO00o/OooO00o/OooO0o;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOo()V

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOO0;

    invoke-virtual {p1, v0}, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0O0(LOooO0O0/OooO00o/OooO00o/OooOO0;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOO0;

    invoke-virtual {p1, v0}, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOO0;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOo:LOooO0O0/OooO00o/OooO00o/OooOOOO;

    return-void
.end method


# virtual methods
.method public OooO()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOoO()V

    return-void
.end method

.method public OooO00o(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            ")",
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public OooO00o()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o()V

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0()V

    return-void
.end method

.method public OooO00o(FF)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(FF)V

    return-void
.end method

.method public OooO00o(II)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(II)V

    return-void
.end method

.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            "TT;",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1, p2, p3}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    return-void
.end method

.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            "TT;",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0o<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0Oo;

    invoke-direct {v1, p0, p3}, Lcom/airbnb/lottie/LottieAnimationView$OooO0Oo;-><init>(Lcom/airbnb/lottie/LottieAnimationView;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0o;)V

    invoke-virtual {v0, p1, p2, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    return-void
.end method

.method public OooO00o(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public OooO00o(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public OooO00o(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO00o(Ljava/io/InputStream;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(LOooO0O0/OooO00o/OooO00o/OooOOOO;)V

    return-void
.end method

.method public OooO00o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public OooO00o(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1, p2, p3}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public OooO00o(Z)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Z)V

    return-void
.end method

.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOO0o;)Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0:LOooO0O0/OooO00o/OooO00o/OooO0o;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, LOooO0O0/OooO00o/OooO00o/OooOO0o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0o;)V

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public OooO0O0()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0OO()V

    return-void
.end method

.method public OooO0O0(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0O0(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public OooO0O0(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0O0(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public OooO0O0(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(I)V

    return-void
.end method

.method public OooO0O0(LOooO0O0/OooO00o/OooO00o/OooOO0o;)Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public OooO0OO()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOOo()Z

    move-result v0

    return v0
.end method

.method public OooO0Oo()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOOoo()Z

    move-result v0

    return v0
.end method

.method public OooO0o()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOo0o()Z

    move-result v0

    return v0
.end method

.method public OooO0o0()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOo00()Z

    move-result v0

    return v0
.end method

.method public OooO0oO()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0O:Z

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOo()V

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0()V

    return-void
.end method

.method public OooO0oo()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOoO0()V

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    :goto_0
    return-void
.end method

.method public OooOO0()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public OooOO0O()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOoOO()V

    return-void
.end method

.method public OooOO0o()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOoo0()V

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    :goto_0
    return-void
.end method

.method public OooOOO0()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOoo()V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 3

    const-string v0, "buildDrawingCache"

    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO:I

    invoke-super {p0, p1}, Landroid/widget/ImageView;->buildDrawingCache(Z)V

    iget v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayerType()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOOo;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(LOooO0O0/OooO00o/OooO00o/OooOOo;)V

    :cond_0
    iget p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO:I

    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method public getComposition()LOooO0O0/OooO00o/OooO00o/OooO0o;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0:LOooO0O0/OooO00o/OooO00o/OooO0o;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0:LOooO0O0/OooO00o/OooO00o/OooO0o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o;->OooO0OO()F

    move-result v0

    float-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getFrame()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0oO()I

    move-result v0

    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0oo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxFrame()F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO()F

    move-result v0

    return v0
.end method

.method public getMinFrame()F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOO0()F

    move-result v0

    return v0
.end method

.method public getPerformanceTracker()LOooO0O0/OooO00o/OooO00o/OooOOo0;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOO0O()LOooO0O0/OooO00o/OooO00o/OooOOo0;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOO0o()F

    move-result v0

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOOO0()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOOO()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOOOO()F

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOOOo()F

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-ne v0, v1, :cond_0

    invoke-super {p0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0O:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0O:Z

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO00o:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oO:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_1
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0O0:I

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo:I

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    :cond_2
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0OO:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-boolean v0, p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0Oo:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    iget-object v1, p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0o0:Ljava/lang/String;

    invoke-virtual {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0O0(Ljava/lang/String;)V

    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0o:I

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    iget p1, p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0oO:I

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oO:Ljava/lang/String;

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO00o:Ljava/lang/String;

    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo:I

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0O0:I

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOO0o()F

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0OO:F

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOo00()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0Oo:Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0oo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0o0:Ljava/lang/String;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOOO()I

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0o:I

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOOO0()I

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0oO:I

    return-object v1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oO()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setAnimation(I)V
    .locals 2

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oO:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO00o(Landroid/content/Context;I)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO00o(Landroid/content/Context;ILjava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(LOooO0O0/OooO00o/OooO00o/OooOOOO;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oO:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo:I

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO00o(Landroid/content/Context;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(LOooO0O0/OooO00o/OooO00o/OooOOOO;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(LOooO0O0/OooO00o/OooO00o/OooOOOO;)V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0OO(Z)V

    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOO0o:Z

    return-void
.end method

.method public setComposition(LOooO0O0/OooO00o/OooO00o/OooO0o;)V
    .locals 3

    sget-boolean v0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO00o:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Composition \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0:LOooO0O0/OooO00o/OooO00o/OooO0o;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0o;)Z

    move-result v0

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0O0/OooO00o/OooO00o/OooOO0o;

    invoke-interface {v1, p1}, LOooO0O0/OooO00o/OooO00o/OooOO0o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0o;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFailureListener(LOooO0O0/OooO00o/OooO00o/OooOO0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOO0<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOO0;

    return-void
.end method

.method public setFallbackResource(I)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0Oo:I

    return-void
.end method

.method public setFontAssetDelegate(LOooO0O0/OooO00o/OooO00o/OooO0OO;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0OO;)V

    return-void
.end method

.method public setFrame(I)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(I)V

    return-void
.end method

.method public setImageAssetDelegate(LOooO0O0/OooO00o/OooO00o/OooO0Oo;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0Oo;)V

    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0O0(Ljava/lang/String;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOOO()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0O0(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0OO(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(F)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(Ljava/lang/String;)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0OO(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0o0(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0O0(F)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(Z)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0OO(F)V

    return-void
.end method

.method public setRenderMode(LOooO0O0/OooO00o/OooO00o/OooOOo;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO0:LOooO0O0/OooO00o/OooO00o/OooOOo;

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOo0()V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0o0(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0o0(Z)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(F)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0o0(F)V

    return-void
.end method

.method public setTextDelegate(LOooO0O0/OooO00o/OooO00o/OooOo00;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo00;)V

    return-void
.end method
