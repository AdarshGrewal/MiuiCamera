.class public final Lmiuix/animation/physics/FlingAnimation;
.super Lmiuix/animation/physics/DynamicAnimation;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/physics/FlingAnimation$DragForce;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/physics/DynamicAnimation<",
        "Lmiuix/animation/physics/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field public final mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lmiuix/animation/property/FloatProperty<",
            "TK;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    .line 5
    new-instance p1, Lmiuix/animation/physics/FlingAnimation$DragForce;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;-><init>(Lmiuix/animation/physics/FlingAnimation$1;)V

    iput-object p1, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getValueThreshold()F

    move-result p2

    invoke-virtual {p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/property/FloatValueHolder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Lmiuix/animation/property/FloatValueHolder;)V

    .line 2
    new-instance p1, Lmiuix/animation/physics/FlingAnimation$DragForce;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lmiuix/animation/physics/FlingAnimation$DragForce;-><init>(Lmiuix/animation/physics/FlingAnimation$1;)V

    iput-object p1, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 3
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getValueThreshold()F

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method


# virtual methods
.method public getAcceleration(FF)F
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;->getAcceleration(FF)F

    move-result p1

    return p1
.end method

.method public getFriction()F
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {v0}, Lmiuix/animation/physics/FlingAnimation$DragForce;->getFrictionScalar()F

    move-result v0

    return v0
.end method

.method public isAtEquilibrium(FF)Z
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 2
    invoke-virtual {v0, p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setFriction(F)Lmiuix/animation/physics/FlingAnimation;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lmiuix/animation/physics/FlingAnimation$DragForce;->setFrictionScalar(F)V

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Friction must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setMaxValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/FlingAnimation;->setMaxValue(F)Lmiuix/animation/physics/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMaxValue(F)Lmiuix/animation/physics/FlingAnimation;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setMaxValue(F)Lmiuix/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setMinValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/FlingAnimation;->setMinValue(F)Lmiuix/animation/physics/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMinValue(F)Lmiuix/animation/physics/FlingAnimation;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setMinValue(F)Lmiuix/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/FlingAnimation;->setStartVelocity(F)Lmiuix/animation/physics/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartVelocity(F)Lmiuix/animation/physics/FlingAnimation;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method public setValueThreshold(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lmiuix/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method public updateValueAndVelocity(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    iget v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    iget v2, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v2, p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;->updateValueAndVelocity(FFJ)Lmiuix/animation/physics/DynamicAnimation$MassState;

    move-result-object p1

    .line 2
    iget p2, p1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    iput p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 3
    iget p1, p1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 4
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    cmpg-float v1, p2, v0

    const/4 v2, 0x1

    if-gez v1, :cond_0

    .line 5
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    return v2

    .line 6
    :cond_0
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    .line 7
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    return v2

    .line 8
    :cond_1
    invoke-virtual {p0, p2, p1}, Lmiuix/animation/physics/FlingAnimation;->isAtEquilibrium(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
