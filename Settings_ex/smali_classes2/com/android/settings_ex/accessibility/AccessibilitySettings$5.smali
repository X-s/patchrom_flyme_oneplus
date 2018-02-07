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
    .param p1, "this$0"    # Lcom/android/settings_ex/accessibility/AccessibilitySettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$5;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 218
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$5;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->-get1(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$5;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->-wrap0(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 223
    const-string/jumbo v2, "accessibility_display_inversion_enabled"

    .line 222
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 224
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$5;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->-get1(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 220
    .end local v0    # "enabled":Z
    :cond_0
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method
