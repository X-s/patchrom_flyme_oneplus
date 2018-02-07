.class Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$3;
.super Ljava/lang/Object;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;

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

    .line 366
    if-eqz p2, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "checked"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 369
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v0, v2}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->-wrap0(Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    .line 375
    :goto_0
    return v2

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "checked"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 373
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->-wrap0(Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    goto :goto_0
.end method
