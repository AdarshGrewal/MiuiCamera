.class public final Lnet/majorkernelpanic/streaming/hw/EncoderDebugger$1;
.super Ljava/lang/Object;
.source "EncoderDebugger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;->asyncDebug(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$height:I

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger$1;->val$width:I

    iput p3, p0, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    iget v1, p0, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger$1;->val$width:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger$1;->val$height:I

    invoke-static {v0, v1, v2}, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;->debug(Landroid/content/SharedPreferences;II)Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
