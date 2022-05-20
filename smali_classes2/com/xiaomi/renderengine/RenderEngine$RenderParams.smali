.class public Lcom/xiaomi/renderengine/RenderEngine$RenderParams;
.super Ljava/lang/Object;
.source "RenderEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/renderengine/RenderEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderParams"
.end annotation


# instance fields
.field public mDrawRect:Landroid/graphics/Rect;

.field public mEngine:Lcom/xiaomi/renderengine/RenderEngine;

.field public mFboIn:I

.field public mFboOut:I

.field public mGLState:Lcom/xiaomi/renderengine/GLState;

.field public mHeight:I

.field public mIsFinal:Z

.field public mOesTex:I

.field public mTexIn:I

.field public mTexOut:I

.field public mTexTrans:[F

.field public mWidth:I

.field public final synthetic this$0:Lcom/xiaomi/renderengine/RenderEngine;


# direct methods
.method public constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;IIIIIII[FLandroid/graphics/Rect;ZLcom/xiaomi/renderengine/GLState;Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mOesTex:I

    .line 3
    iput p3, p0, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTexIn:I

    .line 4
    iput p4, p0, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTexOut:I

    .line 5
    iput p5, p0, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFboIn:I

    .line 6
    iput p6, p0, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFboOut:I

    .line 7
    iput p7, p0, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    .line 8
    iput p8, p0, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    .line 9
    iput-object p9, p0, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTexTrans:[F

    .line 10
    iput-object p10, p0, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mDrawRect:Landroid/graphics/Rect;

    .line 11
    iput-boolean p11, p0, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mIsFinal:Z

    .line 12
    iput-object p12, p0, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/GLState;

    .line 13
    iput-object p13, p0, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mEngine:Lcom/xiaomi/renderengine/RenderEngine;

    return-void
.end method
