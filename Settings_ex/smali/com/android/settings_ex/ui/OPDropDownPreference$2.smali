.class Lcom/android/settings_ex/ui/OPDropDownPreference$2;
.super Ljava/lang/Object;
.source "OPDropDownPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ui/OPDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ui/OPDropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ui/OPDropDownPreference;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPDropDownPreference$2;->this$0:Lcom/android/settings_ex/ui/OPDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPDropDownPreference$2;->this$0:Lcom/android/settings_ex/ui/OPDropDownPreference;

    # getter for: Lcom/android/settings_ex/ui/OPDropDownPreference;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/settings_ex/ui/OPDropDownPreference;->access$000(Lcom/android/settings_ex/ui/OPDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 75
    const/4 v0, 0x1

    return v0
.end method
