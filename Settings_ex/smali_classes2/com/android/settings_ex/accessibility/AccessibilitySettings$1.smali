.class Lcom/android/settings_ex/accessibility/AccessibilitySettings$1;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$1;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$1;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettings$1;->this$0:Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettings;->-wrap2(Lcom/android/settings_ex/accessibility/AccessibilitySettings;)V

    .line 133
    :cond_0
    return-void
.end method
