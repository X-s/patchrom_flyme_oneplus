.class Lcom/oneplus/settings/accessibility/AccessibilitySettings$1;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings$1;->this$0:Lcom/oneplus/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings$1;->this$0:Lcom/oneplus/settings/accessibility/AccessibilitySettings;

    # invokes: Lcom/oneplus/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->access$000(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)V

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings$1;->this$0:Lcom/oneplus/settings/accessibility/AccessibilitySettings;

    # invokes: Lcom/oneplus/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->access$100(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)V

    .line 138
    return-void
.end method
