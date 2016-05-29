.class Lcom/android/settings_ex/MasterClearConfirm$3;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/MasterClearConfirm;->establishFinalConfirmationState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MasterClearConfirm;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/settings_ex/MasterClearConfirm$3;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm$3;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm$3;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    # getter for: Lcom/android/settings_ex/MasterClearConfirm;->mEraseExtSDCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/MasterClearConfirm;->access$400(Lcom/android/settings_ex/MasterClearConfirm;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/settings_ex/MasterClearConfirm;->mEraseExtSdCard:Z
    invoke-static {v1, v0}, Lcom/android/settings_ex/MasterClearConfirm;->access$302(Lcom/android/settings_ex/MasterClearConfirm;Z)Z

    .line 209
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
