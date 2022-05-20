.class public Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;
.super Ljava/lang/Object;
.source "SelectItemBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field public alpha:I

.field public curLength:F

.field public curTotalLength:F

.field public isSelect:Z

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->alpha:I

    return v0
.end method

.method public getCurLength()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->curLength:F

    return v0
.end method

.method public getCurTotalLength()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->curTotalLength:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->isSelect:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->alpha:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setCurLength(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->curLength:F

    return-void
.end method

.method public setCurTotalLength(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->curTotalLength:F

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->isSelect:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->text:Ljava/lang/String;

    return-void
.end method
