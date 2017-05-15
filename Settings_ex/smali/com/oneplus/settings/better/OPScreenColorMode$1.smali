.class Lcom/oneplus/settings/better/OPScreenColorMode$1;
.super Landroid/database/ContentObserver;
.source "OPScreenColorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPScreenColorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPScreenColorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPScreenColorMode;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    # invokes: Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$000(Lcom/oneplus/settings/better/OPScreenColorMode;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "night_mode_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 76
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    # getter for: Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;
    invoke-static {v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$100(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 77
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    # getter for: Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;
    invoke-static {v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$200(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 78
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    # getter for: Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;
    invoke-static {v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$300(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 79
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    # getter for: Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;
    invoke-static {v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$400(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPSeekBarPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/ui/OPSeekBarPreference;->setEnabled(Z)V

    .line 80
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    # getter for: Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;
    invoke-static {v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$500(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    if-nez v0, :cond_2

    .line 82
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    # getter for: Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;
    invoke-static {v2}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$500(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 87
    :cond_0
    :goto_1
    return-void

    .end local v0    # "enabled":Z
    :cond_1
    move v0, v1

    .line 74
    goto :goto_0

    .line 84
    .restart local v0    # "enabled":Z
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    # getter for: Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;
    invoke-static {v2}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$500(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method
