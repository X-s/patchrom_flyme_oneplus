.class Lcom/android/settings_ex/accessibility/AccessibilitySettings$3;
.super Lcom/android/settings_ex/accessibility/SettingsContentObserver;
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
    .line 165
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$3;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Lcom/android/settings_ex/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$3;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    # invokes: Lcom/android/settings_ex/accessibility/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->access$000(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$3;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    # invokes: Lcom/android/settings_ex/accessibility/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->access$100(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V

    .line 170
    return-void
.end method
