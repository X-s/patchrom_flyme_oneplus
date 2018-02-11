.class Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity$2;
.super Ljava/lang/Object;
.source "AccessibilitySettingsForSetupWizardActivity.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity$2;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigateBack()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity$2;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->onNavigateUp()Z

    .line 82
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
