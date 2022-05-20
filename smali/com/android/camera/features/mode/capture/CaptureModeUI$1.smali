.class public Lcom/android/camera/features/mode/capture/CaptureModeUI$1;
.super Ljava/lang/Object;
.source "CaptureModeUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mode/capture/CaptureModeUI;->lambda$getBeautyModeUpdater$1366(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mode/capture/CaptureModeUI;

.field public final synthetic val$beautyModeSwitchButton:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

.field public final synthetic val$configItem:I


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mode/capture/CaptureModeUI;Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mode/capture/CaptureModeUI$1;->this$0:Lcom/android/camera/features/mode/capture/CaptureModeUI;

    iput-object p2, p0, Lcom/android/camera/features/mode/capture/CaptureModeUI$1;->val$beautyModeSwitchButton:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    iput p3, p0, Lcom/android/camera/features/mode/capture/CaptureModeUI$1;->val$configItem:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/mode/capture/CaptureModeUI$1;->this$0:Lcom/android/camera/features/mode/capture/CaptureModeUI;

    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModeUI$1;->val$beautyModeSwitchButton:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    iget v1, p0, Lcom/android/camera/features/mode/capture/CaptureModeUI$1;->val$configItem:I

    const/4 v2, 0x0

    const-string v3, "female"

    invoke-static {p1, v0, v2, v1, v3}, Lcom/android/camera/features/mode/capture/CaptureModeUI;->access$000(Lcom/android/camera/features/mode/capture/CaptureModeUI;Lcom/android/camera/ui/TopAlertSlideSwitchButton;IILjava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "attr_operate_state"

    const-string v1, "attr_beauty_mode_female"

    .line 3
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_beauty_click"

    .line 4
    invoke-static {v0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
