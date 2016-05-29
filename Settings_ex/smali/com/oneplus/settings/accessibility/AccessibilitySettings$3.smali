.class Lcom/oneplus/settings/accessibility/AccessibilitySettings$3;
.super Lcom/oneplus/settings/accessibility/SettingsContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings$3;->this$0:Lcom/oneplus/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Lcom/oneplus/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings$3;->this$0:Lcom/oneplus/settings/accessibility/AccessibilitySettings;

    # invokes: Lcom/oneplus/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->access$000(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)V

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings$3;->this$0:Lcom/oneplus/settings/accessibility/AccessibilitySettings;

    # invokes: Lcom/oneplus/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->access$100(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)V

    .line 173
    return-void
.end method
