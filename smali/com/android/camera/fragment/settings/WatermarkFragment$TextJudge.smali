.class public Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;
.super Ljava/lang/Object;
.source "WatermarkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/settings/WatermarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextJudge"
.end annotation


# instance fields
.field public isOverLimit:Z

.field public legalString:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
