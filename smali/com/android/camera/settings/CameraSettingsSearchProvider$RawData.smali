.class public Lcom/android/camera/settings/CameraSettingsSearchProvider$RawData;
.super Ljava/lang/Object;
.source "CameraSettingsSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/CameraSettingsSearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RawData"
.end annotation


# instance fields
.field public extras:Ljava/lang/String;

.field public intentAction:Ljava/lang/String;

.field public intentTargetClass:Ljava/lang/String;

.field public intentTargetPackage:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/camera/settings/CameraSettingsSearchProvider;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/settings/CameraSettingsSearchProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/settings/CameraSettingsSearchProvider$RawData;->this$0:Lcom/android/camera/settings/CameraSettingsSearchProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/settings/CameraSettingsSearchProvider$RawData;->title:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/android/camera/settings/CameraSettingsSearchProvider$RawData;->intentAction:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/android/camera/settings/CameraSettingsSearchProvider$RawData;->intentTargetPackage:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/android/camera/settings/CameraSettingsSearchProvider$RawData;->intentTargetClass:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/android/camera/settings/CameraSettingsSearchProvider$RawData;->extras:Ljava/lang/String;

    return-void
.end method
