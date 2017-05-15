.class Lcom/android/settings_ex/print/PrintServiceSettingsFragment$3;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings_ex/widget/ToggleSwitch;Z)Z
    .locals 4
    .param p1, "toggleSwitch"    # Lcom/android/settings_ex/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 321
    if-eqz p2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    # getter for: Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->access$500(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    # getter for: Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->access$600(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 324
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_CHECKED"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    # invokes: Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->showDialog(I)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->access$700(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;I)V

    .line 332
    :goto_0
    return v0

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    # getter for: Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->access$800(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->access$900(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    :goto_1
    move v0, v1

    .line 332
    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    iget-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$3;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    # getter for: Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->access$800(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->access$900(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    goto :goto_1
.end method
