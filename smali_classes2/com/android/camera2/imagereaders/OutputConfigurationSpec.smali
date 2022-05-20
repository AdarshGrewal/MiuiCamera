.class public Lcom/android/camera2/imagereaders/OutputConfigurationSpec;
.super Ljava/lang/Object;
.source "OutputConfigurationSpec.java"


# instance fields
.field public mConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

.field public mKey:I


# direct methods
.method public constructor <init>(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;->mKey:I

    .line 3
    iput-object p2, p0, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;->mConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    return-void
.end method


# virtual methods
.method public getConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;->mConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    return-object v0
.end method

.method public getKey()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;->mKey:I

    return v0
.end method
