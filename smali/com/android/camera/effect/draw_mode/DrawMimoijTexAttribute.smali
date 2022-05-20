.class public Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawMimoijTexAttribute.java"


# instance fields
.field public mIsSnapshot:Z

.field public mRotation:I

.field public mTexId:I

.field public mTextureHeight:I

.field public mTextureWidth:I

.field public mViewHeight:I

.field public mViewWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    const/16 v0, 0xd

    .line 2
    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 4
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewWidth:I

    .line 5
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewHeight:I

    .line 6
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureWidth:I

    .line 7
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureHeight:I

    .line 8
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTexId:I

    const/16 p1, 0xd

    .line 9
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    .line 10
    iput-boolean p6, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mIsSnapshot:Z

    return-void
.end method


# virtual methods
.method public init(IIIIIZI)Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewWidth:I

    .line 2
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewHeight:I

    .line 3
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureWidth:I

    .line 4
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureHeight:I

    .line 5
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTexId:I

    const/16 p1, 0xd

    .line 6
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    .line 7
    iput-boolean p6, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mIsSnapshot:Z

    .line 8
    iput p7, p0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mRotation:I

    return-object p0
.end method
