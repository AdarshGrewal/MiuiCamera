.class public Lcom/miui/filtersdk/filter/YUVBeautyFilter$1;
.super Ljava/lang/Object;
.source "YUVBeautyFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/filtersdk/filter/YUVBeautyFilter;->genYUVTextures([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/filtersdk/filter/YUVBeautyFilter;

.field public final synthetic val$height:I

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/miui/filtersdk/filter/YUVBeautyFilter;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/filtersdk/filter/YUVBeautyFilter$1;->this$0:Lcom/miui/filtersdk/filter/YUVBeautyFilter;

    iput p2, p0, Lcom/miui/filtersdk/filter/YUVBeautyFilter$1;->val$width:I

    iput p3, p0, Lcom/miui/filtersdk/filter/YUVBeautyFilter$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/filtersdk/filter/YUVBeautyFilter$1;->this$0:Lcom/miui/filtersdk/filter/YUVBeautyFilter;

    invoke-static {v0}, Lcom/miui/filtersdk/filter/YUVBeautyFilter;->access$000(Lcom/miui/filtersdk/filter/YUVBeautyFilter;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/filtersdk/filter/YUVBeautyFilter$1;->this$0:Lcom/miui/filtersdk/filter/YUVBeautyFilter;

    invoke-static {v1}, Lcom/miui/filtersdk/filter/YUVBeautyFilter;->access$100(Lcom/miui/filtersdk/filter/YUVBeautyFilter;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/miui/filtersdk/filter/YUVBeautyFilter$1;->val$width:I

    iget v3, p0, Lcom/miui/filtersdk/filter/YUVBeautyFilter$1;->val$height:I

    iget-object v4, p0, Lcom/miui/filtersdk/filter/YUVBeautyFilter$1;->this$0:Lcom/miui/filtersdk/filter/YUVBeautyFilter;

    invoke-static {v4}, Lcom/miui/filtersdk/filter/YUVBeautyFilter;->access$200(Lcom/miui/filtersdk/filter/YUVBeautyFilter;)[I

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/filtersdk/utils/OpenGlUtils;->loadYuvToTextures(Ljava/nio/Buffer;Ljava/nio/Buffer;II[I)V

    return-void
.end method
