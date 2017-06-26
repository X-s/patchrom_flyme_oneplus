.class Lcom/oneplus/settings/OPMasterClearConfirm$2;
.super Ljava/lang/Object;
.source "OPMasterClearConfirm.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPMasterClearConfirm;->establishFinalConfirmationState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPMasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPMasterClearConfirm;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/oneplus/settings/OPMasterClearConfirm$2;->this$0:Lcom/oneplus/settings/OPMasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 213
    iget-object v1, p0, Lcom/oneplus/settings/OPMasterClearConfirm$2;->this$0:Lcom/oneplus/settings/OPMasterClearConfirm;

    iget-object v0, p0, Lcom/oneplus/settings/OPMasterClearConfirm$2;->this$0:Lcom/oneplus/settings/OPMasterClearConfirm;

    # getter for: Lcom/oneplus/settings/OPMasterClearConfirm;->mEraseSDCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/oneplus/settings/OPMasterClearConfirm;->access$300(Lcom/oneplus/settings/OPMasterClearConfirm;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/oneplus/settings/OPMasterClearConfirm;->mEraseSdCard:Z
    invoke-static {v1, v0}, Lcom/oneplus/settings/OPMasterClearConfirm;->access$202(Lcom/oneplus/settings/OPMasterClearConfirm;Z)Z

    .line 215
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
