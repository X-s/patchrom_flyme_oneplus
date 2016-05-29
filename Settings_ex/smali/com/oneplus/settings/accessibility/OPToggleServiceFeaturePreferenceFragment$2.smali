.class Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$2;
.super Ljava/lang/Object;
.source "OPToggleServiceFeaturePreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
.method constructor <init>(Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$2;->this$0:Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "enabled"    # Ljava/lang/Object;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$2;->this$0:Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;

    iget-object v0, v0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mCallback:Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$OPCallbackService;

    const-string v1, ""

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "enabled":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$OPCallbackService;->onOPServiceStatusChanged(Ljava/lang/String;Z)V

    .line 91
    const/4 v0, 0x1

    return v0
.end method
