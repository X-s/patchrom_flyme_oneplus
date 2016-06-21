.class Lcom/android/systemui_ex/egg/LLand$Cloud;
.super Lcom/android/systemui_ex/egg/LLand$Scenery;
.source "LLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/egg/LLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cloud"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/egg/LLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/egg/LLand;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 970
    iput-object p1, p0, Lcom/android/systemui_ex/egg/LLand$Cloud;->this$0:Lcom/android/systemui_ex/egg/LLand;

    .line 971
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/egg/LLand$Scenery;-><init>(Lcom/android/systemui_ex/egg/LLand;Landroid/content/Context;)V

    .line 972
    invoke-static {}, Lcom/android/systemui_ex/egg/LLand;->frand()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const v0, 0x7f02004d

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/egg/LLand$Cloud;->setBackgroundResource(I)V

    .line 973
    invoke-virtual {p0}, Lcom/android/systemui_ex/egg/LLand$Cloud;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 974
    # getter for: Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;
    invoke-static {}, Lcom/android/systemui_ex/egg/LLand;->access$200()Lcom/android/systemui_ex/egg/LLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand$Params;->CLOUD_SIZE_MIN:I

    # getter for: Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;
    invoke-static {}, Lcom/android/systemui_ex/egg/LLand;->access$200()Lcom/android/systemui_ex/egg/LLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui_ex/egg/LLand$Params;->CLOUD_SIZE_MAX:I

    invoke-static {v0, v1}, Lcom/android/systemui_ex/egg/LLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Cloud;->h:I

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Cloud;->w:I

    .line 975
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Cloud;->z:F

    .line 976
    const v0, 0x3e19999a    # 0.15f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/android/systemui_ex/egg/LLand;->frand(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Cloud;->v:F

    .line 977
    return-void

    .line 972
    :cond_0
    const v0, 0x7f02004c

    goto :goto_0
.end method
