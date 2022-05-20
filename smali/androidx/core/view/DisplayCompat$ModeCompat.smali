.class public final Landroidx/core/view/DisplayCompat$ModeCompat;
.super Ljava/lang/Object;
.source "DisplayCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModeCompat"
.end annotation


# instance fields
.field public final mIsNative:Z

.field public final mMode:Landroid/view/Display$Mode;

.field public final mPhysicalDisplaySize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "physicalDisplaySize == null"

    .line 2
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    .line 4
    iput-object p1, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalDisplaySize:Landroid/graphics/Point;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    return-void
.end method

.method public constructor <init>(Landroid/view/Display$Mode;Z)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Display.Mode == null, can\'t wrap a null reference"

    .line 7
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-boolean p2, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    .line 9
    new-instance p2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalDisplaySize:Landroid/graphics/Point;

    .line 10
    iput-object p1, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    return-void
.end method


# virtual methods
.method public getPhysicalHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getPhysicalWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public isNative()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    return v0
.end method

.method public toMode()Landroid/view/Display$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    return-object v0
.end method
