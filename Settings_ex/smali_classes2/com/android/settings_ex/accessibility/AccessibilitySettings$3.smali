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
    .param p1, "this$0"    # Lcom/android/settings_ex/accessibility/AccessibilitySettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 167
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
    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$3;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->-wrap2(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V

    .line 169
    return-void
.end method
