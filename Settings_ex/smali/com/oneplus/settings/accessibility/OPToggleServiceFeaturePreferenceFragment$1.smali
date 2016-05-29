.class Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$1;
.super Landroid/preference/Preference;
.source "OPToggleServiceFeaturePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$1;->this$0:Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v2, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$1;->this$0:Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;

    invoke-virtual {v2}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 67
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 69
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 74
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 56
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    .local v0, "summaryView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$1;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-direct {p0, v0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$1;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 59
    return-void
.end method
