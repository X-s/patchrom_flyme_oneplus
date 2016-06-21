.class Lcom/android/systemui_ex/egg/LLand$Star;
.super Lcom/android/systemui_ex/egg/LLand$Scenery;
.source "LLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/egg/LLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Star"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/egg/LLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/egg/LLand;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 981
    iput-object p1, p0, Lcom/android/systemui_ex/egg/LLand$Star;->this$0:Lcom/android/systemui_ex/egg/LLand;

    .line 982
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/egg/LLand$Scenery;-><init>(Lcom/android/systemui_ex/egg/LLand;Landroid/content/Context;)V

    .line 983
    const v0, 0x7f020208

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/egg/LLand$Star;->setBackgroundResource(I)V

    .line 984
    # getter for: Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;
    invoke-static {}, Lcom/android/systemui_ex/egg/LLand;->access$200()Lcom/android/systemui_ex/egg/LLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand$Params;->STAR_SIZE_MIN:I

    # getter for: Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;
    invoke-static {}, Lcom/android/systemui_ex/egg/LLand;->access$200()Lcom/android/systemui_ex/egg/LLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui_ex/egg/LLand$Params;->STAR_SIZE_MAX:I

    invoke-static {v0, v1}, Lcom/android/systemui_ex/egg/LLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Star;->h:I

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Star;->w:I

    .line 985
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Star;->z:F

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand$Star;->v:F

    .line 986
    return-void
.end method
