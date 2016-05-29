.class Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment$2;
.super Ljava/lang/Object;
.source "OPToggleDaltonFeaturePreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment$2;->this$0:Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "enabled"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment$2;->this$0:Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment;

    # invokes: Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment;->access$000(Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_daltonizer_enabled"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "enabled":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    return v1

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
