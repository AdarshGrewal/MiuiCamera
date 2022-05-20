.class public Lcom/miui/extravideo/interpolation/InterpolatorJNI$TypicalMotion;
.super Ljava/lang/Object;
.source "InterpolatorJNI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extravideo/interpolation/InterpolatorJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypicalMotion"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/extravideo/interpolation/InterpolatorJNI;

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(Lcom/miui/extravideo/interpolation/InterpolatorJNI;)V
    .locals 2

    .line 4
    iput-object p1, p0, Lcom/miui/extravideo/interpolation/InterpolatorJNI$TypicalMotion;->this$0:Lcom/miui/extravideo/interpolation/InterpolatorJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/miui/extravideo/interpolation/InterpolatorJNI$TypicalMotion;->x:D

    .line 6
    iput-wide v0, p0, Lcom/miui/extravideo/interpolation/InterpolatorJNI$TypicalMotion;->y:D

    return-void
.end method

.method public constructor <init>(Lcom/miui/extravideo/interpolation/InterpolatorJNI;DD)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/extravideo/interpolation/InterpolatorJNI$TypicalMotion;->this$0:Lcom/miui/extravideo/interpolation/InterpolatorJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lcom/miui/extravideo/interpolation/InterpolatorJNI$TypicalMotion;->x:D

    .line 3
    iput-wide p4, p0, Lcom/miui/extravideo/interpolation/InterpolatorJNI$TypicalMotion;->y:D

    return-void
.end method
