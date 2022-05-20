.class public Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$1;
.super Lmiuix/animation/property/FloatProperty;
.source "SeekBaThumbShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/FloatProperty<",
        "Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$1;->this$0:Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;

    invoke-direct {p0, p2}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$1;->getValue(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;)F

    move-result p1

    return p1
.end method

.method public getValue(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;)F
    .locals 0

    .line 2
    invoke-virtual {p1}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->getShadowAlpha()F

    move-result p1

    return p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;

    invoke-virtual {p0, p1, p2}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$1;->setValue(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;F)V

    return-void
.end method

.method public setValue(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    move p2, v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_1

    move p2, v0

    .line 2
    :cond_1
    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->setShadowAlpha(F)V

    return-void
.end method
