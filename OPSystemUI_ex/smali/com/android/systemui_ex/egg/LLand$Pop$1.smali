.class Lcom/android/systemui_ex/egg/LLand$Pop$1;
.super Landroid/view/ViewOutlineProvider;
.source "LLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/egg/LLand$Pop;-><init>(Lcom/android/systemui_ex/egg/LLand;Landroid/content/Context;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui_ex/egg/LLand$Pop;

.field final synthetic val$this$0:Lcom/android/systemui_ex/egg/LLand;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/egg/LLand$Pop;Lcom/android/systemui_ex/egg/LLand;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/android/systemui_ex/egg/LLand$Pop$1;->this$1:Lcom/android/systemui_ex/egg/LLand$Pop;

    iput-object p2, p0, Lcom/android/systemui_ex/egg/LLand$Pop$1;->val$this$0:Lcom/android/systemui_ex/egg/LLand;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 871
    iget-object v1, p0, Lcom/android/systemui_ex/egg/LLand$Pop$1;->this$1:Lcom/android/systemui_ex/egg/LLand$Pop;

    invoke-virtual {v1}, Lcom/android/systemui_ex/egg/LLand$Pop;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 872
    .local v0, "pad":I
    iget-object v1, p0, Lcom/android/systemui_ex/egg/LLand$Pop$1;->this$1:Lcom/android/systemui_ex/egg/LLand$Pop;

    invoke-virtual {v1}, Lcom/android/systemui_ex/egg/LLand$Pop;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/systemui_ex/egg/LLand$Pop$1;->this$1:Lcom/android/systemui_ex/egg/LLand$Pop;

    invoke-virtual {v2}, Lcom/android/systemui_ex/egg/LLand$Pop;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 873
    return-void
.end method
