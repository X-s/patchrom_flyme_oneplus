.class Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$6;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 650
    iput-object p1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$6;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 664
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 659
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 655
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment$6;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;

    invoke-static {v0, p1}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->-wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;Ljava/lang/CharSequence;)V

    .line 653
    return-void
.end method
