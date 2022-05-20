.class public Lmiuix/animation/controller/FolmeFont;
.super Lmiuix/animation/controller/FolmeBase;
.source "FolmeFont.java"

# interfaces
.implements Lmiuix/animation/IVarFontStyle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/controller/FolmeFont$FontType;
    }
.end annotation


# instance fields
.field public mDefaultTo:Lmiuix/animation/base/AnimConfig;

.field public mInitValue:I

.field public mIsInitSet:Z

.field public mProperty:Lmiuix/animation/font/FontWeightProperty;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Lmiuix/animation/IAnimTarget;

    .line 1
    invoke-direct {p0, v1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 2
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v1, p0, Lmiuix/animation/controller/FolmeFont;->mDefaultTo:Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 3
    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    return-void

    nop

    :array_0
    .array-data 4
        0x43af0000    # 350.0f
        0x3f666666    # 0.9f
        0x3f5c28f6    # 0.86f
    .end array-data
.end method


# virtual methods
.method public clean()V
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->clean()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    iput-object v0, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lmiuix/animation/controller/FolmeFont;->mInitValue:I

    return-void
.end method

.method public varargs fromTo(II[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IVarFontStyle;
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    int-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 3
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/controller/FolmeFont$FontType;->TARGET:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {p1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    int-to-double v1, p2

    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 4
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object p2, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    sget-object v0, Lmiuix/animation/controller/FolmeFont$FontType;->TARGET:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {p1, p2, v0, p3}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_0
    return-object p0
.end method

.method public setTo(I)Lmiuix/animation/IVarFontStyle;
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lmiuix/animation/controller/FolmeFont$FontType;->TARGET:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    int-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 3
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/controller/FolmeFont$FontType;->TARGET:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_0
    return-object p0
.end method

.method public varargs to(I[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IVarFontStyle;
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, p0, Lmiuix/animation/controller/FolmeFont;->mIsInitSet:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    iput-boolean v2, p0, Lmiuix/animation/controller/FolmeFont;->mIsInitSet:Z

    .line 4
    sget-object v1, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_0
    new-array v0, v2, [Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lmiuix/animation/controller/FolmeFont;->mDefaultTo:Lmiuix/animation/base/AnimConfig;

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lmiuix/animation/base/AnimConfig;

    .line 6
    iget v0, p0, Lmiuix/animation/controller/FolmeFont;->mInitValue:I

    if-ne v0, p1, :cond_1

    .line 7
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {p1, v0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/controller/FolmeFont$FontType;->TARGET:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    int-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 9
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/controller/FolmeFont$FontType;->TARGET:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {p1, v0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public useAt(Landroid/widget/TextView;II)Lmiuix/animation/IVarFontStyle;
    .locals 2

    .line 1
    new-instance v0, Lmiuix/animation/controller/FolmeState;

    sget-object v1, Lmiuix/animation/ViewTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    invoke-static {p1, v1}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeState;-><init>(Lmiuix/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    new-instance v0, Lmiuix/animation/font/FontWeightProperty;

    invoke-direct {v0, p1, p2}, Lmiuix/animation/font/FontWeightProperty;-><init>(Landroid/widget/TextView;I)V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    .line 3
    iput p3, p0, Lmiuix/animation/controller/FolmeFont;->mInitValue:I

    .line 4
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object p2, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {p1, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iget-object p2, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    int-to-double v0, p3

    invoke-virtual {p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeFont;->mIsInitSet:Z

    return-object p0
.end method
