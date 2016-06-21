.class Lcom/android/systemui_ex/screenshot/GlobalScreenshot$5;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 614
    const v0, 0x3e9aca6b

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 615
    const/4 v0, 0x0

    .line 617
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f1aca6b

    sub-float v0, p1, v0

    const v1, 0x3eca6b2a

    div-float/2addr v0, v1

    goto :goto_0
.end method
