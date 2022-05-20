.class public final Lcom/android/camera/customization/ThemeResource;
.super Ljava/lang/Object;
.source "ThemeResource.java"


# static fields
.field public static volatile sInstance:Lcom/android/camera/customization/ThemeResource;


# instance fields
.field public final mAppContext:Landroid/content/Context;

.field public mSuffix:Ljava/lang/String;

.field public mTintSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/customization/ThemeResource;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method private appendSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getInstance()Lcom/android/camera/customization/ThemeResource;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/customization/ThemeResource;->sInstance:Lcom/android/camera/customization/ThemeResource;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/android/camera/customization/ThemeResource;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/customization/ThemeResource;->sInstance:Lcom/android/camera/customization/ThemeResource;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/android/camera/customization/ThemeResource;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/android/camera/customization/ThemeResource;->sInstance:Lcom/android/camera/customization/ThemeResource;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/android/camera/customization/ThemeResource;

    invoke-direct {v1, p0}, Lcom/android/camera/customization/ThemeResource;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/camera/customization/ThemeResource;->sInstance:Lcom/android/camera/customization/ThemeResource;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/customization/ThemeResource;->sInstance:Lcom/android/camera/customization/ThemeResource;

    return-object p0
.end method


# virtual methods
.method public getColor(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/customization/ThemeResource;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/customization/ThemeResource;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/customization/ThemeResource;->mSuffix:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/camera/customization/ThemeResource;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/android/camera/customization/ThemeResource;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    return p1
.end method

.method public getResId(IZ)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/customization/ThemeResource;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/customization/ThemeResource;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/customization/ThemeResource;->isFullScreen()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/android/camera/customization/ThemeResource;->mSuffix:Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/android/camera/customization/ThemeResource;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/android/camera/customization/ThemeResource;->mAppContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getShadowBackgroundResource(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/customization/ThemeResource;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method public getStyle(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/customization/ThemeResource;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/customization/ThemeResource;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/customization/ThemeResource;->mSuffix:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/camera/customization/ThemeResource;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/android/camera/customization/ThemeResource;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getTintResId(I)I
    .locals 4

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lcom/android/camera/customization/ThemeResource;->mTintSuffix:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/android/camera/customization/ThemeResource;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/customization/ThemeResource;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/android/camera/customization/ThemeResource;->mSuffix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/customization/TintColor;->getTintColor()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/customization/ThemeResource;->mTintSuffix:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/customization/ThemeResource;->mTintSuffix:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/camera/customization/ThemeResource;->appendSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/android/camera/customization/ThemeResource;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public initTheme(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/customization/ThemeResource;->mSuffix:Ljava/lang/String;

    return-void
.end method

.method public isFullScreen()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public setBackgroundColor(Landroid/view/View;II)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0, p3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 8
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_0

    .line 9
    :cond_2
    instance-of v1, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v1, :cond_3

    .line 10
    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {p0, p3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTint(I)V

    goto :goto_0

    .line 11
    :cond_3
    instance-of v1, v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v1, :cond_4

    .line 12
    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 13
    instance-of p2, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_5

    .line 14
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setBackgroundTintStroke(Landroid/view/View;II)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    iget-object v0, p0, Lcom/android/camera/customization/ThemeResource;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :goto_0
    return-void
.end method

.method public setTextShadowStyle(Landroid/widget/TextView;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isBold()Z

    move-result v1

    .line 3
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/camera/customization/ThemeResource;->getStyle(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    if-eqz v1, :cond_2

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_2
    return-void
.end method

.method public setVectorColor(Landroid/widget/ImageView;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
