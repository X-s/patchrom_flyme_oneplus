.class Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment$2;
.super Ljava/lang/Object;
.source "OPToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings_ex/widget/ToggleSwitch;Z)Z
    .locals 4
    .param p1, "toggleSwitch"    # Lcom/android/settings_ex/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 362
    if-eqz p2, :cond_0

    .line 363
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;

    iget-object v0, v0, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 364
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;

    # invokes: Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;->showDialog(I)V
    invoke-static {v0, v2}, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;->access$100(Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;I)V

    .line 371
    :goto_0
    return v2

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;

    iget-object v0, v0, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 368
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 369
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;

    const/4 v1, 0x2

    # invokes: Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;->access$200(Lcom/oneplus/settings/accessibility/OPToggleAccessibilityServicePreferenceFragment;I)V

    goto :goto_0
.end method
