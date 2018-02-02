.class Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$3;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$3;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$3;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;

    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->-get2(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$3;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;

    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->-get2(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 474
    return-void

    .line 476
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
