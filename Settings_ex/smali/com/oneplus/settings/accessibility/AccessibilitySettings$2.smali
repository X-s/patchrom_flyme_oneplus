.class Lcom/oneplus/settings/accessibility/AccessibilitySettings$2;
.super Lcom/android/internal/content/PackageMonitor;
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
.method constructor <init>(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings$2;->this$0:Lcom/oneplus/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings$2;->this$0:Lcom/oneplus/settings/accessibility/AccessibilitySettings;

    # getter for: Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->access$300(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/accessibility/AccessibilitySettings$2;->this$0:Lcom/oneplus/settings/accessibility/AccessibilitySettings;

    # getter for: Lcom/oneplus/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/oneplus/settings/accessibility/AccessibilitySettings;->access$200(Lcom/oneplus/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 145
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 150
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 155
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 160
    return-void
.end method
