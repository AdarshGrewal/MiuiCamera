.class public Lcom/android/camera/dualvideo/render/MiscTextureManager;
.super Ljava/lang/Object;
.source "MiscTextureManager.java"


# static fields
.field public static final ROTATE_ANIM_GROUP:Ljava/lang/String; = "rotate_group"

.field public static final ROTATE_ANIM_TAG:Ljava/lang/String; = "rotate_tag"

.field public static final TAG:Ljava/lang/String; = "MiscTextureManager"

.field public static final TEX_BACK_BLUR:Ljava/lang/String; = "b_b"

.field public static final TEX_DARK_CORNER_BOTTOM:Ljava/lang/String; = "d_c_b"

.field public static final TEX_DARK_CORNER_BOTTOM_FLAT:Ljava/lang/String; = "d_c_b_f"

.field public static final TEX_DARK_CORNER_TOP:Ljava/lang/String; = "d_c_t"

.field public static final TEX_DARK_CORNER_TOP_FLAT:Ljava/lang/String; = "d_c_t_f"

.field public static final TEX_EXPAND:Ljava/lang/String; = "exp"

.field public static final TEX_FRONT_BLUR:Ljava/lang/String; = "f_b"

.field public static final TEX_REMOTE_BLUR:Ljava/lang/String; = "r_b"

.field public static final TEX_SELECTED_BG:Ljava/lang/String; = "s_bg"

.field public static final TEX_SELECTED_FIRST:Ljava/lang/String; = "s_1"

.field public static final TEX_SELECTED_FRAME:Ljava/lang/String; = "s_frame_s"

.field public static final TEX_SELECTED_FRAME_FLAT:Ljava/lang/String; = "s_frame_f"

.field public static final TEX_SELECTED_SECOND:Ljava/lang/String; = "s_2"

.field public static final TEX_SHRINK:Ljava/lang/String; = "shr"

.field public static final TEX_SWITCH_CAMERA:Ljava/lang/String; = "s_c"


# instance fields
.field public final ROTATE_ANIM_VALUE:Ljava/lang/String;

.field public final mAnimTexTransMatrix:[F

.field public mInited:Z

.field public final mMiscRenderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/render/MiscRenderItem;",
            ">;"
        }
    .end annotation
.end field

.field public mTexOrientation:I

.field public final mTexTransMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexTransMatrix:[F

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mAnimTexTransMatrix:[F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mInited:Z

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rotate_value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->ROTATE_ANIM_VALUE:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexTransMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mAnimTexTransMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/MiscRenderItem;)V
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/MiscRenderItem;->getBasicTexture()Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscRenderItem;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/MiscRenderItem;->getBasicTexture()Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/ui/BasicTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Lcom/android/camera/dualvideo/render/MiscRenderItem;)Z
    .locals 0

    .line 10
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/MiscRenderItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lcom/android/camera/dualvideo/render/MiscTextureManager;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mAnimTexTransMatrix:[F

    return-object p0
.end method

.method private animTexTransMatrix(II)V
    .locals 1

    sub-int/2addr p2, p1

    const/16 v0, -0xb4

    if-ge p2, v0, :cond_0

    add-int/lit16 p2, p2, 0x168

    goto :goto_0

    :cond_0
    const/16 v0, 0xb4

    if-gt p2, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit16 p2, p2, -0x168

    .line 1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->doRotation(II)V

    return-void
.end method

.method private declared-synchronized createTagTex(Landroid/content/res/Resources;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/Ooooooo;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/Ooooooo;-><init>(Lcom/android/camera/dualvideo/render/MiscTextureManager;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    const-string/jumbo v2, "remote"

    new-instance v3, Lcom/android/gallery3d/ui/BitmapTexture;

    const v4, 0x7f12081f

    .line 3
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, -0x1

    invoke-static {p1, v4}, Lcom/android/camera/dualvideo/render/RenderUtil;->textAsBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    invoke-direct {v1, v2, v3}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private doRotation(II)V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->ROTATE_ANIM_VALUE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const-string/jumbo v2, "rotate_group"

    .line 2
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-object v4, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->ROTATE_ANIM_VALUE:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    .line 5
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "rotate_tag"

    aput-object v5, v4, v3

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    const/16 v5, 0x3e8

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v6, v0, [F

    const/high16 v7, 0x43960000    # 300.0f

    aput v7, v6, v3

    const/4 v7, 0x6

    .line 8
    invoke-virtual {v5, v7, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    new-array v6, v3, [Lmiuix/animation/listener/TransitionListener;

    .line 9
    invoke-virtual {v5, v6}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/android/camera/dualvideo/render/MiscTextureManager$1;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/camera/dualvideo/render/MiscTextureManager$1;-><init>(Lcom/android/camera/dualvideo/render/MiscTextureManager;II)V

    aput-object v6, v0, v3

    .line 10
    invoke-virtual {v5, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v4, v2

    .line 11
    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/content/res/Resources;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V
    .locals 7

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTagTex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiscTextureManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p2, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mDescription:Ljava/lang/String;

    const-string v1, "front"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v5, Lcom/android/gallery3d/ui/BitmapTexture;

    const v6, 0x7f12081e

    .line 5
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/android/camera/dualvideo/render/RenderUtil;->textAsBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v5, p1, v3, v3}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    invoke-direct {v4, v1, v5}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    iget-object v1, p2, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mDescription:Ljava/lang/String;

    new-instance v4, Lcom/android/gallery3d/ui/BitmapTexture;

    iget-object p2, p2, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mDescription:Ljava/lang/String;

    .line 8
    invoke-static {p2, v2}, Lcom/android/camera/dualvideo/render/RenderUtil;->textAsBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v4, p2, v3, v3}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    invoke-direct {v0, v1, v4}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized gemAnimTexTransMatrix()[F
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mAnimTexTransMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOrGenBlurTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    .line 3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x17bc5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x18ac9

    if-eq v1, v2, :cond_2

    const v2, 0x1b7d5

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "r_b"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "f_b"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_3
    const-string v1, "b_b"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    const-string v0, "MiscTextureManager"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOrGenBlurTexture: wrong name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 5
    monitor-exit p0

    return-object p1

    .line 6
    :cond_5
    :try_start_2
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    sget-object v1, Lcom/android/camera/dualvideo/render/RenderUtil;->BLUR_SIZE:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sget-object v2, Lcom/android/camera/dualvideo/render/RenderUtil;->BLUR_SIZE:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    invoke-direct {v2, p1, v0}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTexOrientation()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTexTransMatrix()[F
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexTransMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o0OoOo0;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o0OoOo0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o000OoO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o000OoO;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/ui/BasicTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public init(Lcom/android/gallery3d/ui/GLCanvas;Landroid/content/res/Resources;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mInited:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->createTagTex(Landroid/content/res/Resources;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f080290

    .line 4
    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string/jumbo v3, "s_1"

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f080291

    .line 7
    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string/jumbo v3, "s_2"

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f080289

    .line 10
    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string v3, "d_c_t"

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f080287

    .line 13
    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string v3, "d_c_b"

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f08028a

    .line 16
    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string v3, "d_c_t_f"

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f080288

    .line 19
    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string v3, "d_c_b_f"

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f08028b

    .line 22
    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string v3, "exp"

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f08028c

    .line 25
    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string/jumbo v3, "shr"

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f080421

    .line 28
    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v2, p2, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string/jumbo p2, "s_c"

    invoke-direct {v1, p2, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object p2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v1, Lcom/android/gallery3d/ui/BitmapTexture;

    .line 31
    invoke-static {v4}, Lcom/android/camera/dualvideo/render/RenderUtil;->getSelectFrame(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string/jumbo v2, "s_frame_s"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 32
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object p2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v1, Lcom/android/gallery3d/ui/BitmapTexture;

    const/4 v2, 0x1

    .line 34
    invoke-static {v2}, Lcom/android/camera/dualvideo/render/RenderUtil;->getSelectFrame(Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string/jumbo v3, "s_frame_f"

    invoke-direct {v0, v3, v1}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 35
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v1, Lcom/android/gallery3d/ui/BitmapTexture;

    .line 37
    invoke-static {}, Lcom/android/camera/dualvideo/render/RenderUtil;->getSelectIndexBG()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string/jumbo v3, "s_bg"

    invoke-direct {v0, v3, v1}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 38
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object p2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/Oooooo;

    invoke-direct {v0, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/Oooooo;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 40
    iput-boolean v2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mInited:Z

    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OoooooO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OoooooO;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rotateTexTransMatrix([FI)V
    .locals 9

    monitor-enter p0

    if-nez p2, :cond_0

    .line 1
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {p1, v2, v1, v1, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v4, 0x0

    int-to-float v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p1

    .line 3
    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 p2, -0x41000000    # -0.5f

    .line 4
    invoke-static {p1, v2, p2, p2, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTexTransDegree(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->animTexTransMatrix(II)V

    .line 4
    iput p1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I

    .line 5
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexTransMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexTransMatrix:[F

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->rotateTexTransMatrix([FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
