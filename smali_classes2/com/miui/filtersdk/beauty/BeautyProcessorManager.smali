.class public Lcom/miui/filtersdk/beauty/BeautyProcessorManager;
.super Ljava/lang/Object;
.source "BeautyProcessorManager.java"


# static fields
.field public static final INSTANCE:Lcom/miui/filtersdk/beauty/BeautyProcessorManager;


# instance fields
.field public mBeautyProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;

    invoke-direct {v0}, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;-><init>()V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->INSTANCE:Lcom/miui/filtersdk/beauty/BeautyProcessorManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeautyProcessor()Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;

    invoke-direct {v0}, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;-><init>()V

    return-object v0
.end method

.method public needPreviewCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
