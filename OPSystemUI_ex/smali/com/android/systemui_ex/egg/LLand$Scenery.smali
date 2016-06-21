.class Lcom/android/systemui_ex/egg/LLand$Scenery;
.super Landroid/widget/FrameLayout;
.source "LLand.java"

# interfaces
.implements Lcom/android/systemui_ex/egg/LLand$GameView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/egg/LLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scenery"
.end annotation


# instance fields
.field public h:I

.field final synthetic this$0:Lcom/android/systemui_ex/egg/LLand;

.field public v:F

.field public w:I

.field public z:F


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/egg/LLand;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 948
    iput-object p1, p0, Lcom/android/systemui_ex/egg/LLand$Scenery;->this$0:Lcom/android/systemui_ex/egg/LLand;

    .line 949
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 950
    return-void
.end method


# virtual methods
.method public step(JJFF)V
    .locals 3
    .param p1, "t_ms"    # J
    .param p3, "dt_ms"    # J
    .param p5, "t"    # F
    .param p6, "dt"    # F

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/android/systemui_ex/egg/LLand$Scenery;->getTranslationX()F

    move-result v0

    # getter for: Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;
    invoke-static {}, Lcom/android/systemui_ex/egg/LLand;->access$200()Lcom/android/systemui_ex/egg/LLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui_ex/egg/LLand$Params;->TRANSLATION_PER_SEC:F

    mul-float/2addr v1, p6

    iget v2, p0, Lcom/android/systemui_ex/egg/LLand$Scenery;->v:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/egg/LLand$Scenery;->setTranslationX(F)V

    .line 955
    return-void
.end method
