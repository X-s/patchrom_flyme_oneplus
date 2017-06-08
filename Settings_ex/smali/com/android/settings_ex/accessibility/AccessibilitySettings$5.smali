.class Lcom/android/settings_ex/accessibility/AccessibilitySettings$5;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$5;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 218
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$5;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    # getter for: Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->access$500(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$5;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    # invokes: Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->access$600(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 221
    .local v0, "enabled":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$5;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    # getter for: Lcom/android/settings_ex/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->access$500(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 223
    .end local v0    # "enabled":Z
    :cond_1
    return-void
.end method
