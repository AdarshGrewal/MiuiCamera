.class public Lcom/miui/filtersdk/filter/base/GPUImageFilter$6;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/filtersdk/filter/base/GPUImageFilter;->setFloatArray(I[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

.field public final synthetic val$arrayValue:[F

.field public final synthetic val$location:I


# direct methods
.method public constructor <init>(Lcom/miui/filtersdk/filter/base/GPUImageFilter;I[F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$6;->this$0:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iput p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$6;->val$location:I

    iput-object p3, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$6;->val$arrayValue:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$6;->val$location:I

    iget-object v1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$6;->val$arrayValue:[F

    array-length v2, v1

    invoke-static {v1}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method
