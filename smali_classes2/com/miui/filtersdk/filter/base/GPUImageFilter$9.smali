.class public Lcom/miui/filtersdk/filter/base/GPUImageFilter$9;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/filtersdk/filter/base/GPUImageFilter;->setUniformMatrix4f(I[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

.field public final synthetic val$location:I

.field public final synthetic val$matrix:[F


# direct methods
.method public constructor <init>(Lcom/miui/filtersdk/filter/base/GPUImageFilter;I[F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$9;->this$0:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iput p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$9;->val$location:I

    iput-object p3, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$9;->val$matrix:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$9;->val$location:I

    iget-object v1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$9;->val$matrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method
