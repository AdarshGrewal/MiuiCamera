.class public abstract Lcom/android/camera/FuncPreviewMetadata;
.super Ljava/lang/Object;
.source "FuncPreviewMetadata.java"

# interfaces
.implements Lcom/android/camera/IFuncPreviewMetadataListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/IFuncPreviewMetadataListener<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final mModuleReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/FuncPreviewMetadata;->mModuleReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lcom/android/camera/IPreviewMetadataListener;->onPreviewMetadata(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSamplePeriod()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final onSamplePreviewMetadata(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
