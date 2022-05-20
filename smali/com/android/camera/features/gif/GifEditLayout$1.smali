.class public Lcom/android/camera/features/gif/GifEditLayout$1;
.super Ljava/lang/Object;
.source "GifEditLayout.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/gif/GifEditLayout;->initEdit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public pattern:Ljava/util/regex/Pattern;

.field public final synthetic this$0:Lcom/android/camera/features/gif/GifEditLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/gif/GifEditLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$1;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "[^a-zA-Z0-9\\u4E00-\\u9FA5_,.?!:;\u2026~_\\-\"\"/@*+\'()<>{}/[/]()<>{}\\[\\]=%&$|\\/\u2640\u2642#\u00a5\u00a3\u00a2\u20ac\"^` \uff0c\u3002\uff1f\uff01\uff1a\uff1b\u2026\u2026\uff5e\u201c\u201d\u3001\u201c\uff08\uff09\u201d\u3001\uff08\u2014\u2014\uff09\u2018\u2019\uff20\u2018\u00b7\u2019\uff06\uff0a\uff03\u300a\u300b\uffe5\u300a\u3008\u3009\u300b\u3008\uff04\u3009\uff3b\uff3d\uffe1\uff3b\uff3d\uff5b\uff5d\uff5b\uff5d\uffe0\u3010\u3011\u3010\u3011\uff05\u3016\u3017\u3016\u3017\uff0f\u3014\u3015\u3014\u3015\uff3c\u300e\u300f\u300e\u300f\uff3e\u300c\u300d\u300c\u300d\uff5c\ufe41\ufe42\uff40\uff0e\n]"

    .line 2
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$1;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/camera/features/gif/GifEditLayout$1;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Lcom/android/camera/features/gif/GifEditLayout;->TAG:Ljava/lang/String;

    const-string p2, "filter: Illegal input"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method
