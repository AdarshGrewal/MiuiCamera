.class public Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$SeekBaThumbShapeDrawableState;
.super Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;
.source "SeekBaThumbShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeekBaThumbShapeDrawableState"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;-><init>()V

    return-void
.end method


# virtual methods
.method public newSeekBarGradientDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;

    invoke-direct {v0, p1, p2, p3}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V

    return-object v0
.end method
